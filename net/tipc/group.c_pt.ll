; ModuleID = '/llk/IR_all_yes/net/tipc/group.c_pt.bc'
source_filename = "../net/tipc/group.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tipc_group = type { %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct.tipc_nlist, ptr, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, ptr, i8, i8 }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.tipc_nlist = type { %struct.list_head, i32, i16, i8 }
%struct.tipc_group_req = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
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
%struct.hlist_head = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.tipc_net = type { [16 x i8], i32, i32, i32, [33 x i8], i32, i32, i8, %struct.spinlock, [512 x %struct.hlist_head], %struct.list_head, i32, i32, [3 x ptr], i32, [4 x ptr], %struct.spinlock, ptr, ptr, %struct.rhashtable, %struct.spinlock, ptr, ptr, %struct.atomic_t, i16, %struct.packet_type, ptr, %struct.work_struct, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tipc_member = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.sk_buff_list = type { ptr, ptr }
%struct.tipc_service_range = type { i32, i32, i32 }
%struct.tipc_event = type { i32, i32, i32, %struct.tipc_socket_addr, %struct.tipc_subscr }
%struct.tipc_socket_addr = type { i32, i32 }
%struct.tipc_subscr = type { %struct.tipc_service_range, i32, i32, [8 x i8] }

@tipc_group_update_rcv_win._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tipc_group_update_rcv_win = private unnamed_addr constant [26 x i8] c"tipc_group_update_rcv_win\00", align 1
@tipc_group_update_rcv_win._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.tipc_group_update_rcv_win, ptr @.str.2, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014tipc: Rcv unexpected msg after REMIT\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/tipc/group.c\00", [47 x i8] zeroinitializer }, align 32
@tipc_group_update_rcv_win._entry_ptr = internal global ptr @tipc_group_update_rcv_win._entry, section ".printk_index", align 4
@tipc_group_proto_rcv._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tipc_group_proto_rcv = private unnamed_addr constant [21 x i8] c"tipc_group_proto_rcv\00", align 1
@tipc_group_proto_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.tipc_group_proto_rcv, ptr @.str.2, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014tipc: Unexpected REMIT msg\0A\00", [34 x i8] zeroinitializer }, align 32
@tipc_group_proto_rcv._entry_ptr = internal global ptr @tipc_group_proto_rcv._entry, section ".printk_index", align 4
@tipc_group_proto_rcv._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tipc_group_proto_rcv, ptr @.str.2, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014tipc: Received unknown GROUP_PROTO message\0A\00", [50 x i8] zeroinitializer }, align 32
@tipc_group_proto_rcv._entry_ptr.6 = internal global ptr @tipc_group_proto_rcv._entry.4, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tipc_net_id = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@switch.table.tipc_group_proto_xmit = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65, i32 65, i32 780], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.13 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 646, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 831, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private constant [20 x i8] c"../net/tipc/group.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 849, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 45, i32 7 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 695, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 723, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 991, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [35 x i8] c"switch.table.tipc_group_proto_xmit\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @tipc_group_proto_rcv._entry, ptr @tipc_group_proto_rcv._entry.4, ptr @tipc_group_proto_rcv._entry_ptr, ptr @tipc_group_proto_rcv._entry_ptr.6, ptr @tipc_group_update_rcv_win._entry, ptr @tipc_group_update_rcv_win._entry_ptr, ptr @tipc_group_update_rcv_win._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tipc_group_proto_rcv._rs, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @switch.table.tipc_group_proto_xmit], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_group_update_rcv_win._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_group_update_rcv_win._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_group_proto_rcv._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_group_proto_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_group_proto_rcv._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tipc_group_proto_xmit to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @tipc_group_bc_snd_nxt(ptr nocapture noundef readonly %grp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_snd_nxt = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 14
  %0 = ptrtoint ptr %bc_snd_nxt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bc_snd_nxt, align 2
  ret i16 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tipc_group_exclude(ptr nocapture noundef readonly %grp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %loopback = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 17
  %0 = ptrtoint ptr %loopback to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %loopback, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %portid = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 10
  %2 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tipc_group_create(ptr noundef %net, i32 noundef %portid, ptr nocapture noundef readonly %mreq, ptr noundef %group_is_open) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %scope = getelementptr inbounds %struct.tipc_group_req, ptr %mreq, i32 0, i32 2
  %0 = ptrtoint ptr %scope to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scope, align 4
  %2 = ptrtoint ptr %mreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mreq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 88) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  %dests = getelementptr inbounds %struct.tipc_group, ptr %call7.i.i, i32 0, i32 4
  %call2 = tail call fastcc i32 @tipc_own_addr(ptr noundef %net)
  tail call void @tipc_nlist_init(ptr noundef %dests, i32 noundef %call2) #11
  %small_win = getelementptr inbounds %struct.tipc_group, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %small_win to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %small_win, ptr %small_win, align 4
  %prev.i = getelementptr inbounds %struct.tipc_group, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %small_win, ptr %prev.i, align 8
  %active = getelementptr inbounds %struct.tipc_group, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %active, ptr %active, align 4
  %prev.i50 = getelementptr inbounds %struct.tipc_group, ptr %call7.i.i, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %active, ptr %prev.i50, align 8
  %pending = getelementptr inbounds %struct.tipc_group, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %pending, ptr %pending, align 4
  %prev.i51 = getelementptr inbounds %struct.tipc_group, ptr %call7.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pending, ptr %prev.i51, align 8
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %call7.i.i, align 8
  %net3 = getelementptr inbounds %struct.tipc_group, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %net3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %net, ptr %net3, align 4
  %portid4 = getelementptr inbounds %struct.tipc_group, ptr %call7.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %portid4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %portid, ptr %portid4, align 8
  %type5 = getelementptr inbounds %struct.tipc_group, ptr %call7.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %type5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %3, ptr %type5, align 4
  %instance = getelementptr inbounds %struct.tipc_group_req, ptr %mreq, i32 0, i32 1
  %15 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %instance, align 4
  %instance6 = getelementptr inbounds %struct.tipc_group, ptr %call7.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %instance6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %instance6, align 8
  %18 = ptrtoint ptr %scope to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scope, align 4
  %scope8 = getelementptr inbounds %struct.tipc_group, ptr %call7.i.i, i32 0, i32 9
  %20 = ptrtoint ptr %scope8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %scope8, align 4
  %flags = getelementptr inbounds %struct.tipc_group_req, ptr %mreq, i32 0, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %loopback = getelementptr inbounds %struct.tipc_group, ptr %call7.i.i, i32 0, i32 17
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = ptrtoint ptr %loopback to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %loopback, align 4
  %events = getelementptr inbounds %struct.tipc_group, ptr %call7.i.i, i32 0, i32 18
  %26 = lshr i8 %23, 1
  %27 = and i8 %26, 1
  %28 = ptrtoint ptr %events to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %events, align 1
  %open = getelementptr inbounds %struct.tipc_group, ptr %call7.i.i, i32 0, i32 16
  %29 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %group_is_open, ptr %open, align 8
  %30 = ptrtoint ptr %group_is_open to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %group_is_open, align 1
  %or = select i1 %cmp.not, i32 193, i32 161
  %subid = getelementptr inbounds %struct.tipc_group, ptr %call7.i.i, i32 0, i32 6
  %call17 = tail call zeroext i1 @tipc_topsrv_kern_subscr(ptr noundef %net, i32 noundef %portid, i32 noundef %3, i32 noundef 0, i32 noundef -1, i32 noundef %or, ptr noundef %subid) #11
  br i1 %call17, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end19 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_nlist_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_own_addr(ptr noundef %net) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !31) #11
  %and.i.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !42
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %gen.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i.i, align 128
  %call.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 45, ptr noundef nonnull @.str.8) #11
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge
  %arrayidx.i.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i10.i.i, label %do.end7.i.i.tipc_net.exit_crit_edge, label %land.lhs.true.i13.i.i

do.end7.i.i.tipc_net.exit_crit_edge:              ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_net.exit

land.lhs.true.i13.i.i:                            ; preds = %do.end7.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.tipc_net.exit_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.tipc_net.exit_crit_edge:    ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_net.exit

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.tipc_net.exit_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.tipc_net.exit_crit_edge:   ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_net.exit

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #11
  br label %tipc_net.exit

tipc_net.exit:                                    ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.tipc_net.exit_crit_edge, %land.lhs.true.i13.i.i.tipc_net.exit_crit_edge, %do.end7.i.i.tipc_net.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !43
  %9 = tail call i32 @llvm.read_register.i32(metadata !31) #11
  %and.i.i.i.i.i17.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %node_addr = getelementptr inbounds %struct.tipc_net, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %node_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node_addr, align 4
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_topsrv_kern_subscr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_group_join(ptr noundef %net, ptr noundef %grp, ptr nocapture noundef writeonly %sk_rcvbuf) local_unnamed_addr #1 align 64 {
entry:
  %xmitq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %xmitq) #11
  %0 = getelementptr inbounds i8, ptr %xmitq, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %xmitq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %xmitq, ptr %xmitq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %xmitq, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %xmitq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i, align 4
  %call = call ptr @rb_first_postorder(ptr noundef %grp) #11
  %tobool3.not28 = icmp eq ptr %call, null
  br i1 %tobool3.not28, label %entry.for.end_crit_edge, label %entry.tipc_group_is_receiver.exit.i_crit_edge

entry.tipc_group_is_receiver.exit.i_crit_edge:    ; preds = %entry
  br label %tipc_group_is_receiver.exit.i

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

tipc_group_is_receiver.exit.i:                    ; preds = %tipc_group_update_member.exit.tipc_group_is_receiver.exit.i_crit_edge, %entry.tipc_group_is_receiver.exit.i_crit_edge
  %m.029 = phi ptr [ %call5, %tipc_group_update_member.exit.tipc_group_is_receiver.exit.i_crit_edge ], [ %call, %entry.tipc_group_is_receiver.exit.i_crit_edge ]
  %call5 = call ptr @rb_next_postorder(ptr noundef nonnull %m.029) #11
  call fastcc void @tipc_group_proto_xmit(ptr noundef %grp, ptr noundef nonnull %m.029, i32 noundef 0, ptr noundef nonnull %xmitq)
  %group.i = getelementptr inbounds %struct.tipc_member, ptr %m.029, i32 0, i32 4
  %5 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %group.i, align 4
  %state.i.i = getelementptr inbounds %struct.tipc_member, ptr %m.029, i32 0, i32 8
  %7 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end.i [
    i32 7, label %tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge
    i32 0, label %tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge31
  ]

tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge31: ; preds = %tipc_group_is_receiver.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit

tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge: ; preds = %tipc_group_is_receiver.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit

if.end.i:                                         ; preds = %tipc_group_is_receiver.exit.i
  %window.i = getelementptr inbounds %struct.tipc_member, ptr %m.029, i32 0, i32 10
  %10 = ptrtoint ptr %window.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %window.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %11)
  %cmp.i = icmp ugt i16 %11, 64
  br i1 %cmp.i, label %if.end.i.tipc_group_update_member.exit_crit_edge, label %if.end6.i

if.end.i.tipc_group_update_member.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit

if.end6.i:                                        ; preds = %if.end.i
  %small_win.i = getelementptr inbounds %struct.tipc_member, ptr %m.029, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %small_win.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.list_del_init.exit.i_crit_edge

if.end6.i.list_del_init.exit.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.tipc_member, ptr %m.029, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %small_win.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %small_win.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end6.i.list_del_init.exit.i_crit_edge
  %18 = ptrtoint ptr %small_win.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %small_win.i, ptr %small_win.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.tipc_member, ptr %m.029, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %small_win.i, ptr %prev.i3.i.i, align 4
  %small_win7.i = getelementptr inbounds %struct.tipc_group, ptr %6, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %list_del_init.exit.i
  %.pn.in.in.i = phi ptr [ %small_win7.i, %list_del_init.exit.i ], [ %.pn.in.i, %for.body.i.for.cond.i_crit_edge ]
  %20 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp16.not.i = icmp eq ptr %.pn.in.i, %small_win7.i
  br i1 %cmp16.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %window18.i = getelementptr i8, ptr %.pn.in.i, i32 86
  %21 = ptrtoint ptr %window18.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %window18.i, align 2
  %23 = ptrtoint ptr %window.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %window.i, align 2
  %cmp22.i = icmp ugt i16 %22, %24
  br i1 %cmp22.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %.pn.in.lcssa.i = phi ptr [ %.pn.in.i, %for.body.i.for.end.i_crit_edge ], [ %small_win7.i, %for.cond.i.for.end.i_crit_edge ]
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.lcssa.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %call.i.i47.i = call zeroext i1 @__list_add_valid(ptr noundef %small_win.i, ptr noundef %26, ptr noundef %.pn.in.lcssa.i) #11
  br i1 %call.i.i47.i, label %if.end.i.i48.i, label %for.end.i.tipc_group_update_member.exit_crit_edge

for.end.i.tipc_group_update_member.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit

if.end.i.i48.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %small_win.i, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %small_win.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %.pn.in.lcssa.i, ptr %small_win.i, align 4
  %29 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev.i3.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %small_win.i, ptr %26, align 4
  br label %tipc_group_update_member.exit

tipc_group_update_member.exit:                    ; preds = %if.end.i.i48.i, %for.end.i.tipc_group_update_member.exit_crit_edge, %if.end.i.tipc_group_update_member.exit_crit_edge, %tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge, %tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge31
  %tobool3.not = icmp eq ptr %call5, null
  br i1 %tobool3.not, label %tipc_group_update_member.exit.for.end_crit_edge, label %tipc_group_update_member.exit.tipc_group_is_receiver.exit.i_crit_edge

tipc_group_update_member.exit.tipc_group_is_receiver.exit.i_crit_edge: ; preds = %tipc_group_update_member.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_is_receiver.exit.i

