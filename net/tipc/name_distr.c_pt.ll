; ModuleID = '/llk/IR_all_yes/net/tipc/name_distr.c_pt.bc'
source_filename = "../net/tipc/name_distr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.tipc_net = type { [16 x i8], i32, i32, i32, [33 x i8], i32, i32, i8, %struct.spinlock, [512 x %struct.hlist_head], %struct.list_head, i32, i32, [3 x ptr], i32, [4 x ptr], %struct.spinlock, ptr, ptr, %struct.rhashtable, %struct.spinlock, ptr, ptr, %struct.atomic_t, i16, %struct.packet_type, ptr, %struct.work_struct, %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.publication = type { %struct.tipc_service_range, %struct.tipc_socket_addr, i16, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.tipc_service_range = type { i32, i32, i32 }
%struct.tipc_socket_addr = type { i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.name_table = type { [1024 x %struct.hlist_head], %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.101, %union.anon.102, [48 x i8], %union.anon.103, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.105, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.101 = type { ptr }
%union.anon.102 = type { i64 }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { i32, ptr }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.107, i32, i32, i32, i16, i16, %union.anon.109, i32, %union.anon.110, %union.anon.111, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.107 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.distr_item = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
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
%struct.ctl_table_header = type { %union.anon.47, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.tipc_uaddr = type { i16, i8, i8, %union.anon.122 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { %struct.tipc_service_addr, i32 }
%struct.tipc_service_addr = type { i32, i32 }

@sysctl_tipc_named_timeout = dso_local local_unnamed_addr global i32 2000, section ".data..read_mostly", align 4
@tipc_named_publish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014tipc: Publication distribution failure\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tipc_named_publish\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/tipc/name_distr.c\00", [42 x i8] zeroinitializer }, align 32
@tipc_named_publish._entry_ptr = internal global ptr @tipc_named_publish._entry, section ".printk_index", align 4
@tipc_named_withdraw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014tipc: Withdrawal distribution failure\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tipc_named_withdraw\00", [44 x i8] zeroinitializer }, align 32
@tipc_named_withdraw._entry_ptr = internal global ptr @tipc_named_withdraw._entry, section ".printk_index", align 4
@tipc_named_reinit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@tipc_named_reinit.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
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
@named_distribute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014tipc: Bulk publication failure\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"named_distribute\00", [47 x i8] zeroinitializer }, align 32
@named_distribute._entry_ptr = internal global ptr @named_distribute._entry, section ".printk_index", align 4
@tipc_update_nametbl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tipc_update_nametbl = private unnamed_addr constant [20 x i8] c"tipc_update_nametbl\00", align 1
@tipc_update_nametbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.tipc_update_nametbl, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014tipc: Failed to remove binding %u,%u from %u\0A\00", [48 x i8] zeroinitializer }, align 32
@tipc_update_nametbl._entry_ptr = internal global ptr @tipc_update_nametbl._entry, section ".printk_index", align 4
@tipc_update_nametbl._rs.16 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tipc_update_nametbl._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.tipc_update_nametbl, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014tipc: Unknown name table message received\0A\00", [51 x i8] zeroinitializer }, align 32
@tipc_update_nametbl._entry_ptr.19 = internal global ptr @tipc_update_nametbl._entry.17, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 111, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 140, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 413, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 45, i32 7 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 695, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 723, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 175, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 313, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [25 x i8] c"../net/tipc/name_distr.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 316, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @named_distribute._entry, ptr @named_distribute._entry_ptr, ptr @tipc_named_publish._entry, ptr @tipc_named_publish._entry_ptr, ptr @tipc_named_withdraw._entry, ptr @tipc_named_withdraw._entry_ptr, ptr @tipc_update_nametbl._entry, ptr @tipc_update_nametbl._entry.17, ptr @tipc_update_nametbl._entry_ptr, ptr @tipc_update_nametbl._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @tipc_update_nametbl._rs, ptr @.str.14, ptr @.str.15, ptr @tipc_update_nametbl._rs.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_named_publish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_named_withdraw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @named_distribute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_update_nametbl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_update_nametbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_update_nametbl._rs.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_update_nametbl._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tipc_named_publish(ptr noundef %net, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #6
  %nametbl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 21
  %0 = ptrtoint ptr %nametbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nametbl.i, align 4
  %scope = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %scope to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %scope, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp = icmp eq i16 %3, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %binding_node = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 5
  %node_scope = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %binding_node, ptr noundef %5, ptr noundef %node_scope) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %binding_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %node_scope, ptr %binding_node, align 4
  %prev2.i.i = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !56
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %binding_node, ptr %5, align 4
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %binding_node, ptr %prev.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cluster_scope_lock = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 3
  tail call void @_raw_write_lock_bh(ptr noundef %cluster_scope_lock) #6
  %binding_node2 = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 5
  %cluster_scope = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 2
  %prev.i27 = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i27, align 4
  %call.i.i28 = tail call zeroext i1 @__list_add_valid(ptr noundef %binding_node2, ptr noundef %11, ptr noundef %cluster_scope) #6
  br i1 %call.i.i28, label %if.end.i.i29, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i29:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %binding_node2, ptr %prev.i27, align 4
  %13 = ptrtoint ptr %binding_node2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cluster_scope, ptr %binding_node2, align 4
  %prev3.i.i = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %binding_node2, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i29, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %cluster_scope_lock) #6
  %call.i30 = tail call ptr @tipc_buf_acquire(i32 noundef 60, i32 noundef 2592) #6
  %call.i.i31 = tail call fastcc ptr @tipc_net(ptr noundef %net) #6
  %cmp.not.i = icmp eq ptr %call.i30, null
  br i1 %cmp.not.i, label %do.end, label %if.end7

do.end:                                           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end7:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %node_addr.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i31, i32 0, i32 1
  %16 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node_addr.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i30, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  tail call void @tipc_msg_init(i32 noundef %17, ptr noundef %19, i32 noundef 11, i32 noundef 0, i32 noundef 40, i32 noundef 0) #6
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and.i.i = and i32 %21, -131072
  %or.i.i = or i32 %and.i.i, 60
  store i32 %or.i.i, ptr %19, align 4
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %snd_nxt = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %snd_nxt, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %snd_nxt, align 4
  %conv.i = and i32 %25, 65535
  %arrayidx.i.i = getelementptr [15 x i32], ptr %23, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  %and2.i.i = and i32 %27, -65536
  %or.i.i32 = or i32 %and2.i.i, %conv.i
  store i32 %or.i.i32, ptr %arrayidx.i.i, align 4
  %28 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i34 = getelementptr [15 x i32], ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i34, align 4
  %or.i.i35 = or i32 %30, 67108864
  store i32 %or.i.i35, ptr %arrayidx.i.i34, align 4
  %31 = load ptr, ptr %data.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %34 = lshr i32 %33, 19
  %shl.i.i = and i32 %34, 60
  %add.ptr.i = getelementptr i8, ptr %31, i32 %shl.i.i
  %35 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %p, align 4
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %add.ptr.i, align 4
  %lower.i = getelementptr inbounds %struct.tipc_service_range, ptr %p, i32 0, i32 1
  %38 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lower.i, align 4
  %lower3.i = getelementptr inbounds %struct.distr_item, ptr %add.ptr.i, i32 0, i32 1
  %40 = ptrtoint ptr %lower3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %lower3.i, align 4
  %upper.i = getelementptr inbounds %struct.tipc_service_range, ptr %p, i32 0, i32 2
  %41 = ptrtoint ptr %upper.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %upper.i, align 4
  %upper5.i = getelementptr inbounds %struct.distr_item, ptr %add.ptr.i, i32 0, i32 2
  %43 = ptrtoint ptr %upper5.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %upper5.i, align 4
  %sk.i = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 1
  %44 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sk.i, align 4
  %port.i = getelementptr inbounds %struct.distr_item, ptr %add.ptr.i, i32 0, i32 3
  %46 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %port.i, align 4
  %key.i = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 3
  %47 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %key.i, align 4
  %key6.i = getelementptr inbounds %struct.distr_item, ptr %add.ptr.i, i32 0, i32 4
  %49 = ptrtoint ptr %key6.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %key6.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.end.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i30, %if.end7 ], [ null, %do.end ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tipc_named_withdraw(ptr noundef %net, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #6
  %nametbl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 21
  %0 = ptrtoint ptr %nametbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nametbl.i, align 4
  %cluster_scope_lock = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 3
  tail call void @_raw_write_lock_bh(ptr noundef %cluster_scope_lock) #6
  %binding_node = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %binding_node) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %binding_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %binding_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %binding_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %binding_node, align 4
  %prev.i = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %cluster_scope_lock) #6
  %scope = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 2
  %10 = ptrtoint ptr %scope to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %scope, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %11)
  %cmp = icmp eq i16 %11, 3
  br i1 %cmp, label %list_del.exit.cleanup_crit_edge, label %if.end

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %list_del.exit
  %call.i23 = tail call ptr @tipc_buf_acquire(i32 noundef 60, i32 noundef 2592) #6
  %call.i.i24 = tail call fastcc ptr @tipc_net(ptr noundef %net) #6
  %cmp.not.i = icmp eq ptr %call.i23, null
  br i1 %cmp.not.i, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %node_addr.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i24, i32 0, i32 1
  %12 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %node_addr.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i23, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  tail call void @tipc_msg_init(i32 noundef %13, ptr noundef %15, i32 noundef 11, i32 noundef 1, i32 noundef 40, i32 noundef 0) #6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %and.i.i = and i32 %17, -131072
  %or.i.i = or i32 %and.i.i, 60
  store i32 %or.i.i, ptr %15, align 4
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %snd_nxt = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %snd_nxt, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %snd_nxt, align 4
  %conv.i = and i32 %21, 65535
  %arrayidx.i.i = getelementptr [15 x i32], ptr %19, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  %and2.i.i = and i32 %23, -65536
  %or.i.i25 = or i32 %and2.i.i, %conv.i
  store i32 %or.i.i25, ptr %arrayidx.i.i, align 4
  %24 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i27 = getelementptr [15 x i32], ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx.i.i27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i27, align 4
  %or.i.i28 = or i32 %26, 67108864
  store i32 %or.i.i28, ptr %arrayidx.i.i27, align 4
  %27 = load ptr, ptr %data.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %30 = lshr i32 %29, 19
  %shl.i.i = and i32 %30, 60
  %add.ptr.i = getelementptr i8, ptr %27, i32 %shl.i.i
  %31 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %p, align 4
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %add.ptr.i, align 4
  %lower.i = getelementptr inbounds %struct.tipc_service_range, ptr %p, i32 0, i32 1
  %34 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lower.i, align 4
  %lower3.i = getelementptr inbounds %struct.distr_item, ptr %add.ptr.i, i32 0, i32 1
  %36 = ptrtoint ptr %lower3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %lower3.i, align 4
  %upper.i = getelementptr inbounds %struct.tipc_service_range, ptr %p, i32 0, i32 2
  %37 = ptrtoint ptr %upper.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %upper.i, align 4
  %upper5.i = getelementptr inbounds %struct.distr_item, ptr %add.ptr.i, i32 0, i32 2
  %39 = ptrtoint ptr %upper5.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %upper5.i, align 4
  %sk.i = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 1
  %40 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sk.i, align 4
  %port.i = getelementptr inbounds %struct.distr_item, ptr %add.ptr.i, i32 0, i32 3
  %42 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %port.i, align 4
  %key.i = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 3
  %43 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %key.i, align 4
  %key6.i = getelementptr inbounds %struct.distr_item, ptr %add.ptr.i, i32 0, i32 4
  %45 = ptrtoint ptr %key6.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %key6.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %list_del.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i23, %if.end6 ], [ null, %do.end ], [ null, %list_del.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_named_node_up(ptr noundef %net, i32 noundef %dnode, i16 noundef zeroext %capabilities) local_unnamed_addr #0 align 64 {
entry:
  %head = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #6
  %nametbl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 21
  %0 = ptrtoint ptr %nametbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nametbl.i, align 4
  %call1 = tail call fastcc ptr @tipc_net(ptr noundef %net)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %head) #6
  %2 = getelementptr inbounds i8, ptr %head, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 44)
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head, ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.anon.54, ptr %head, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %head, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %head, i32 0, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i, align 4
  %nametbl_lock = getelementptr inbounds %struct.tipc_net, ptr %call1, i32 0, i32 20
  call void @_raw_spin_lock_bh(ptr noundef %nametbl_lock) #6
  %7 = and i16 %capabilities, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rc_dests = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %rc_dests to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rc_dests, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %rc_dests, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %snd_nxt = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %snd_nxt, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %nametbl_lock) #6
  %cluster_scope_lock = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 3
  call void @_raw_read_lock_bh(ptr noundef %cluster_scope_lock) #6
  %cluster_scope = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 2
  %call.i15 = call i32 @tipc_node_get_mtu(ptr noundef %net, i32 noundef %dnode, i32 noundef 0, i1 noundef zeroext false) #6
  %sub.i = add i32 %call.i15, -40
  %12 = urem i32 %sub.i, 20
  %mul.i = sub i32 %sub.i, %12
  %13 = ptrtoint ptr %cluster_scope to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn77.i = load ptr, ptr %cluster_scope, align 4
  %cmp.not79.i = icmp eq ptr %.pn77.i, %cluster_scope
  br i1 %cmp.not79.i, label %if.end.if.end24.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.end24.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