tipc_group_update_member.exit.for.end_crit_edge:  ; preds = %tipc_group_update_member.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %tipc_group_update_member.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %call17 = call i32 @tipc_node_distr_xmit(ptr noundef %net, ptr noundef nonnull %xmitq) #11
  %member_cnt.i = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 11
  %31 = ptrtoint ptr %member_cnt.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %member_cnt.i, align 4
  %conv.i = zext i16 %32 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %32)
  %cmp.i27 = icmp ult i16 %32, 511
  %div24.i = lshr i32 %add.i, 3
  %33 = call i32 @llvm.umax.i32(i32 %div24.i, i32 16) #11
  %34 = select i1 %cmp.i27, i32 %33, i32 64
  %conv9.i = trunc i32 %34 to i16
  %max_active10.i = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 13
  %35 = ptrtoint ptr %max_active10.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv9.i, ptr %max_active10.i, align 4
  %mul.i = mul nuw nsw i32 %34, 780
  %sub.i = sub nsw i32 %add.i, %34
  %mul11.i = mul nsw i32 %sub.i, 65
  %add12.i = add nsw i32 %mul11.i, %mul.i
  %mul14.i = shl i32 %add12.i, 12
  %36 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul14.i, ptr %sk_rcvbuf, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %xmitq) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_group_proto_xmit(ptr nocapture noundef readonly %grp, ptr nocapture noundef %m, i32 noundef %mtyp, ptr noundef %xmitq) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 5
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node, align 4
  %net = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 5
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %call = tail call fastcc i32 @tipc_own_addr(ptr noundef %3)
  %port = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 6
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %portid = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 10
  %6 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %portid, align 4
  %call1 = tail call ptr @tipc_msg_create(i32 noundef 9, i32 noundef %mtyp, i32 noundef 40, i32 noundef 0, i32 noundef %1, i32 noundef %call, i32 noundef %5, i32 noundef %7, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 8
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %switch.tableidx = add i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 3
  br i1 %10, label %switch.lookup, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.tipc_group_proto_xmit, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %advertised10 = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 9
  %12 = ptrtoint ptr %advertised10 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %advertised10, align 4
  %conv11 = zext i16 %13 to i32
  %sub12 = sub nsw i32 %switch.load, %conv11
  br label %if.end14

if.end14:                                         ; preds = %switch.lookup, %if.end.if.end14_crit_edge
  %adv.0 = phi i32 [ 0, %if.end.if.end14_crit_edge ], [ %sub12, %switch.lookup ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %16 = zext i32 %mtyp to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %mtyp, label %if.end14.if.end49_crit_edge [
    i32 0, label %if.then18
    i32 1, label %if.then26
    i32 2, label %if.then31
    i32 3, label %if.then40
    i32 5, label %if.then44
  ]

if.end14.if.end49_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %bc_snd_nxt = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 14
  %17 = ptrtoint ptr %bc_snd_nxt to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bc_snd_nxt, align 2
  %conv.i = zext i16 %18 to i32
  %shl.i.i = shl nuw i32 %conv.i, 16
  %arrayidx.i.i = getelementptr [15 x i32], ptr %15, i32 0, i32 9
  %conv19 = trunc i32 %adv.0 to i16
  %conv.i81 = and i32 %adv.0, 65535
  %or.i.i84 = or i32 %shl.i.i, %conv.i81
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i.i84, ptr %arrayidx.i.i, align 4
  %advertised20 = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 9
  %20 = ptrtoint ptr %advertised20 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %advertised20, align 4
  %conv22 = add i16 %21, %conv19
  store i16 %conv22, ptr %advertised20, align 4
  br label %if.end49

if.then26:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %bc_snd_nxt27 = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 14
  %22 = ptrtoint ptr %bc_snd_nxt27 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bc_snd_nxt27, align 2
  %conv.i85 = zext i16 %23 to i32
  %shl.i.i86 = shl nuw i32 %conv.i85, 16
  %arrayidx.i.i87 = getelementptr [15 x i32], ptr %15, i32 0, i32 9
  %24 = ptrtoint ptr %arrayidx.i.i87 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i87, align 4
  %and2.i.i88 = and i32 %25, 65535
  %or.i.i89 = or i32 %and2.i.i88, %shl.i.i86
  store i32 %or.i.i89, ptr %arrayidx.i.i87, align 4
  br label %if.end49

if.then31:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %conv32 = trunc i32 %adv.0 to i16
  %conv.i90 = and i32 %adv.0, 65535
  %arrayidx.i.i91 = getelementptr [15 x i32], ptr %15, i32 0, i32 9
  %26 = ptrtoint ptr %arrayidx.i.i91 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i91, align 4
  %and2.i.i92 = and i32 %27, -65536
  %or.i.i93 = or i32 %and2.i.i92, %conv.i90
  store i32 %or.i.i93, ptr %arrayidx.i.i91, align 4
  %advertised33 = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 9
  %28 = ptrtoint ptr %advertised33 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %advertised33, align 4
  %conv36 = add i16 %29, %conv32
  store i16 %conv36, ptr %advertised33, align 4
  br label %if.end49

if.then40:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %bc_rcv_nxt = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 11
  %30 = ptrtoint ptr %bc_rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %bc_rcv_nxt, align 4
  %conv.i94 = zext i16 %31 to i32
  %shl.i.i95 = shl nuw i32 %conv.i94, 16
  %arrayidx.i.i96 = getelementptr [15 x i32], ptr %15, i32 0, i32 9
  %32 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i96, align 4
  %and2.i.i97 = and i32 %33, 65535
  %or.i.i98 = or i32 %and2.i.i97, %shl.i.i95
  store i32 %or.i.i98, ptr %arrayidx.i.i96, align 4
  br label %if.end49

if.then44:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %window = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 10
  %34 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %window, align 2
  %conv.i99 = zext i16 %35 to i32
  %shl.i.i100 = shl nuw i32 %conv.i99, 16
  %arrayidx.i.i101 = getelementptr [15 x i32], ptr %15, i32 0, i32 9
  %36 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i101, align 4
  %and2.i.i102 = and i32 %37, 65535
  %or.i.i103 = or i32 %and2.i.i102, %shl.i.i100
  store i32 %or.i.i103, ptr %arrayidx.i.i101, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.then40, %if.then31, %if.then26, %if.then18, %if.end14.if.end49_crit_edge
  %38 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %15, align 4
  %or.i.i104 = or i32 %39, 524288
  store i32 %or.i.i104, ptr %15, align 4
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %xmitq, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %xmitq, ptr %call1, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %call1, i32 0, i32 1
  %43 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %prev10.i.i.i, align 4
  store volatile ptr %call1, ptr %prev.i.i, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %call1, ptr %41, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %45 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %46, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_group_update_member(ptr noundef %m, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %group = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 4
  %0 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group, align 4
  %tobool.not.i = icmp eq ptr %m, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %tipc_group_is_receiver.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

tipc_group_is_receiver.exit:                      ; preds = %entry
  %state.i = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 8
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %3, label %if.end [
    i32 7, label %tipc_group_is_receiver.exit.cleanup_crit_edge
    i32 0, label %tipc_group_is_receiver.exit.cleanup_crit_edge49
  ]

tipc_group_is_receiver.exit.cleanup_crit_edge49:  ; preds = %tipc_group_is_receiver.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

tipc_group_is_receiver.exit.cleanup_crit_edge:    ; preds = %tipc_group_is_receiver.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %tipc_group_is_receiver.exit
  %window = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 10
  %5 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %window, align 2
  %7 = trunc i32 %len to i16
  %conv1 = sub i16 %6, %7
  store i16 %conv1, ptr %window, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %conv1)
  %cmp = icmp ugt i16 %conv1, 64
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %small_win = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %small_win) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.list_del_init.exit_crit_edge

if.end6.list_del_init.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %small_win to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %small_win, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end6.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %small_win to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %small_win, ptr %small_win, align 4
  %prev.i3.i = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %small_win, ptr %prev.i3.i, align 4
  %small_win7 = getelementptr inbounds %struct.tipc_group, ptr %1, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %list_del_init.exit
  %.pn.in.in = phi ptr [ %small_win7, %list_del_init.exit ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %16 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp16.not = icmp eq ptr %.pn.in, %small_win7
  br i1 %cmp16.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %window18 = getelementptr i8, ptr %.pn.in, i32 86
  %17 = ptrtoint ptr %window18 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %window18, align 2
  %19 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %window, align 2
  %cmp22 = icmp ugt i16 %18, %20
  br i1 %cmp22, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.pn.in.lcssa = phi ptr [ %.pn.in, %for.body.for.end_crit_edge ], [ %small_win7, %for.cond.for.end_crit_edge ]
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.lcssa, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i47 = tail call zeroext i1 @__list_add_valid(ptr noundef %small_win, ptr noundef %22, ptr noundef %.pn.in.lcssa) #11
  br i1 %call.i.i47, label %if.end.i.i48, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i48:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %small_win, ptr %prev.i, align 4
  %24 = ptrtoint ptr %small_win to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %.pn.in.lcssa, ptr %small_win, align 4
  %25 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev.i3.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %small_win, ptr %22, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i48, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tipc_group_is_receiver.exit.cleanup_crit_edge, %tipc_group_is_receiver.exit.cleanup_crit_edge49, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_node_distr_xmit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_group_delete(ptr noundef %net, ptr noundef %grp) local_unnamed_addr #1 align 64 {
entry:
  %xmitq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %xmitq) #11
  %0 = getelementptr inbounds i8, ptr %xmitq, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %xmitq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %xmitq, ptr %xmitq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %xmitq, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %xmitq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i, align 4
  %call = call ptr @rb_first_postorder(ptr noundef %grp) #11
  %tobool3.not32 = icmp eq ptr %call, null
  br i1 %tobool3.not32, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs:                                         ; preds = %list_del.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %m.033 = phi ptr [ %call5, %list_del.exit.land.rhs_crit_edge ], [ %call, %entry.land.rhs_crit_edge ]
  %call5 = call ptr @rb_next_postorder(ptr noundef nonnull %m.033) #11
  call fastcc void @tipc_group_proto_xmit(ptr noundef %grp, ptr noundef nonnull %m.033, i32 noundef 1, ptr noundef nonnull %xmitq)
  %deferredq = getelementptr inbounds %struct.tipc_member, ptr %m.033, i32 0, i32 3
  %5 = ptrtoint ptr %deferredq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %deferredq, align 4
  %cmp.i.i2.i = icmp eq ptr %6, %deferredq
  %tobool.not.i13.i = icmp eq ptr %6, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %land.rhs.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

land.rhs.__skb_queue_purge.exit_crit_edge:        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %land.rhs
  %qlen.i.i.i = getelementptr inbounds %struct.tipc_member, ptr %m.033, i32 0, i32 3, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %7 = phi ptr [ %6, %while.body.lr.ph.i ], [ %17, %while.body.i.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.83, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %7, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.83, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %prev17.i.i.i, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %11, ptr %13, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #11
  %16 = ptrtoint ptr %deferredq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %deferredq, align 4
  %cmp.i.i.i = icmp eq ptr %17, %deferredq
  %tobool.not.i1.i = icmp eq ptr %17, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %land.rhs.__skb_queue_purge.exit_crit_edge
  %list = getelementptr inbounds %struct.tipc_member, ptr %m.033, i32 0, i32 1
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %__skb_queue_purge.exit.list_del.exit_crit_edge

__skb_queue_purge.exit.list_del.exit_crit_edge:   ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.tipc_member, ptr %m.033, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %__skb_queue_purge.exit.list_del.exit_crit_edge
  %24 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i31 = getelementptr inbounds %struct.tipc_member, ptr %m.033, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i31, align 4
  call void @kfree(ptr noundef nonnull %m.033) #11
  %tobool3.not = icmp eq ptr %call5, null
  br i1 %tobool3.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.land.rhs_crit_edge

list_del.exit.land.rhs_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %call17 = call i32 @tipc_node_distr_xmit(ptr noundef %net, ptr noundef nonnull %xmitq) #11
  %dests = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 4
  call void @tipc_nlist_purge(ptr noundef %dests) #11
  %subid = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 6
  %26 = ptrtoint ptr %subid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %subid, align 4
  call void @tipc_topsrv_kern_unsubscr(ptr noundef %net, i32 noundef %27) #11
  call void @kfree(ptr noundef %grp) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %xmitq) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_nlist_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_topsrv_kern_unsubscr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_group_add_member(ptr noundef %grp, i32 noundef %node, i32 noundef %port, i32 noundef %instance) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_group_create_member(ptr noundef %grp, i32 noundef %node, i32 noundef %port, i32 noundef %instance, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_group_create_member(ptr noundef %grp, i32 noundef %node, i32 noundef %port, i32 noundef %instance, i32 noundef %state) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 116) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.tipc_member, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.tipc_member, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 8
  %small_win = getelementptr inbounds %struct.tipc_member, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %small_win to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %small_win, ptr %small_win, align 4
  %prev.i29 = getelementptr inbounds %struct.tipc_member, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i29 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %small_win, ptr %prev.i29, align 8
  %deferredq = getelementptr inbounds %struct.tipc_member, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %deferredq to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %deferredq, ptr %deferredq, align 4
  %prev.i30 = getelementptr inbounds %struct.tipc_member, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i30 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %deferredq, ptr %prev.i30, align 8
  %qlen.i = getelementptr inbounds %struct.tipc_member, ptr %call7.i.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i, align 4
  %group = getelementptr inbounds %struct.tipc_member, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %grp, ptr %group, align 4
  %node1 = getelementptr inbounds %struct.tipc_member, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %node1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %node, ptr %node1, align 8
  %port2 = getelementptr inbounds %struct.tipc_member, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %port2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %port, ptr %port2, align 4
  %instance3 = getelementptr inbounds %struct.tipc_member, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %instance3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %instance, ptr %instance3, align 8
  %bc_snd_nxt = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 14
  %12 = ptrtoint ptr %bc_snd_nxt to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bc_snd_nxt, align 2
  %sub = add i16 %13, -1
  %bc_acked = getelementptr inbounds %struct.tipc_member, ptr %call7.i.i, i32 0, i32 13
  %14 = ptrtoint ptr %bc_acked to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %sub, ptr %bc_acked, align 8
  %conv.i = zext i32 %node to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %port to i64
  %or.i = or i64 %shl.i, %conv1.i
  %15 = ptrtoint ptr %grp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %grp, align 4
  %tobool.not39.i = icmp eq ptr %16, null
  br i1 %tobool.not39.i, label %if.end.if.end8_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

while.body.i:                                     ; preds = %if.end17.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %17 = phi ptr [ %23, %if.end17.i.while.body.i_crit_edge ], [ %16, %if.end.while.body.i_crit_edge ]
  %node6.i = getelementptr inbounds %struct.tipc_member, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %node6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %node6.i, align 4
  %conv7.i = zext i32 %19 to i64
  %shl8.i = shl nuw i64 %conv7.i, 32
  %port9.i = getelementptr inbounds %struct.tipc_member, ptr %17, i32 0, i32 6
  %20 = ptrtoint ptr %port9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port9.i, align 4
  %conv10.i = zext i32 %21 to i64
  %or11.i = or i64 %shl8.i, %conv10.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %or11.i)
  %cmp.i = icmp ult i64 %or.i, %or11.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  br label %if.end17.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %or11.i)
  %cmp13.i = icmp ugt i64 %or.i, %or11.i
  br i1 %cmp13.i, label %if.then15.i, label %if.then7

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.then.i
  %n.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then15.i ]
  %22 = ptrtoint ptr %n.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %n.1.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end17.i.while.body.i_crit_edge

if.end17.i.while.body.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le.i = ptrtoint ptr %17 to i32
  br label %if.end8

if.then7:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end8:                                          ; preds = %while.cond.while.end_crit_edge.i, %if.end.if.end8_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end.if.end8_crit_edge ]
  %n.0.lcssa.i = phi ptr [ %n.1.i, %while.cond.while.end_crit_edge.i ], [ %grp, %if.end.if.end8_crit_edge ]
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rb_left.i.i, align 8
  %27 = ptrtoint ptr %n.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %n.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %call7.i.i, ptr noundef %grp) #11
  %member_cnt = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 11
  %28 = ptrtoint ptr %member_cnt to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %member_cnt, align 4
  %inc = add i16 %29, 1
  store i16 %inc, ptr %member_cnt, align 4
  %dests = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 4
  %30 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %node1, align 8
  tail call void @tipc_nlist_add(ptr noundef %dests, i32 noundef %31) #11
  %state10 = getelementptr inbounds %struct.tipc_member, ptr %call7.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %state, ptr %state10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then7 ], [ %call7.i.i, %if.end8 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @tipc_group_dests(ptr noundef readnone %grp) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dests = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 4
  ret ptr %dests
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tipc_group_self(ptr nocapture noundef readonly %grp, ptr nocapture noundef writeonly %seq, ptr nocapture noundef writeonly %scope) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 7
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %seq, align 4
  %instance = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 8
  %3 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %instance, align 4
  %lower = getelementptr inbounds %struct.tipc_service_range, ptr %seq, i32 0, i32 1
  %5 = ptrtoint ptr %lower to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %lower, align 4
  %6 = load i32, ptr %instance, align 4
  %upper = getelementptr inbounds %struct.tipc_service_range, ptr %seq, i32 0, i32 2
  %7 = ptrtoint ptr %upper to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %upper, align 4
  %scope3 = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 9
  %8 = ptrtoint ptr %scope3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scope3, align 4
  %10 = ptrtoint ptr %scope to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %scope, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_group_update_bc_members(ptr noundef %grp, i32 noundef %len, i1 noundef zeroext %ack) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_snd_nxt = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 14
  %0 = ptrtoint ptr %bc_snd_nxt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bc_snd_nxt, align 2
  %sub = add i16 %1, -1
  %call = tail call ptr @rb_first(ptr noundef %grp) #11
  %tobool.not17 = icmp eq ptr %call, null
  br i1 %tobool.not17, label %entry.for.end_crit_edge, label %tipc_group_is_receiver.exit.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

tipc_group_is_receiver.exit.lr.ph:                ; preds = %entry
  %2 = trunc i32 %len to i16
  br label %tipc_group_is_receiver.exit

tipc_group_is_receiver.exit:                      ; preds = %for.inc.tipc_group_is_receiver.exit_crit_edge, %tipc_group_is_receiver.exit.lr.ph
  %ackers.022 = phi i16 [ 0, %tipc_group_is_receiver.exit.lr.ph ], [ %ackers.1, %for.inc.tipc_group_is_receiver.exit_crit_edge ]
  %n.018 = phi ptr [ %call, %tipc_group_is_receiver.exit.lr.ph ], [ %call3, %for.inc.tipc_group_is_receiver.exit_crit_edge ]
  %state.i = getelementptr inbounds %struct.tipc_member, ptr %n.018, i32 0, i32 8
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %4, label %tipc_group_is_receiver.exit.i [
    i32 7, label %tipc_group_is_receiver.exit.for.inc_crit_edge
    i32 0, label %tipc_group_is_receiver.exit.for.inc_crit_edge23
  ]

tipc_group_is_receiver.exit.for.inc_crit_edge23:  ; preds = %tipc_group_is_receiver.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

tipc_group_is_receiver.exit.for.inc_crit_edge:    ; preds = %tipc_group_is_receiver.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

tipc_group_is_receiver.exit.i:                    ; preds = %tipc_group_is_receiver.exit
  %group.i = getelementptr inbounds %struct.tipc_member, ptr %n.018, i32 0, i32 4
  %6 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group.i, align 4
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %9, label %if.end.i [
    i32 7, label %tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge
    i32 0, label %tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge24
  ]

tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge24: ; preds = %tipc_group_is_receiver.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit

tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge: ; preds = %tipc_group_is_receiver.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit

if.end.i:                                         ; preds = %tipc_group_is_receiver.exit.i
  %window.i = getelementptr inbounds %struct.tipc_member, ptr %n.018, i32 0, i32 10
  %11 = ptrtoint ptr %window.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %window.i, align 2
  %conv1.i = sub i16 %12, %2
  store i16 %conv1.i, ptr %window.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %conv1.i)
  %cmp.i = icmp ugt i16 %conv1.i, 64
  br i1 %cmp.i, label %if.end.i.tipc_group_update_member.exit_crit_edge, label %if.end6.i

if.end.i.tipc_group_update_member.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit

if.end6.i:                                        ; preds = %if.end.i
  %small_win.i = getelementptr inbounds %struct.tipc_member, ptr %n.018, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %small_win.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.list_del_init.exit.i_crit_edge

if.end6.i.list_del_init.exit.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.tipc_member, ptr %n.018, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %small_win.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %small_win.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end6.i.list_del_init.exit.i_crit_edge
  %19 = ptrtoint ptr %small_win.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %small_win.i, ptr %small_win.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.tipc_member, ptr %n.018, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %small_win.i, ptr %prev.i3.i.i, align 4
  %small_win7.i = getelementptr inbounds %struct.tipc_group, ptr %7, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %list_del_init.exit.i
  %.pn.in.in.i = phi ptr [ %small_win7.i, %list_del_init.exit.i ], [ %.pn.in.i, %for.body.i.for.cond.i_crit_edge ]
  %21 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp16.not.i = icmp eq ptr %.pn.in.i, %small_win7.i
  br i1 %cmp16.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %window18.i = getelementptr i8, ptr %.pn.in.i, i32 86
  %22 = ptrtoint ptr %window18.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %window18.i, align 2
  %24 = ptrtoint ptr %window.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %window.i, align 2
  %cmp22.i = icmp ugt i16 %23, %25
  br i1 %cmp22.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %.pn.in.lcssa.i = phi ptr [ %.pn.in.i, %for.body.i.for.end.i_crit_edge ], [ %small_win7.i, %for.cond.i.for.end.i_crit_edge ]
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.lcssa.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %call.i.i47.i = tail call zeroext i1 @__list_add_valid(ptr noundef %small_win.i, ptr noundef %27, ptr noundef %.pn.in.lcssa.i) #11
  br i1 %call.i.i47.i, label %if.end.i.i48.i, label %for.end.i.tipc_group_update_member.exit_crit_edge