for.body.i:                                       ; preds = %for.body.i.backedge, %if.end.for.body.i_crit_edge
  %.pn84.i = phi ptr [ %.pn84.i.be, %for.body.i.backedge ], [ %.pn77.i, %if.end.for.body.i_crit_edge ]
  %skb.083.i = phi ptr [ %skb.083.i.be, %for.body.i.backedge ], [ null, %if.end.for.body.i_crit_edge ]
  %item.082.i = phi ptr [ %incdec.ptr.i, %for.body.i.backedge ], [ null, %if.end.for.body.i_crit_edge ]
  %msg_rem.080.i = phi i32 [ %msg_rem.080.i.be, %for.body.i.backedge ], [ %mul.i, %if.end.for.body.i_crit_edge ]
  %publ.085.i = getelementptr i8, ptr %.pn84.i, i32 -32
  %tobool.not.i = icmp eq ptr %skb.083.i, null
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.if.end8.i_crit_edge

for.body.i.if.end8.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then.i:                                        ; preds = %for.body.i
  %add.i.i = add i32 %msg_rem.080.i, 40
  %call.i.i = call ptr @tipc_buf_acquire(i32 noundef %add.i.i, i32 noundef 2592) #6
  %call.i.i.i = call fastcc ptr @tipc_net(ptr noundef %net) #6
  %cmp.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %named_distribute.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %node_addr.i.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %node_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %node_addr.i.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i, align 4
  call void @tipc_msg_init(i32 noundef %15, ptr noundef %17, i32 noundef 11, i32 noundef 0, i32 noundef 40, i32 noundef %dnode) #6
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %and.i.i.i = and i32 %19, -131072
  %or.i.i.i = or i32 %and.i.i.i, %add.i.i
  store i32 %or.i.i.i, ptr %17, align 4
  %20 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i, align 4
  %or.i.i60.i = or i32 %23, 16384
  store i32 %or.i.i60.i, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i61.i = getelementptr [15 x i32], ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i61.i, align 4
  %or.i.i64.i = or i32 %25, 335544320
  store i32 %or.i.i64.i, ptr %arrayidx.i.i61.i, align 4
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %21, align 4
  %28 = lshr i32 %27, 19
  %shl.i.i.i = and i32 %28, 60
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %shl.i.i.i
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i, %for.body.i.if.end8.i_crit_edge
  %item.1.i = phi ptr [ %item.082.i, %for.body.i.if.end8.i_crit_edge ], [ %add.ptr.i.i, %if.end.i ]
  %skb.1.i = phi ptr [ %skb.083.i, %for.body.i.if.end8.i_crit_edge ], [ %call.i.i, %if.end.i ]
  %29 = ptrtoint ptr %publ.085.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %publ.085.i, align 4
  %31 = ptrtoint ptr %item.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %item.1.i, align 4
  %lower.i.i = getelementptr i8, ptr %.pn84.i, i32 -28
  %32 = ptrtoint ptr %lower.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lower.i.i, align 4
  %lower3.i.i = getelementptr inbounds %struct.distr_item, ptr %item.1.i, i32 0, i32 1
  %34 = ptrtoint ptr %lower3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %lower3.i.i, align 4
  %upper.i.i = getelementptr i8, ptr %.pn84.i, i32 -24
  %35 = ptrtoint ptr %upper.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %upper.i.i, align 4
  %upper5.i.i = getelementptr inbounds %struct.distr_item, ptr %item.1.i, i32 0, i32 2
  %37 = ptrtoint ptr %upper5.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %upper5.i.i, align 4
  %sk.i.i = getelementptr i8, ptr %.pn84.i, i32 -20
  %38 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sk.i.i, align 4
  %port.i.i = getelementptr inbounds %struct.distr_item, ptr %item.1.i, i32 0, i32 3
  %40 = ptrtoint ptr %port.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %port.i.i, align 4
  %key.i.i = getelementptr i8, ptr %.pn84.i, i32 -8
  %41 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %key.i.i, align 4
  %key6.i.i = getelementptr inbounds %struct.distr_item, ptr %item.1.i, i32 0, i32 4
  %43 = ptrtoint ptr %key6.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %key6.i.i, align 4
  %incdec.ptr.i = getelementptr %struct.distr_item, ptr %item.1.i, i32 1
  %sub9.i = add i32 %msg_rem.080.i, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.i)
  %tobool10.not.i = icmp eq i32 %sub9.i, 0
  br i1 %tobool10.not.i, label %for.inc.i.thread, label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i
  %44 = ptrtoint ptr %.pn84.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i = load ptr, ptr %.pn84.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cluster_scope
  br i1 %cmp.not.i, label %if.then19.i, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.inc.i.thread.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %.pn84.i.be = phi ptr [ %.pn.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %.pn.i18, %for.inc.i.thread.for.body.i.backedge_crit_edge ]
  %skb.083.i.be = phi ptr [ %skb.1.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ null, %for.inc.i.thread.for.body.i.backedge_crit_edge ]
  %msg_rem.080.i.be = phi i32 [ %sub9.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %mul.i, %for.inc.i.thread.for.body.i.backedge_crit_edge ]
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %if.end8.i
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 4
  %47 = ptrtoint ptr %skb.1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %head, ptr %skb.1.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon, ptr %skb.1.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb.1.i, ptr %prev.i, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %skb.1.i, ptr %46, align 4
  %50 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %qlen.i, align 4
  %add.i.i.i.i = add i32 %51, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i, align 4
  %52 = ptrtoint ptr %.pn84.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn.i18 = load ptr, ptr %.pn84.i, align 4
  %cmp.not.i19 = icmp eq ptr %.pn.i18, %cluster_scope
  br i1 %cmp.not.i19, label %for.inc.i.thread.if.end24.i_crit_edge, label %for.inc.i.thread.for.body.i.backedge_crit_edge