for.end.i.tipc_group_update_member.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit

if.end.i.i48.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %small_win.i, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %small_win.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %.pn.in.lcssa.i, ptr %small_win.i, align 4
  %30 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev.i3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %small_win.i, ptr %27, align 4
  br label %tipc_group_update_member.exit

tipc_group_update_member.exit:                    ; preds = %if.end.i.i48.i, %for.end.i.tipc_group_update_member.exit_crit_edge, %if.end.i.tipc_group_update_member.exit_crit_edge, %tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge, %tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge24
  %bc_acked = getelementptr inbounds %struct.tipc_member, ptr %n.018, i32 0, i32 13
  %32 = ptrtoint ptr %bc_acked to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %sub, ptr %bc_acked, align 4
  %inc = add i16 %ackers.022, 1
  br label %for.inc

for.inc:                                          ; preds = %tipc_group_update_member.exit, %tipc_group_is_receiver.exit.for.inc_crit_edge, %tipc_group_is_receiver.exit.for.inc_crit_edge23
  %ackers.1 = phi i16 [ %inc, %tipc_group_update_member.exit ], [ %ackers.022, %tipc_group_is_receiver.exit.for.inc_crit_edge ], [ %ackers.022, %tipc_group_is_receiver.exit.for.inc_crit_edge23 ]
  %call3 = tail call ptr @rb_next(ptr noundef nonnull %n.018) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.tipc_group_is_receiver.exit_crit_edge

for.inc.tipc_group_is_receiver.exit_crit_edge:    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_is_receiver.exit

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ackers.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %ackers.1, %for.inc.for.end_crit_edge ]
  br i1 %ack, label %if.then5, label %for.end.if.end6_crit_edge

for.end.if.end6_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %bc_ackers = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 15
  %33 = ptrtoint ptr %bc_ackers to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %ackers.0.lcssa, ptr %bc_ackers, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.end.if.end6_crit_edge
  %34 = ptrtoint ptr %bc_snd_nxt to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %bc_snd_nxt, align 2
  %inc8 = add i16 %35, 1
  store i16 %inc8, ptr %bc_snd_nxt, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_group_cong(ptr nocapture noundef readonly %grp, i32 noundef %dnode, i32 noundef %dport, i32 noundef %len, ptr nocapture noundef writeonly %mbr) local_unnamed_addr #1 align 64 {
entry:
  %xmitq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %xmitq) #11
  %0 = getelementptr inbounds i8, ptr %xmitq, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %conv.i.i = zext i32 %dnode to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %dport to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %2 = ptrtoint ptr %grp to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.024.i.i = load ptr, ptr %grp, align 4
  %tobool.not25.i.i = icmp eq ptr %n.024.i.i, null
  br i1 %tobool.not25.i.i, label %entry.if.then_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

while.body.i.i:                                   ; preds = %if.end13.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %n.026.i.i = phi ptr [ %n.0.i.i, %if.end13.i.i.while.body.i.i_crit_edge ], [ %n.024.i.i, %entry.while.body.i.i_crit_edge ]
  %node2.i.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %node2.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %node2.i.i, align 4
  %conv3.i.i = zext i32 %4 to i64
  %shl4.i.i = shl nuw i64 %conv3.i.i, 32
  %port5.i.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %port5.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port5.i.i, align 4
  %conv6.i.i = zext i32 %6 to i64
  %or7.i.i = or i64 %shl4.i.i, %conv6.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i.i, i64 %or7.i.i)
  %cmp.i.i = icmp ult i64 %or.i.i, %or7.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.026.i.i, i32 0, i32 2
  br label %if.end13.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i.i, i64 %or7.i.i)
  %cmp9.i.i = icmp ugt i64 %or.i.i, %or7.i.i
  br i1 %cmp9.i.i, label %if.then11.i.i, label %tipc_group_is_receiver.exit.i

if.then11.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.026.i.i, i32 0, i32 1
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then11.i.i, %if.then.i.i
  %n.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then11.i.i ]
  %7 = ptrtoint ptr %n.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %n.0.i.i = load ptr, ptr %n.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %n.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end13.i.i.if.then_crit_edge, label %if.end13.i.i.while.body.i.i_crit_edge

if.end13.i.i.while.body.i.i_crit_edge:            ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

if.end13.i.i.if.then_crit_edge:                   ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

tipc_group_is_receiver.exit.i:                    ; preds = %if.else.i.i
  %state.i.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %9, label %tipc_group_is_receiver.exit [
    i32 7, label %tipc_group_is_receiver.exit.i.if.then_crit_edge
    i32 0, label %tipc_group_is_receiver.exit.i.if.then_crit_edge57
  ]

tipc_group_is_receiver.exit.i.if.then_crit_edge57: ; preds = %tipc_group_is_receiver.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

tipc_group_is_receiver.exit.i.if.then_crit_edge:  ; preds = %tipc_group_is_receiver.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

tipc_group_is_receiver.exit:                      ; preds = %tipc_group_is_receiver.exit.i
  %11 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.i.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %12, label %if.end [
    i32 7, label %tipc_group_is_receiver.exit.if.then_crit_edge
    i32 0, label %tipc_group_is_receiver.exit.if.then_crit_edge58
  ]

tipc_group_is_receiver.exit.if.then_crit_edge58:  ; preds = %tipc_group_is_receiver.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

tipc_group_is_receiver.exit.if.then_crit_edge:    ; preds = %tipc_group_is_receiver.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %tipc_group_is_receiver.exit.if.then_crit_edge, %tipc_group_is_receiver.exit.if.then_crit_edge58, %tipc_group_is_receiver.exit.i.if.then_crit_edge, %tipc_group_is_receiver.exit.i.if.then_crit_edge57, %if.end13.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  %14 = ptrtoint ptr %mbr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %mbr, align 4
  br label %cleanup

if.end:                                           ; preds = %tipc_group_is_receiver.exit
  %15 = ptrtoint ptr %mbr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %n.026.i.i, ptr %mbr, align 4
  %window = getelementptr inbounds %struct.tipc_member, ptr %n.026.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %window, align 2
  %conv = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %len)
  %cmp.not = icmp slt i32 %conv, %len
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %open = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 16
  %18 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %open, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %19, align 1
  %advertised = getelementptr inbounds %struct.tipc_member, ptr %n.026.i.i, i32 0, i32 9
  %21 = ptrtoint ptr %advertised to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %advertised, align 4
  %23 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp7 = icmp eq i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %22)
  %cmp9 = icmp eq i16 %22, 65
  %or.cond = select i1 %cmp7, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.end4.cleanup_crit_edge, label %if.end12

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp13 = icmp eq i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 780, i16 %22)
  %cmp16 = icmp eq i16 %22, 780
  %or.cond44 = select i1 %cmp13, i1 %cmp16, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp20 = icmp eq i32 %24, 3
  %or.cond45 = select i1 %cmp20, i1 %cmp9, i1 false
  %or.cond50 = select i1 %or.cond44, i1 true, i1 %or.cond45
  br i1 %or.cond50, label %if.end12.cleanup_crit_edge, label %if.end26

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %xmitq to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %xmitq, ptr %xmitq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %xmitq, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %xmitq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %27 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %qlen.i, align 4
  call fastcc void @tipc_group_proto_xmit(ptr noundef %grp, ptr noundef nonnull %n.026.i.i, i32 noundef 2, ptr noundef nonnull %xmitq)
  %net = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 5
  %28 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net, align 4
  %call27 = call i32 @tipc_node_distr_xmit(ptr noundef %29, ptr noundef nonnull %xmitq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end12.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ true, %if.end26 ], [ false, %if.then ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.end4.cleanup_crit_edge ], [ true, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %xmitq) #11
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_group_bc_cong(ptr noundef %grp, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  %m = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #11
  %bc_ackers = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 15
  %0 = ptrtoint ptr %bc_ackers to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bc_ackers, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %open = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 16
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %open, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %3, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %small_win = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 1
  %5 = ptrtoint ptr %small_win to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %small_win, align 4
  %cmp.i.not = icmp eq ptr %6, %small_win
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %window = getelementptr i8, ptr %6, i32 86
  %7 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %window, align 2
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %len)
  %cmp.not = icmp slt i32 %conv, %len
  br i1 %cmp.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %node = getelementptr i8, ptr %6, i32 68
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %node, align 4
  %port = getelementptr i8, ptr %6, i32 72
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %call8 = call zeroext i1 @tipc_group_cong(ptr noundef %grp, i32 noundef %10, i32 noundef %12, i32 noundef %len, ptr noundef nonnull %m)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ %call8, %if.end7 ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #11
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_group_filter_msg(ptr noundef %grp, ptr noundef %inputq, ptr noundef %xmitq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inputq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inputq, align 4
  %cmp.i.i = icmp eq ptr %1, %inputq
  %tobool.not.i155 = icmp eq ptr %1, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i155
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %inputq, i32 0, i32 1
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.83, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %1, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.83, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %prev17.i.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %7, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = and i32 %13, 31457280
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, 12582912
  %..i = select i1 %cmp.i.not.i, i32 3, i32 6, !prof !44
  %arrayidx.i.i = getelementptr [15 x i32], ptr %11, i32 0, i32 %..i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %retval.0.i = load i32, ptr %arrayidx.i.i, align 4
  %16 = and i32 %13, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %16)
  %cmp.i = icmp eq i32 %16, 402653184
  %17 = lshr i32 %13, 19
  %shl.i.i.i.i = and i32 %17, 60
  %m.addr.0.idx.i = select i1 %cmp.i, i32 %shl.i.i.i.i, i32 0
  %m.addr.0.i = getelementptr i8, ptr %11, i32 %m.addr.0.idx.i
  %arrayidx.i.i111 = getelementptr [15 x i32], ptr %m.addr.0.i, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx.i.i111 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i111, align 4
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %11, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool5.not = icmp sgt i32 %21, -1
  br i1 %tobool5.not, label %if.end.drop_crit_edge, label %if.end7

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

if.end7:                                          ; preds = %if.end
  %conv.i = zext i32 %retval.0.i to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %19 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %22 = ptrtoint ptr %grp to i32
  call void @__asan_load4_noabort(i32 %22)
  %n.024.i = load ptr, ptr %grp, align 4
  %tobool.not25.i = icmp eq ptr %n.024.i, null
  br i1 %tobool.not25.i, label %if.end7.drop_crit_edge, label %if.end7.while.body.i_crit_edge

if.end7.while.body.i_crit_edge:                   ; preds = %if.end7
  br label %while.body.i

if.end7.drop_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %if.end7.while.body.i_crit_edge
  %n.026.i = phi ptr [ %n.0.i, %if.end13.i.while.body.i_crit_edge ], [ %n.024.i, %if.end7.while.body.i_crit_edge ]
  %node2.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 5
  %23 = ptrtoint ptr %node2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %node2.i, align 4
  %conv3.i = zext i32 %24 to i64
  %shl4.i = shl nuw i64 %conv3.i, 32
  %port5.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 6
  %25 = ptrtoint ptr %port5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port5.i, align 4
  %conv6.i = zext i32 %26 to i64
  %or7.i = or i64 %shl4.i, %conv6.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %or7.i)
  %cmp.i112 = icmp ult i64 %or.i, %or7.i
  br i1 %cmp.i112, label %if.then.i113, label %if.else.i

if.then.i113:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.026.i, i32 0, i32 2
  br label %if.end13.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %or7.i)
  %cmp9.i = icmp ugt i64 %or.i, %or7.i
  br i1 %cmp9.i, label %if.then11.i, label %tipc_group_is_sender.exit

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.026.i, i32 0, i32 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.then.i113
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i113 ], [ %rb_right.i, %if.then11.i ]
  %27 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i114 = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i114, label %if.end13.i.drop_crit_edge, label %if.end13.i.while.body.i_crit_edge

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end13.i.drop_crit_edge:                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

tipc_group_is_sender.exit:                        ; preds = %if.else.i
  %node2.i.le = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 5
  %state.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 8
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %30 = icmp ugt i32 %29, 1
  br i1 %30, label %if.end11, label %tipc_group_is_sender.exit.drop_crit_edge

tipc_group_is_sender.exit.drop_crit_edge:         ; preds = %tipc_group_is_sender.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

if.end11:                                         ; preds = %tipc_group_is_sender.exit
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %11, i32 0, i32 10
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i = lshr i32 %32, 16
  %conv.i116 = trunc i32 %shr.i.i to i16
  %bc_rcv_nxt = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 11
  %33 = ptrtoint ptr %bc_rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bc_rcv_nxt, align 4
  %35 = xor i16 %34, -1
  %36 = add i16 %conv.i116, %35
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %36)
  %tobool.not.i117 = icmp sgt i16 %36, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %conv.i116)
  %cmp.i118 = icmp eq i16 %34, %conv.i116
  %tobool14.not = or i1 %cmp.i118, %tobool.not.i117
  br i1 %tobool14.not, label %if.end16, label %if.end11.drop_crit_edge

if.end11.drop_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

if.end16:                                         ; preds = %if.end11
  %instance = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 7
  %37 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %instance, align 4
  %orig_member = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %39 = ptrtoint ptr %orig_member to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %orig_member, align 8
  %deferredq = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i.i = lshr i32 %41, 16
  %conv.i.i = trunc i32 %shr.i.i.i to i16
  %42 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %shr.i.i29.i = lshr i32 %43, 29
  %call2.off.i = add nsw i32 %shr.i.i29.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2.off.i)
  %switch.i = icmp ult i32 %call2.off.i, 2
  br i1 %switch.i, label %if.end16.for.cond.i_crit_edge, label %if.end16.tipc_group_sort_msg.exit_crit_edge

if.end16.tipc_group_sort_msg.exit_crit_edge:      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_sort_msg.exit

if.end16.for.cond.i_crit_edge:                    ; preds = %if.end16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end16.for.cond.i_crit_edge
  %_skb.0.in.i = phi ptr [ %_skb.0.i, %for.body.i.for.cond.i_crit_edge ], [ %deferredq, %if.end16.for.cond.i_crit_edge ]
  %44 = ptrtoint ptr %_skb.0.in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %_skb.0.i = load ptr, ptr %_skb.0.in.i, align 4
  %cmp5.not.i = icmp eq ptr %_skb.0.i, %deferredq
  br i1 %cmp5.not.i, label %for.cond.i.tipc_group_sort_msg.exit_crit_edge, label %for.body.i

for.cond.i.tipc_group_sort_msg.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_sort_msg.exit

for.body.i:                                       ; preds = %for.cond.i
  %data.i30.i = getelementptr inbounds %struct.sk_buff, ptr %_skb.0.i, i32 0, i32 19
  %45 = ptrtoint ptr %data.i30.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i30.i, align 4
  %arrayidx.i.i.i31.i = getelementptr [15 x i32], ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %arrayidx.i.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i.i31.i, align 4
  %shr.i.i32.i = lshr i32 %48, 16
  %conv.i33.i = trunc i32 %shr.i.i32.i to i16
  %49 = xor i16 %conv.i33.i, -1
  %50 = add i16 %49, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %50)
  %tobool.not.i.i = icmp sgt i16 %50, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i33.i, i16 %conv.i.i)
  %cmp.i.i120 = icmp eq i16 %conv.i33.i, %conv.i.i
  %tobool.not.i121 = or i1 %cmp.i.i120, %tobool.not.i.i
  br i1 %tobool.not.i121, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.tipc_group_sort_msg.exit_crit_edge

for.body.i.tipc_group_sort_msg.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_sort_msg.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

tipc_group_sort_msg.exit:                         ; preds = %for.body.i.tipc_group_sort_msg.exit_crit_edge, %for.cond.i.tipc_group_sort_msg.exit_crit_edge, %if.end16.tipc_group_sort_msg.exit_crit_edge
  %defq.sink40.i = phi ptr [ %deferredq, %if.end16.tipc_group_sort_msg.exit_crit_edge ], [ %deferredq, %for.cond.i.tipc_group_sort_msg.exit_crit_edge ], [ %_skb.0.i, %for.body.i.tipc_group_sort_msg.exit_crit_edge ]
  %prev.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %defq.sink40.i, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i, align 4
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %defq.sink40.i, ptr %1, align 8
  %54 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %prev9.i.i, align 4
  store volatile ptr %1, ptr %prev.i.i.i, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %1, ptr %52, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %57, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %58 = ptrtoint ptr %deferredq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %deferredq, align 4
  %cmp.i122160 = icmp eq ptr %59, %deferredq
  %tobool18.not156161 = icmp eq ptr %59, null
  %tobool18.not162 = or i1 %cmp.i122160, %tobool18.not156161
  br i1 %tobool18.not162, label %tipc_group_sort_msg.exit.cleanup_crit_edge, label %while.body.lr.ph