for.inc.i.thread.for.body.i.backedge_crit_edge:   ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.backedge

for.inc.i.thread.if.end24.i_crit_edge:            ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.then19.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i65.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 19
  %53 = ptrtoint ptr %data.i65.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i65.i, align 4
  %sub21.i = sub i32 %mul.i, %sub9.i
  %add.i = add i32 %sub21.i, 40
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %and.i.i = and i32 %56, -131072
  %or.i.i = or i32 %and.i.i, %add.i
  store i32 %or.i.i, ptr %54, align 4
  call void @skb_trim(ptr noundef nonnull %skb.1.i, i32 noundef %add.i) #6
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i, align 4
  %59 = ptrtoint ptr %skb.1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %head, ptr %skb.1.i, align 8
  %prev10.i.i.i67.i = getelementptr inbounds %struct.anon, ptr %skb.1.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev10.i.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %prev10.i.i.i67.i, align 4
  store volatile ptr %skb.1.i, ptr %prev.i, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %skb.1.i, ptr %58, align 4
  %62 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %qlen.i, align 4
  %add.i.i.i69.i = add i32 %63, 1
  store volatile i32 %add.i.i.i69.i, ptr %qlen.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then19.i, %for.inc.i.thread.if.end24.i_crit_edge, %if.end.if.end24.i_crit_edge
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i.i = icmp eq ptr %65, %head
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %65
  %data.i70.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 19
  %66 = ptrtoint ptr %data.i70.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i70.i, align 4
  %arrayidx.i.i71.i = getelementptr [15 x i32], ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %arrayidx.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i71.i, align 4
  %or.i.i72.i = or i32 %69, 134217728
  store i32 %or.i.i72.i, ptr %arrayidx.i.i71.i, align 4
  %conv.i.i = and i32 %11, 65535
  %arrayidx.i.i73.i = getelementptr [15 x i32], ptr %67, i32 0, i32 4
  %70 = ptrtoint ptr %arrayidx.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i73.i, align 4
  %and2.i.i.i = and i32 %71, -65536
  %or.i.i74.i = or i32 %and2.i.i.i, %conv.i.i
  store i32 %or.i.i74.i, ptr %arrayidx.i.i73.i, align 4
  br label %named_distribute.exit