tipc_group_sort_msg.exit.cleanup_crit_edge:       ; preds = %tipc_group_sort_msg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %tipc_group_sort_msg.exit
  %events = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 18
  %instance29 = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %inputq, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %60 = phi ptr [ %59, %while.body.lr.ph ], [ %151, %while.cond.backedge.while.body_crit_edge ]
  %data.i123 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 19
  %61 = ptrtoint ptr %data.i123 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i123, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %and.i.i.i = lshr i32 %64, 10
  %div1.i = and i32 %and.i.i.i, 127
  %add.i = add nuw nsw i32 %div1.i, 1
  %arrayidx.i.i.i126 = getelementptr [15 x i32], ptr %62, i32 0, i32 10
  %65 = ptrtoint ptr %arrayidx.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i.i126, align 4
  %shr.i.i127 = lshr i32 %66, 16
  %conv.i128 = trunc i32 %shr.i.i127 to i16
  %67 = ptrtoint ptr %bc_rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %bc_rcv_nxt, align 4
  %69 = sub i16 %68, %conv.i128
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %69)
  %tobool25.not = icmp sgt i16 %69, -1
  br i1 %tobool25.not, label %if.end27, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %while.body
  %arrayidx.i.i.i124 = getelementptr [15 x i32], ptr %62, i32 0, i32 1
  %70 = ptrtoint ptr %arrayidx.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i.i124, align 4
  %shr.i.i125 = lshr i32 %71, 29
  %72 = zext i32 %shr.i.i125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %shr.i.i125, label %if.end27.sw.epilog_crit_edge [
    i32 6, label %sw.bb
    i32 5, label %if.end27.sw.bb32_crit_edge
    i32 4, label %sw.bb36
  ]

if.end27.sw.bb32_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb32

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i129 = getelementptr [15 x i32], ptr %62, i32 0, i32 9
  %73 = ptrtoint ptr %arrayidx.i.i129 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.i129, align 4
  %75 = ptrtoint ptr %instance29 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %instance29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp.not = icmp eq i32 %74, %76
  %not.cmp.not = xor i1 %cmp.not, true
  br label %sw.bb32

sw.bb32:                                          ; preds = %sw.bb, %if.end27.sw.bb32_crit_edge
  %deliver.0 = phi i1 [ true, %if.end27.sw.bb32_crit_edge ], [ %cmp.not, %sw.bb ]
  %update.0 = phi i1 [ false, %if.end27.sw.bb32_crit_edge ], [ %not.cmp.not, %sw.bb ]
  %inc = add i16 %68, 1
  %77 = ptrtoint ptr %bc_rcv_nxt to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %inc, ptr %bc_rcv_nxt, align 4
  %78 = ptrtoint ptr %arrayidx.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i.i.i126, align 4
  %conv.i131158 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i131158)
  %tobool35 = icmp ne i32 %conv.i131158, 0
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %81)
  %cmp37 = icmp eq i32 %81, 7
  %82 = ptrtoint ptr %events to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %events, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool40.not = icmp ne i8 %83, 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb36, %sw.bb32, %if.end27.sw.epilog_crit_edge
  %ack.0.off0 = phi i1 [ false, %if.end27.sw.epilog_crit_edge ], [ %tobool35, %sw.bb32 ], [ false, %sw.bb36 ]
  %deliver.1.off0 = phi i1 [ true, %if.end27.sw.epilog_crit_edge ], [ %deliver.0, %sw.bb32 ], [ %tobool40.not, %sw.bb36 ]
  %update.1.off0 = phi i1 [ false, %if.end27.sw.epilog_crit_edge ], [ %update.0, %sw.bb32 ], [ false, %sw.bb36 ]
  %leave.2.off0 = phi i1 [ false, %if.end27.sw.epilog_crit_edge ], [ false, %sw.bb32 ], [ %cmp37, %sw.bb36 ]
  %84 = ptrtoint ptr %deferredq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %deferredq, align 4
  %cmp.i.i132 = icmp eq ptr %85, %deferredq
  %tobool.not.i134157 = icmp eq ptr %85, null
  %tobool.not.i134 = or i1 %cmp.i.i132, %tobool.not.i134157
  br i1 %tobool.not.i134, label %sw.epilog.__skb_dequeue.exit140_crit_edge, label %if.then.i139

sw.epilog.__skb_dequeue.exit140_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_dequeue.exit140

if.then.i139:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %qlen.i.i.i.i, align 4
  %sub.i.i136 = add i32 %87, -1
  store volatile i32 %sub.i.i136, ptr %qlen.i.i.i.i, align 4
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %85, align 8
  %prev9.i.i137 = getelementptr inbounds %struct.anon.83, ptr %85, i32 0, i32 1
  %90 = ptrtoint ptr %prev9.i.i137 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev9.i.i137, align 4
  store ptr null, ptr %prev9.i.i137, align 4
  store ptr null, ptr %85, align 8
  %prev17.i.i138 = getelementptr inbounds %struct.anon.83, ptr %89, i32 0, i32 1
  %92 = ptrtoint ptr %prev17.i.i138 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %91, ptr %prev17.i.i138, align 4
  %93 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %89, ptr %91, align 8
  br label %__skb_dequeue.exit140

__skb_dequeue.exit140:                            ; preds = %if.then.i139, %sw.epilog.__skb_dequeue.exit140_crit_edge
  br i1 %deliver.1.off0, label %if.then45, label %if.else

if.then45:                                        ; preds = %__skb_dequeue.exit140
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev.i.i, align 4
  %96 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %inputq, ptr %60, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %60, i32 0, i32 1
  %97 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %95, ptr %prev10.i.i.i, align 4
  store volatile ptr %60, ptr %prev.i.i, align 4
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %60, ptr %95, align 4
  %99 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i = add i32 %100, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i, align 4
  br label %if.end46

if.else:                                          ; preds = %__skb_dequeue.exit140
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %60, i32 noundef 0) #11
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then45
  br i1 %ack.0.off0, label %if.then48, label %if.end46.if.end49_crit_edge

if.end46.if.end49_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @tipc_group_proto_xmit(ptr noundef %grp, ptr noundef %n.026.i, i32 noundef 3, ptr noundef %xmitq)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end46.if.end49_crit_edge
  br i1 %leave.2.off0, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end49
  %101 = ptrtoint ptr %deferredq to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %deferredq, align 4
  %cmp.i.i2.i = icmp eq ptr %102, %deferredq
  %tobool.not.i13.i = icmp eq ptr %102, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %if.then51.__skb_queue_purge.exit_crit_edge, label %if.then51.while.body.i143_crit_edge

if.then51.while.body.i143_crit_edge:              ; preds = %if.then51
  br label %while.body.i143

if.then51.__skb_queue_purge.exit_crit_edge:       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_queue_purge.exit

while.body.i143:                                  ; preds = %while.body.i143.while.body.i143_crit_edge, %if.then51.while.body.i143_crit_edge
  %103 = phi ptr [ %113, %while.body.i143.while.body.i143_crit_edge ], [ %102, %if.then51.while.body.i143_crit_edge ]
  %104 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %qlen.i.i.i.i, align 4
  %sub.i.i.i = add i32 %105, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i.i, align 4
  %106 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %103, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.83, ptr %103, i32 0, i32 1
  %108 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %103, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.83, ptr %107, i32 0, i32 1
  %110 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %109, ptr %prev17.i.i.i, align 4
  %111 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %107, ptr %109, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %103, i32 noundef 0) #11
  %112 = ptrtoint ptr %deferredq to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %deferredq, align 4
  %cmp.i.i.i = icmp eq ptr %113, %deferredq
  %tobool.not.i1.i = icmp eq ptr %113, null
  %tobool.not.i.i142 = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i142, label %while.body.i143.__skb_queue_purge.exit_crit_edge, label %while.body.i143.while.body.i143_crit_edge

while.body.i143.while.body.i143_crit_edge:        ; preds = %while.body.i143
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i143

while.body.i143.__skb_queue_purge.exit_crit_edge: ; preds = %while.body.i143
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i143.__skb_queue_purge.exit_crit_edge, %if.then51.__skb_queue_purge.exit_crit_edge
  tail call void @rb_erase(ptr noundef %n.026.i, ptr noundef %grp) #11
  %member_cnt.i = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 11
  %114 = ptrtoint ptr %member_cnt.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %member_cnt.i, align 4
  %dec.i = add i16 %115, -1
  store i16 %dec.i, ptr %member_cnt.i, align 4
  %bc_ackers.i = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 15
  %116 = ptrtoint ptr %bc_ackers.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %bc_ackers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool.not.i144 = icmp eq i16 %117, 0
  br i1 %tobool.not.i144, label %__skb_queue_purge.exit.if.end.i_crit_edge, label %land.lhs.true.i147

__skb_queue_purge.exit.if.end.i_crit_edge:        ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i147:                               ; preds = %__skb_queue_purge.exit
  %bc_acked.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 13
  %118 = ptrtoint ptr %bc_acked.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %bc_acked.i, align 4
  %bc_snd_nxt.i = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 14
  %120 = ptrtoint ptr %bc_snd_nxt.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %bc_snd_nxt.i, align 2
  %sub.i = add i16 %121, -1
  %122 = sub i16 %119, %121
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %122)
  %tobool.not.i.i145 = icmp sgt i16 %122, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i, i16 %119)
  %cmp.i.i146 = icmp eq i16 %sub.i, %119
  %tobool3.not.i = or i1 %cmp.i.i146, %tobool.not.i.i145
  br i1 %tobool3.not.i, label %land.lhs.true.i147.if.end.i_crit_edge, label %if.then.i148

land.lhs.true.i147.if.end.i_crit_edge:            ; preds = %land.lhs.true.i147
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i148:                                     ; preds = %land.lhs.true.i147
  call void @__sanitizer_cov_trace_pc() #13
  %dec5.i = add i16 %117, -1
  %123 = ptrtoint ptr %bc_ackers.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %dec5.i, ptr %bc_ackers.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i148, %land.lhs.true.i147.if.end.i_crit_edge, %__skb_queue_purge.exit.if.end.i_crit_edge
  %list.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i149 = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 1, i32 1
  %124 = ptrtoint ptr %prev.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i.i.i149, align 4
  %126 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev1.i.i.i.i, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %127, ptr %125, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %130 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 1, i32 1
  %131 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  %small_win.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 2
  %call.i.i25.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %small_win.i) #11
  br i1 %call.i.i25.i, label %if.end.i.i28.i, label %list_del_init.exit.i.list_del_init.exit30.i_crit_edge

list_del_init.exit.i.list_del_init.exit30.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit30.i

if.end.i.i28.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i26.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 2, i32 1
  %132 = ptrtoint ptr %prev.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %prev.i.i26.i, align 4
  %134 = ptrtoint ptr %small_win.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %small_win.i, align 4
  %prev1.i.i.i27.i = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %prev1.i.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %133, ptr %prev1.i.i.i27.i, align 4
  %137 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %135, ptr %133, align 4
  br label %list_del_init.exit30.i

list_del_init.exit30.i:                           ; preds = %if.end.i.i28.i, %list_del_init.exit.i.list_del_init.exit30.i_crit_edge
  %138 = ptrtoint ptr %small_win.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %small_win.i, ptr %small_win.i, align 4
  %prev.i3.i29.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 2, i32 1
  %139 = ptrtoint ptr %prev.i3.i29.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %small_win.i, ptr %prev.i3.i29.i, align 4
  %140 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %state.i, align 4
  %.off.i.i = add i32 %141, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  br i1 %switch.i.i, label %if.then.i.i, label %list_del_init.exit30.i.tipc_group_decr_active.exit.i_crit_edge

list_del_init.exit30.i.tipc_group_decr_active.exit.i_crit_edge: ; preds = %list_del_init.exit30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_decr_active.exit.i

if.then.i.i:                                      ; preds = %list_del_init.exit30.i
  call void @__sanitizer_cov_trace_pc() #13
  %active_cnt.i.i = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 12
  %142 = ptrtoint ptr %active_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %active_cnt.i.i, align 2
  %dec.i.i = add i16 %143, -1
  store i16 %dec.i.i, ptr %active_cnt.i.i, align 2
  br label %tipc_group_decr_active.exit.i

tipc_group_decr_active.exit.i:                    ; preds = %if.then.i.i, %list_del_init.exit30.i.tipc_group_decr_active.exit.i_crit_edge
  %144 = ptrtoint ptr %node2.i.le to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %node2.i.le, align 4
  %call.i.i = tail call ptr @rb_first(ptr noundef %grp) #11
  %tobool.not7.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not7.i.i, label %tipc_group_decr_active.exit.i.if.then8.i_crit_edge, label %tipc_group_decr_active.exit.i.for.body.i.i_crit_edge

tipc_group_decr_active.exit.i.for.body.i.i_crit_edge: ; preds = %tipc_group_decr_active.exit.i
  br label %for.body.i.i

tipc_group_decr_active.exit.i.if.then8.i_crit_edge: ; preds = %tipc_group_decr_active.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %tipc_group_decr_active.exit.i.for.body.i.i_crit_edge
  %n.08.i.i = phi ptr [ %call2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %tipc_group_decr_active.exit.i.for.body.i.i_crit_edge ]
  %node1.i.i = getelementptr inbounds %struct.tipc_member, ptr %n.08.i.i, i32 0, i32 5
  %146 = ptrtoint ptr %node1.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %node1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %145)
  %cmp.i31.i = icmp eq i32 %147, %145
  br i1 %cmp.i31.i, label %for.body.i.i.tipc_group_delete_member.exit_crit_edge, label %for.inc.i.i

for.body.i.i.tipc_group_delete_member.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_delete_member.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %call2.i.i = tail call ptr @rb_next(ptr noundef nonnull %n.08.i.i) #11
  %tobool.not.i32.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i32.i, label %for.inc.i.i.if.then8.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.then8.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8.i

if.then8.i:                                       ; preds = %for.inc.i.i.if.then8.i_crit_edge, %tipc_group_decr_active.exit.i.if.then8.i_crit_edge
  %dests.i = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 4
  %148 = ptrtoint ptr %node2.i.le to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %node2.i.le, align 4
  tail call void @tipc_nlist_del(ptr noundef %dests.i, i32 noundef %149) #11
  br label %tipc_group_delete_member.exit

tipc_group_delete_member.exit:                    ; preds = %if.then8.i, %for.body.i.i.tipc_group_delete_member.exit_crit_edge
  tail call void @kfree(ptr noundef %n.026.i) #11
  br label %cleanup

if.end52:                                         ; preds = %if.end49
  br i1 %update.1.off0, label %if.end55, label %if.end52.while.cond.backedge_crit_edge

if.end52.while.cond.backedge_crit_edge:           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end55:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tipc_group_update_rcv_win(ptr noundef %grp, i32 noundef %add.i, i32 noundef %retval.0.i, i32 noundef %19, ptr noundef %xmitq)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end55, %if.end52.while.cond.backedge_crit_edge
  %150 = ptrtoint ptr %deferredq to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %deferredq, align 4
  %cmp.i122 = icmp eq ptr %151, %deferredq
  %tobool18.not156 = icmp eq ptr %151, null
  %tobool18.not = or i1 %cmp.i122, %tobool18.not156
  br i1 %tobool18.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

drop:                                             ; preds = %if.end11.drop_crit_edge, %tipc_group_is_sender.exit.drop_crit_edge, %if.end13.i.drop_crit_edge, %if.end7.drop_crit_edge, %if.end.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %drop, %while.cond.backedge.cleanup_crit_edge, %tipc_group_delete_member.exit, %while.body.cleanup_crit_edge, %tipc_group_sort_msg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_group_update_rcv_win(ptr noundef %grp, i32 noundef %blks, i32 noundef %node, i32 noundef %port, ptr noundef %xmitq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %active1 = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 3
  %max_active2 = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 13
  %0 = ptrtoint ptr %max_active2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_active2, align 4
  %conv = zext i16 %1 to i32
  %mul = mul nuw nsw i32 %conv, 3
  %div139 = lshr i32 %mul, 2
  %active_cnt3 = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 12
  %2 = ptrtoint ptr %active_cnt3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %active_cnt3, align 2
  %conv4 = zext i16 %3 to i32
  %conv.i = zext i32 %node to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %port to i64
  %or.i = or i64 %shl.i, %conv1.i
  %4 = ptrtoint ptr %grp to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.024.i = load ptr, ptr %grp, align 4
  %tobool.not25.i = icmp eq ptr %n.024.i, null
  br i1 %tobool.not25.i, label %entry.cleanup_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %n.026.i = phi ptr [ %n.0.i, %if.end13.i.while.body.i_crit_edge ], [ %n.024.i, %entry.while.body.i_crit_edge ]
  %node2.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 5
  %5 = ptrtoint ptr %node2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %node2.i, align 4
  %conv3.i = zext i32 %6 to i64
  %shl4.i = shl nuw i64 %conv3.i, 32
  %port5.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 6
  %7 = ptrtoint ptr %port5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port5.i, align 4
  %conv6.i = zext i32 %8 to i64
  %or7.i = or i64 %shl4.i, %conv6.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %or7.i)
  %cmp.i = icmp ult i64 %or.i, %or7.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.026.i, i32 0, i32 2
  br label %if.end13.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %or7.i)
  %cmp9.i = icmp ugt i64 %or.i, %or7.i
  br i1 %cmp9.i, label %if.then11.i, label %if.end

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.026.i, i32 0, i32 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then11.i ]
  %9 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end13.i.cleanup_crit_edge, label %if.end13.i.while.body.i_crit_edge

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.else.i
  %advertised = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 9
  %10 = ptrtoint ptr %advertised to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %advertised, align 4
  %12 = trunc i32 %blks to i16
  %conv6 = sub i16 %11, %12
  store i16 %conv6, ptr %advertised, align 4
  %state = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 8
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %14, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb31
    i32 6, label %sw.bb46
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %1)
  %cmp.not = icmp ugt i16 %3, %1
  br i1 %cmp.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %sw.bb
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %state, align 4
  %list = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %18, ptr noundef %active1) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_add_tail.exit_crit_edge