named_distribute.exit:                            ; preds = %if.end24.i, %do.end.i
  %call4 = call i32 @tipc_node_xmit(ptr noundef %net, ptr noundef nonnull %head, i32 noundef %dnode, i32 noundef 0) #6
  call void @_raw_read_unlock_bh(ptr noundef %cluster_scope_lock) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %head) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_net(ptr noundef %net) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !46) #6
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !57
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #6
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 45, ptr noundef nonnull @.str.8) #6
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #6
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !58
  %9 = tail call i32 @llvm.read_register.i32(metadata !46) #6
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_node_xmit(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_publ_notify(ptr noundef %net, ptr noundef readonly %nsub_list, i32 noundef %addr, i16 noundef zeroext %capabilities) local_unnamed_addr #0 align 64 {
entry:
  %ua.i = alloca %struct.tipc_uaddr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #6
  %nametbl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 21
  %0 = ptrtoint ptr %nametbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nametbl.i, align 4
  %call1 = tail call fastcc ptr @tipc_net(ptr noundef %net)
  %2 = ptrtoint ptr %nsub_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nsub_list, align 4
  %cmp.not23 = icmp eq ptr %3, %nsub_list
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %4 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua.i, i32 0, i32 3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %tipc_publ_purge.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in24 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn, %tipc_publ_purge.exit.for.body_crit_edge ]
  %publ.0 = getelementptr i8, ptr %.pn.in24, i32 -32
  %9 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in24, align 4
  %call.i22 = call fastcc ptr @tipc_net(ptr noundef %net) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ua.i) #6
  %scope.i = getelementptr i8, ptr %.pn.in24, i32 -12
  %10 = ptrtoint ptr %scope.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %scope.i, align 4
  %12 = ptrtoint ptr %publ.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %publ.0, align 4
  %lower.i = getelementptr i8, ptr %.pn.in24, i32 -28
  %14 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lower.i, align 4
  %upper.i = getelementptr i8, ptr %.pn.in24, i32 -24
  %16 = ptrtoint ptr %upper.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %upper.i, align 4
  %18 = ptrtoint ptr %ua.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 30, ptr %ua.i, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %4, align 2
  %conv1.i.i = trunc i16 %11 to i8
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv1.i.i, ptr %5, align 1
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %13, ptr %6, align 4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %15, ptr %7, align 4
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %17, ptr %8, align 4
  %nametbl_lock.i = getelementptr inbounds %struct.tipc_net, ptr %call.i22, i32 0, i32 20
  call void @_raw_spin_lock_bh(ptr noundef %nametbl_lock.i) #6
  %sk.i = getelementptr i8, ptr %.pn.in24, i32 -20
  %key.i = getelementptr i8, ptr %.pn.in24, i32 -8
  %24 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %key.i, align 4
  %call3.i = call ptr @tipc_nametbl_remove_publ(ptr noundef %net, ptr noundef nonnull %ua.i, ptr noundef %sk.i, i32 noundef %25) #6
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.end13.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %binding_node.i = getelementptr inbounds %struct.publication, ptr %call3.i, i32 0, i32 5
  call void @tipc_node_unsubscribe(ptr noundef %net, ptr noundef %binding_node.i, i32 noundef %addr) #6
  call void @_raw_spin_unlock_bh(ptr noundef %nametbl_lock.i) #6
  %rcu.i = getelementptr inbounds %struct.publication, ptr %call3.i, i32 0, i32 10
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 72 to ptr)) #6
  br label %tipc_publ_purge.exit

if.end13.critedge.i:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock_bh(ptr noundef %nametbl_lock.i) #6
  br label %tipc_publ_purge.exit

tipc_publ_purge.exit:                             ; preds = %if.end13.critedge.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ua.i) #6
  %cmp.not = icmp eq ptr %.pn, %nsub_list
  br i1 %cmp.not, label %tipc_publ_purge.exit.for.end_crit_edge, label %tipc_publ_purge.exit.for.body_crit_edge

tipc_publ_purge.exit.for.body_crit_edge:          ; preds = %tipc_publ_purge.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

tipc_publ_purge.exit.for.end_crit_edge:           ; preds = %tipc_publ_purge.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %tipc_publ_purge.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %nametbl_lock = getelementptr inbounds %struct.tipc_net, ptr %call1, i32 0, i32 20
  call void @_raw_spin_lock_bh(ptr noundef %nametbl_lock) #6
  %26 = and i16 %capabilities, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not = icmp eq i16 %26, 0
  br i1 %tobool.not, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %rc_dests = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %rc_dests to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rc_dests, align 4
  %dec = add i32 %28, -1
  store i32 %dec, ptr %rc_dests, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %nametbl_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_named_rcv(ptr noundef %net, ptr noundef %namedq, ptr nocapture noundef %rcv_nxt, ptr nocapture noundef %open) local_unnamed_addr #0 align 64 {
entry:
  %sk.i = alloca %struct.tipc_socket_addr, align 4
  %ua.i = alloca %struct.tipc_uaddr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_net(ptr noundef %net)
  %nametbl_lock = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %nametbl_lock) #6
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %namedq, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #6
  %0 = ptrtoint ptr %namedq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %namedq, align 4
  %cmp.not85.i39 = icmp eq ptr %1, %namedq
  br i1 %cmp.not85.i39, label %entry.tipc_named_dequeue.exit.thread_crit_edge, label %for.body.lr.ph.i.lr.ph

entry.tipc_named_dequeue.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tipc_named_dequeue.exit.thread

for.body.lr.ph.i.lr.ph:                           ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %namedq, i32 0, i32 1
  %2 = getelementptr inbounds %struct.tipc_socket_addr, ptr %sk.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua.i, i32 0, i32 3
  %6 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua.i, i32 0, i32 3, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %for.body.lr.ph.i.lr.ph
  %skb.086.i = phi ptr [ %1, %for.body.lr.ph.i.lr.ph ], [ %skb.086.i.be, %for.body.i.backedge ]
  %8 = ptrtoint ptr %skb.086.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.088.i = load ptr, ptr %skb.086.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.086.i, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.if.end.i_crit_edge, label %cond.true.i.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

cond.true.i.i:                                    ; preds = %for.body.i
  %call.i.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb.086.i, i32 noundef %10) #6
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i, label %cond.true.i.i.if.end.i_crit_edge

cond.true.i.i.if.end.i_crit_edge:                 ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %13 = ptrtoint ptr %skb.086.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb.086.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon, ptr %skb.086.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %skb.086.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %prev17.i.i, align 4
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %14, ptr %16, align 8
  br label %for.inc.sink.split.i

if.end.i:                                         ; preds = %cond.true.i.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.086.i, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %conv.i.i = trunc i32 %22 to i16
  %arrayidx.i.i.i63.i = getelementptr [15 x i32], ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx.i.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i63.i, align 4
  %25 = and i32 %24, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool7.not.i = icmp eq i32 %25, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then8.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i.i, ptr %rcv_nxt, align 2
  %27 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %open, align 1
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end.i.if.end9.i_crit_edge
  %28 = ptrtoint ptr %arrayidx.i.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i63.i, align 4
  %30 = and i32 %29, 335544320
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %30)
  %.not.i = icmp eq i32 %30, 67108864
  br i1 %.not.i, label %if.end16.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qlen.i.i, align 4
  %sub.i69.i = add i32 %32, -1
  store volatile i32 %sub.i69.i, ptr %qlen.i.i, align 4
  %33 = ptrtoint ptr %skb.086.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skb.086.i, align 8
  %prev9.i70.i = getelementptr inbounds %struct.anon, ptr %skb.086.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev9.i70.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev9.i70.i, align 4
  store ptr null, ptr %prev9.i70.i, align 4
  store ptr null, ptr %skb.086.i, align 8
  %prev17.i71.i = getelementptr inbounds %struct.anon, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %prev17.i71.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %36, ptr %prev17.i71.i, align 4
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %34, ptr %36, align 8
  br label %tipc_named_dequeue.exit