if.then8.list_add_tail.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list, ptr %prev.i, align 4
  %20 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %active1, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %list, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then8.list_add_tail.exit_crit_edge
  %23 = ptrtoint ptr %active_cnt3 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %active_cnt3, align 2
  %inc = add i16 %24, 1
  store i16 %inc, ptr %active_cnt3, align 2
  tail call fastcc void @tipc_group_proto_xmit(ptr noundef %grp, ptr noundef nonnull %n.026.i, i32 noundef 2, ptr noundef %xmitq)
  br label %if.end13

if.else:                                          ; preds = %sw.bb
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %state, align 4
  %list12 = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 1
  %pending = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 2
  %prev.i140 = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev.i140 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i140, align 4
  %call.i.i141 = tail call zeroext i1 @__list_add_valid(ptr noundef %list12, ptr noundef %27, ptr noundef %pending) #11
  br i1 %call.i.i141, label %if.end.i.i143, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end.i.i143:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %prev.i140 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list12, ptr %prev.i140, align 4
  %29 = ptrtoint ptr %list12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pending, ptr %list12, align 4
  %prev3.i.i142 = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev3.i.i142 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i142, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list12, ptr %27, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end.i.i143, %if.else.if.end13_crit_edge, %list_add_tail.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %div139, i32 %conv4)
  %cmp14 = icmp ugt i32 %div139, %conv4
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %32 = ptrtoint ptr %active1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %active1, align 4
  %cmp.i145.not = icmp eq ptr %33, %active1
  br i1 %cmp.i145.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end17
  %state21 = getelementptr i8, ptr %33, i32 88
  %34 = ptrtoint ptr %state21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 5, ptr %state21, align 4
  %call.i.i147 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %33) #11
  br i1 %call.i.i147, label %if.end.i.i148, label %if.then20.list_del_init.exit_crit_edge

if.then20.list_del_init.exit_crit_edge:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i148:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %33, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i148, %if.then20.list_del_init.exit_crit_edge
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %33, ptr %33, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %33, ptr %prev.i3.i, align 4
  %node.i = getelementptr i8, ptr %33, i32 76
  %43 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %node.i, align 4
  %net.i = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 5
  %45 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net.i, align 4
  %call.i = tail call fastcc i32 @tipc_own_addr(ptr noundef %46) #11
  %port.i = getelementptr i8, ptr %33, i32 80
  %47 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port.i, align 4
  %portid.i = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 10
  %49 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %portid.i, align 4
  %call1.i = tail call ptr @tipc_msg_create(i32 noundef 9, i32 noundef 4, i32 noundef 40, i32 noundef 0, i32 noundef %44, i32 noundef %call.i, i32 noundef %48, i32 noundef %50, i32 noundef 0) #11
  %tobool.not.i149 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i149, label %list_del_init.exit.cleanup_crit_edge, label %if.end.i

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 19
  %51 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %or.i.i104.i = or i32 %54, 524288
  store i32 %or.i.i104.i, ptr %52, align 4
  %prev.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %xmitq, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i.i, align 4
  %57 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %xmitq, ptr %call1.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.83, ptr %call1.i, i32 0, i32 1
  %58 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %call1.i, ptr %prev.i.i.i, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %call1.i, ptr %56, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %60 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %61, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %pending25 = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 2
  %62 = ptrtoint ptr %pending25 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pending25, align 4
  %add.ptr28 = getelementptr i8, ptr %63, i32 -12
  %call.i.i150 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %63) #11
  br i1 %call.i.i150, label %if.end.i.i153, label %if.end23.list_del_init.exit155_crit_edge

if.end23.list_del_init.exit155_crit_edge:         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit155

if.end.i.i153:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i151 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i151 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i151, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 4
  %prev1.i.i.i152 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i152 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i152, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del_init.exit155

list_del_init.exit155:                            ; preds = %if.end.i.i153, %if.end23.list_del_init.exit155_crit_edge
  %70 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %63, ptr %63, align 4
  %prev.i3.i154 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i3.i154 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %63, ptr %prev.i3.i154, align 4
  %state30 = getelementptr i8, ptr %63, i32 88
  %72 = ptrtoint ptr %state30 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %state30, align 4
  tail call fastcc void @tipc_group_proto_xmit(ptr noundef %grp, ptr noundef %add.ptr28, i32 noundef 2, ptr noundef %xmitq)
  br label %cleanup

sw.bb31:                                          ; preds = %if.end
  %list32 = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 1
  %73 = ptrtoint ptr %list32 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %list32, align 4
  %cmp.i156.not = icmp eq ptr %74, %active1
  br i1 %cmp.i156.not, label %sw.bb31.if.end39_crit_edge, label %if.then36

sw.bb31.if.end39_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then36:                                        ; preds = %sw.bb31
  %call.i.i158 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list32) #11
  br i1 %call.i.i158, label %if.end.i.i161, label %if.then36.__list_del_entry.exit.i_crit_edge

if.then36.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i161:                                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i159 = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %prev.i.i159 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i159, align 4
  %77 = ptrtoint ptr %list32 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %list32, align 4
  %prev1.i.i.i160 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i.i160 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev1.i.i.i160, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %76, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i161, %if.then36.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 3, i32 1
  %81 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list32, ptr noundef %82, ptr noundef %active1) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end39_crit_edge

__list_del_entry.exit.i.if.end39_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %list32, ptr %prev.i2.i, align 4
  %84 = ptrtoint ptr %list32 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %active1, ptr %list32, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 1, i32 1
  %85 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev3.i.i.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %list32, ptr %82, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end39_crit_edge, %sw.bb31.if.end39_crit_edge
  %87 = ptrtoint ptr %advertised to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %advertised, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 585, i16 %88)
  %cmp42 = icmp ugt i16 %88, 585
  br i1 %cmp42, label %if.end39.cleanup_crit_edge, label %if.end45

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @tipc_group_proto_xmit(ptr noundef %grp, ptr noundef nonnull %n.026.i, i32 noundef 2, ptr noundef %xmitq)
  br label %cleanup

sw.bb46:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %conv6)
  %cmp49 = icmp ugt i16 %conv6, 65
  br i1 %cmp49, label %sw.bb46.cleanup_crit_edge, label %if.end52

sw.bb46.cleanup_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end52:                                         ; preds = %sw.bb46
  %89 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 2, ptr %state, align 4
  %90 = ptrtoint ptr %active_cnt3 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %active_cnt3, align 2
  %dec = add i16 %91, -1
  store i16 %dec, ptr %active_cnt3, align 2
  %92 = ptrtoint ptr %advertised to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %advertised, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %93)
  %cmp57 = icmp ult i16 %93, 65
  br i1 %cmp57, label %if.then59, label %if.end52.if.end66_crit_edge

if.end52.if.end66_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then59:                                        ; preds = %if.end52
  %call60 = tail call i32 @___ratelimit(ptr noundef nonnull @tipc_group_update_rcv_win._rs, ptr noundef nonnull @__func__.tipc_group_update_rcv_win) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then59.if.end65_crit_edge, label %do.end

if.then59.if.end65_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

do.end:                                           ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #15
  br label %if.end65

if.end65:                                         ; preds = %do.end, %if.then59.if.end65_crit_edge
  tail call fastcc void @tipc_group_proto_xmit(ptr noundef %grp, ptr noundef nonnull %n.026.i, i32 noundef 2, ptr noundef %xmitq)
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end52.if.end66_crit_edge
  %pending67 = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 2
  %94 = ptrtoint ptr %pending67 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %pending67, align 4
  %cmp.i162.not = icmp eq ptr %95, %pending67
  br i1 %cmp.i162.not, label %if.end66.cleanup_crit_edge, label %if.end71

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end71:                                         ; preds = %if.end66
  %add.ptr76 = getelementptr i8, ptr %95, i32 -12
  %state77 = getelementptr i8, ptr %95, i32 88
  %96 = ptrtoint ptr %state77 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 4, ptr %state77, align 4
  %call.i.i164 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %95) #11
  br i1 %call.i.i164, label %if.end.i.i167, label %if.end71.__list_del_entry.exit.i170_crit_edge

if.end71.__list_del_entry.exit.i170_crit_edge:    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i170

if.end.i.i167:                                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i165 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i.i165 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i165, align 4
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %95, align 4
  %prev1.i.i.i166 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i.i166 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev1.i.i.i166, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %100, ptr %98, align 4
  br label %__list_del_entry.exit.i170

__list_del_entry.exit.i170:                       ; preds = %if.end.i.i167, %if.end71.__list_del_entry.exit.i170_crit_edge
  %prev.i2.i168 = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 3, i32 1
  %103 = ptrtoint ptr %prev.i2.i168 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i2.i168, align 4
  %call.i.i.i169 = tail call zeroext i1 @__list_add_valid(ptr noundef %95, ptr noundef %104, ptr noundef %active1) #11
  br i1 %call.i.i.i169, label %if.end.i.i.i172, label %__list_del_entry.exit.i170.list_move_tail.exit173_crit_edge

__list_del_entry.exit.i170.list_move_tail.exit173_crit_edge: ; preds = %__list_del_entry.exit.i170
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move_tail.exit173

if.end.i.i.i172:                                  ; preds = %__list_del_entry.exit.i170
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %prev.i2.i168 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %95, ptr %prev.i2.i168, align 4
  %106 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %active1, ptr %95, align 4
  %prev3.i.i.i171 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %107 = ptrtoint ptr %prev3.i.i.i171 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev3.i.i.i171, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %95, ptr %104, align 4
  br label %list_move_tail.exit173

list_move_tail.exit173:                           ; preds = %if.end.i.i.i172, %__list_del_entry.exit.i170.list_move_tail.exit173_crit_edge
  %109 = ptrtoint ptr %active_cnt3 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %active_cnt3, align 2
  %inc81 = add i16 %110, 1
  store i16 %inc81, ptr %active_cnt3, align 2
  tail call fastcc void @tipc_group_proto_xmit(ptr noundef %grp, ptr noundef %add.ptr76, i32 noundef 2, ptr noundef %xmitq)
  br label %cleanup

cleanup:                                          ; preds = %list_move_tail.exit173, %if.end66.cleanup_crit_edge, %sw.bb46.cleanup_crit_edge, %if.end45, %if.end39.cleanup_crit_edge, %list_del_init.exit155, %if.end.i, %list_del_init.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move_tail(ptr noundef %list, ptr noundef %head) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %prev.i2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i2, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %head) #11
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add_tail.exit_crit_edge

__list_del_entry.exit.list_add_tail.exit_crit_edge: ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %__list_del_entry.exit.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_group_proto_rcv(ptr noundef %grp, ptr nocapture noundef writeonly %usr_wakeup, ptr nocapture noundef readonly %hdr, ptr noundef %inputq, ptr noundef %xmitq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 4
  %2 = and i32 %1, 31457280
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %2)
  %cmp.i.not.i = icmp eq i32 %2, 12582912
  %..i = select i1 %cmp.i.not.i, i32 3, i32 6, !prof !44
  %arrayidx.i.i = getelementptr [15 x i32], ptr %hdr, i32 0, i32 %..i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %retval.0.i = load i32, ptr %arrayidx.i.i, align 4
  %4 = and i32 %1, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %4)
  %cmp.i = icmp eq i32 %4, 402653184
  %5 = lshr i32 %1, 19
  %shl.i.i.i.i = and i32 %5, 60
  %m.addr.0.idx.i = select i1 %cmp.i, i32 %shl.i.i.i.i, i32 0
  %m.addr.0.i = getelementptr i8, ptr %hdr, i32 %m.addr.0.idx.i
  %arrayidx.i.i200 = getelementptr [15 x i32], ptr %m.addr.0.i, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx.i.i200 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i200, align 4
  %tobool.not = icmp eq ptr %grp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %scope = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 9
  %8 = ptrtoint ptr %scope to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scope, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %net = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 5
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  %call2 = tail call fastcc i32 @tipc_own_addr(ptr noundef %11)
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %call2)
  %cmp3.not = icmp eq i32 %retval.0.i, %call2
  br i1 %cmp3.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %conv.i = zext i32 %retval.0.i to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %7 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %12 = ptrtoint ptr %grp to i32
  call void @__asan_load4_noabort(i32 %12)
  %n.024.i = load ptr, ptr %grp, align 4
  %tobool.not25.i = icmp eq ptr %n.024.i, null
  br i1 %tobool.not25.i, label %if.end5.tipc_group_find_member.exit_crit_edge, label %if.end5.while.body.i_crit_edge

if.end5.while.body.i_crit_edge:                   ; preds = %if.end5
  br label %while.body.i

if.end5.tipc_group_find_member.exit_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_find_member.exit

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %if.end5.while.body.i_crit_edge
  %n.026.i = phi ptr [ %n.0.i, %if.end13.i.while.body.i_crit_edge ], [ %n.024.i, %if.end5.while.body.i_crit_edge ]
  %node2.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 5
  %13 = ptrtoint ptr %node2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node2.i, align 4
  %conv3.i = zext i32 %14 to i64
  %shl4.i = shl nuw i64 %conv3.i, 32
  %port5.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 6
  %15 = ptrtoint ptr %port5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port5.i, align 4
  %conv6.i = zext i32 %16 to i64
  %or7.i = or i64 %shl4.i, %conv6.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %or7.i)
  %cmp.i201 = icmp ult i64 %or.i, %or7.i
  br i1 %cmp.i201, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.026.i, i32 0, i32 2
  br label %if.end13.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %or7.i)
  %cmp9.i = icmp ugt i64 %or.i, %or7.i
  br i1 %cmp9.i, label %if.then11.i, label %if.else.i.tipc_group_find_member.exit_crit_edge

if.else.i.tipc_group_find_member.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_find_member.exit

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.026.i, i32 0, i32 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then11.i ]
  %17 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end13.i.tipc_group_find_member.exit_crit_edge, label %if.end13.i.while.body.i_crit_edge

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end13.i.tipc_group_find_member.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_find_member.exit

tipc_group_find_member.exit:                      ; preds = %if.end13.i.tipc_group_find_member.exit_crit_edge, %if.else.i.tipc_group_find_member.exit_crit_edge, %if.end5.tipc_group_find_member.exit_crit_edge
  %n.0.lcssa.i = phi ptr [ null, %if.end5.tipc_group_find_member.exit_crit_edge ], [ %n.026.i, %if.else.i.tipc_group_find_member.exit_crit_edge ], [ null, %if.end13.i.tipc_group_find_member.exit_crit_edge ]
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %hdr, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i = lshr i32 %19, 29
  %20 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %shr.i.i, label %do.end112 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb26
    i32 2, label %sw.bb34
    i32 3, label %sw.bb44
    i32 4, label %sw.bb52
    i32 5, label %sw.bb57
  ]

sw.bb:                                            ; preds = %tipc_group_find_member.exit
  %tobool8.not = icmp eq ptr %n.0.lcssa.i, null
  br i1 %tobool8.not, label %if.end11, label %sw.bb.if.end14_crit_edge

sw.bb.if.end14_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11:                                         ; preds = %sw.bb
  %call10 = tail call fastcc ptr @tipc_group_create_member(ptr noundef nonnull %grp, i32 noundef %retval.0.i, i32 noundef %7, i32 noundef 0, i32 noundef 0)
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end11.if.end14_crit_edge, %sw.bb.if.end14_crit_edge
  %m.0278 = phi ptr [ %call10, %if.end11.if.end14_crit_edge ], [ %n.0.lcssa.i, %sw.bb.if.end14_crit_edge ]
  %arrayidx.i.i.i202 = getelementptr [15 x i32], ptr %hdr, i32 0, i32 9
  %21 = ptrtoint ptr %arrayidx.i.i.i202 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i202, align 4
  %shr.i.i203 = lshr i32 %22, 16
  %conv.i204 = trunc i32 %shr.i.i203 to i16
  %bc_syncpt = getelementptr inbounds %struct.tipc_member, ptr %m.0278, i32 0, i32 12
  %23 = ptrtoint ptr %bc_syncpt to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i204, ptr %bc_syncpt, align 2
  %bc_rcv_nxt = getelementptr inbounds %struct.tipc_member, ptr %m.0278, i32 0, i32 11
  %24 = ptrtoint ptr %bc_rcv_nxt to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i204, ptr %bc_rcv_nxt, align 4
  %25 = load i32, ptr %arrayidx.i.i.i202, align 4
  %conv.i206 = trunc i32 %25 to i16
  %window = getelementptr inbounds %struct.tipc_member, ptr %m.0278, i32 0, i32 10
  %26 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %window, align 2
  %add = add i16 %27, %conv.i206
  store i16 %add, ptr %window, align 2
  %state = getelementptr inbounds %struct.tipc_member, ptr %m.0278, i32 0, i32 8
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp20.not = icmp eq i32 %29, 1
  br i1 %cmp20.not, label %if.end23, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %state, align 4
  %31 = ptrtoint ptr %usr_wakeup to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %usr_wakeup, align 1
  %small_win.i = getelementptr inbounds %struct.tipc_member, ptr %m.0278, i32 0, i32 2
  %32 = ptrtoint ptr %small_win.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %small_win.i, align 4
  %cmp.i.not.i207 = icmp eq ptr %33, %small_win.i
  br i1 %cmp.i.not.i207, label %if.end23.tipc_group_is_receiver.exit.i_crit_edge, label %if.end.i

if.end23.tipc_group_is_receiver.exit.i_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_is_receiver.exit.i

if.end.i:                                         ; preds = %if.end23
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %small_win.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.tipc_member, ptr %m.0278, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %small_win.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %small_win.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %40 = ptrtoint ptr %small_win.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %small_win.i, ptr %small_win.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.tipc_member, ptr %m.0278, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %small_win.i, ptr %prev.i3.i.i, align 4
  %group.i = getelementptr inbounds %struct.tipc_member, ptr %m.0278, i32 0, i32 4
  %42 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %group.i, align 4
  %open.i = getelementptr inbounds %struct.tipc_group, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %open.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %45, align 1
  %47 = ptrtoint ptr %usr_wakeup to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %usr_wakeup, align 1
  br label %tipc_group_is_receiver.exit.i