if.end16.i:                                       ; preds = %if.end9.i
  %39 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %open, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool17.not.i = icmp eq i8 %40, 0
  br i1 %tobool17.not.i, label %if.end16.i.if.end23.i_crit_edge, label %land.lhs.true.i

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  %41 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rcv_nxt, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %conv.i.i)
  %cmp19.i = icmp eq i16 %42, %conv.i.i
  br i1 %cmp19.i, label %if.then21.i, label %land.lhs.true.i.if.end23.i_crit_edge

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.le = trunc i32 %22 to i16
  %inc.i = add i16 %conv.i.i.le, 1
  %43 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %inc.i, ptr %rcv_nxt, align 2
  %44 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qlen.i.i, align 4
  %sub.i73.i = add i32 %45, -1
  store volatile i32 %sub.i73.i, ptr %qlen.i.i, align 4
  %46 = ptrtoint ptr %skb.086.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skb.086.i, align 8
  %prev9.i74.i = getelementptr inbounds %struct.anon, ptr %skb.086.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev9.i74.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev9.i74.i, align 4
  store ptr null, ptr %prev9.i74.i, align 4
  store ptr null, ptr %skb.086.i, align 8
  %prev17.i75.i = getelementptr inbounds %struct.anon, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %prev17.i75.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %49, ptr %prev17.i75.i, align 4
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %47, ptr %49, align 8
  br label %tipc_named_dequeue.exit

if.end23.i:                                       ; preds = %land.lhs.true.i.if.end23.i_crit_edge, %if.end16.i.if.end23.i_crit_edge
  %52 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %rcv_nxt, align 2
  %54 = xor i16 %53, -1
  %55 = add i16 %54, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %55)
  %tobool.not.i.i = icmp sgt i16 %55, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %conv.i.i)
  %cmp.i.i = icmp eq i16 %53, %conv.i.i
  %tobool25.not.i = or i1 %cmp.i.i, %tobool.not.i.i
  br i1 %tobool25.not.i, label %if.end23.i.for.inc.i_crit_edge, label %if.then26.i

if.end23.i.for.inc.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qlen.i.i, align 4
  %sub.i77.i = add i32 %57, -1
  store volatile i32 %sub.i77.i, ptr %qlen.i.i, align 4
  %58 = ptrtoint ptr %skb.086.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %skb.086.i, align 8
  %prev9.i78.i = getelementptr inbounds %struct.anon, ptr %skb.086.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev9.i78.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev9.i78.i, align 4
  store ptr null, ptr %prev9.i78.i, align 4
  store ptr null, ptr %skb.086.i, align 8
  %prev17.i79.i = getelementptr inbounds %struct.anon, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %prev17.i79.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %61, ptr %prev17.i79.i, align 4
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %59, ptr %61, align 8
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.then26.i, %if.then.i
  call void @kfree_skb_reason(ptr noundef %skb.086.i, i32 noundef 0) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.end23.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.088.i, %namedq
  br i1 %cmp.not.i, label %for.inc.i.tipc_named_dequeue.exit.thread_crit_edge, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.backedge

for.inc.i.tipc_named_dequeue.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tipc_named_dequeue.exit.thread

for.body.i.backedge:                              ; preds = %while.end.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %skb.086.i.be = phi ptr [ %tmp.088.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %98, %while.end.for.body.i.backedge_crit_edge ]
  br label %for.body.i

tipc_named_dequeue.exit.thread:                   ; preds = %while.end.tipc_named_dequeue.exit.thread_crit_edge, %for.inc.i.tipc_named_dequeue.exit.thread_crit_edge, %entry.tipc_named_dequeue.exit.thread_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #6
  br label %while.end11

tipc_named_dequeue.exit:                          ; preds = %if.then21.i, %if.then14.i
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #6
  %tobool.not = icmp eq ptr %skb.086.i, null
  br i1 %tobool.not, label %tipc_named_dequeue.exit.while.end11_crit_edge, label %while.body

tipc_named_dequeue.exit.while.end11_crit_edge:    ; preds = %tipc_named_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end11

while.body:                                       ; preds = %tipc_named_dequeue.exit
  %data.i.i48 = getelementptr inbounds %struct.sk_buff, ptr %skb.086.i, i32 0, i32 19
  %64 = ptrtoint ptr %data.i.i48 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i.i48, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %68 = and i32 %67, 31457280
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %68)
  %cmp.i.not.i = icmp eq i32 %68, 12582912
  %..i = select i1 %cmp.i.not.i, i32 3, i32 6, !prof !60
  %arrayidx.i.i = getelementptr [15 x i32], ptr %65, i32 0, i32 %..i
  %69 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %retval.0.i20 = load i32, ptr %arrayidx.i.i, align 4
  %70 = lshr i32 %67, 19
  %shl.i.i = and i32 %70, 60
  %and.i.i.i = and i32 %67, 131071
  %sub.i = sub nsw i32 %and.i.i.i, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i)
  %71 = icmp ult i32 %sub.i, 20
  br i1 %71, label %while.body.while.end_crit_edge, label %while.body8.lr.ph

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body8.lr.ph:                                ; preds = %while.body
  %div = udiv i32 %sub.i, 20
  %add.ptr.i = getelementptr i8, ptr %65, i32 %shl.i.i
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %65, i32 0, i32 1
  br label %while.body8

while.body8:                                      ; preds = %tipc_update_nametbl.exit.while.body8_crit_edge, %while.body8.lr.ph
  %count.038 = phi i32 [ %div, %while.body8.lr.ph ], [ %dec, %tipc_update_nametbl.exit.while.body8_crit_edge ]
  %item.037 = phi ptr [ %add.ptr.i, %while.body8.lr.ph ], [ %incdec.ptr, %tipc_update_nametbl.exit.while.body8_crit_edge ]
  %dec = add i32 %count.038, -1
  %72 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i = lshr i32 %73, 29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sk.i) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ua.i) #6
  %key1.i = getelementptr inbounds %struct.distr_item, ptr %item.037, i32 0, i32 4
  %74 = ptrtoint ptr %key1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %key1.i, align 4
  %76 = ptrtoint ptr %item.037 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %item.037, align 4
  %lower.i = getelementptr inbounds %struct.distr_item, ptr %item.037, i32 0, i32 1
  %78 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lower.i, align 4
  %upper.i = getelementptr inbounds %struct.distr_item, ptr %item.037, i32 0, i32 2
  %80 = ptrtoint ptr %upper.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %upper.i, align 4
  %82 = ptrtoint ptr %ua.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 30, ptr %ua.i, align 4
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %3, align 2
  %84 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 2, ptr %4, align 1
  %85 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %77, ptr %5, align 4
  %86 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %79, ptr %6, align 4
  %87 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %81, ptr %7, align 4
  %port.i = getelementptr inbounds %struct.distr_item, ptr %item.037, i32 0, i32 3
  %88 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port.i, align 4
  %90 = ptrtoint ptr %sk.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %sk.i, align 4
  %91 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %retval.0.i20, ptr %2, align 4
  %92 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.else27.i [
    i32 0, label %if.then.i22
    i32 1, label %if.then5.i
  ]

if.then.i22:                                      ; preds = %while.body8
  %call.i = call ptr @tipc_nametbl_insert_publ(ptr noundef %net, ptr noundef nonnull %ua.i, ptr noundef nonnull %sk.i, i32 noundef %75) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i22.tipc_update_nametbl.exit_crit_edge, label %if.then3.i

if.then.i22.tipc_update_nametbl.exit_crit_edge:   ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %tipc_update_nametbl.exit

if.then3.i:                                       ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #8
  %binding_node.i = getelementptr inbounds %struct.publication, ptr %call.i, i32 0, i32 5
  call void @tipc_node_subscribe(ptr noundef %net, ptr noundef %binding_node.i, i32 noundef %retval.0.i20) #6
  br label %tipc_update_nametbl.exit

if.then5.i:                                       ; preds = %while.body8
  %call6.i = call ptr @tipc_nametbl_remove_publ(ptr noundef %net, ptr noundef nonnull %ua.i, ptr noundef nonnull %sk.i, i32 noundef %75) #6
  %tobool7.not.i23 = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i23, label %if.end16.i25, label %if.then8.i24

if.then8.i24:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %binding_node9.i = getelementptr inbounds %struct.publication, ptr %call6.i, i32 0, i32 5
  call void @tipc_node_unsubscribe(ptr noundef %net, ptr noundef %binding_node9.i, i32 noundef %retval.0.i20) #6
  %rcu.i = getelementptr inbounds %struct.publication, ptr %call6.i, i32 0, i32 10
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 72 to ptr)) #6
  br label %tipc_update_nametbl.exit

if.end16.i25:                                     ; preds = %if.then5.i
  %call17.i = call i32 @___ratelimit(ptr noundef nonnull @tipc_update_nametbl._rs, ptr noundef nonnull @__func__.tipc_update_nametbl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i25.tipc_update_nametbl.exit_crit_edge, label %do.end22.i

if.end16.i25.tipc_update_nametbl.exit_crit_edge:  ; preds = %if.end16.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %tipc_update_nametbl.exit

do.end22.i:                                       ; preds = %if.end16.i25
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %5, align 4
  %95 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %6, align 4
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %94, i32 noundef %96, i32 noundef %retval.0.i20) #9
  br label %tipc_update_nametbl.exit

if.else27.i:                                      ; preds = %while.body8
  %call28.i = call i32 @___ratelimit(ptr noundef nonnull @tipc_update_nametbl._rs.16, ptr noundef nonnull @__func__.tipc_update_nametbl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.else27.i.tipc_update_nametbl.exit_crit_edge, label %do.end33.i

if.else27.i.tipc_update_nametbl.exit_crit_edge:   ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tipc_update_nametbl.exit

do.end33.i:                                       ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #8
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  br label %tipc_update_nametbl.exit

tipc_update_nametbl.exit:                         ; preds = %do.end33.i, %if.else27.i.tipc_update_nametbl.exit_crit_edge, %do.end22.i, %if.end16.i25.tipc_update_nametbl.exit_crit_edge, %if.then8.i24, %if.then3.i, %if.then.i22.tipc_update_nametbl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ua.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sk.i) #6
  %incdec.ptr = getelementptr %struct.distr_item, ptr %item.037, i32 1
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %tipc_update_nametbl.exit.while.end_crit_edge, label %tipc_update_nametbl.exit.while.body8_crit_edge

tipc_update_nametbl.exit.while.body8_crit_edge:   ; preds = %tipc_update_nametbl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body8

tipc_update_nametbl.exit.while.end_crit_edge:     ; preds = %tipc_update_nametbl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %tipc_update_nametbl.exit.while.end_crit_edge, %while.body.while.end_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %skb.086.i, i32 noundef 0) #6
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #6
  %97 = ptrtoint ptr %namedq to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %namedq, align 4
  %cmp.not85.i = icmp eq ptr %98, %namedq
  br i1 %cmp.not85.i, label %while.end.tipc_named_dequeue.exit.thread_crit_edge, label %while.end.for.body.i.backedge_crit_edge