tipc_group_is_receiver.exit.i:                    ; preds = %list_del_init.exit.i, %if.end23.tipc_group_is_receiver.exit.i_crit_edge
  %group.i208 = getelementptr inbounds %struct.tipc_member, ptr %m.0278, i32 0, i32 4
  %48 = ptrtoint ptr %group.i208 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %group.i208, align 4
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %state, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %51, label %if.end.i210 [
    i32 7, label %tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge
    i32 0, label %tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge279
  ]

tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge279: ; preds = %tipc_group_is_receiver.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit

tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge: ; preds = %tipc_group_is_receiver.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit

if.end.i210:                                      ; preds = %tipc_group_is_receiver.exit.i
  %53 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %window, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %54)
  %cmp.i209 = icmp ugt i16 %54, 64
  br i1 %cmp.i209, label %if.end.i210.tipc_group_update_member.exit_crit_edge, label %if.end6.i

if.end.i210.tipc_group_update_member.exit_crit_edge: ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit

if.end6.i:                                        ; preds = %if.end.i210
  %call.i.i.i212 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %small_win.i) #11
  br i1 %call.i.i.i212, label %if.end.i.i.i215, label %if.end6.i.list_del_init.exit.i217_crit_edge

if.end6.i.list_del_init.exit.i217_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i217

if.end.i.i.i215:                                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i213 = getelementptr inbounds %struct.tipc_member, ptr %m.0278, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %prev.i.i.i213 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i.i213, align 4
  %57 = ptrtoint ptr %small_win.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %small_win.i, align 4
  %prev1.i.i.i.i214 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.i.i214 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev1.i.i.i.i214, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %56, align 4
  br label %list_del_init.exit.i217

list_del_init.exit.i217:                          ; preds = %if.end.i.i.i215, %if.end6.i.list_del_init.exit.i217_crit_edge
  %61 = ptrtoint ptr %small_win.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %small_win.i, ptr %small_win.i, align 4
  %prev.i3.i.i216 = getelementptr inbounds %struct.tipc_member, ptr %m.0278, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %prev.i3.i.i216 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %small_win.i, ptr %prev.i3.i.i216, align 4
  %small_win7.i = getelementptr inbounds %struct.tipc_group, ptr %49, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %list_del_init.exit.i217
  %.pn.in.in.i = phi ptr [ %small_win7.i, %list_del_init.exit.i217 ], [ %.pn.in.i, %for.body.i.for.cond.i_crit_edge ]
  %63 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp16.not.i = icmp eq ptr %.pn.in.i, %small_win7.i
  br i1 %cmp16.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %window18.i = getelementptr i8, ptr %.pn.in.i, i32 86
  %64 = ptrtoint ptr %window18.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %window18.i, align 2
  %66 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %window, align 2
  %cmp22.i = icmp ugt i16 %65, %67
  br i1 %cmp22.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %.pn.in.lcssa.i = phi ptr [ %.pn.in.i, %for.body.i.for.end.i_crit_edge ], [ %small_win7.i, %for.cond.i.for.end.i_crit_edge ]
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.lcssa.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i, align 4
  %call.i.i47.i = tail call zeroext i1 @__list_add_valid(ptr noundef %small_win.i, ptr noundef %69, ptr noundef %.pn.in.lcssa.i) #11
  br i1 %call.i.i47.i, label %if.end.i.i48.i, label %for.end.i.tipc_group_update_member.exit_crit_edge

for.end.i.tipc_group_update_member.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit

if.end.i.i48.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %small_win.i, ptr %prev.i.i, align 4
  %71 = ptrtoint ptr %small_win.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %.pn.in.lcssa.i, ptr %small_win.i, align 4
  %72 = ptrtoint ptr %prev.i3.i.i216 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev.i3.i.i216, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %small_win.i, ptr %69, align 4
  br label %tipc_group_update_member.exit

tipc_group_update_member.exit:                    ; preds = %if.end.i.i48.i, %for.end.i.tipc_group_update_member.exit_crit_edge, %if.end.i210.tipc_group_update_member.exit_crit_edge, %tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge, %tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge279
  tail call fastcc void @tipc_group_proto_xmit(ptr noundef nonnull %grp, ptr noundef nonnull %m.0278, i32 noundef 2, ptr noundef %xmitq)
  %74 = ptrtoint ptr %bc_syncpt to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %bc_syncpt, align 2
  tail call fastcc void @tipc_group_create_event(ptr noundef nonnull %grp, ptr noundef nonnull %m.0278, i32 noundef 1, i16 noundef zeroext %75, ptr noundef %inputq)
  br label %cleanup

sw.bb26:                                          ; preds = %tipc_group_find_member.exit
  %tobool27.not = icmp eq ptr %n.0.lcssa.i, null
  br i1 %tobool27.not, label %sw.bb26.cleanup_crit_edge, label %if.end29

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %sw.bb26
  %arrayidx.i.i.i218 = getelementptr [15 x i32], ptr %hdr, i32 0, i32 9
  %76 = ptrtoint ptr %arrayidx.i.i.i218 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i.i.i218, align 4
  %shr.i.i219 = lshr i32 %77, 16
  %conv.i220 = trunc i32 %shr.i.i219 to i16
  %bc_syncpt31 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 12
  %78 = ptrtoint ptr %bc_syncpt31 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i220, ptr %bc_syncpt31, align 2
  %list = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.list_del_init.exit_crit_edge

if.end29.list_del_init.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i221 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %prev.i.i221 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i221, align 4
  %81 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end29.list_del_init.exit_crit_edge
  %85 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %list, ptr %prev.i3.i, align 4
  %87 = ptrtoint ptr %usr_wakeup to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %usr_wakeup, align 1
  %small_win.i222 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2
  %88 = ptrtoint ptr %small_win.i222 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %small_win.i222, align 4
  %cmp.i.not.i223 = icmp eq ptr %89, %small_win.i222
  br i1 %cmp.i.not.i223, label %list_del_init.exit.tipc_group_open.exit233_crit_edge, label %if.end.i225

list_del_init.exit.tipc_group_open.exit233_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_open.exit233

if.end.i225:                                      ; preds = %list_del_init.exit
  %call.i.i.i224 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %small_win.i222) #11
  br i1 %call.i.i.i224, label %if.end.i.i.i228, label %if.end.i225.list_del_init.exit.i232_crit_edge

if.end.i225.list_del_init.exit.i232_crit_edge:    ; preds = %if.end.i225
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i232

if.end.i.i.i228:                                  ; preds = %if.end.i225
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i226 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2, i32 1
  %90 = ptrtoint ptr %prev.i.i.i226 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i.i.i226, align 4
  %92 = ptrtoint ptr %small_win.i222 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %small_win.i222, align 4
  %prev1.i.i.i.i227 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %prev1.i.i.i.i227 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %prev1.i.i.i.i227, align 4
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %93, ptr %91, align 4
  br label %list_del_init.exit.i232

list_del_init.exit.i232:                          ; preds = %if.end.i.i.i228, %if.end.i225.list_del_init.exit.i232_crit_edge
  %96 = ptrtoint ptr %small_win.i222 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %small_win.i222, ptr %small_win.i222, align 4
  %prev.i3.i.i229 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2, i32 1
  %97 = ptrtoint ptr %prev.i3.i.i229 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %small_win.i222, ptr %prev.i3.i.i229, align 4
  %group.i230 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 4
  %98 = ptrtoint ptr %group.i230 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %group.i230, align 4
  %open.i231 = getelementptr inbounds %struct.tipc_group, ptr %99, i32 0, i32 16
  %100 = ptrtoint ptr %open.i231 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %open.i231, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %101, align 1
  %103 = ptrtoint ptr %usr_wakeup to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %usr_wakeup, align 1
  br label %tipc_group_open.exit233

tipc_group_open.exit233:                          ; preds = %list_del_init.exit.i232, %list_del_init.exit.tipc_group_open.exit233_crit_edge
  %state.i = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 8
  %104 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %state.i, align 4
  %.off.i = add i32 %105, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.then.i234, label %tipc_group_open.exit233.tipc_group_decr_active.exit_crit_edge

tipc_group_open.exit233.tipc_group_decr_active.exit_crit_edge: ; preds = %tipc_group_open.exit233
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_decr_active.exit

if.then.i234:                                     ; preds = %tipc_group_open.exit233
  call void @__sanitizer_cov_trace_pc() #13
  %active_cnt.i = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 12
  %106 = ptrtoint ptr %active_cnt.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %active_cnt.i, align 2
  %dec.i = add i16 %107, -1
  store i16 %dec.i, ptr %active_cnt.i, align 2
  br label %tipc_group_decr_active.exit

tipc_group_decr_active.exit:                      ; preds = %if.then.i234, %tipc_group_open.exit233.tipc_group_decr_active.exit_crit_edge
  %108 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 7, ptr %state.i, align 4
  %109 = ptrtoint ptr %bc_syncpt31 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %bc_syncpt31, align 2
  tail call fastcc void @tipc_group_create_event(ptr noundef nonnull %grp, ptr noundef nonnull %n.0.lcssa.i, i32 noundef 2, i16 noundef zeroext %110, ptr noundef %inputq)
  br label %cleanup

sw.bb34:                                          ; preds = %tipc_group_find_member.exit
  %tobool35.not = icmp eq ptr %n.0.lcssa.i, null
  br i1 %tobool35.not, label %sw.bb34.cleanup_crit_edge, label %if.end37

sw.bb34.cleanup_crit_edge:                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %sw.bb34
  %arrayidx.i.i.i236 = getelementptr [15 x i32], ptr %hdr, i32 0, i32 9
  %111 = ptrtoint ptr %arrayidx.i.i.i236 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i.i.i236, align 4
  %conv.i237 = trunc i32 %112 to i16
  %window40 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 10
  %113 = ptrtoint ptr %window40 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %window40, align 2
  %add42 = add i16 %114, %conv.i237
  store i16 %add42, ptr %window40, align 2
  %115 = ptrtoint ptr %usr_wakeup to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %usr_wakeup, align 1
  %small_win.i238 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2
  %116 = ptrtoint ptr %small_win.i238 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile ptr, ptr %small_win.i238, align 4
  %cmp.i.not.i239 = icmp eq ptr %117, %small_win.i238
  br i1 %cmp.i.not.i239, label %if.end37.cleanup_crit_edge, label %if.end.i241

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i241:                                      ; preds = %if.end37
  %call.i.i.i240 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %small_win.i238) #11
  br i1 %call.i.i.i240, label %if.end.i.i.i244, label %if.end.i241.list_del_init.exit.i248_crit_edge

if.end.i241.list_del_init.exit.i248_crit_edge:    ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i248

if.end.i.i.i244:                                  ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i242 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2, i32 1
  %118 = ptrtoint ptr %prev.i.i.i242 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prev.i.i.i242, align 4
  %120 = ptrtoint ptr %small_win.i238 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %small_win.i238, align 4
  %prev1.i.i.i.i243 = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %prev1.i.i.i.i243 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %119, ptr %prev1.i.i.i.i243, align 4
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %121, ptr %119, align 4
  br label %list_del_init.exit.i248

list_del_init.exit.i248:                          ; preds = %if.end.i.i.i244, %if.end.i241.list_del_init.exit.i248_crit_edge
  %124 = ptrtoint ptr %small_win.i238 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %small_win.i238, ptr %small_win.i238, align 4
  %prev.i3.i.i245 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2, i32 1
  %125 = ptrtoint ptr %prev.i3.i.i245 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %small_win.i238, ptr %prev.i3.i.i245, align 4
  %group.i246 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 4
  %126 = ptrtoint ptr %group.i246 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %group.i246, align 4
  %open.i247 = getelementptr inbounds %struct.tipc_group, ptr %127, i32 0, i32 16
  %128 = ptrtoint ptr %open.i247 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %open.i247, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %129, align 1
  %131 = ptrtoint ptr %usr_wakeup to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %usr_wakeup, align 1
  br label %cleanup

sw.bb44:                                          ; preds = %tipc_group_find_member.exit
  %tobool45.not = icmp eq ptr %n.0.lcssa.i, null
  br i1 %tobool45.not, label %sw.bb44.cleanup_crit_edge, label %if.end47

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end47:                                         ; preds = %sw.bb44
  %arrayidx.i.i.i250 = getelementptr [15 x i32], ptr %hdr, i32 0, i32 9
  %132 = ptrtoint ptr %arrayidx.i.i.i250 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx.i.i.i250, align 4
  %shr.i.i251 = lshr i32 %133, 16
  %conv.i252 = trunc i32 %shr.i.i251 to i16
  %bc_acked = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 13
  %134 = ptrtoint ptr %bc_acked to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv.i252, ptr %bc_acked, align 4
  %bc_ackers = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 15
  %135 = ptrtoint ptr %bc_ackers to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %bc_ackers, align 4
  %dec = add i16 %136, -1
  store i16 %dec, ptr %bc_ackers, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %tobool49.not = icmp eq i16 %dec, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %small_win = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2
  %call.i.i253 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %small_win) #11
  br i1 %call.i.i253, label %if.end.i.i256, label %if.end51.list_del_init.exit258_crit_edge

if.end51.list_del_init.exit258_crit_edge:         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit258

if.end.i.i256:                                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i254 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2, i32 1
  %137 = ptrtoint ptr %prev.i.i254 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %prev.i.i254, align 4
  %139 = ptrtoint ptr %small_win to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %small_win, align 4
  %prev1.i.i.i255 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %prev1.i.i.i255 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %138, ptr %prev1.i.i.i255, align 4
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %140, ptr %138, align 4
  br label %list_del_init.exit258

list_del_init.exit258:                            ; preds = %if.end.i.i256, %if.end51.list_del_init.exit258_crit_edge
  %143 = ptrtoint ptr %small_win to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %small_win, ptr %small_win, align 4
  %prev.i3.i257 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2, i32 1
  %144 = ptrtoint ptr %prev.i3.i257 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %small_win, ptr %prev.i3.i257, align 4
  %group = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 4
  %145 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %group, align 4
  %open = getelementptr inbounds %struct.tipc_group, ptr %146, i32 0, i32 16
  %147 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %open, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 1, ptr %148, align 1
  %150 = ptrtoint ptr %usr_wakeup to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 1, ptr %usr_wakeup, align 1
  tail call void @tipc_group_update_member(ptr noundef nonnull %n.0.lcssa.i, i32 noundef 0)
  br label %cleanup

sw.bb52:                                          ; preds = %tipc_group_find_member.exit
  %tobool53.not = icmp eq ptr %n.0.lcssa.i, null
  br i1 %tobool53.not, label %sw.bb52.cleanup_crit_edge, label %if.end55

sw.bb52.cleanup_crit_edge:                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end55:                                         ; preds = %sw.bb52
  tail call fastcc void @tipc_group_proto_xmit(ptr noundef nonnull %grp, ptr noundef nonnull %n.0.lcssa.i, i32 noundef 5, ptr noundef %xmitq)
  %window56 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 10
  %151 = ptrtoint ptr %window56 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 65, ptr %window56, align 2
  %152 = ptrtoint ptr %usr_wakeup to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %usr_wakeup, align 1
  %small_win.i259 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2
  %153 = ptrtoint ptr %small_win.i259 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile ptr, ptr %small_win.i259, align 4
  %cmp.i.not.i260 = icmp eq ptr %154, %small_win.i259
  br i1 %cmp.i.not.i260, label %if.end55.cleanup_crit_edge, label %if.end.i262

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i262:                                      ; preds = %if.end55
  %call.i.i.i261 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %small_win.i259) #11
  br i1 %call.i.i.i261, label %if.end.i.i.i265, label %if.end.i262.list_del_init.exit.i269_crit_edge

if.end.i262.list_del_init.exit.i269_crit_edge:    ; preds = %if.end.i262
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i269

if.end.i.i.i265:                                  ; preds = %if.end.i262
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i263 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2, i32 1
  %155 = ptrtoint ptr %prev.i.i.i263 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %prev.i.i.i263, align 4
  %157 = ptrtoint ptr %small_win.i259 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %small_win.i259, align 4
  %prev1.i.i.i.i264 = getelementptr inbounds %struct.list_head, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %prev1.i.i.i.i264 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %156, ptr %prev1.i.i.i.i264, align 4
  %160 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %158, ptr %156, align 4
  br label %list_del_init.exit.i269

list_del_init.exit.i269:                          ; preds = %if.end.i.i.i265, %if.end.i262.list_del_init.exit.i269_crit_edge
  %161 = ptrtoint ptr %small_win.i259 to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %small_win.i259, ptr %small_win.i259, align 4
  %prev.i3.i.i266 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2, i32 1
  %162 = ptrtoint ptr %prev.i3.i.i266 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %small_win.i259, ptr %prev.i3.i.i266, align 4
  %group.i267 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 4
  %163 = ptrtoint ptr %group.i267 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %group.i267, align 4
  %open.i268 = getelementptr inbounds %struct.tipc_group, ptr %164, i32 0, i32 16
  %165 = ptrtoint ptr %open.i268 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %open.i268, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 1, ptr %166, align 1
  %168 = ptrtoint ptr %usr_wakeup to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 1, ptr %usr_wakeup, align 1
  br label %cleanup

sw.bb57:                                          ; preds = %tipc_group_find_member.exit
  %tobool58.not = icmp eq ptr %n.0.lcssa.i, null
  br i1 %tobool58.not, label %sw.bb57.cleanup_crit_edge, label %lor.lhs.false