while.end.for.body.i.backedge_crit_edge:          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.backedge

while.end.tipc_named_dequeue.exit.thread_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tipc_named_dequeue.exit.thread

while.end11:                                      ; preds = %tipc_named_dequeue.exit.while.end11_crit_edge, %tipc_named_dequeue.exit.thread
  call void @_raw_spin_unlock_bh(ptr noundef %nametbl_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_named_reinit(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #6
  %nametbl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 21
  %0 = ptrtoint ptr %nametbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nametbl.i, align 4
  %call1 = tail call fastcc ptr @tipc_net(ptr noundef %net)
  %call.i78 = tail call fastcc ptr @tipc_net(ptr noundef %net) #6
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i78, i32 0, i32 1
  %2 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node_addr.i, align 4
  %nametbl_lock = getelementptr inbounds %struct.tipc_net, ptr %call1, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %nametbl_lock) #6
  %call3 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b77 = load i1, ptr @tipc_named_reinit.__warned, align 1
  br i1 %.b77, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tipc_named_reinit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 413, ptr noundef nonnull @.str.5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %node_scope = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %node_scope to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn79 = load volatile ptr, ptr %node_scope, align 4
  %cmp.not80 = icmp eq ptr %.pn79, %node_scope
  br i1 %cmp.not80, label %do.end.do.body22_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.do.body22_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body22

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn81 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn79, %do.end.for.body_crit_edge ]
  %node = getelementptr i8, ptr %.pn81, i32 -16
  %5 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %node, align 4
  %6 = ptrtoint ptr %.pn81 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load volatile ptr, ptr %.pn81, align 4
  %cmp.not = icmp eq ptr %.pn, %node_scope
  br i1 %cmp.not, label %for.body.do.body22_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.do.body22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body22

do.body22:                                        ; preds = %for.body.do.body22_crit_edge, %do.end.do.body22_crit_edge
  %call23 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %do.body22.do.end33_crit_edge

do.body22.do.end33_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end33

land.lhs.true25:                                  ; preds = %do.body22
  %call26 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true25.do.end33_crit_edge, label %land.lhs.true28

land.lhs.true25.do.end33_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end33

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %.b7476 = load i1, ptr @tipc_named_reinit.__warned.6, align 1
  br i1 %.b7476, label %land.lhs.true28.do.end33_crit_edge, label %if.then30

land.lhs.true28.do.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end33

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tipc_named_reinit.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 415, ptr noundef nonnull @.str.5) #6
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %land.lhs.true28.do.end33_crit_edge, %land.lhs.true25.do.end33_crit_edge, %do.body22.do.end33_crit_edge
  %cluster_scope = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %cluster_scope to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn7582 = load volatile ptr, ptr %cluster_scope, align 4
  %cmp45.not83 = icmp eq ptr %.pn7582, %cluster_scope
  br i1 %cmp45.not83, label %do.end33.for.end59_crit_edge, label %do.end33.for.body46_crit_edge

do.end33.for.body46_crit_edge:                    ; preds = %do.end33
  br label %for.body46

do.end33.for.end59_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end59

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %do.end33.for.body46_crit_edge
  %.pn7584 = phi ptr [ %.pn75, %for.body46.for.body46_crit_edge ], [ %.pn7582, %do.end33.for.body46_crit_edge ]
  %node48 = getelementptr i8, ptr %.pn7584, i32 -16
  %8 = ptrtoint ptr %node48 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %node48, align 4
  %9 = ptrtoint ptr %.pn7584 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn75 = load volatile ptr, ptr %.pn7584, align 4
  %cmp45.not = icmp eq ptr %.pn75, %cluster_scope
  br i1 %cmp45.not, label %for.body46.for.end59_crit_edge, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body46

for.body46.for.end59_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end59

for.end59:                                        ; preds = %for.body46.for.end59_crit_edge, %do.end33.for.end59_crit_edge
  %rc_dests = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %rc_dests to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rc_dests, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %nametbl_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_buf_acquire(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_msg_init(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_node_get_mtu(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_nametbl_remove_publ(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_node_unsubscribe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_nametbl_insert_publ(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_node_subscribe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !43, !44, !45}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @sysctl_tipc_named_timeout, !1, !"sysctl_tipc_named_timeout", i1 false, i1 false}
!1 = !{!"../net/tipc/name_distr.c", i32 42, i32 5}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/tipc/name_distr.c", i32 111, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tipc_named_publish._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @tipc_named_publish._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/tipc/name_distr.c", i32 140, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @tipc_named_withdraw._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @tipc_named_withdraw._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/tipc/name_distr.c", i32 413, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../net/tipc/name_distr.c", i32 415, i32 2}
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
!30 = !{!"../net/tipc/name_distr.c", i32 175, i32 5}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @named_distribute._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @named_distribute._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/tipc/name_distr.c", i32 313, i32 3}
!36 = !{ptr @tipc_update_nametbl._rs, !35, !"_rs", i1 false, i1 false}
!37 = !{ptr @__func__.tipc_update_nametbl, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @tipc_update_nametbl._entry, !35, !"_entry", i1 false, i1 false}
!40 = !{ptr @tipc_update_nametbl._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @tipc_update_nametbl._rs.16, !42, !"_rs", i1 false, i1 false}
!42 = !{!"../net/tipc/name_distr.c", i32 316, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @tipc_update_nametbl._entry.17, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @tipc_update_nametbl._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2151547047}
!57 = !{i64 2150063315}
!58 = !{i64 2150063581}
!59 = !{i8 0, i8 2}
!60 = !{!"branch_weights", i32 2000, i32 1}