sw.bb57.cleanup_crit_edge:                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb57
  %state59 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 8
  %169 = ptrtoint ptr %state59 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %state59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %170)
  %cmp60.not = icmp eq i32 %170, 5
  br i1 %cmp60.not, label %if.end63, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end63:                                         ; preds = %lor.lhs.false
  %arrayidx.i.i.i271 = getelementptr [15 x i32], ptr %hdr, i32 0, i32 9
  %171 = ptrtoint ptr %arrayidx.i.i.i271 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx.i.i.i271, align 4
  %shr.i.i272 = lshr i32 %172, 16
  %conv.i273 = trunc i32 %shr.i.i272 to i16
  %advertised = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 9
  %173 = ptrtoint ptr %advertised to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %advertised, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %174, i16 %conv.i273)
  %cmp67 = icmp ugt i16 %174, %conv.i273
  br i1 %cmp67, label %if.then69, label %if.end79

if.then69:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %175 = ptrtoint ptr %state59 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 6, ptr %state59, align 4
  %sub = add i16 %174, 65
  %add76 = sub i16 %sub, %conv.i273
  %176 = ptrtoint ptr %advertised to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %add76, ptr %advertised, align 4
  br label %cleanup

if.end79:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_cmp2(i16 %174, i16 %conv.i273)
  %cmp83 = icmp ult i16 %174, %conv.i273
  br i1 %cmp83, label %if.then85, label %if.end79.if.end91_crit_edge

if.end79.if.end91_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then85:                                        ; preds = %if.end79
  %call86 = tail call i32 @___ratelimit(ptr noundef nonnull @tipc_group_proto_rcv._rs, ptr noundef nonnull @__func__.tipc_group_proto_rcv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then85.if.end91_crit_edge, label %do.end

if.then85.if.end91_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

do.end:                                           ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  br label %if.end91

if.end91:                                         ; preds = %do.end, %if.then85.if.end91_crit_edge, %if.end79.if.end91_crit_edge
  %177 = ptrtoint ptr %state59 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 2, ptr %state59, align 4
  %active_cnt = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 12
  %178 = ptrtoint ptr %active_cnt to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %active_cnt, align 2
  %dec93 = add i16 %179, -1
  store i16 %dec93, ptr %active_cnt, align 2
  %180 = ptrtoint ptr %advertised to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 65, ptr %advertised, align 4
  %pending = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 2
  %181 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile ptr, ptr %pending, align 4
  %cmp.i274.not = icmp eq ptr %182, %pending
  br i1 %cmp.i274.not, label %if.end91.cleanup_crit_edge, label %if.end98

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end98:                                         ; preds = %if.end91
  %state101 = getelementptr i8, ptr %182, i32 88
  %183 = ptrtoint ptr %state101 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 4, ptr %state101, align 4
  %active = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 3
  tail call fastcc void @list_move_tail(ptr noundef %182, ptr noundef %active)
  %184 = ptrtoint ptr %active_cnt to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %active_cnt, align 2
  %inc = add i16 %185, 1
  store i16 %inc, ptr %active_cnt, align 2
  %advertised104 = getelementptr i8, ptr %182, i32 92
  %186 = ptrtoint ptr %advertised104 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %advertised104, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 586, i16 %187)
  %cmp106 = icmp ult i16 %187, 586
  br i1 %cmp106, label %if.then108, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then108:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %182, i32 -12
  tail call fastcc void @tipc_group_proto_xmit(ptr noundef nonnull %grp, ptr noundef %add.ptr, i32 noundef 2, ptr noundef %xmitq)
  br label %cleanup

do.end112:                                        ; preds = %tipc_group_find_member.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end112, %if.then108, %if.end98.cleanup_crit_edge, %if.end91.cleanup_crit_edge, %if.then69, %lor.lhs.false.cleanup_crit_edge, %sw.bb57.cleanup_crit_edge, %list_del_init.exit.i269, %if.end55.cleanup_crit_edge, %sw.bb52.cleanup_crit_edge, %list_del_init.exit258, %if.end47.cleanup_crit_edge, %sw.bb44.cleanup_crit_edge, %list_del_init.exit.i248, %if.end37.cleanup_crit_edge, %sw.bb34.cleanup_crit_edge, %tipc_group_decr_active.exit, %sw.bb26.cleanup_crit_edge, %tipc_group_update_member.exit, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_group_create_event(ptr nocapture noundef readonly %grp, ptr nocapture noundef readonly %m, i32 noundef %event, i16 noundef zeroext %seqno, ptr noundef %inputq) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 5
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call = tail call fastcc i32 @tipc_own_addr(ptr noundef %1)
  %instance = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 7
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %instance, align 4
  %port = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 6
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %node = getelementptr inbounds %struct.tipc_member, ptr %m, i32 0, i32 5
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node, align 4
  %type = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 7
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %portid = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 10
  %10 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %portid, align 4
  %call15 = tail call ptr @tipc_msg_create(i32 noundef 3, i32 noundef 4, i32 noundef 44, i32 noundef 48, i32 noundef %call, i32 noundef %7, i32 noundef %11, i32 noundef %5, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call15, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %event, 3
  %arrayidx.i.i50 = getelementptr [15 x i32], ptr %13, i32 0, i32 10
  %17 = ptrtoint ptr %arrayidx.i.i50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i50, align 4
  %and2.i.i = and i32 %18, 65532
  %or.i.i = or i32 %and2.i.i, %and.i.i
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %13, align 4
  %or.i.i51 = or i32 %20, 524288
  store i32 %or.i.i51, ptr %13, align 4
  %conv = zext i16 %seqno to i32
  %and.i.i52 = shl nuw i32 %conv, 16
  %or.i.i55 = or i32 %or.i.i, %and.i.i52
  store i32 %or.i.i55, ptr %arrayidx.i.i50, align 4
  %21 = lshr i32 %20, 19
  %shl.i.i = and i32 %21, 60
  %add.ptr.i = getelementptr i8, ptr %13, i32 %shl.i.i
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %event, ptr %add.ptr.i, align 1
  %evt.sroa.6.0.call18.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i32 4
  %23 = ptrtoint ptr %evt.sroa.6.0.call18.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %3, ptr %evt.sroa.6.0.call18.sroa_idx, align 1
  %evt.sroa.7.0.call18.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i32 8
  %24 = ptrtoint ptr %evt.sroa.7.0.call18.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %3, ptr %evt.sroa.7.0.call18.sroa_idx, align 1
  %evt.sroa.8.0.call18.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i32 12
  %25 = ptrtoint ptr %evt.sroa.8.0.call18.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %5, ptr %evt.sroa.8.0.call18.sroa_idx, align 1
  %evt.sroa.9.0.call18.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i32 16
  %26 = ptrtoint ptr %evt.sroa.9.0.call18.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %7, ptr %evt.sroa.9.0.call18.sroa_idx, align 1
  %evt.sroa.10.0.call18.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i32 20
  %27 = ptrtoint ptr %evt.sroa.10.0.call18.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %9, ptr %evt.sroa.10.0.call18.sroa_idx, align 1
  %evt.sroa.11.0.call18.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i32 24
  %28 = ptrtoint ptr %evt.sroa.11.0.call18.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %3, ptr %evt.sroa.11.0.call18.sroa_idx, align 1
  %evt.sroa.12.0.call18.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i32 28
  %29 = ptrtoint ptr %evt.sroa.12.0.call18.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %3, ptr %evt.sroa.12.0.call18.sroa_idx, align 1
  %evt.sroa.13.0.call18.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i32 32
  %30 = call ptr @memset(ptr %evt.sroa.13.0.call18.sroa_idx, i32 0, i32 16)
  %31 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %instance, align 4
  %orig_member = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 3, i32 16
  %33 = ptrtoint ptr %orig_member to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %orig_member, align 8
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %inputq, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %inputq, ptr %call15, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %call15, i32 0, i32 1
  %37 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %prev10.i.i.i, align 4
  store volatile ptr %call15, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call15, ptr %35, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %inputq, i32 0, i32 1
  %39 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_group_member_evt(ptr noundef %grp, ptr nocapture noundef writeonly %usr_wakeup, ptr nocapture noundef writeonly %sk_rcvbuf, ptr nocapture noundef readonly %hdr, ptr noundef %inputq, ptr noundef %xmitq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 4
  %2 = lshr i32 %1, 19
  %shl.i.i = and i32 %2, 60
  %add.ptr.i = getelementptr i8, ptr %hdr, i32 %shl.i.i
  %found_lower = getelementptr inbounds %struct.tipc_event, ptr %add.ptr.i, i32 0, i32 1
  %3 = ptrtoint ptr %found_lower to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %found_lower, align 4
  %port = getelementptr inbounds %struct.tipc_event, ptr %add.ptr.i, i32 0, i32 3
  %node1 = getelementptr inbounds %struct.tipc_event, ptr %add.ptr.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %node1, align 4
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %grp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %net5 = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 5
  %11 = ptrtoint ptr %net5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net5, align 4
  %call6 = tail call fastcc i32 @tipc_own_addr(ptr noundef %12)
  %loopback = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 17
  %13 = ptrtoint ptr %loopback to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %loopback, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %call6)
  %cmp = icmp eq i32 %6, %call6
  %or.cond = select i1 %tobool7.not, i1 %cmp, i1 false
  br i1 %or.cond, label %land.lhs.true8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true8:                                   ; preds = %if.end
  %portid = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 10
  %15 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %portid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %16)
  %cmp9 = icmp eq i32 %8, %16
  br i1 %cmp9, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end11_crit_edge

land.lhs.true8.if.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true8.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %conv.i = zext i32 %6 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %8 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %17 = ptrtoint ptr %grp to i32
  call void @__asan_load4_noabort(i32 %17)
  %n.024.i = load ptr, ptr %grp, align 4
  %tobool.not25.i = icmp eq ptr %n.024.i, null
  br i1 %tobool.not25.i, label %if.end11.tipc_group_find_member.exit_crit_edge, label %if.end11.while.body.i_crit_edge

if.end11.while.body.i_crit_edge:                  ; preds = %if.end11
  br label %while.body.i

if.end11.tipc_group_find_member.exit_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_find_member.exit

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %if.end11.while.body.i_crit_edge
  %n.026.i = phi ptr [ %n.0.i, %if.end13.i.while.body.i_crit_edge ], [ %n.024.i, %if.end11.while.body.i_crit_edge ]
  %node2.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 5
  %18 = ptrtoint ptr %node2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %node2.i, align 4
  %conv3.i = zext i32 %19 to i64
  %shl4.i = shl nuw i64 %conv3.i, 32
  %port5.i = getelementptr inbounds %struct.tipc_member, ptr %n.026.i, i32 0, i32 6
  %20 = ptrtoint ptr %port5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port5.i, align 4
  %conv6.i = zext i32 %21 to i64
  %or7.i = or i64 %shl4.i, %conv6.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %or7.i)
  %cmp.i = icmp ult i64 %or.i, %or7.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.026.i, i32 0, i32 2
  br label %if.end13.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %or7.i)
  %cmp9.i = icmp ugt i64 %or.i, %or7.i
  br i1 %cmp9.i, label %if.then11.i, label %if.else.i.tipc_group_find_member.exit_crit_edge

if.else.i.tipc_group_find_member.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_find_member.exit

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.026.i, i32 0, i32 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then11.i ]
  %22 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end13.i.tipc_group_find_member.exit_crit_edge, label %if.end13.i.while.body.i_crit_edge

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end13.i.tipc_group_find_member.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_find_member.exit

tipc_group_find_member.exit:                      ; preds = %if.end13.i.tipc_group_find_member.exit_crit_edge, %if.else.i.tipc_group_find_member.exit_crit_edge, %if.end11.tipc_group_find_member.exit_crit_edge
  %n.0.lcssa.i = phi ptr [ null, %if.end11.tipc_group_find_member.exit_crit_edge ], [ %n.026.i, %if.else.i.tipc_group_find_member.exit_crit_edge ], [ null, %if.end13.i.tipc_group_find_member.exit_crit_edge ]
  %23 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %10, label %tipc_group_find_member.exit.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb25
  ]

tipc_group_find_member.exit.sw.epilog_crit_edge:  ; preds = %tipc_group_find_member.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %tipc_group_find_member.exit
  %tobool13.not = icmp eq ptr %n.0.lcssa.i, null
  br i1 %tobool13.not, label %if.then14, label %if.end19

if.then14:                                        ; preds = %sw.bb
  %call15 = tail call fastcc ptr @tipc_group_create_member(ptr noundef nonnull %grp, i32 noundef %6, i32 noundef %8, i32 noundef %4, i32 noundef 1)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then14.sw.epilog_crit_edge, label %tipc_group_is_receiver.exit.i

if.then14.sw.epilog_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

tipc_group_is_receiver.exit.i:                    ; preds = %if.then14
  %group.i = getelementptr inbounds %struct.tipc_member, ptr %call15, i32 0, i32 4
  %24 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %group.i, align 4
  %state.i.i = getelementptr inbounds %struct.tipc_member, ptr %call15, i32 0, i32 8
  %26 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state.i.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %27, label %if.end.i [
    i32 7, label %tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge
    i32 0, label %tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge139
  ]

tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge139: ; preds = %tipc_group_is_receiver.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit

tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge: ; preds = %tipc_group_is_receiver.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit

if.end.i:                                         ; preds = %tipc_group_is_receiver.exit.i
  %window.i = getelementptr inbounds %struct.tipc_member, ptr %call15, i32 0, i32 10
  %29 = ptrtoint ptr %window.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %window.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %30)
  %cmp.i83 = icmp ugt i16 %30, 64
  br i1 %cmp.i83, label %if.end.i.tipc_group_update_member.exit_crit_edge, label %if.end6.i

if.end.i.tipc_group_update_member.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit

if.end6.i:                                        ; preds = %if.end.i
  %small_win.i = getelementptr inbounds %struct.tipc_member, ptr %call15, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %small_win.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.list_del_init.exit.i_crit_edge

if.end6.i.list_del_init.exit.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.tipc_member, ptr %call15, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %small_win.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %small_win.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end6.i.list_del_init.exit.i_crit_edge
  %37 = ptrtoint ptr %small_win.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %small_win.i, ptr %small_win.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.tipc_member, ptr %call15, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %small_win.i, ptr %prev.i3.i.i, align 4
  %small_win7.i = getelementptr inbounds %struct.tipc_group, ptr %25, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %list_del_init.exit.i
  %.pn.in.in.i = phi ptr [ %small_win7.i, %list_del_init.exit.i ], [ %.pn.in.i, %for.body.i.for.cond.i_crit_edge ]
  %39 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp16.not.i = icmp eq ptr %.pn.in.i, %small_win7.i
  br i1 %cmp16.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %window18.i = getelementptr i8, ptr %.pn.in.i, i32 86
  %40 = ptrtoint ptr %window18.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %window18.i, align 2
  %42 = ptrtoint ptr %window.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %window.i, align 2
  %cmp22.i = icmp ugt i16 %41, %43
  br i1 %cmp22.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %.pn.in.lcssa.i = phi ptr [ %.pn.in.i, %for.body.i.for.end.i_crit_edge ], [ %small_win7.i, %for.cond.i.for.end.i_crit_edge ]
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.lcssa.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i, align 4
  %call.i.i47.i = tail call zeroext i1 @__list_add_valid(ptr noundef %small_win.i, ptr noundef %45, ptr noundef %.pn.in.lcssa.i) #11
  br i1 %call.i.i47.i, label %if.end.i.i48.i, label %for.end.i.tipc_group_update_member.exit_crit_edge

for.end.i.tipc_group_update_member.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit

if.end.i.i48.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %small_win.i, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %small_win.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %.pn.in.lcssa.i, ptr %small_win.i, align 4
  %48 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev.i3.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %small_win.i, ptr %45, align 4
  br label %tipc_group_update_member.exit

tipc_group_update_member.exit:                    ; preds = %if.end.i.i48.i, %for.end.i.tipc_group_update_member.exit_crit_edge, %if.end.i.tipc_group_update_member.exit_crit_edge, %tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge, %tipc_group_is_receiver.exit.i.tipc_group_update_member.exit_crit_edge139
  tail call fastcc void @tipc_group_proto_xmit(ptr noundef nonnull %grp, ptr noundef nonnull %call15, i32 noundef 0, ptr noundef %xmitq)
  br label %sw.epilog

if.end19:                                         ; preds = %sw.bb
  %state = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 8
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp20.not = icmp eq i32 %51, 0
  br i1 %cmp20.not, label %if.end22, label %if.end19.sw.epilog_crit_edge

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end22:                                         ; preds = %if.end19
  %instance23 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 7
  %52 = ptrtoint ptr %instance23 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %4, ptr %instance23, align 4
  %53 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %state, align 4
  %54 = ptrtoint ptr %usr_wakeup to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %usr_wakeup, align 1
  %small_win.i84 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2
  %55 = ptrtoint ptr %small_win.i84 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %small_win.i84, align 4
  %cmp.i.not.i = icmp eq ptr %56, %small_win.i84
  br i1 %cmp.i.not.i, label %if.end22.tipc_group_is_receiver.exit.i96_crit_edge, label %if.end.i86

if.end22.tipc_group_is_receiver.exit.i96_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_is_receiver.exit.i96

if.end.i86:                                       ; preds = %if.end22
  %call.i.i.i85 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %small_win.i84) #11
  br i1 %call.i.i.i85, label %if.end.i.i.i89, label %if.end.i86.list_del_init.exit.i92_crit_edge

if.end.i86.list_del_init.exit.i92_crit_edge:      ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i92

if.end.i.i.i89:                                   ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i87 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %prev.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i87, align 4
  %59 = ptrtoint ptr %small_win.i84 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %small_win.i84, align 4
  %prev1.i.i.i.i88 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i.i88, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del_init.exit.i92

list_del_init.exit.i92:                           ; preds = %if.end.i.i.i89, %if.end.i86.list_del_init.exit.i92_crit_edge
  %63 = ptrtoint ptr %small_win.i84 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %small_win.i84, ptr %small_win.i84, align 4
  %prev.i3.i.i90 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %prev.i3.i.i90 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %small_win.i84, ptr %prev.i3.i.i90, align 4
  %group.i91 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 4
  %65 = ptrtoint ptr %group.i91 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %group.i91, align 4
  %open.i = getelementptr inbounds %struct.tipc_group, ptr %66, i32 0, i32 16
  %67 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %open.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %68, align 1
  %70 = ptrtoint ptr %usr_wakeup to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %usr_wakeup, align 1
  br label %tipc_group_is_receiver.exit.i96

tipc_group_is_receiver.exit.i96:                  ; preds = %list_del_init.exit.i92, %if.end22.tipc_group_is_receiver.exit.i96_crit_edge
  %group.i93 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 4
  %71 = ptrtoint ptr %group.i93 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %group.i93, align 4
  %73 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %state, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %74, label %if.end.i99 [
    i32 7, label %tipc_group_is_receiver.exit.i96.tipc_group_update_member.exit121_crit_edge
    i32 0, label %tipc_group_is_receiver.exit.i96.tipc_group_update_member.exit121_crit_edge140
  ]

tipc_group_is_receiver.exit.i96.tipc_group_update_member.exit121_crit_edge140: ; preds = %tipc_group_is_receiver.exit.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit121

tipc_group_is_receiver.exit.i96.tipc_group_update_member.exit121_crit_edge: ; preds = %tipc_group_is_receiver.exit.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit121

if.end.i99:                                       ; preds = %tipc_group_is_receiver.exit.i96
  %window.i97 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 10
  %76 = ptrtoint ptr %window.i97 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %window.i97, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %77)
  %cmp.i98 = icmp ugt i16 %77, 64
  br i1 %cmp.i98, label %if.end.i99.tipc_group_update_member.exit121_crit_edge, label %if.end6.i102

if.end.i99.tipc_group_update_member.exit121_crit_edge: ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit121

if.end6.i102:                                     ; preds = %if.end.i99
  %call.i.i.i101 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %small_win.i84) #11
  br i1 %call.i.i.i101, label %if.end.i.i.i105, label %if.end6.i102.list_del_init.exit.i108_crit_edge

if.end6.i102.list_del_init.exit.i108_crit_edge:   ; preds = %if.end6.i102
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i108

if.end.i.i.i105:                                  ; preds = %if.end6.i102
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i103 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2, i32 1
  %78 = ptrtoint ptr %prev.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i.i103, align 4
  %80 = ptrtoint ptr %small_win.i84 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %small_win.i84, align 4
  %prev1.i.i.i.i104 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i.i104, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %list_del_init.exit.i108

list_del_init.exit.i108:                          ; preds = %if.end.i.i.i105, %if.end6.i102.list_del_init.exit.i108_crit_edge
  %84 = ptrtoint ptr %small_win.i84 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %small_win.i84, ptr %small_win.i84, align 4
  %prev.i3.i.i106 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2, i32 1
  %85 = ptrtoint ptr %prev.i3.i.i106 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %small_win.i84, ptr %prev.i3.i.i106, align 4
  %small_win7.i107 = getelementptr inbounds %struct.tipc_group, ptr %72, i32 0, i32 1
  br label %for.cond.i112

for.cond.i112:                                    ; preds = %for.body.i115.for.cond.i112_crit_edge, %list_del_init.exit.i108
  %.pn.in.in.i109 = phi ptr [ %small_win7.i107, %list_del_init.exit.i108 ], [ %.pn.in.i110, %for.body.i115.for.cond.i112_crit_edge ]
  %86 = ptrtoint ptr %.pn.in.in.i109 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pn.in.i110 = load ptr, ptr %.pn.in.in.i109, align 4
  %cmp16.not.i111 = icmp eq ptr %.pn.in.i110, %small_win7.i107
  br i1 %cmp16.not.i111, label %for.cond.i112.for.end.i119_crit_edge, label %for.body.i115

for.cond.i112.for.end.i119_crit_edge:             ; preds = %for.cond.i112
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i119

for.body.i115:                                    ; preds = %for.cond.i112
  %window18.i113 = getelementptr i8, ptr %.pn.in.i110, i32 86
  %87 = ptrtoint ptr %window18.i113 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %window18.i113, align 2
  %89 = ptrtoint ptr %window.i97 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %window.i97, align 2
  %cmp22.i114 = icmp ugt i16 %88, %90
  br i1 %cmp22.i114, label %for.body.i115.for.end.i119_crit_edge, label %for.body.i115.for.cond.i112_crit_edge

for.body.i115.for.cond.i112_crit_edge:            ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i112

for.body.i115.for.end.i119_crit_edge:             ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i119

for.end.i119:                                     ; preds = %for.body.i115.for.end.i119_crit_edge, %for.cond.i112.for.end.i119_crit_edge
  %.pn.in.lcssa.i116 = phi ptr [ %.pn.in.i110, %for.body.i115.for.end.i119_crit_edge ], [ %small_win7.i107, %for.cond.i112.for.end.i119_crit_edge ]
  %prev.i.i117 = getelementptr inbounds %struct.list_head, ptr %.pn.in.lcssa.i116, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i.i117 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i.i117, align 4
  %call.i.i47.i118 = tail call zeroext i1 @__list_add_valid(ptr noundef %small_win.i84, ptr noundef %92, ptr noundef %.pn.in.lcssa.i116) #11
  br i1 %call.i.i47.i118, label %if.end.i.i48.i120, label %for.end.i119.tipc_group_update_member.exit121_crit_edge

for.end.i119.tipc_group_update_member.exit121_crit_edge: ; preds = %for.end.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_update_member.exit121

if.end.i.i48.i120:                                ; preds = %for.end.i119
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %prev.i.i117 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %small_win.i84, ptr %prev.i.i117, align 4
  %94 = ptrtoint ptr %small_win.i84 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %.pn.in.lcssa.i116, ptr %small_win.i84, align 4
  %95 = ptrtoint ptr %prev.i3.i.i106 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev.i3.i.i106, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %small_win.i84, ptr %92, align 4
  br label %tipc_group_update_member.exit121

tipc_group_update_member.exit121:                 ; preds = %if.end.i.i48.i120, %for.end.i119.tipc_group_update_member.exit121_crit_edge, %if.end.i99.tipc_group_update_member.exit121_crit_edge, %tipc_group_is_receiver.exit.i96.tipc_group_update_member.exit121_crit_edge, %tipc_group_is_receiver.exit.i96.tipc_group_update_member.exit121_crit_edge140
  tail call fastcc void @tipc_group_proto_xmit(ptr noundef nonnull %grp, ptr noundef nonnull %n.0.lcssa.i, i32 noundef 0, ptr noundef %xmitq)
  %bc_syncpt = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 12
  %97 = ptrtoint ptr %bc_syncpt to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %bc_syncpt, align 2
  tail call fastcc void @tipc_group_create_event(ptr noundef nonnull %grp, ptr noundef nonnull %n.0.lcssa.i, i32 noundef 1, i16 noundef zeroext %98, ptr noundef %inputq)
  br label %sw.epilog

sw.bb25:                                          ; preds = %tipc_group_find_member.exit
  %tobool26.not = icmp eq ptr %n.0.lcssa.i, null
  br i1 %tobool26.not, label %sw.bb25.sw.epilog_crit_edge, label %if.end28

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end28:                                         ; preds = %sw.bb25
  %state.i = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 8
  %99 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %state.i, align 4
  %.off.i = add i32 %100, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.then.i122, label %if.end28.tipc_group_decr_active.exit_crit_edge

if.end28.tipc_group_decr_active.exit_crit_edge:   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_decr_active.exit

if.then.i122:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %active_cnt.i = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 12
  %101 = ptrtoint ptr %active_cnt.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %active_cnt.i, align 2
  %dec.i = add i16 %102, -1
  store i16 %dec.i, ptr %active_cnt.i, align 2
  br label %tipc_group_decr_active.exit

tipc_group_decr_active.exit:                      ; preds = %if.then.i122, %if.end28.tipc_group_decr_active.exit_crit_edge
  %103 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 7, ptr %state.i, align 4
  %list = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %tipc_group_decr_active.exit.list_del_init.exit_crit_edge

tipc_group_decr_active.exit.list_del_init.exit_crit_edge: ; preds = %tipc_group_decr_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %tipc_group_decr_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i124 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 1, i32 1
  %104 = ptrtoint ptr %prev.i.i124 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i.i124, align 4
  %106 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev1.i.i.i, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %107, ptr %105, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %tipc_group_decr_active.exit.list_del_init.exit_crit_edge
  %110 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 1, i32 1
  %111 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %list, ptr %prev.i3.i, align 4
  %112 = ptrtoint ptr %usr_wakeup to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %usr_wakeup, align 1
  %small_win.i125 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2
  %113 = ptrtoint ptr %small_win.i125 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile ptr, ptr %small_win.i125, align 4
  %cmp.i.not.i126 = icmp eq ptr %114, %small_win.i125
  br i1 %cmp.i.not.i126, label %list_del_init.exit.tipc_group_open.exit136_crit_edge, label %if.end.i128

list_del_init.exit.tipc_group_open.exit136_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_group_open.exit136

if.end.i128:                                      ; preds = %list_del_init.exit
  %call.i.i.i127 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %small_win.i125) #11
  br i1 %call.i.i.i127, label %if.end.i.i.i131, label %if.end.i128.list_del_init.exit.i135_crit_edge

if.end.i128.list_del_init.exit.i135_crit_edge:    ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i135

if.end.i.i.i131:                                  ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i129 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2, i32 1
  %115 = ptrtoint ptr %prev.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %prev.i.i.i129, align 4
  %117 = ptrtoint ptr %small_win.i125 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %small_win.i125, align 4
  %prev1.i.i.i.i130 = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %prev1.i.i.i.i130 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %116, ptr %prev1.i.i.i.i130, align 4
  %120 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %118, ptr %116, align 4
  br label %list_del_init.exit.i135

list_del_init.exit.i135:                          ; preds = %if.end.i.i.i131, %if.end.i128.list_del_init.exit.i135_crit_edge
  %121 = ptrtoint ptr %small_win.i125 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %small_win.i125, ptr %small_win.i125, align 4
  %prev.i3.i.i132 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 2, i32 1
  %122 = ptrtoint ptr %prev.i3.i.i132 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %small_win.i125, ptr %prev.i3.i.i132, align 4
  %group.i133 = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 4
  %123 = ptrtoint ptr %group.i133 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %group.i133, align 4
  %open.i134 = getelementptr inbounds %struct.tipc_group, ptr %124, i32 0, i32 16
  %125 = ptrtoint ptr %open.i134 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %open.i134, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %126, align 1
  %128 = ptrtoint ptr %usr_wakeup to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %usr_wakeup, align 1
  br label %tipc_group_open.exit136

tipc_group_open.exit136:                          ; preds = %list_del_init.exit.i135, %list_del_init.exit.tipc_group_open.exit136_crit_edge
  %call30 = tail call zeroext i1 @tipc_node_is_up(ptr noundef %12, i32 noundef %6) #11
  br i1 %call30, label %tipc_group_open.exit136.sw.epilog_crit_edge, label %if.then31

tipc_group_open.exit136.sw.epilog_crit_edge:      ; preds = %tipc_group_open.exit136
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then31:                                        ; preds = %tipc_group_open.exit136
  call void @__sanitizer_cov_trace_pc() #13
  %bc_rcv_nxt = getelementptr inbounds %struct.tipc_member, ptr %n.0.lcssa.i, i32 0, i32 11
  %129 = ptrtoint ptr %bc_rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %bc_rcv_nxt, align 4
  tail call fastcc void @tipc_group_create_event(ptr noundef nonnull %grp, ptr noundef nonnull %n.0.lcssa.i, i32 noundef 2, i16 noundef zeroext %130, ptr noundef %inputq)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then31, %tipc_group_open.exit136.sw.epilog_crit_edge, %sw.bb25.sw.epilog_crit_edge, %tipc_group_update_member.exit121, %if.end19.sw.epilog_crit_edge, %tipc_group_update_member.exit, %if.then14.sw.epilog_crit_edge, %tipc_group_find_member.exit.sw.epilog_crit_edge
  %member_cnt.i = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 11
  %131 = ptrtoint ptr %member_cnt.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %member_cnt.i, align 4
  %conv.i137 = zext i16 %132 to i32
  %add.i = add nuw nsw i32 %conv.i137, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %132)
  %cmp.i138 = icmp ult i16 %132, 511
  %div24.i = lshr i32 %add.i, 3
  %133 = tail call i32 @llvm.umax.i32(i32 %div24.i, i32 16) #11
  %134 = select i1 %cmp.i138, i32 %133, i32 64
  %conv9.i = trunc i32 %134 to i16
  %max_active10.i = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 13
  %135 = ptrtoint ptr %max_active10.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv9.i, ptr %max_active10.i, align 4
  %mul.i = mul nuw nsw i32 %134, 780
  %sub.i = sub nsw i32 %add.i, %134
  %mul11.i = mul nsw i32 %sub.i, 65
  %add12.i = add nsw i32 %mul11.i, %mul.i
  %mul14.i = shl i32 %add12.i, 12
  %136 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %mul14.i, ptr %sk_rcvbuf, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.lhs.true8.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_node_is_up(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_group_fill_sock_diag(ptr nocapture noundef readonly %grp, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  %tmp.i51 = alloca i32, align 4
  %tmp.i49 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not57 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not57
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 7
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #11
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end
  %instance = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 8
  %5 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %instance, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i49) #11
  %7 = ptrtoint ptr %tmp.i49 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i49, align 4
  %call.i50 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i49) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i49) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool4.not = icmp eq i32 %call.i50, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %bc_snd_nxt = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 14
  %8 = ptrtoint ptr %bc_snd_nxt to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bc_snd_nxt, align 2
  %conv = zext i16 %9 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i51) #11
  %10 = ptrtoint ptr %tmp.i51 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %tmp.i51, align 4
  %call.i52 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i51) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool7.not = icmp eq i32 %call.i52, 0
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false5.if.then.i.i_crit_edge

lor.lhs.false5.if.then.i.i_crit_edge:             ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end9:                                          ; preds = %lor.lhs.false5
  %scope = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 9
  %11 = ptrtoint ptr %scope to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %scope, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp = icmp eq i32 %12, 3
  br i1 %cmp, label %if.then11, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then11:                                        ; preds = %if.end9
  %call.i53 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool13.not = icmp eq i32 %call.i53, 0
  br i1 %tobool13.not, label %if.end16thread-pre-split, label %if.then11.if.then.i.i_crit_edge

if.then11.if.then.i.i_crit_edge:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end16thread-pre-split:                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %scope to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %scope, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end16thread-pre-split, %if.end9.if.end16_crit_edge
  %14 = phi i32 [ %.pr, %if.end16thread-pre-split ], [ %12, %if.end9.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp18 = icmp eq i32 %14, 2
  br i1 %cmp18, label %if.then20, label %if.end16.if.end25_crit_edge

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then20:                                        ; preds = %if.end16
  %call.i54 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool22.not = icmp eq i32 %call.i54, 0
  br i1 %tobool22.not, label %if.then20.if.end25_crit_edge, label %if.then20.if.then.i.i_crit_edge

if.then20.if.then.i.i_crit_edge:                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end25:                                         ; preds = %if.then20.if.end25_crit_edge, %if.end16.if.end25_crit_edge
  %open = getelementptr inbounds %struct.tipc_group, ptr %grp, i32 0, i32 16
  %15 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %open, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool26.not = icmp eq i8 %18, 0
  br i1 %tobool26.not, label %if.end25.if.end32_crit_edge, label %if.then27

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then27:                                        ; preds = %if.end25
  %call.i55 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool29.not = icmp eq i32 %call.i55, 0
  br i1 %tobool29.not, label %if.then27.if.end32_crit_edge, label %if.then27.if.then.i.i_crit_edge

if.then27.if.then.i.i_crit_edge:                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.end32:                                         ; preds = %if.then27.if.end32_crit_edge, %if.end25.if.end32_crit_edge
  %19 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then27.if.then.i.i_crit_edge, %if.then20.if.then.i.i_crit_edge, %if.then11.if.then.i.i_crit_edge, %lor.lhs.false5.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %23, %1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !45

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_nest_cancel.exit ], [ 0, %if.end32 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_nlist_add(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_nlist_del(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_msg_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29}
!llvm.named.register.sp = !{!31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/tipc/group.c", i32 646, i32 4}
!2 = !{ptr @tipc_group_update_rcv_win._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.tipc_group_update_rcv_win, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tipc_group_update_rcv_win._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tipc_group_update_rcv_win._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @tipc_group_proto_rcv._rs, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../net/tipc/group.c", i32 831, i32 4}
!10 = !{ptr @__func__.tipc_group_proto_rcv, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tipc_group_proto_rcv._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @tipc_group_proto_rcv._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/tipc/group.c", i32 849, i32 3}
!16 = !{ptr @tipc_group_proto_rcv._entry.4, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @tipc_group_proto_rcv._entry_ptr.6, !15, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/net/netlink.h", i32 991, i32 3}
!31 = !{!"sp"}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i8 0, i8 2}
!42 = !{i64 2150075448}
!43 = !{i64 2150075714}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{!"branch_weights", i32 1, i32 2000}
