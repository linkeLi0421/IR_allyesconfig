; ModuleID = '/llk/IR_all_yes/net/tipc/bcast.c_pt.bc'
source_filename = "../net/tipc/bcast.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.tipc_bc_base = type { ptr, %struct.sk_buff_head, [3 x i32], i32, i8, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.109, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.tipc_nlist = type { %struct.list_head, i32, i16, i8 }
%struct.tipc_mc_method = type { i8, i8, %struct.sk_buff_head, i32 }
%struct.tipc_dest = type { %struct.list_head, i32, i32 }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
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
%struct.sk_buff_list = type { ptr, ptr }

@tipc_bclink_name = dso_local constant { [15 x i8], [17 x i8] } { [15 x i8] c"broadcast-link\00", [17 x i8] zeroinitializer }, align 32
@tipc_mcast_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013tipc: Unable to send SYN: method %d, rc %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tipc_mcast_xmit\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/tipc/bcast.c\00", [47 x i8] zeroinitializer }, align 32
@tipc_mcast_xmit._entry_ptr = internal global ptr @tipc_mcast_xmit._entry, section ".printk_index", align 4
@sysctl_tipc_bc_retruni = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@tipc_bcast_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&tipc_net(net)->bclock\00", [41 x i8] zeroinitializer }, align 32
@one_page_mtu = external dso_local local_unnamed_addr constant i32, align 4
@tipc_net_id = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 7, i64 11]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 7, i64 11]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"tipc_bclink_name\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 48, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 410, i32 5 }
@___asan_gen_.31 = private constant [20 x i8] c"../net/tipc/bcast.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 699, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 1984, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 45, i32 7 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 695, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 723, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @tipc_mcast_xmit._entry, ptr @tipc_mcast_xmit._entry_ptr, ptr @tipc_bclink_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tipc_bcast_init.__key, ptr @.str.3, ptr @skb_queue_head_init.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_bclink_name to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_mcast_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_bcast_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_bcast_get_mtu(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #9
  %bcl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 18
  %1 = ptrtoint ptr %bcl.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bcl.i, align 4
  %call1 = tail call i32 @tipc_link_mss(ptr noundef %2) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_mss(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_bcast_toggle_rcast(ptr noundef %net, i1 noundef zeroext %supp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %supp to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #9
  %bcbase.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 17
  %1 = ptrtoint ptr %bcbase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bcbase.i, align 4
  %rcast_support = getelementptr inbounds %struct.tipc_bc_base, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %rcast_support to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %rcast_support, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_bcast_inc_bearer_dst_cnt(ptr noundef %net, i32 noundef %bearer_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #9
  %bcbase.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 17
  %1 = ptrtoint ptr %bcbase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bcbase.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %3 = load i32, ptr @tipc_net_id, align 4
  %call.i.i4 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %3) #9
  %bclock.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i4, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %bclock.i) #9
  %arrayidx = getelementptr %struct.tipc_bc_base, ptr %2, i32 0, i32 2, i32 %bearer_id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %arrayidx, align 4
  tail call fastcc void @tipc_bcbase_select_primary(ptr noundef %net)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %6 = load i32, ptr @tipc_net_id, align 4
  %call.i.i5 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %6) #9
  %bclock.i6 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i5, i32 0, i32 16
  tail call void @_raw_spin_unlock_bh(ptr noundef %bclock.i6) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_bcbase_select_primary(ptr noundef %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #9
  %bcbase.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 17
  %1 = ptrtoint ptr %bcbase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bcbase.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call1 = tail call i32 @tipc_link_bc_peers(ptr noundef %4) #9
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %call3 = tail call i32 @tipc_link_max_win(ptr noundef %6) #9
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %call5 = tail call i32 @tipc_link_min_win(ptr noundef %8) #9
  %primary_bearer = getelementptr inbounds %struct.tipc_bc_base, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %primary_bearer to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %primary_bearer, align 4
  %bcast_support = getelementptr inbounds %struct.tipc_bc_base, ptr %2, i32 0, i32 4
  %10 = ptrtoint ptr %bcast_support to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bcast_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.tipc_bc_base, ptr %2, i32 0, i32 2, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %for.body.preheader.for.inc_crit_edge, label %if.end8

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end8:                                          ; preds = %for.body.preheader
  %call9 = tail call i32 @tipc_bearer_mtu(ptr noundef %net, i32 noundef 0) #9
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %call11 = tail call i32 @tipc_link_mtu(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %call11)
  %cmp12 = icmp slt i32 %call9, %call11
  br i1 %cmp12, label %if.then13, label %if.end8.if.end16_crit_edge

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  tail call void @tipc_link_set_mtu(ptr noundef %16, i32 noundef %call9) #9
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  tail call void @tipc_link_set_queue_limits(ptr noundef %18, i32 noundef %call5, i32 noundef %call3) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end8.if.end16_crit_edge
  %call17 = tail call zeroext i1 @tipc_bearer_bcast_support(ptr noundef %net, i32 noundef 0) #9
  %conv = zext i1 %call17 to i8
  %19 = ptrtoint ptr %bcast_support to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bcast_support, align 4, !range !37
  %and = and i8 %20, %conv
  store i8 %and, ptr %bcast_support, align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %call1)
  %cmp24 = icmp slt i32 %22, %call1
  br i1 %cmp24, label %if.end16.for.inc_crit_edge, label %if.end27

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end27:                                         ; preds = %if.end16
  %23 = ptrtoint ptr %primary_bearer to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %primary_bearer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %24 = load i32, ptr @tipc_net_id, align 4
  %call.i.i75 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %24) #9
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i75, i32 0, i32 1
  %25 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %node_addr.i, align 4
  %and30 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end27.for.inc_crit_edge, label %if.end27.for.end_crit_edge

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end27.for.inc_crit_edge, %if.end16.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.tipc_bc_base, ptr %2, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool6.not.1 = icmp eq i32 %28, 0
  br i1 %tobool6.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end8.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end8.1:                                        ; preds = %for.inc
  %call9.1 = tail call i32 @tipc_bearer_mtu(ptr noundef %net, i32 noundef 1) #9
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 4
  %call11.1 = tail call i32 @tipc_link_mtu(ptr noundef %30) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.1, i32 %call11.1)
  %cmp12.1 = icmp slt i32 %call9.1, %call11.1
  br i1 %cmp12.1, label %if.then13.1, label %if.end8.1.if.end16.1_crit_edge

if.end8.1.if.end16.1_crit_edge:                   ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.1

if.then13.1:                                      ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %2, align 4
  tail call void @tipc_link_set_mtu(ptr noundef %32, i32 noundef %call9.1) #9
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %2, align 4
  tail call void @tipc_link_set_queue_limits(ptr noundef %34, i32 noundef %call5, i32 noundef %call3) #9
  br label %if.end16.1

if.end16.1:                                       ; preds = %if.then13.1, %if.end8.1.if.end16.1_crit_edge
  %call17.1 = tail call zeroext i1 @tipc_bearer_bcast_support(ptr noundef %net, i32 noundef 1) #9
  %conv.1 = zext i1 %call17.1 to i8
  %35 = ptrtoint ptr %bcast_support to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bcast_support, align 4, !range !37
  %and.1 = and i8 %36, %conv.1
  store i8 %and.1, ptr %bcast_support, align 4
  %37 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %call1)
  %cmp24.1 = icmp slt i32 %38, %call1
  br i1 %cmp24.1, label %if.end16.1.for.inc.1_crit_edge, label %if.end27.1

if.end16.1.for.inc.1_crit_edge:                   ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end27.1:                                       ; preds = %if.end16.1
  %39 = ptrtoint ptr %primary_bearer to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %primary_bearer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %40 = load i32, ptr @tipc_net_id, align 4
  %call.i.i75.1 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %40) #9
  %node_addr.i.1 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i75.1, i32 0, i32 1
  %41 = ptrtoint ptr %node_addr.i.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %node_addr.i.1, align 4
  %xor.1 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.1)
  %tobool31.not.1.not = icmp eq i32 %xor.1, 0
  br i1 %tobool31.not.1.not, label %if.end27.1.for.end_crit_edge, label %if.end27.1.for.inc.1_crit_edge

if.end27.1.for.inc.1_crit_edge:                   ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end27.1.for.end_crit_edge:                     ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.1:                                        ; preds = %if.end27.1.for.inc.1_crit_edge, %if.end16.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.tipc_bc_base, ptr %2, i32 0, i32 2, i32 2
  %43 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool6.not.2 = icmp eq i32 %44, 0
  br i1 %tobool6.not.2, label %for.inc.1.for.end_crit_edge, label %if.end8.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end8.2:                                        ; preds = %for.inc.1
  %call9.2 = tail call i32 @tipc_bearer_mtu(ptr noundef %net, i32 noundef 2) #9
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %2, align 4
  %call11.2 = tail call i32 @tipc_link_mtu(ptr noundef %46) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.2, i32 %call11.2)
  %cmp12.2 = icmp slt i32 %call9.2, %call11.2
  br i1 %cmp12.2, label %if.then13.2, label %if.end8.2.if.end16.2_crit_edge

if.end8.2.if.end16.2_crit_edge:                   ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.2

if.then13.2:                                      ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %2, align 4
  tail call void @tipc_link_set_mtu(ptr noundef %48, i32 noundef %call9.2) #9
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %2, align 4
  tail call void @tipc_link_set_queue_limits(ptr noundef %50, i32 noundef %call5, i32 noundef %call3) #9
  br label %if.end16.2

if.end16.2:                                       ; preds = %if.then13.2, %if.end8.2.if.end16.2_crit_edge
  %call17.2 = tail call zeroext i1 @tipc_bearer_bcast_support(ptr noundef %net, i32 noundef 2) #9
  %conv.2 = zext i1 %call17.2 to i8
  %51 = ptrtoint ptr %bcast_support to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bcast_support, align 4, !range !37
  %and.2 = and i8 %52, %conv.2
  store i8 %and.2, ptr %bcast_support, align 4
  %53 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %call1)
  %cmp24.2 = icmp slt i32 %54, %call1
  br i1 %cmp24.2, label %if.end16.2.for.end_crit_edge, label %if.end27.2

if.end16.2.for.end_crit_edge:                     ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end27.2:                                       ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %primary_bearer to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %primary_bearer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %56 = load i32, ptr @tipc_net_id, align 4
  %call.i.i75.2 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %56) #9
  br label %for.end

for.end:                                          ; preds = %if.end27.2, %if.end16.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %if.end27.1.for.end_crit_edge, %if.end27.for.end_crit_edge
  %57 = ptrtoint ptr %primary_bearer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %primary_bearer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp35.not = icmp eq i32 %58, -1
  br i1 %cmp35.not, label %for.end.cleanup_crit_edge, label %if.then37

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call zeroext i1 @tipc_bearer_bcast_support(ptr noundef %net, i32 noundef %58) #9
  %frombool40 = zext i1 %call38 to i8
  %59 = ptrtoint ptr %bcast_support to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %frombool40, ptr %bcast_support, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_bcast_dec_bearer_dst_cnt(ptr noundef %net, i32 noundef %bearer_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #9
  %bcbase.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 17
  %1 = ptrtoint ptr %bcbase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bcbase.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %3 = load i32, ptr @tipc_net_id, align 4
  %call.i.i4 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %3) #9
  %bclock.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i4, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %bclock.i) #9
  %arrayidx = getelementptr %struct.tipc_bc_base, ptr %2, i32 0, i32 2, i32 %bearer_id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %arrayidx, align 4
  tail call fastcc void @tipc_bcbase_select_primary(ptr noundef %net)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %6 = load i32, ptr @tipc_net_id, align 4
  %call.i.i5 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %6) #9
  %bclock.i6 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i5, i32 0, i32 16
  tail call void @_raw_spin_unlock_bh(ptr noundef %bclock.i6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_bcast_xmit(ptr noundef %net, ptr noundef %pkts, ptr nocapture noundef writeonly %cong_link_cnt) local_unnamed_addr #0 align 64 {
entry:
  %xmitq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #9
  %bcl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 18
  %1 = ptrtoint ptr %bcl.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bcl.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %xmitq) #9
  %3 = getelementptr inbounds i8, ptr %xmitq, i32 12
  %4 = call ptr @memset(ptr %3, i32 255, i32 44)
  %5 = ptrtoint ptr %xmitq to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %xmitq, ptr %xmitq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %xmitq, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %xmitq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %7 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %8 = load i32, ptr @tipc_net_id, align 4
  %call.i.i11 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %8) #9
  %bclock.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i11, i32 0, i32 16
  call void @_raw_spin_lock_bh(ptr noundef %bclock.i) #9
  %call1 = call i32 @tipc_link_bc_peers(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = call i32 @tipc_link_xmit(ptr noundef %2, ptr noundef %pkts, ptr noundef nonnull %xmitq) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %9 = load i32, ptr @tipc_net_id, align 4
  %call.i.i12 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %9) #9
  %bclock.i13 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i12, i32 0, i32 16
  call void @_raw_spin_unlock_bh(ptr noundef %bclock.i13) #9
  call fastcc void @tipc_bcbase_xmit(ptr noundef %net, ptr noundef nonnull %xmitq)
  %10 = ptrtoint ptr %pkts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pkts, align 4
  %cmp.i.i2.i = icmp eq ptr %11, %pkts
  %tobool.not.i13.i = icmp eq ptr %11, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %if.end.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

if.end.__skb_queue_purge.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %pkts, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %12 = phi ptr [ %11, %while.body.lr.ph.i ], [ %22, %while.body.i.while.body.i_crit_edge ]
  %13 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.83, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %12, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.83, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %18, ptr %prev17.i.i.i, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %16, ptr %18, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #9
  %21 = ptrtoint ptr %pkts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pkts, align 4
  %cmp.i.i.i = icmp eq ptr %22, %pkts
  %tobool.not.i1.i = icmp eq ptr %22, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %if.end.__skb_queue_purge.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %rc.0)
  %cmp = icmp eq i32 %rc.0, -11
  br i1 %cmp, label %if.then3, label %__skb_queue_purge.exit.if.end4_crit_edge

__skb_queue_purge.exit.if.end4_crit_edge:         ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %cong_link_cnt to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %cong_link_cnt, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %__skb_queue_purge.exit.if.end4_crit_edge
  %rc.1 = phi i32 [ 0, %if.then3 ], [ %rc.0, %__skb_queue_purge.exit.if.end4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %xmitq) #9
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_bc_peers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_xmit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_bcbase_xmit(ptr noundef %net, ptr noundef %xmitq) unnamed_addr #0 align 64 {
entry:
  %_xmitq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #9
  %bcbase.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 17
  %1 = ptrtoint ptr %bcbase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bcbase.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %_xmitq) #9
  %3 = getelementptr inbounds i8, ptr %_xmitq, i32 12
  %4 = call ptr @memset(ptr %3, i32 255, i32 44)
  %5 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xmitq, align 4
  %cmp.i.not = icmp eq ptr %6, %xmitq
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %primary_bearer = getelementptr inbounds %struct.tipc_bc_base, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %primary_bearer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %primary_bearer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp = icmp sgt i32 %8, -1
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tipc_bearer_bc_xmit(ptr noundef %net, i32 noundef %8, ptr noundef %xmitq) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %_xmitq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %_xmitq, ptr %_xmitq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %_xmitq, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %_xmitq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %_xmitq, i32 0, i32 1
  %11 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qlen.i, align 4
  %arrayidx = getelementptr %struct.tipc_bc_base, ptr %2, i32 0, i32 2, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %if.end3.for.inc16_crit_edge, label %for.cond8.preheader

if.end3.for.inc16_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc16

for.cond8.preheader:                              ; preds = %if.end3
  %14 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %14)
  %skb.051 = load ptr, ptr %xmitq, align 4
  %cmp9.not52 = icmp eq ptr %skb.051, %xmitq
  br i1 %cmp9.not52, label %for.cond8.preheader.for.end_crit_edge, label %for.cond8.preheader.for.body10_crit_edge

for.cond8.preheader.for.body10_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body10

for.cond8.preheader.for.end_crit_edge:            ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body10:                                       ; preds = %if.end14.for.body10_crit_edge, %for.cond8.preheader.for.body10_crit_edge
  %skb.053 = phi ptr [ %skb.0, %if.end14.for.body10_crit_edge ], [ %skb.051, %for.cond8.preheader.for.body10_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.053, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.053, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call1.i = call ptr @__pskb_copy_fclone(ptr noundef %skb.053, i32 noundef %sub.ptr.sub.i.i, i32 noundef 2592, i1 noundef zeroext true) #9
  %tobool12.not = icmp eq ptr %call1.i, null
  br i1 %tobool12.not, label %for.body10.for.end_crit_edge, label %if.end14

for.body10.for.end_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end14:                                         ; preds = %for.body10
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %21 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %_xmitq, ptr %call1.i, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %call1.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %prev10.i.i.i, align 4
  store volatile ptr %call1.i, ptr %prev.i, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call1.i, ptr %20, align 4
  %24 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  %26 = ptrtoint ptr %skb.053 to i32
  call void @__asan_load4_noabort(i32 %26)
  %skb.0 = load ptr, ptr %skb.053, align 4
  %cmp9.not = icmp eq ptr %skb.0, %xmitq
  br i1 %cmp9.not, label %if.end14.for.end_crit_edge, label %if.end14.for.body10_crit_edge

if.end14.for.body10_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %for.body10.for.end_crit_edge, %for.cond8.preheader.for.end_crit_edge
  call void @tipc_bearer_bc_xmit(ptr noundef %net, i32 noundef 0, ptr noundef nonnull %_xmitq) #9
  br label %for.inc16

for.inc16:                                        ; preds = %for.end, %if.end3.for.inc16_crit_edge
  %arrayidx.1 = getelementptr %struct.tipc_bc_base, ptr %2, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool5.not.1 = icmp eq i32 %28, 0
  br i1 %tobool5.not.1, label %for.inc16.for.inc16.1_crit_edge, label %for.cond8.preheader.1

for.inc16.for.inc16.1_crit_edge:                  ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc16.1

for.cond8.preheader.1:                            ; preds = %for.inc16
  %29 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %29)
  %skb.051.1 = load ptr, ptr %xmitq, align 4
  %cmp9.not52.1 = icmp eq ptr %skb.051.1, %xmitq
  br i1 %cmp9.not52.1, label %for.cond8.preheader.1.for.end.1_crit_edge, label %for.cond8.preheader.1.for.body10.1_crit_edge

for.cond8.preheader.1.for.body10.1_crit_edge:     ; preds = %for.cond8.preheader.1
  br label %for.body10.1

for.cond8.preheader.1.for.end.1_crit_edge:        ; preds = %for.cond8.preheader.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.1

for.body10.1:                                     ; preds = %if.end14.1.for.body10.1_crit_edge, %for.cond8.preheader.1.for.body10.1_crit_edge
  %skb.053.1 = phi ptr [ %skb.0.1, %if.end14.1.for.body10.1_crit_edge ], [ %skb.051.1, %for.cond8.preheader.1.for.body10.1_crit_edge ]
  %data.i.i.1 = getelementptr inbounds %struct.sk_buff, ptr %skb.053.1, i32 0, i32 19
  %30 = ptrtoint ptr %data.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.1, align 4
  %head.i.i.1 = getelementptr inbounds %struct.sk_buff, ptr %skb.053.1, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i.1, align 8
  %sub.ptr.lhs.cast.i.i.1 = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i.i.1 = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.i.1 = sub i32 %sub.ptr.lhs.cast.i.i.1, %sub.ptr.rhs.cast.i.i.1
  %call1.i.1 = call ptr @__pskb_copy_fclone(ptr noundef %skb.053.1, i32 noundef %sub.ptr.sub.i.i.1, i32 noundef 2592, i1 noundef zeroext true) #9
  %tobool12.not.1 = icmp eq ptr %call1.i.1, null
  br i1 %tobool12.not.1, label %for.body10.1.for.end.1_crit_edge, label %if.end14.1

for.body10.1.for.end.1_crit_edge:                 ; preds = %for.body10.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.1

if.end14.1:                                       ; preds = %for.body10.1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i, align 4
  %36 = ptrtoint ptr %call1.i.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %_xmitq, ptr %call1.i.1, align 8
  %prev10.i.i.i.1 = getelementptr inbounds %struct.anon.83, ptr %call1.i.1, i32 0, i32 1
  %37 = ptrtoint ptr %prev10.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %prev10.i.i.i.1, align 4
  store volatile ptr %call1.i.1, ptr %prev.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call1.i.1, ptr %35, align 4
  %39 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i, align 4
  %add.i.i.i.1 = add i32 %40, 1
  store volatile i32 %add.i.i.i.1, ptr %qlen.i, align 4
  %41 = ptrtoint ptr %skb.053.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %skb.0.1 = load ptr, ptr %skb.053.1, align 4
  %cmp9.not.1 = icmp eq ptr %skb.0.1, %xmitq
  br i1 %cmp9.not.1, label %if.end14.1.for.end.1_crit_edge, label %if.end14.1.for.body10.1_crit_edge

if.end14.1.for.body10.1_crit_edge:                ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10.1

if.end14.1.for.end.1_crit_edge:                   ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.1

for.end.1:                                        ; preds = %if.end14.1.for.end.1_crit_edge, %for.body10.1.for.end.1_crit_edge, %for.cond8.preheader.1.for.end.1_crit_edge
  call void @tipc_bearer_bc_xmit(ptr noundef %net, i32 noundef 1, ptr noundef nonnull %_xmitq) #9
  br label %for.inc16.1

for.inc16.1:                                      ; preds = %for.end.1, %for.inc16.for.inc16.1_crit_edge
  %arrayidx.2 = getelementptr %struct.tipc_bc_base, ptr %2, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool5.not.2 = icmp eq i32 %43, 0
  br i1 %tobool5.not.2, label %for.inc16.1.for.inc16.2_crit_edge, label %for.cond8.preheader.2

for.inc16.1.for.inc16.2_crit_edge:                ; preds = %for.inc16.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc16.2

for.cond8.preheader.2:                            ; preds = %for.inc16.1
  %44 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %44)
  %skb.051.2 = load ptr, ptr %xmitq, align 4
  %cmp9.not52.2 = icmp eq ptr %skb.051.2, %xmitq
  br i1 %cmp9.not52.2, label %for.cond8.preheader.2.for.end.2_crit_edge, label %for.cond8.preheader.2.for.body10.2_crit_edge

for.cond8.preheader.2.for.body10.2_crit_edge:     ; preds = %for.cond8.preheader.2
  br label %for.body10.2

for.cond8.preheader.2.for.end.2_crit_edge:        ; preds = %for.cond8.preheader.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.2

for.body10.2:                                     ; preds = %if.end14.2.for.body10.2_crit_edge, %for.cond8.preheader.2.for.body10.2_crit_edge
  %skb.053.2 = phi ptr [ %skb.0.2, %if.end14.2.for.body10.2_crit_edge ], [ %skb.051.2, %for.cond8.preheader.2.for.body10.2_crit_edge ]
  %data.i.i.2 = getelementptr inbounds %struct.sk_buff, ptr %skb.053.2, i32 0, i32 19
  %45 = ptrtoint ptr %data.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i.2, align 4
  %head.i.i.2 = getelementptr inbounds %struct.sk_buff, ptr %skb.053.2, i32 0, i32 18
  %47 = ptrtoint ptr %head.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i.i.2, align 8
  %sub.ptr.lhs.cast.i.i.2 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i.i.2 = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i.i.2 = sub i32 %sub.ptr.lhs.cast.i.i.2, %sub.ptr.rhs.cast.i.i.2
  %call1.i.2 = call ptr @__pskb_copy_fclone(ptr noundef %skb.053.2, i32 noundef %sub.ptr.sub.i.i.2, i32 noundef 2592, i1 noundef zeroext true) #9
  %tobool12.not.2 = icmp eq ptr %call1.i.2, null
  br i1 %tobool12.not.2, label %for.body10.2.for.end.2_crit_edge, label %if.end14.2

for.body10.2.for.end.2_crit_edge:                 ; preds = %for.body10.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.2

if.end14.2:                                       ; preds = %for.body10.2
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i, align 4
  %51 = ptrtoint ptr %call1.i.2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %_xmitq, ptr %call1.i.2, align 8
  %prev10.i.i.i.2 = getelementptr inbounds %struct.anon.83, ptr %call1.i.2, i32 0, i32 1
  %52 = ptrtoint ptr %prev10.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %prev10.i.i.i.2, align 4
  store volatile ptr %call1.i.2, ptr %prev.i, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %call1.i.2, ptr %50, align 4
  %54 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qlen.i, align 4
  %add.i.i.i.2 = add i32 %55, 1
  store volatile i32 %add.i.i.i.2, ptr %qlen.i, align 4
  %56 = ptrtoint ptr %skb.053.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %skb.0.2 = load ptr, ptr %skb.053.2, align 4
  %cmp9.not.2 = icmp eq ptr %skb.0.2, %xmitq
  br i1 %cmp9.not.2, label %if.end14.2.for.end.2_crit_edge, label %if.end14.2.for.body10.2_crit_edge

if.end14.2.for.body10.2_crit_edge:                ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10.2

if.end14.2.for.end.2_crit_edge:                   ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.2

for.end.2:                                        ; preds = %if.end14.2.for.end.2_crit_edge, %for.body10.2.for.end.2_crit_edge, %for.cond8.preheader.2.for.end.2_crit_edge
  call void @tipc_bearer_bc_xmit(ptr noundef %net, i32 noundef 2, ptr noundef nonnull %_xmitq) #9
  br label %for.inc16.2

for.inc16.2:                                      ; preds = %for.end.2, %for.inc16.1.for.inc16.2_crit_edge
  %57 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %xmitq, align 4
  %cmp.i.i2.i = icmp eq ptr %58, %xmitq
  %tobool.not.i13.i = icmp eq ptr %58, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %for.inc16.2.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

for.inc16.2.__skb_queue_purge.exit_crit_edge:     ; preds = %for.inc16.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %for.inc16.2
  %qlen.i.i.i37 = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %59 = phi ptr [ %58, %while.body.lr.ph.i ], [ %69, %while.body.i.while.body.i_crit_edge ]
  %60 = ptrtoint ptr %qlen.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %qlen.i.i.i37, align 4
  %sub.i.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i37, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.83, ptr %59, i32 0, i32 1
  %64 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %59, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.83, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %65, ptr %prev17.i.i.i, align 4
  %67 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %63, ptr %65, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %59, i32 noundef 0) #9
  %68 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %xmitq, align 4
  %cmp.i.i.i = icmp eq ptr %69, %xmitq
  %tobool.not.i1.i = icmp eq ptr %69, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %for.inc16.2.__skb_queue_purge.exit_crit_edge
  %70 = ptrtoint ptr %_xmitq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %_xmitq, align 4
  %cmp.i.i2.i38 = icmp eq ptr %71, %_xmitq
  %tobool.not.i13.i39 = icmp eq ptr %71, null
  %tobool.not.i4.i40 = or i1 %cmp.i.i2.i38, %tobool.not.i13.i39
  br i1 %tobool.not.i4.i40, label %__skb_queue_purge.exit.cleanup_crit_edge, label %__skb_queue_purge.exit.while.body.i49_crit_edge

__skb_queue_purge.exit.while.body.i49_crit_edge:  ; preds = %__skb_queue_purge.exit
  br label %while.body.i49

__skb_queue_purge.exit.cleanup_crit_edge:         ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.i49:                                   ; preds = %while.body.i49.while.body.i49_crit_edge, %__skb_queue_purge.exit.while.body.i49_crit_edge
  %72 = phi ptr [ %82, %while.body.i49.while.body.i49_crit_edge ], [ %71, %__skb_queue_purge.exit.while.body.i49_crit_edge ]
  %73 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %qlen.i, align 4
  %sub.i.i.i43 = add i32 %74, -1
  store volatile i32 %sub.i.i.i43, ptr %qlen.i, align 4
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %72, align 8
  %prev9.i.i.i44 = getelementptr inbounds %struct.anon.83, ptr %72, i32 0, i32 1
  %77 = ptrtoint ptr %prev9.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev9.i.i.i44, align 4
  store ptr null, ptr %prev9.i.i.i44, align 4
  store ptr null, ptr %72, align 8
  %prev17.i.i.i45 = getelementptr inbounds %struct.anon.83, ptr %76, i32 0, i32 1
  %79 = ptrtoint ptr %prev17.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %78, ptr %prev17.i.i.i45, align 4
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %76, ptr %78, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %72, i32 noundef 0) #9
  %81 = ptrtoint ptr %_xmitq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %_xmitq, align 4
  %cmp.i.i.i46 = icmp eq ptr %82, %_xmitq
  %tobool.not.i1.i47 = icmp eq ptr %82, null
  %tobool.not.i.i48 = or i1 %cmp.i.i.i46, %tobool.not.i1.i47
  br i1 %tobool.not.i.i48, label %while.body.i49.cleanup_crit_edge, label %while.body.i49.while.body.i49_crit_edge

while.body.i49.while.body.i49_crit_edge:          ; preds = %while.body.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i49

while.body.i49.cleanup_crit_edge:                 ; preds = %while.body.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.body.i49.cleanup_crit_edge, %__skb_queue_purge.exit.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %_xmitq) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_mcast_xmit(ptr noundef %net, ptr noundef %pkts, ptr nocapture noundef %method, ptr noundef readonly %dests, ptr nocapture noundef %cong_link_cnt) local_unnamed_addr #0 align 64 {
entry:
  %_pkts.i = alloca %struct.sk_buff_head, align 4
  %_pkts.i.i = alloca %struct.sk_buff_head, align 4
  %tmpq.i = alloca %struct.sk_buff_head, align 4
  %cong_link_cnt.i = alloca i16, align 2
  %inputq = alloca %struct.sk_buff_head, align 4
  %localq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %inputq) #9
  %0 = call ptr @memset(ptr %inputq, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %localq) #9
  %1 = getelementptr inbounds i8, ptr %localq, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 44)
  %3 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %method, align 4, !range !37
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %inputq, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %5 = ptrtoint ptr %inputq to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %inputq, ptr %inputq, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.90, ptr %inputq, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %inputq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %inputq, i32 0, i32 1
  %7 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i.i, align 4
  %8 = ptrtoint ptr %localq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %localq, ptr %localq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %localq, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %localq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %localq, i32 0, i32 1
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i, align 4
  %local = getelementptr inbounds %struct.tipc_nlist, ptr %dests, i32 0, i32 3
  %11 = ptrtoint ptr %local to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %local, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call zeroext i1 @tipc_msg_reassemble(ptr noundef %pkts, ptr noundef nonnull %localq) #9
  br i1 %call, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.exit_crit_edge

land.lhs.true.exit_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %remote = getelementptr inbounds %struct.tipc_nlist, ptr %dests, i32 0, i32 2
  %13 = ptrtoint ptr %remote to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %remote, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool3.not = icmp eq i16 %14, 0
  br i1 %tobool3.not, label %if.end.if.end39_crit_edge, label %if.then4

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then4:                                         ; preds = %if.end
  %conv = zext i16 %14 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %15 = load i32, ptr @tipc_net_id, align 4
  %call.i.i.i = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %15) #9
  %bcbase.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i, i32 0, i32 17
  %16 = ptrtoint ptr %bcbase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bcbase.i.i, align 4
  %expires.i = getelementptr inbounds %struct.tipc_mc_method, ptr %method, i32 0, i32 3
  %18 = ptrtoint ptr %expires.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %expires.i, align 4
  %bcast_support.i = getelementptr inbounds %struct.tipc_bc_base, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %bcast_support.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bcast_support.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.then4.cleanup.sink.split.i_crit_edge, label %if.end.i

if.then4.cleanup.sink.split.i_crit_edge:          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.then4
  %rcast_support.i = getelementptr inbounds %struct.tipc_bc_base, ptr %17, i32 0, i32 6
  %22 = ptrtoint ptr %rcast_support.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rcast_support.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i = icmp eq i8 %23, 0
  br i1 %tobool1.not.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end4.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %24, 500
  %25 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %expires.i, align 4
  %mandatory.i = getelementptr inbounds %struct.tipc_mc_method, ptr %method, i32 0, i32 1
  %26 = ptrtoint ptr %mandatory.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mandatory.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool7.not.i = icmp eq i8 %27, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.tipc_bcast_select_xmit_method.exit_crit_edge

if.end4.i.tipc_bcast_select_xmit_method.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_bcast_select_xmit_method.exit

if.end9.i:                                        ; preds = %if.end4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %28 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %28) #9
  %capabilities.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 24
  %29 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %capabilities.i, align 4
  %31 = and i16 %30, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool11.not.i = icmp eq i16 %31, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i, label %if.end9.i.if.end14.i_crit_edge

if.end9.i.if.end14.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %32, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.i.tipc_bcast_select_xmit_method.exit_crit_edge, label %land.lhs.true.i.if.end14.i_crit_edge

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

land.lhs.true.i.tipc_bcast_select_xmit_method.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_bcast_select_xmit_method.exit

if.end14.i:                                       ; preds = %land.lhs.true.i.if.end14.i_crit_edge, %if.end9.i.if.end14.i_crit_edge
  %force_bcast.i = getelementptr inbounds %struct.tipc_bc_base, ptr %17, i32 0, i32 5
  %33 = ptrtoint ptr %force_bcast.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %force_bcast.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool15.not.i = icmp eq i8 %34, 0
  br i1 %tobool15.not.i, label %if.end18.i, label %if.end14.i.cleanup.sink.split.i_crit_edge

if.end14.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end18.i:                                       ; preds = %if.end14.i
  %force_rcast.i = getelementptr inbounds %struct.tipc_bc_base, ptr %17, i32 0, i32 7
  %35 = ptrtoint ptr %force_rcast.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %force_rcast.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool19.not.i = icmp eq i8 %36, 0
  br i1 %tobool19.not.i, label %if.end22.i, label %if.end18.i.cleanup.sink.split.i_crit_edge

if.end18.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end22.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %bc_threshold.i = getelementptr inbounds %struct.tipc_bc_base, ptr %17, i32 0, i32 9
  %37 = ptrtoint ptr %bc_threshold.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bc_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv)
  %cmp23.i = icmp sge i32 %38, %conv
  %frombool.i = zext i1 %cmp23.i to i8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end22.i, %if.end18.i.cleanup.sink.split.i_crit_edge, %if.end14.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge, %if.then4.cleanup.sink.split.i_crit_edge
  %frombool.sink.i = phi i8 [ %frombool.i, %if.end22.i ], [ 1, %if.then4.cleanup.sink.split.i_crit_edge ], [ 0, %if.end.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.end14.i.cleanup.sink.split.i_crit_edge ], [ 1, %if.end18.i.cleanup.sink.split.i_crit_edge ]
  %39 = ptrtoint ptr %method to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool.sink.i, ptr %method, align 4
  br label %tipc_bcast_select_xmit_method.exit

tipc_bcast_select_xmit_method.exit:               ; preds = %cleanup.sink.split.i, %land.lhs.true.i.tipc_bcast_select_xmit_method.exit_crit_edge, %if.end4.i.tipc_bcast_select_xmit_method.exit_crit_edge
  %40 = ptrtoint ptr %pkts to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pkts, align 4
  %cmp.i70 = icmp eq ptr %41, %pkts
  %spec.store.select.i = select i1 %cmp.i70, ptr null, ptr %41
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 19
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %46 = and i32 %45, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %46)
  %cmp = icmp eq i32 %46, 402653184
  %47 = lshr i32 %45, 19
  %shl.i.i.i = and i32 %47, 60
  %hdr.0.idx = select i1 %cmp, i32 %shl.i.i.i, i32 0
  %hdr.0 = getelementptr i8, ptr %43, i32 %hdr.0.idx
  %48 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %method, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool14.not = icmp eq i8 %49, 0
  %shl.i.i = select i1 %tobool14.not, i32 0, i32 262144
  %50 = ptrtoint ptr %hdr.0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hdr.0, align 4
  %and2.i.i = and i32 %51, -262145
  %or.i.i = or i32 %and2.i.i, %shl.i.i
  store i32 %or.i.i, ptr %hdr.0, align 4
  %52 = zext i8 %4 to i32
  %53 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %method, align 4, !range !37
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %54)
  %cmp20.not = icmp eq i8 %4, %54
  br i1 %cmp20.not, label %tipc_bcast_select_xmit_method.exit.if.end32_crit_edge, label %if.then22

tipc_bcast_select_xmit_method.exit.if.end32_crit_edge: ; preds = %tipc_bcast_select_xmit_method.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then22:                                        ; preds = %tipc_bcast_select_xmit_method.exit
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tmpq.i) #9
  %55 = getelementptr inbounds i8, ptr %tmpq.i, i32 12
  %56 = call ptr @memset(ptr %55, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cong_link_cnt.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %57 = load i32, ptr @tipc_net_id, align 4
  %call.i.i71 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %57) #9
  %capabilities.i72 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i71, i32 0, i32 24
  %58 = ptrtoint ptr %capabilities.i72 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %capabilities.i72, align 4
  %60 = and i16 %59, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool.not.i73 = icmp eq i16 %60, 0
  br i1 %tobool.not.i73, label %if.then22.tipc_mcast_send_sync.exit.thread_crit_edge, label %if.end.i75

if.then22.tipc_mcast_send_sync.exit.thread_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_mcast_send_sync.exit.thread

if.end.i75:                                       ; preds = %if.then22
  %61 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %65 = and i32 %64, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %65)
  %cmp.i74 = icmp eq i32 %65, 402653184
  %66 = lshr i32 %64, 19
  %shl.i.i.i.i = and i32 %66, 60
  %hdr.0.idx.i = select i1 %cmp.i74, i32 %shl.i.i.i.i, i32 0
  %hdr.0.i = getelementptr i8, ptr %62, i32 %hdr.0.idx.i
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %hdr.0.i, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %shr.i.i41.mask.i = and i32 %68, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.i.i41.mask.i)
  %cmp8.not.i = icmp eq i32 %shr.i.i41.mask.i, 536870912
  br i1 %cmp8.not.i, label %if.end11.i, label %if.end.i75.tipc_mcast_send_sync.exit.thread_crit_edge

if.end.i75.tipc_mcast_send_sync.exit.thread_crit_edge: ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_mcast_send_sync.exit.thread

if.end11.i:                                       ; preds = %if.end.i75
  %call12.i = call ptr @tipc_buf_acquire(i32 noundef 44, i32 noundef 3264) #9
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %tipc_mcast_send_sync.exit.thread95, label %if.end15.i

tipc_mcast_send_sync.exit.thread95:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cong_link_cnt.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tmpq.i) #9
  br label %do.end

if.end15.i:                                       ; preds = %if.end11.i
  %69 = ptrtoint ptr %hdr.0.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %hdr.0.i, align 4
  %or.i.i.i = or i32 %70, 131072
  store i32 %or.i.i.i, ptr %hdr.0.i, align 4
  %data.i42.i = getelementptr inbounds %struct.sk_buff, ptr %call12.i, i32 0, i32 19
  %71 = ptrtoint ptr %data.i42.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i42.i, align 4
  %73 = call ptr @memcpy(ptr %72, ptr %hdr.0.i, i32 44)
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %call12.i, i32 0, i32 4, i32 0, i32 1
  %74 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %75(ptr noundef nonnull %call12.i) #9
  %76 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %destructor.i.i, align 4
  %77 = getelementptr inbounds %struct.sk_buff, ptr %call12.i, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %77, align 4
  br label %skb_orphan.exit.i

do.body.i.i:                                      ; preds = %if.end15.i
  %79 = getelementptr inbounds %struct.sk_buff, ptr %call12.i, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %tobool3.not.i.i = icmp eq ptr %81, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.skb_orphan.exit.i_crit_edge, label %do.body7.i.i, !prof !38

do.body.i.i.skb_orphan.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_orphan.exit.i

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #9, !srcloc !39
  unreachable

skb_orphan.exit.i:                                ; preds = %do.body.i.i.skb_orphan.exit.i_crit_edge, %if.then.i.i
  %82 = ptrtoint ptr %data.i42.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i42.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %and.i.i76 = and i32 %85, -131072
  %or.i.i77 = or i32 %and.i.i76, 44
  store i32 %or.i.i77, ptr %83, align 4
  %86 = ptrtoint ptr %hdr.0.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hdr.0.i, align 4
  %88 = and i32 %87, 262144
  %and2.i.i.i = and i32 %or.i.i77, -393172
  %89 = or i32 %88, %and2.i.i.i
  %or.i.i44.i = xor i32 %89, 262144
  store i32 %or.i.i44.i, ptr %83, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %83, i32 0, i32 1
  %90 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i.i.i, align 4
  %and2.i.i45.i = and i32 %91, -503316481
  %or.i.i46.i = or i32 %and2.i.i45.i, 67108864
  store i32 %or.i.i46.i, ptr %arrayidx.i.i.i, align 4
  %prev.i.i78 = getelementptr inbounds %struct.anon.90, ptr %tmpq.i, i32 0, i32 1
  %qlen.i.i79 = getelementptr inbounds %struct.sk_buff_head, ptr %tmpq.i, i32 0, i32 1
  %92 = ptrtoint ptr %qlen.i.i79 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %qlen.i.i79, align 4
  %93 = ptrtoint ptr %call12.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %tmpq.i, ptr %call12.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.83, ptr %call12.i, i32 0, i32 1
  %94 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %tmpq.i, ptr %prev10.i.i.i.i, align 4
  %95 = ptrtoint ptr %prev.i.i78 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %call12.i, ptr %prev.i.i78, align 4
  %96 = ptrtoint ptr %tmpq.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %call12.i, ptr %tmpq.i, align 4
  %97 = load i32, ptr %qlen.i.i79, align 4
  %add.i.i.i.i = add i32 %97, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i79, align 4
  %98 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %method, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool18.not.i = icmp eq i8 %99, 0
  br i1 %tobool18.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i = call i32 @tipc_bcast_xmit(ptr noundef %net, ptr noundef nonnull %tmpq.i, ptr noundef nonnull %cong_link_cnt.i) #9
  br label %if.end22.i80

if.else.i:                                        ; preds = %skb_orphan.exit.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %_pkts.i.i) #9
  %100 = getelementptr inbounds i8, ptr %_pkts.i.i, i32 12
  %101 = call ptr @memset(ptr %100, i32 255, i32 44)
  %cmp.i.i.i = icmp eq ptr %call12.i, %tmpq.i
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, ptr null, ptr %call12.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i.i, i32 0, i32 19
  %102 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data.i.i.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  %106 = and i32 %105, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %106)
  %cmp.i31.i.i = icmp eq i32 %106, 402653184
  %107 = lshr i32 %105, 19
  %shl.i.i.i.i.i = and i32 %107, 60
  %m.addr.0.idx.i.i.i = select i1 %cmp.i31.i.i, i32 %shl.i.i.i.i.i, i32 0
  %m.addr.0.i.i.i = getelementptr i8, ptr %103, i32 %m.addr.0.idx.i.i.i
  %arrayidx.i.i.i.i.i = getelementptr [15 x i32], ptr %m.addr.0.i.i.i, i32 0, i32 4
  %108 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %109, 1
  %110 = ptrtoint ptr %_pkts.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %_pkts.i.i, ptr %_pkts.i.i, align 4
  %prev.i.i47.i = getelementptr inbounds %struct.anon.90, ptr %_pkts.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %prev.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %_pkts.i.i, ptr %prev.i.i47.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %_pkts.i.i, i32 0, i32 1
  %112 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %qlen.i.i.i, align 4
  %113 = ptrtoint ptr %dests to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dests, align 4
  %cmp.not33.i.i = icmp eq ptr %114, %dests
  br i1 %cmp.not33.i.i, label %if.else.i.tipc_rcast_xmit.exit.i_crit_edge, label %if.else.i.for.body.i.i_crit_edge

if.else.i.for.body.i.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body.i.i

if.else.i.tipc_rcast_xmit.exit.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_rcast_xmit.exit.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.else.i.for.body.i.i_crit_edge
  %inc.i50.i = phi i16 [ %spec.select.i, %if.end.i.i.for.body.i.i_crit_edge ], [ -1, %if.else.i.for.body.i.i_crit_edge ]
  %dst.034.i.i = phi ptr [ %tmp.035.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ %114, %if.else.i.for.body.i.i_crit_edge ]
  %115 = ptrtoint ptr %dst.034.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %tmp.035.i.i = load ptr, ptr %dst.034.i.i, align 4
  %node.i.i = getelementptr inbounds %struct.tipc_dest, ptr %dst.034.i.i, i32 0, i32 2
  %116 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %node.i.i, align 4
  %call11.i.i = call zeroext i1 @tipc_msg_pskb_copy(i32 noundef %117, ptr noundef nonnull %tmpq.i, ptr noundef nonnull %_pkts.i.i) #9
  br i1 %call11.i.i, label %if.end.i.i, label %for.body.i.i.tipc_rcast_xmit.exit.loopexit.i_crit_edge

for.body.i.i.tipc_rcast_xmit.exit.loopexit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_rcast_xmit.exit.loopexit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %call12.i.i = call i32 @tipc_node_xmit(ptr noundef %net, ptr noundef nonnull %_pkts.i.i, i32 noundef %117, i32 noundef %and.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call12.i.i)
  %cmp13.i.i = icmp eq i32 %call12.i.i, -11
  %inc.i.i = zext i1 %cmp13.i.i to i16
  %spec.select.i = add i16 %inc.i50.i, %inc.i.i
  %cmp.not.i.i = icmp eq ptr %tmp.035.i.i, %dests
  br i1 %cmp.not.i.i, label %if.end.i.i.tipc_rcast_xmit.exit.loopexit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end.i.i.tipc_rcast_xmit.exit.loopexit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_rcast_xmit.exit.loopexit.i

tipc_rcast_xmit.exit.loopexit.i:                  ; preds = %if.end.i.i.tipc_rcast_xmit.exit.loopexit.i_crit_edge, %for.body.i.i.tipc_rcast_xmit.exit.loopexit.i_crit_edge
  %inc.i51.i = phi i16 [ %inc.i50.i, %for.body.i.i.tipc_rcast_xmit.exit.loopexit.i_crit_edge ], [ %spec.select.i, %if.end.i.i.tipc_rcast_xmit.exit.loopexit.i_crit_edge ]
  %retval.0.i.ph.i = phi i32 [ -12, %for.body.i.i.tipc_rcast_xmit.exit.loopexit.i_crit_edge ], [ 0, %if.end.i.i.tipc_rcast_xmit.exit.loopexit.i_crit_edge ]
  %118 = ptrtoint ptr %cong_link_cnt.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %inc.i51.i, ptr %cong_link_cnt.i, align 2
  br label %tipc_rcast_xmit.exit.i

tipc_rcast_xmit.exit.i:                           ; preds = %tipc_rcast_xmit.exit.loopexit.i, %if.else.i.tipc_rcast_xmit.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.else.i.tipc_rcast_xmit.exit.i_crit_edge ], [ %retval.0.i.ph.i, %tipc_rcast_xmit.exit.loopexit.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %_pkts.i.i) #9
  br label %if.end22.i80

if.end22.i80:                                     ; preds = %tipc_rcast_xmit.exit.i, %if.then19.i
  %rc.0.i = phi i32 [ %call20.i, %if.then19.i ], [ %retval.0.i.i, %tipc_rcast_xmit.exit.i ]
  %119 = ptrtoint ptr %tmpq.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tmpq.i, align 4
  %cmp.i.i2.i.i = icmp eq ptr %120, %tmpq.i
  %tobool.not.i13.i.i = icmp eq ptr %120, null
  %tobool.not.i4.i.i = or i1 %cmp.i.i2.i.i, %tobool.not.i13.i.i
  br i1 %tobool.not.i4.i.i, label %if.end22.i80.tipc_mcast_send_sync.exit_crit_edge, label %if.end22.i80.while.body.i.i_crit_edge

if.end22.i80.while.body.i.i_crit_edge:            ; preds = %if.end22.i80
  br label %while.body.i.i

if.end22.i80.tipc_mcast_send_sync.exit_crit_edge: ; preds = %if.end22.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_mcast_send_sync.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end22.i80.while.body.i.i_crit_edge
  %121 = phi ptr [ %131, %while.body.i.i.while.body.i.i_crit_edge ], [ %120, %if.end22.i80.while.body.i.i_crit_edge ]
  %122 = ptrtoint ptr %qlen.i.i79 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %qlen.i.i79, align 4
  %sub.i.i.i.i = add i32 %123, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i79, align 4
  %124 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %121, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.83, ptr %121, i32 0, i32 1
  %126 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %121, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.83, ptr %125, i32 0, i32 1
  %128 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %127, ptr %prev17.i.i.i.i, align 4
  %129 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %125, ptr %127, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %121, i32 noundef 0) #9
  %130 = ptrtoint ptr %tmpq.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tmpq.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %131, %tmpq.i
  %tobool.not.i1.i.i = icmp eq ptr %131, null
  %tobool.not.i.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i1.i.i
  br i1 %tobool.not.i.i.i, label %while.body.i.i.tipc_mcast_send_sync.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.tipc_mcast_send_sync.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_mcast_send_sync.exit

tipc_mcast_send_sync.exit.thread:                 ; preds = %if.end.i75.tipc_mcast_send_sync.exit.thread_crit_edge, %if.then22.tipc_mcast_send_sync.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cong_link_cnt.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tmpq.i) #9
  br label %if.end32thread-pre-split

tipc_mcast_send_sync.exit:                        ; preds = %while.body.i.i.tipc_mcast_send_sync.exit_crit_edge, %if.end22.i80.tipc_mcast_send_sync.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cong_link_cnt.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tmpq.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool24.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool24.not, label %tipc_mcast_send_sync.exit.if.end32thread-pre-split_crit_edge, label %tipc_mcast_send_sync.exit.do.end_crit_edge, !prof !38

tipc_mcast_send_sync.exit.do.end_crit_edge:       ; preds = %tipc_mcast_send_sync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

tipc_mcast_send_sync.exit.if.end32thread-pre-split_crit_edge: ; preds = %tipc_mcast_send_sync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32thread-pre-split

do.end:                                           ; preds = %tipc_mcast_send_sync.exit.do.end_crit_edge, %tipc_mcast_send_sync.exit.thread95
  %retval.0.i98 = phi i32 [ -12, %tipc_mcast_send_sync.exit.thread95 ], [ %rc.0.i, %tipc_mcast_send_sync.exit.do.end_crit_edge ]
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %52, i32 noundef %retval.0.i98) #12
  br label %exit

if.end32thread-pre-split:                         ; preds = %tipc_mcast_send_sync.exit.if.end32thread-pre-split_crit_edge, %tipc_mcast_send_sync.exit.thread
  %132 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %132)
  %.pr = load i8, ptr %method, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end32thread-pre-split, %tipc_bcast_select_xmit_method.exit.if.end32_crit_edge
  %133 = phi i8 [ %.pr, %if.end32thread-pre-split ], [ %4, %tipc_bcast_select_xmit_method.exit.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool34.not = icmp eq i8 %133, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %_pkts.i) #9
  %134 = getelementptr inbounds i8, ptr %_pkts.i, i32 12
  %135 = call ptr @memset(ptr %134, i32 255, i32 44)
  %136 = ptrtoint ptr %pkts to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pkts, align 4
  %cmp.i.i = icmp eq ptr %137, %pkts
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %137
  %data.i.i81 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 19
  %138 = ptrtoint ptr %data.i.i81 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %data.i.i81, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %139, align 4
  %142 = and i32 %141, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %142)
  %cmp.i31.i = icmp eq i32 %142, 402653184
  %143 = lshr i32 %141, 19
  %shl.i.i.i.i82 = and i32 %143, 60
  %m.addr.0.idx.i.i = select i1 %cmp.i31.i, i32 %shl.i.i.i.i82, i32 0
  %m.addr.0.i.i = getelementptr i8, ptr %139, i32 %m.addr.0.idx.i.i
  %arrayidx.i.i.i.i83 = getelementptr [15 x i32], ptr %m.addr.0.i.i, i32 0, i32 4
  %144 = ptrtoint ptr %arrayidx.i.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.i.i.i.i83, align 4
  %and.i.i.i = and i32 %145, 1
  %146 = ptrtoint ptr %_pkts.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %_pkts.i, ptr %_pkts.i, align 4
  %prev.i.i84 = getelementptr inbounds %struct.anon.90, ptr %_pkts.i, i32 0, i32 1
  %147 = ptrtoint ptr %prev.i.i84 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %_pkts.i, ptr %prev.i.i84, align 4
  %qlen.i.i85 = getelementptr inbounds %struct.sk_buff_head, ptr %_pkts.i, i32 0, i32 1
  %148 = ptrtoint ptr %qlen.i.i85 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %qlen.i.i85, align 4
  %149 = ptrtoint ptr %dests to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dests, align 4
  %cmp.not33.i = icmp eq ptr %150, %dests
  br i1 %cmp.not33.i, label %if.then35.tipc_rcast_xmit.exit_crit_edge, label %if.then35.for.body.i_crit_edge

if.then35.for.body.i_crit_edge:                   ; preds = %if.then35
  br label %for.body.i

if.then35.tipc_rcast_xmit.exit_crit_edge:         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_rcast_xmit.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then35.for.body.i_crit_edge
  %dst.034.i = phi ptr [ %tmp.035.i, %for.inc.i.for.body.i_crit_edge ], [ %150, %if.then35.for.body.i_crit_edge ]
  %151 = ptrtoint ptr %dst.034.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %tmp.035.i = load ptr, ptr %dst.034.i, align 4
  %node.i = getelementptr inbounds %struct.tipc_dest, ptr %dst.034.i, i32 0, i32 2
  %152 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %node.i, align 4
  %call11.i = call zeroext i1 @tipc_msg_pskb_copy(i32 noundef %153, ptr noundef %pkts, ptr noundef nonnull %_pkts.i) #9
  br i1 %call11.i, label %if.end.i87, label %for.body.i.tipc_rcast_xmit.exit_crit_edge

for.body.i.tipc_rcast_xmit.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_rcast_xmit.exit

if.end.i87:                                       ; preds = %for.body.i
  %call12.i86 = call i32 @tipc_node_xmit(ptr noundef %net, ptr noundef nonnull %_pkts.i, i32 noundef %153, i32 noundef %and.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call12.i86)
  %cmp13.i = icmp eq i32 %call12.i86, -11
  br i1 %cmp13.i, label %if.then14.i, label %if.end.i87.for.inc.i_crit_edge

if.end.i87.for.inc.i_crit_edge:                   ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then14.i:                                      ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #11
  %154 = ptrtoint ptr %cong_link_cnt to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %cong_link_cnt, align 2
  %inc.i = add i16 %155, 1
  store i16 %inc.i, ptr %cong_link_cnt, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %if.end.i87.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.035.i, %dests
  br i1 %cmp.not.i, label %for.inc.i.tipc_rcast_xmit.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.tipc_rcast_xmit.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_rcast_xmit.exit

tipc_rcast_xmit.exit:                             ; preds = %for.inc.i.tipc_rcast_xmit.exit_crit_edge, %for.body.i.tipc_rcast_xmit.exit_crit_edge, %if.then35.tipc_rcast_xmit.exit_crit_edge
  %retval.0.i88 = phi i32 [ 0, %if.then35.tipc_rcast_xmit.exit_crit_edge ], [ -12, %for.body.i.tipc_rcast_xmit.exit_crit_edge ], [ 0, %for.inc.i.tipc_rcast_xmit.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %_pkts.i) #9
  br label %if.end39

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = call i32 @tipc_bcast_xmit(ptr noundef %net, ptr noundef %pkts, ptr noundef %cong_link_cnt)
  br label %if.end39

if.end39:                                         ; preds = %if.else, %tipc_rcast_xmit.exit, %if.end.if.end39_crit_edge
  %rc.0 = phi i32 [ %retval.0.i88, %tipc_rcast_xmit.exit ], [ %call37, %if.else ], [ 0, %if.end.if.end39_crit_edge ]
  %156 = ptrtoint ptr %local to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %local, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool41.not = icmp eq i8 %157, 0
  br i1 %tobool41.not, label %if.end39.exit_crit_edge, label %if.then42

if.end39.exit_crit_edge:                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then42:                                        ; preds = %if.end39
  %loopback_dev.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 27
  %158 = ptrtoint ptr %loopback_dev.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %loopback_dev.i, align 4
  %call.i = call zeroext i1 @dev_nit_active(ptr noundef %159) #9
  br i1 %call.i, label %if.then.i, label %if.then42.tipc_loopback_trace.exit_crit_edge, !prof !40

if.then42.tipc_loopback_trace.exit_crit_edge:     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_loopback_trace.exit

if.then.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  call void @tipc_clone_to_loopback(ptr noundef %net, ptr noundef nonnull %localq) #9
  br label %tipc_loopback_trace.exit

tipc_loopback_trace.exit:                         ; preds = %if.then.i, %if.then42.tipc_loopback_trace.exit_crit_edge
  call void @tipc_sk_mcast_rcv(ptr noundef %net, ptr noundef nonnull %localq, ptr noundef nonnull %inputq) #9
  br label %exit

exit:                                             ; preds = %tipc_loopback_trace.exit, %if.end39.exit_crit_edge, %do.end, %land.lhs.true.exit_crit_edge
  %rc.1 = phi i32 [ %retval.0.i98, %do.end ], [ %rc.0, %tipc_loopback_trace.exit ], [ %rc.0, %if.end39.exit_crit_edge ], [ -12, %land.lhs.true.exit_crit_edge ]
  %160 = ptrtoint ptr %pkts to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pkts, align 4
  %cmp.i.i2.i = icmp eq ptr %161, %pkts
  %tobool.not.i13.i = icmp eq ptr %161, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %exit.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

exit.__skb_queue_purge.exit_crit_edge:            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %exit
  %qlen.i.i.i90 = getelementptr inbounds %struct.sk_buff_head, ptr %pkts, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %162 = phi ptr [ %161, %while.body.lr.ph.i ], [ %172, %while.body.i.while.body.i_crit_edge ]
  %163 = ptrtoint ptr %qlen.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %qlen.i.i.i90, align 4
  %sub.i.i.i = add i32 %164, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i90, align 4
  %165 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %162, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.83, ptr %162, i32 0, i32 1
  %167 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %162, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.83, ptr %166, i32 0, i32 1
  %169 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile ptr %168, ptr %prev17.i.i.i, align 4
  %170 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %166, ptr %168, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %162, i32 noundef 0) #9
  %171 = ptrtoint ptr %pkts to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pkts, align 4
  %cmp.i.i.i91 = icmp eq ptr %172, %pkts
  %tobool.not.i1.i = icmp eq ptr %172, null
  %tobool.not.i.i92 = or i1 %cmp.i.i.i91, %tobool.not.i1.i
  br i1 %tobool.not.i.i92, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %exit.__skb_queue_purge.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %localq) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %inputq) #9
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_msg_reassemble(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_sk_mcast_rcv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_bcast_rcv(ptr noundef %net, ptr noundef %l, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %xmitq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %2 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %2) #9
  %bcbase.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 17
  %3 = ptrtoint ptr %bcbase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bcbase.i, align 4
  %inputq2 = getelementptr inbounds %struct.tipc_bc_base, ptr %4, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %xmitq) #9
  %5 = getelementptr inbounds i8, ptr %xmitq, i32 12
  %6 = call ptr @memset(ptr %5, i32 255, i32 44)
  %7 = ptrtoint ptr %xmitq to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %xmitq, ptr %xmitq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %xmitq, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %xmitq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %9 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %qlen.i, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %12 = load i32, ptr @tipc_net_id, align 4
  %call.i.i30 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %12) #9
  %net_id.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i30, i32 0, i32 5
  %13 = ptrtoint ptr %net_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %net_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %14)
  %cmp.not = icmp eq i32 %11, %14
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call5 = call zeroext i1 @tipc_link_is_up(ptr noundef %l) #9
  br i1 %call5, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %15 = load i32, ptr @tipc_net_id, align 4
  %call.i.i31 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %15) #9
  %bclock.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i31, i32 0, i32 16
  call void @_raw_spin_lock_bh(ptr noundef %bclock.i) #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %18 = and i32 %17, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772160, i32 %18)
  %cmp7 = icmp eq i32 %18, 167772160
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = call i32 @tipc_link_bc_nack_rcv(ptr noundef %l, ptr noundef %skb, ptr noundef nonnull %xmitq) #9
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = call i32 @tipc_link_rcv(ptr noundef %l, ptr noundef %skb, ptr noundef null) #9
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %rc.0 = phi i32 [ %call9, %if.then8 ], [ %call10, %if.else ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %19 = load i32, ptr @tipc_net_id, align 4
  %call.i.i32 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %19) #9
  %bclock.i33 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i32, i32 0, i32 16
  call void @_raw_spin_unlock_bh(ptr noundef %bclock.i33) #9
  call fastcc void @tipc_bcbase_xmit(ptr noundef %net, ptr noundef nonnull %xmitq)
  %20 = ptrtoint ptr %inputq2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inputq2, align 4
  %cmp.i.not = icmp eq ptr %21, %inputq2
  br i1 %cmp.i.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  call void @tipc_sk_rcv(ptr noundef %net, ptr noundef %inputq2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end11.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %rc.0, %if.then13 ], [ %rc.0, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %xmitq) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_link_is_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_bc_nack_rcv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_rcv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_sk_rcv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_bcast_ack_rcv(ptr noundef %net, ptr noundef %l, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  %xmitq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #9
  %bcbase.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 17
  %1 = ptrtoint ptr %bcbase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bcbase.i, align 4
  %inputq1 = getelementptr inbounds %struct.tipc_bc_base, ptr %2, i32 0, i32 1
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %hdr, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv.i = trunc i32 %4 to i16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %xmitq) #9
  %5 = getelementptr inbounds i8, ptr %xmitq, i32 12
  %6 = call ptr @memset(ptr %5, i32 255, i32 44)
  %7 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hdr, align 4
  %shr.i.i.i = lshr i32 %8, 25
  %and.i.i.i = and i32 %shr.i.i.i, 15
  %9 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i.i, label %entry.if.end_crit_edge [
    i32 5, label %entry.msg_bc_ack_invalid.exit_crit_edge
    i32 11, label %entry.msg_bc_ack_invalid.exit_crit_edge22
    i32 7, label %entry.msg_bc_ack_invalid.exit_crit_edge23
  ]

entry.msg_bc_ack_invalid.exit_crit_edge23:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %msg_bc_ack_invalid.exit

entry.msg_bc_ack_invalid.exit_crit_edge22:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %msg_bc_ack_invalid.exit

entry.msg_bc_ack_invalid.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %msg_bc_ack_invalid.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

msg_bc_ack_invalid.exit:                          ; preds = %entry.msg_bc_ack_invalid.exit_crit_edge, %entry.msg_bc_ack_invalid.exit_crit_edge22, %entry.msg_bc_ack_invalid.exit_crit_edge23
  %arrayidx.i.i.i16 = getelementptr [15 x i32], ptr %hdr, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i16, align 4
  %12 = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %msg_bc_ack_invalid.exit.if.end_crit_edge, label %msg_bc_ack_invalid.exit.cleanup_crit_edge

msg_bc_ack_invalid.exit.cleanup_crit_edge:        ; preds = %msg_bc_ack_invalid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

msg_bc_ack_invalid.exit.if.end_crit_edge:         ; preds = %msg_bc_ack_invalid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %msg_bc_ack_invalid.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %xmitq to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %xmitq, ptr %xmitq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %xmitq, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %xmitq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %15 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qlen.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %16 = load i32, ptr @tipc_net_id, align 4
  %call.i.i17 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %16) #9
  %bclock.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i17, i32 0, i32 16
  call void @_raw_spin_lock_bh(ptr noundef %bclock.i) #9
  %call4 = call i32 @tipc_link_bc_ack_rcv(ptr noundef %l, i16 noundef zeroext %conv.i, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %xmitq, ptr noundef null) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %17 = load i32, ptr @tipc_net_id, align 4
  %call.i.i18 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %17) #9
  %bclock.i19 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i18, i32 0, i32 16
  call void @_raw_spin_unlock_bh(ptr noundef %bclock.i19) #9
  call fastcc void @tipc_bcbase_xmit(ptr noundef %net, ptr noundef nonnull %xmitq)
  %18 = ptrtoint ptr %inputq1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inputq1, align 4
  %cmp.i.not = icmp eq ptr %19, %inputq1
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @tipc_sk_rcv(ptr noundef %net, ptr noundef %inputq1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %msg_bc_ack_invalid.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %xmitq) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_bc_ack_rcv(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_bcast_sync_rcv(ptr noundef %net, ptr noundef %l, ptr noundef %hdr, ptr noundef %retrq) local_unnamed_addr #0 align 64 {
entry:
  %ga = alloca ptr, align 4
  %xmitq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #9
  %bcbase.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 17
  %1 = ptrtoint ptr %bcbase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bcbase.i, align 4
  %inputq1 = getelementptr inbounds %struct.tipc_bc_base, ptr %2, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ga) #9
  %3 = ptrtoint ptr %ga to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %ga, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %xmitq) #9
  %4 = getelementptr inbounds i8, ptr %xmitq, i32 12
  %5 = call ptr @memset(ptr %4, i32 255, i32 44)
  %6 = ptrtoint ptr %xmitq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %xmitq, ptr %xmitq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %xmitq, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %xmitq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %8 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %9 = load i32, ptr @tipc_net_id, align 4
  %call.i.i32 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %9) #9
  %bclock.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i32, i32 0, i32 16
  call void @_raw_spin_lock_bh(ptr noundef %bclock.i) #9
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %hdr, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %11)
  %cmp.not = icmp ult i32 %11, 536870912
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @tipc_link_bc_init_rcv(ptr noundef %l, ptr noundef %hdr) #9
  br label %if.end12

if.else:                                          ; preds = %entry
  %12 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hdr, align 4
  %shr.i.i.i = lshr i32 %13, 25
  %and.i.i.i = and i32 %shr.i.i.i, 15
  %14 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %and.i.i.i, label %if.else.if.then4_crit_edge [
    i32 5, label %if.else.msg_bc_ack_invalid.exit_crit_edge
    i32 11, label %if.else.msg_bc_ack_invalid.exit_crit_edge40
    i32 7, label %if.else.msg_bc_ack_invalid.exit_crit_edge41
  ]

if.else.msg_bc_ack_invalid.exit_crit_edge41:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %msg_bc_ack_invalid.exit

if.else.msg_bc_ack_invalid.exit_crit_edge40:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %msg_bc_ack_invalid.exit

if.else.msg_bc_ack_invalid.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %msg_bc_ack_invalid.exit

if.else.if.then4_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

msg_bc_ack_invalid.exit:                          ; preds = %if.else.msg_bc_ack_invalid.exit_crit_edge, %if.else.msg_bc_ack_invalid.exit_crit_edge40, %if.else.msg_bc_ack_invalid.exit_crit_edge41
  %arrayidx.i.i.i33 = getelementptr [15 x i32], ptr %hdr, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i.i33, align 4
  %17 = and i32 %16, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.not, label %msg_bc_ack_invalid.exit.if.then4_crit_edge, label %msg_bc_ack_invalid.exit.if.end12_crit_edge

msg_bc_ack_invalid.exit.if.end12_crit_edge:       ; preds = %msg_bc_ack_invalid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

msg_bc_ack_invalid.exit.if.then4_crit_edge:       ; preds = %msg_bc_ack_invalid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %msg_bc_ack_invalid.exit.if.then4_crit_edge, %if.else.if.then4_crit_edge
  %call5 = call zeroext i16 @tipc_get_gap_ack_blks(ptr noundef nonnull %ga, ptr noundef %l, ptr noundef %hdr, i1 noundef zeroext false) #9
  %18 = load i32, ptr @sysctl_tipc_bc_retruni, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  %spec.select = select i1 %tobool.not, ptr %xmitq, ptr %retrq
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv.i = trunc i32 %20 to i16
  %arrayidx.i.i.i35 = getelementptr [15 x i32], ptr %hdr, i32 0, i32 8
  %21 = ptrtoint ptr %arrayidx.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i35, align 4
  %23 = trunc i32 %22 to i16
  %conv = and i16 %23, 1023
  %24 = ptrtoint ptr %ga to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ga, align 4
  %call9 = call i32 @tipc_link_bc_ack_rcv(ptr noundef %l, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv, ptr noundef %25, ptr noundef nonnull %xmitq, ptr noundef %spec.select) #9
  %call10 = call i32 @tipc_link_bc_sync_rcv(ptr noundef %l, ptr noundef %hdr, ptr noundef nonnull %xmitq) #9
  %or = or i32 %call10, %call9
  br label %if.end12

if.end12:                                         ; preds = %if.then4, %msg_bc_ack_invalid.exit.if.end12_crit_edge, %if.then
  %rc.0 = phi i32 [ 0, %if.then ], [ 0, %msg_bc_ack_invalid.exit.if.end12_crit_edge ], [ %or, %if.then4 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %26 = load i32, ptr @tipc_net_id, align 4
  %call.i.i36 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %26) #9
  %bclock.i37 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i36, i32 0, i32 16
  call void @_raw_spin_unlock_bh(ptr noundef %bclock.i37) #9
  call fastcc void @tipc_bcbase_xmit(ptr noundef %net, ptr noundef nonnull %xmitq)
  %27 = ptrtoint ptr %inputq1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %inputq1, align 4
  %cmp.i.not = icmp eq ptr %28, %inputq1
  br i1 %cmp.i.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  call void @tipc_sk_rcv(ptr noundef %net, ptr noundef %inputq1) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %xmitq) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ga) #9
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_bc_init_rcv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @tipc_get_gap_ack_blks(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_bc_sync_rcv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_bcast_add_peer(ptr noundef %net, ptr noundef %uc_l, ptr noundef %xmitq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #9
  %bcl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 18
  %1 = ptrtoint ptr %bcl.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bcl.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %3 = load i32, ptr @tipc_net_id, align 4
  %call.i.i5 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %3) #9
  %bclock.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i5, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %bclock.i) #9
  tail call void @tipc_link_add_bc_peer(ptr noundef %2, ptr noundef %uc_l, ptr noundef %xmitq) #9
  tail call fastcc void @tipc_bcbase_select_primary(ptr noundef %net)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %4 = load i32, ptr @tipc_net_id, align 4
  %call.i.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %4) #9
  %bcbase.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i, i32 0, i32 17
  %5 = ptrtoint ptr %bcbase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bcbase.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %7 = load i32, ptr @tipc_net_id, align 4
  %call.i.i5.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %7) #9
  %bcl.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i5.i, i32 0, i32 18
  %8 = ptrtoint ptr %bcl.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bcl.i.i, align 4
  %call2.i = tail call i32 @tipc_link_bc_peers(ptr noundef %9) #9
  %rc_ratio.i = getelementptr inbounds %struct.tipc_bc_base, ptr %6, i32 0, i32 8
  %10 = ptrtoint ptr %rc_ratio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rc_ratio.i, align 4
  %mul.i = mul i32 %11, %call2.i
  %div.i = sdiv i32 %mul.i, 100
  %add.i = add nsw i32 %div.i, 1
  %bc_threshold.i = getelementptr inbounds %struct.tipc_bc_base, ptr %6, i32 0, i32 9
  %12 = ptrtoint ptr %bc_threshold.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i, ptr %bc_threshold.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %13 = load i32, ptr @tipc_net_id, align 4
  %call.i.i6 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %13) #9
  %bclock.i7 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i6, i32 0, i32 16
  tail call void @_raw_spin_unlock_bh(ptr noundef %bclock.i7) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_add_bc_peer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_bcast_remove_peer(ptr noundef %net, ptr noundef %rcv_l) local_unnamed_addr #0 align 64 {
entry:
  %xmitq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #9
  %bcl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 18
  %1 = ptrtoint ptr %bcl.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bcl.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %3 = load i32, ptr @tipc_net_id, align 4
  %call.i.i12 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %3) #9
  %bcbase.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i12, i32 0, i32 17
  %4 = ptrtoint ptr %bcbase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bcbase.i, align 4
  %inputq2 = getelementptr inbounds %struct.tipc_bc_base, ptr %5, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %xmitq) #9
  %6 = getelementptr inbounds i8, ptr %xmitq, i32 12
  %7 = call ptr @memset(ptr %6, i32 255, i32 44)
  %8 = ptrtoint ptr %xmitq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %xmitq, ptr %xmitq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %xmitq, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %xmitq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %11 = load i32, ptr @tipc_net_id, align 4
  %call.i.i13 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %11) #9
  %bclock.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i13, i32 0, i32 16
  call void @_raw_spin_lock_bh(ptr noundef %bclock.i) #9
  call void @tipc_link_remove_bc_peer(ptr noundef %2, ptr noundef %rcv_l, ptr noundef nonnull %xmitq) #9
  call fastcc void @tipc_bcbase_select_primary(ptr noundef %net)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %12 = load i32, ptr @tipc_net_id, align 4
  %call.i.i.i = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %12) #9
  %bcbase.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i, i32 0, i32 17
  %13 = ptrtoint ptr %bcbase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bcbase.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %15 = load i32, ptr @tipc_net_id, align 4
  %call.i.i5.i = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %15) #9
  %bcl.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i5.i, i32 0, i32 18
  %16 = ptrtoint ptr %bcl.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bcl.i.i, align 4
  %call2.i = call i32 @tipc_link_bc_peers(ptr noundef %17) #9
  %rc_ratio.i = getelementptr inbounds %struct.tipc_bc_base, ptr %14, i32 0, i32 8
  %18 = ptrtoint ptr %rc_ratio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rc_ratio.i, align 4
  %mul.i = mul i32 %19, %call2.i
  %div.i = sdiv i32 %mul.i, 100
  %add.i = add nsw i32 %div.i, 1
  %bc_threshold.i = getelementptr inbounds %struct.tipc_bc_base, ptr %14, i32 0, i32 9
  %20 = ptrtoint ptr %bc_threshold.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i, ptr %bc_threshold.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %21 = load i32, ptr @tipc_net_id, align 4
  %call.i.i14 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %21) #9
  %bclock.i15 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i14, i32 0, i32 16
  call void @_raw_spin_unlock_bh(ptr noundef %bclock.i15) #9
  call fastcc void @tipc_bcbase_xmit(ptr noundef %net, ptr noundef nonnull %xmitq)
  %22 = ptrtoint ptr %inputq2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %inputq2, align 4
  %cmp.i.not = icmp eq ptr %23, %inputq2
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @tipc_sk_rcv(ptr noundef %net, ptr noundef %inputq2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %xmitq) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_remove_bc_peer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_bclink_reset_stats(ptr noundef %net, ptr noundef %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %l, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #9
  %bclock.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %bclock.i) #9
  tail call void @tipc_link_reset_stats(ptr noundef nonnull %l) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %1 = load i32, ptr @tipc_net_id, align 4
  %call.i.i3 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %1) #9
  %bclock.i4 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i3, i32 0, i32 16
  tail call void @_raw_spin_unlock_bh(ptr noundef %bclock.i4) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -92, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_reset_stats(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_bc_link_set(ptr noundef %net, ptr nocapture noundef readonly %attrs) local_unnamed_addr #0 align 64 {
entry:
  %props = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #9
  %0 = getelementptr inbounds [7 x ptr], ptr %props, i32 0, i32 3
  %1 = getelementptr inbounds [7 x ptr], ptr %props, i32 0, i32 5
  %2 = getelementptr inbounds [7 x ptr], ptr %props, i32 0, i32 6
  %arrayidx = getelementptr ptr, ptr %attrs, i32 7
  %3 = call ptr @memset(ptr %props, i32 255, i32 28)
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @tipc_nl_parse_link_prop(ptr noundef nonnull %5, ptr noundef nonnull %props) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %tobool6.not = icmp eq ptr %7, null
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end4
  br i1 %tobool8.not, label %land.lhs.true9, label %land.lhs.true.if.then16_crit_edge

land.lhs.true.if.then16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

land.lhs.true9:                                   ; preds = %land.lhs.true
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %land.lhs.true9.cleanup_crit_edge, label %land.lhs.true9.if.then25_crit_edge

land.lhs.true9.if.then25_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  br i1 %tobool8.not, label %if.end13.land.lhs.true22_crit_edge, label %if.end13.if.then16_crit_edge

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end13.land.lhs.true22_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true22

if.then16:                                        ; preds = %if.end13.if.then16_crit_edge, %land.lhs.true.if.then16_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %14 = load i32, ptr @tipc_net_id, align 4
  %call.i.i.i = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %14) #9
  %bcbase.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i, i32 0, i32 17
  %15 = ptrtoint ptr %bcbase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bcbase.i.i, align 4
  %17 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %13, label %if.then16.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb7.i
  ]

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then16
  %bcast_support.i = getelementptr inbounds %struct.tipc_bc_base, ptr %16, i32 0, i32 4
  %18 = ptrtoint ptr %bcast_support.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bcast_support.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %sw.bb.i.cleanup_crit_edge, label %sw.bb.i.cleanup.sink.split.i_crit_edge

sw.bb.i.cleanup.sink.split.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.then16
  %rcast_support.i = getelementptr inbounds %struct.tipc_bc_base, ptr %16, i32 0, i32 6
  %20 = ptrtoint ptr %rcast_support.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rcast_support.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool2.not.i = icmp eq i8 %21, 0
  br i1 %tobool2.not.i, label %sw.bb1.i.cleanup_crit_edge, label %sw.bb1.i.cleanup.sink.split.i_crit_edge

sw.bb1.i.cleanup.sink.split.i_crit_edge:          ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb7.i:                                         ; preds = %if.then16
  %bcast_support8.i = getelementptr inbounds %struct.tipc_bc_base, ptr %16, i32 0, i32 4
  %22 = ptrtoint ptr %bcast_support8.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bcast_support8.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool9.not.i = icmp eq i8 %23, 0
  br i1 %tobool9.not.i, label %sw.bb7.i.cleanup_crit_edge, label %lor.lhs.false.i

sw.bb7.i.cleanup_crit_edge:                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb7.i
  %rcast_support10.i = getelementptr inbounds %struct.tipc_bc_base, ptr %16, i32 0, i32 6
  %24 = ptrtoint ptr %rcast_support10.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rcast_support10.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool11.not.i = icmp eq i8 %25, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.cleanup.sink.split.i_crit_edge

lor.lhs.false.i.cleanup.sink.split.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, %sw.bb1.i.cleanup.sink.split.i_crit_edge, %sw.bb.i.cleanup.sink.split.i_crit_edge
  %.sink25.i = phi i8 [ 1, %sw.bb.i.cleanup.sink.split.i_crit_edge ], [ 0, %sw.bb1.i.cleanup.sink.split.i_crit_edge ], [ 0, %lor.lhs.false.i.cleanup.sink.split.i_crit_edge ]
  %.sink.i = phi i8 [ 0, %sw.bb.i.cleanup.sink.split.i_crit_edge ], [ 1, %sw.bb1.i.cleanup.sink.split.i_crit_edge ], [ 0, %lor.lhs.false.i.cleanup.sink.split.i_crit_edge ]
  %force_bcast.i = getelementptr inbounds %struct.tipc_bc_base, ptr %16, i32 0, i32 5
  %26 = ptrtoint ptr %force_bcast.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink25.i, ptr %force_bcast.i, align 1
  %force_rcast.i = getelementptr inbounds %struct.tipc_bc_base, ptr %16, i32 0, i32 7
  %27 = ptrtoint ptr %force_rcast.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink.i, ptr %force_rcast.i, align 1
  br label %land.lhs.true22

land.lhs.true22:                                  ; preds = %cleanup.sink.split.i, %if.end13.land.lhs.true22_crit_edge
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr76 = load ptr, ptr %2, align 4
  %tobool24.not = icmp eq ptr %.pr76, null
  br i1 %tobool24.not, label %land.lhs.true22.land.lhs.true31_crit_edge, label %land.lhs.true22.if.then25_crit_edge

land.lhs.true22.if.then25_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

land.lhs.true22.land.lhs.true31_crit_edge:        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true31

if.then25:                                        ; preds = %land.lhs.true22.if.then25_crit_edge, %land.lhs.true9.if.then25_crit_edge
  %29 = phi ptr [ %.pr76, %land.lhs.true22.if.then25_crit_edge ], [ %11, %land.lhs.true9.if.then25_crit_edge ]
  %add.ptr.i.i53 = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i53, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %32 = load i32, ptr @tipc_net_id, align 4
  %call.i.i.i54 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %32) #9
  %bcbase.i.i55 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i54, i32 0, i32 17
  %33 = ptrtoint ptr %bcbase.i.i55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bcbase.i.i55, align 4
  %bcast_support.i56 = getelementptr inbounds %struct.tipc_bc_base, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %bcast_support.i56 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bcast_support.i56, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i57 = icmp eq i8 %36, 0
  br i1 %tobool.not.i57, label %if.then25.cleanup_crit_edge, label %lor.lhs.false.i59

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i59:                                ; preds = %if.then25
  %rcast_support.i58 = getelementptr inbounds %struct.tipc_bc_base, ptr %34, i32 0, i32 6
  %37 = ptrtoint ptr %rcast_support.i58 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rcast_support.i58, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool1.not.i = icmp eq i8 %38, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i59.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i59.cleanup_crit_edge:              ; preds = %lor.lhs.false.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i59
  %39 = add i32 %31, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %39)
  %40 = icmp ult i32 %39, -100
  br i1 %40, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %rc_ratio.i = getelementptr inbounds %struct.tipc_bc_base, ptr %34, i32 0, i32 8
  %41 = ptrtoint ptr %rc_ratio.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %31, ptr %rc_ratio.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %42 = load i32, ptr @tipc_net_id, align 4
  %call.i.i13.i = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %42) #9
  %bclock.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i13.i, i32 0, i32 16
  call void @_raw_spin_lock_bh(ptr noundef %bclock.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %43 = load i32, ptr @tipc_net_id, align 4
  %call.i.i.i.i = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %43) #9
  %bcbase.i.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i.i, i32 0, i32 17
  %44 = ptrtoint ptr %bcbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bcbase.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %46 = load i32, ptr @tipc_net_id, align 4
  %call.i.i5.i.i = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %46) #9
  %bcl.i.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i5.i.i, i32 0, i32 18
  %47 = ptrtoint ptr %bcl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bcl.i.i.i, align 4
  %call2.i.i = call i32 @tipc_link_bc_peers(ptr noundef %48) #9
  %rc_ratio.i.i = getelementptr inbounds %struct.tipc_bc_base, ptr %45, i32 0, i32 8
  %49 = ptrtoint ptr %rc_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rc_ratio.i.i, align 4
  %mul.i.i = mul i32 %50, %call2.i.i
  %div.i.i = sdiv i32 %mul.i.i, 100
  %add.i.i = add nsw i32 %div.i.i, 1
  %bc_threshold.i.i = getelementptr inbounds %struct.tipc_bc_base, ptr %45, i32 0, i32 9
  %51 = ptrtoint ptr %bc_threshold.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add.i.i, ptr %bc_threshold.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %52 = load i32, ptr @tipc_net_id, align 4
  %call.i.i14.i = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %52) #9
  %bclock.i15.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i14.i, i32 0, i32 16
  call void @_raw_spin_unlock_bh(ptr noundef %bclock.i15.i) #9
  br label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end5.i, %land.lhs.true22.land.lhs.true31_crit_edge
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %0, align 4
  %tobool33.not = icmp eq ptr %54, null
  br i1 %tobool33.not, label %land.lhs.true31.cleanup_crit_edge, label %if.then34

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then34:                                        ; preds = %land.lhs.true31
  %add.ptr.i.i61 = getelementptr i8, ptr %54, i32 4
  %55 = ptrtoint ptr %add.ptr.i.i61 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i.i61, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %57 = load i32, ptr @tipc_net_id, align 4
  %call.i.i.i62 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %57) #9
  %bcl.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i62, i32 0, i32 18
  %58 = ptrtoint ptr %bcl.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bcl.i.i, align 4
  %tobool.not.i63 = icmp eq ptr %59, null
  br i1 %tobool.not.i63, label %if.then34.cleanup_crit_edge, label %if.end.i64

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i64:                                       ; preds = %if.then34
  %60 = call i32 @llvm.umax.i32(i32 %56, i32 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %60)
  %cmp3.i = icmp ugt i32 %60, 8191
  br i1 %cmp3.i, label %if.end.i64.cleanup_crit_edge, label %if.end5.i69

if.end.i64.cleanup_crit_edge:                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.i69:                                      ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %61 = load i32, ptr @tipc_net_id, align 4
  %call.i.i13.i65 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %61) #9
  %bclock.i.i66 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i13.i65, i32 0, i32 16
  call void @_raw_spin_lock_bh(ptr noundef %bclock.i.i66) #9
  %call6.i = call i32 @tipc_link_min_win(ptr noundef nonnull %59) #9
  call void @tipc_link_set_queue_limits(ptr noundef nonnull %59, i32 noundef %call6.i, i32 noundef %60) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %62 = load i32, ptr @tipc_net_id, align 4
  %call.i.i14.i67 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %62) #9
  %bclock.i15.i68 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i14.i67, i32 0, i32 16
  call void @_raw_spin_unlock_bh(ptr noundef %bclock.i15.i68) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i69, %if.end.i64.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %land.lhs.true31.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i59.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %sw.bb7.i.cleanup_crit_edge, %sw.bb1.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -95, %land.lhs.true9.cleanup_crit_edge ], [ 0, %land.lhs.true31.cleanup_crit_edge ], [ 0, %if.end5.i69 ], [ -92, %if.then34.cleanup_crit_edge ], [ -22, %if.end.i64.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -92, %if.then25.cleanup_crit_edge ], [ -92, %lor.lhs.false.i59.cleanup_crit_edge ], [ -22, %if.then16.cleanup_crit_edge ], [ -92, %sw.bb7.i.cleanup_crit_edge ], [ -92, %lor.lhs.false.i.cleanup_crit_edge ], [ -92, %sw.bb1.i.cleanup_crit_edge ], [ -92, %sw.bb.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_parse_link_prop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_bcast_init(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  %l = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #9
  %1 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %l, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 88) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.enomem_crit_edge, label %if.end

entry.enomem_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %enomem

if.end:                                           ; preds = %entry
  %bcbase = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 17
  %3 = ptrtoint ptr %bcbase to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %bcbase, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %4 = load i32, ptr @tipc_net_id, align 4
  %call.i18 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %4) #9
  %bclock = getelementptr inbounds %struct.tipc_net, ptr %call.i18, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %bclock, ptr noundef nonnull @.str.3, ptr noundef nonnull @tipc_bcast_init.__key, i16 noundef signext 3) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @one_page_mtu to i32))
  %5 = load i32, ptr @one_page_mtu, align 4
  %inputq = getelementptr inbounds %struct.tipc_bc_base, ptr %call7.i.i, i32 0, i32 1
  %call4 = call zeroext i1 @tipc_link_bc_create(ptr noundef %net, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %5, i32 noundef 50, i32 noundef 50, i16 noundef zeroext 0, ptr noundef %inputq, ptr noundef null, ptr noundef null, ptr noundef nonnull %l) #9
  br i1 %call4, label %if.end6, label %if.end.enomem_crit_edge

if.end.enomem_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %enomem

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %l, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %call7.i.i, align 8
  %bcl = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 18
  %9 = ptrtoint ptr %bcl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %bcl, align 4
  %rc_ratio = getelementptr inbounds %struct.tipc_bc_base, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %rc_ratio to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %rc_ratio, align 8
  %rcast_support = getelementptr inbounds %struct.tipc_bc_base, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %rcast_support to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %rcast_support, align 2
  br label %cleanup

enomem:                                           ; preds = %if.end.enomem_crit_edge, %entry.enomem_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #9
  %12 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %l, align 4
  call void @kfree(ptr noundef %13) #9
  br label %cleanup

cleanup:                                          ; preds = %enomem, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %enomem ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_link_bc_create(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_bcast_stop(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  tail call void @synchronize_net() #9
  %bcbase = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 17
  %1 = ptrtoint ptr %bcbase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bcbase, align 4
  tail call void @kfree(ptr noundef %2) #9
  %bcl = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 18
  %3 = ptrtoint ptr %bcl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bcl, align 4
  tail call void @kfree(ptr noundef %4) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 45, ptr noundef nonnull @.str.6) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %8 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_nlist_init(ptr noundef %nl, i32 noundef %self) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %nl, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %2 = ptrtoint ptr %nl to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %nl, ptr %nl, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %nl, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %nl, ptr %prev.i, align 4
  %self1 = getelementptr inbounds %struct.tipc_nlist, ptr %nl, i32 0, i32 1
  %4 = ptrtoint ptr %self1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %self, ptr %self1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_nlist_add(ptr noundef %nl, i32 noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %self = getelementptr inbounds %struct.tipc_nlist, ptr %nl, i32 0, i32 1
  %0 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %self, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %node)
  %cmp = icmp eq i32 %1, %node
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %local = getelementptr inbounds %struct.tipc_nlist, ptr %nl, i32 0, i32 3
  %2 = ptrtoint ptr %local to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %local, align 2
  br label %if.end2

if.else:                                          ; preds = %entry
  %call = tail call zeroext i1 @tipc_dest_push(ptr noundef %nl, i32 noundef %node, i32 noundef 0) #9
  br i1 %call, label %if.then1, label %if.else.if.end2_crit_edge

if.else.if.end2_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %remote = getelementptr inbounds %struct.tipc_nlist, ptr %nl, i32 0, i32 2
  %3 = ptrtoint ptr %remote to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %remote, align 4
  %inc = add i16 %4, 1
  store i16 %inc, ptr %remote, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.else.if.end2_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_dest_push(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_nlist_del(ptr noundef %nl, i32 noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %self = getelementptr inbounds %struct.tipc_nlist, ptr %nl, i32 0, i32 1
  %0 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %self, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %node)
  %cmp = icmp eq i32 %1, %node
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %local = getelementptr inbounds %struct.tipc_nlist, ptr %nl, i32 0, i32 3
  %2 = ptrtoint ptr %local to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %local, align 2
  br label %if.end2

if.else:                                          ; preds = %entry
  %call = tail call zeroext i1 @tipc_dest_del(ptr noundef %nl, i32 noundef %node, i32 noundef 0) #9
  br i1 %call, label %if.then1, label %if.else.if.end2_crit_edge

if.else.if.end2_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %remote = getelementptr inbounds %struct.tipc_nlist, ptr %nl, i32 0, i32 2
  %3 = ptrtoint ptr %remote to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %remote, align 4
  %dec = add i16 %4, -1
  store i16 %dec, ptr %remote, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.else.if.end2_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_dest_del(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_nlist_purge(ptr noundef %nl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tipc_dest_list_purge(ptr noundef %nl) #9
  %remote = getelementptr inbounds %struct.tipc_nlist, ptr %nl, i32 0, i32 2
  %0 = ptrtoint ptr %remote to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %remote, align 4
  %local = getelementptr inbounds %struct.tipc_nlist, ptr %nl, i32 0, i32 3
  %1 = ptrtoint ptr %local to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %local, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_dest_list_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_bcast_get_mode(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #9
  %bcbase.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 17
  %1 = ptrtoint ptr %bcbase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bcbase.i, align 4
  %force_bcast = getelementptr inbounds %struct.tipc_bc_base, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %force_bcast to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %force_bcast, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %force_rcast = getelementptr inbounds %struct.tipc_bc_base, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %force_rcast to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %force_rcast, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %bcast_support = getelementptr inbounds %struct.tipc_bc_base, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %bcast_support to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bcast_support, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %land.lhs.true

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end3
  %rcast_support = getelementptr inbounds %struct.tipc_bc_base, ptr %2, i32 0, i32 6
  %9 = ptrtoint ptr %rcast_support to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rcast_support, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 4, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_bcast_get_broadcast_ratio(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #9
  %bcbase.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 17
  %1 = ptrtoint ptr %bcbase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bcbase.i, align 4
  %rc_ratio = getelementptr inbounds %struct.tipc_bc_base, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %rc_ratio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rc_ratio, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_mcast_filter_msg(ptr noundef %net, ptr noundef %defq, ptr noundef %inputq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inputq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inputq, align 4
  %cmp.i = icmp eq ptr %1, %inputq
  %tobool.not219 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not219
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %land.rhs, label %if.end.if.end9_crit_edge, !prof !38

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.rhs:                                         ; preds = %if.end
  %7 = ptrtoint ptr %defq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %defq, align 4
  %cmp.i138 = icmp eq ptr %8, %defq
  br i1 %cmp.i138, label %land.rhs.cleanup_crit_edge, label %land.rhs.if.end9_crit_edge, !prof !38

land.rhs.if.end9_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %land.rhs.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %9 = and i32 %5, 31457280
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %9)
  %cmp.i.not.i = icmp eq i32 %9, 12582912
  %..i = select i1 %cmp.i.not.i, i32 3, i32 6, !prof !38
  %arrayidx.i.i = getelementptr [15 x i32], ptr %3, i32 0, i32 %..i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %retval.0.i = load i32, ptr %arrayidx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %11 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %11) #9
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %node_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %13)
  %cmp = icmp eq i32 %retval.0.i, %13
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  %16 = and i32 %15, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %16)
  %cmp.i139 = icmp eq i32 %16, 402653184
  %17 = lshr i32 %15, 19
  %shl.i.i.i.i = and i32 %17, 60
  %m.addr.0.idx.i = select i1 %cmp.i139, i32 %shl.i.i.i.i, i32 0
  %m.addr.0.i = getelementptr i8, ptr %3, i32 %m.addr.0.idx.i
  %arrayidx.i.i140 = getelementptr [15 x i32], ptr %m.addr.0.i, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx.i.i140 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i140, align 4
  %20 = ptrtoint ptr %defq to i32
  call void @__asan_load4_noabort(i32 %20)
  %_skb.0225 = load ptr, ptr %defq, align 4
  %cmp15.not226 = icmp eq ptr %_skb.0225, %defq
  br i1 %cmp15.not226, label %if.end13.if.then27_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.if.then27_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end13.for.body_crit_edge
  %_skb.0227 = phi ptr [ %_skb.0, %for.inc.for.body_crit_edge ], [ %_skb.0225, %if.end13.for.body_crit_edge ]
  %data.i141 = getelementptr inbounds %struct.sk_buff, ptr %_skb.0227, i32 0, i32 19
  %21 = ptrtoint ptr %data.i141 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i141, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %25 = and i32 %24, 31457280
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %25)
  %cmp.i.not.i142 = icmp eq i32 %25, 12582912
  %..i143 = select i1 %cmp.i.not.i142, i32 3, i32 6, !prof !38
  %arrayidx.i.i144 = getelementptr [15 x i32], ptr %22, i32 0, i32 %..i143
  %26 = ptrtoint ptr %arrayidx.i.i144 to i32
  call void @__asan_load4_noabort(i32 %26)
  %retval.0.i145 = load i32, ptr %arrayidx.i.i144, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i145, i32 %retval.0.i)
  %cmp18.not = icmp eq i32 %retval.0.i145, %retval.0.i
  br i1 %cmp18.not, label %if.end20, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end20:                                         ; preds = %for.body
  %27 = and i32 %24, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %27)
  %cmp.i146 = icmp eq i32 %27, 402653184
  %28 = lshr i32 %24, 19
  %shl.i.i.i.i147 = and i32 %28, 60
  %m.addr.0.idx.i148 = select i1 %cmp.i146, i32 %shl.i.i.i.i147, i32 0
  %m.addr.0.i149 = getelementptr i8, ptr %22, i32 %m.addr.0.idx.i148
  %arrayidx.i.i150 = getelementptr [15 x i32], ptr %m.addr.0.i149, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx.i.i150 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i150, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %19)
  %cmp22.not = icmp eq i32 %30, %19
  br i1 %cmp22.not, label %if.end33, label %if.end20.for.inc_crit_edge

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end20.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %31 = ptrtoint ptr %_skb.0227 to i32
  call void @__asan_load4_noabort(i32 %31)
  %_skb.0 = load ptr, ptr %_skb.0227, align 4
  %cmp15.not = icmp eq ptr %_skb.0, %defq
  br i1 %cmp15.not, label %for.inc.if.then27_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.then27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

if.then27:                                        ; preds = %for.inc.if.then27_crit_edge, %if.end13.if.then27_crit_edge
  %32 = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool29.not = icmp eq i32 %32, 0
  br i1 %tobool29.not, label %if.then27.cleanup_crit_edge, label %if.end31

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.then27
  %33 = ptrtoint ptr %inputq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %inputq, align 4
  %cmp.i.i = icmp eq ptr %34, %inputq
  %tobool.not.i223 = icmp eq ptr %34, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i223
  br i1 %tobool.not.i, label %if.end31.cleanup.sink.split_crit_edge, label %if.then.i

if.end31.cleanup.sink.split_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %inputq, i32 0, i32 1
  %35 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.83, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %34, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.83, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %40, ptr %prev17.i.i, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %38, ptr %40, align 8
  br label %cleanup.sink.split

if.end33:                                         ; preds = %if.end20
  %43 = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool35.not = icmp eq i32 %43, 0
  %44 = and i32 %15, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i = icmp ne i32 %44, 0
  %45 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %22, align 4
  %47 = and i32 %46, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i155 = icmp ne i32 %47, 0
  %48 = xor i1 %tobool.i, %tobool.i155
  br i1 %tobool35.not, label %if.then36, label %if.end45

if.then36:                                        ; preds = %if.end33
  br i1 %48, label %if.then36.cleanup_crit_edge, label %if.end43

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43:                                         ; preds = %if.then36
  %49 = ptrtoint ptr %inputq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %inputq, align 4
  %cmp.i.i156 = icmp eq ptr %50, %inputq
  %tobool.not.i158222 = icmp eq ptr %50, null
  %tobool.not.i158 = or i1 %cmp.i.i156, %tobool.not.i158222
  br i1 %tobool.not.i158, label %if.end43.cleanup.sink.split_crit_edge, label %if.then.i163

if.end43.cleanup.sink.split_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then.i163:                                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %qlen.i.i159 = getelementptr inbounds %struct.sk_buff_head, ptr %inputq, i32 0, i32 1
  %51 = ptrtoint ptr %qlen.i.i159 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %qlen.i.i159, align 4
  %sub.i.i160 = add i32 %52, -1
  store volatile i32 %sub.i.i160, ptr %qlen.i.i159, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 8
  %prev9.i.i161 = getelementptr inbounds %struct.anon.83, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %prev9.i.i161 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev9.i.i161, align 4
  store ptr null, ptr %prev9.i.i161, align 4
  store ptr null, ptr %50, align 8
  %prev17.i.i162 = getelementptr inbounds %struct.anon.83, ptr %54, i32 0, i32 1
  %57 = ptrtoint ptr %prev17.i.i162 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %56, ptr %prev17.i.i162, align 4
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %54, ptr %56, align 8
  br label %cleanup.sink.split

if.end45:                                         ; preds = %if.end33
  br i1 %48, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end45
  %59 = ptrtoint ptr %inputq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %inputq, align 4
  %cmp.i.i171 = icmp eq ptr %60, %inputq
  %tobool.not.i173220 = icmp eq ptr %60, null
  %tobool.not.i173 = or i1 %cmp.i.i171, %tobool.not.i173220
  br i1 %tobool.not.i173, label %if.then52.cleanup.sink.split_crit_edge, label %if.then.i178

if.then52.cleanup.sink.split_crit_edge:           ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then.i178:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  %qlen.i.i174 = getelementptr inbounds %struct.sk_buff_head, ptr %inputq, i32 0, i32 1
  %61 = ptrtoint ptr %qlen.i.i174 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %qlen.i.i174, align 4
  %sub.i.i175 = add i32 %62, -1
  store volatile i32 %sub.i.i175, ptr %qlen.i.i174, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %60, align 8
  %prev9.i.i176 = getelementptr inbounds %struct.anon.83, ptr %60, i32 0, i32 1
  %65 = ptrtoint ptr %prev9.i.i176 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev9.i.i176, align 4
  store ptr null, ptr %prev9.i.i176, align 4
  store ptr null, ptr %60, align 8
  %prev17.i.i177 = getelementptr inbounds %struct.anon.83, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %prev17.i.i177 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %66, ptr %prev17.i.i177, align 4
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %64, ptr %66, align 8
  br label %cleanup.sink.split

if.end54:                                         ; preds = %if.end45
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %defq, i32 0, i32 1
  %69 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %70, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %71 = ptrtoint ptr %_skb.0227 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %_skb.0227, align 8
  %prev9.i = getelementptr inbounds %struct.anon.83, ptr %_skb.0227, i32 0, i32 1
  %73 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %_skb.0227, align 8
  %prev17.i = getelementptr inbounds %struct.anon.83, ptr %72, i32 0, i32 1
  %75 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %74, ptr %prev17.i, align 4
  %76 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %72, ptr %74, align 8
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %3, align 4
  %and.i.i.i = and i32 %78, 131071
  %79 = lshr i32 %78, 19
  %shl.i.i = and i32 %79, 60
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %shl.i.i)
  %tobool56.not = icmp eq i32 %and.i.i.i, %shl.i.i
  br i1 %tobool56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %_skb.0227, i32 noundef 0) #9
  br label %if.end59

if.else:                                          ; preds = %if.end54
  %80 = ptrtoint ptr %inputq to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %inputq, align 4
  %cmp.i.i185 = icmp eq ptr %81, %inputq
  %tobool.not.i187221 = icmp eq ptr %81, null
  %tobool.not.i187 = or i1 %cmp.i.i185, %tobool.not.i187221
  br i1 %tobool.not.i187, label %if.else.__skb_dequeue.exit193_crit_edge, label %if.then.i192

if.else.__skb_dequeue.exit193_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_dequeue.exit193

if.then.i192:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %qlen.i.i188 = getelementptr inbounds %struct.sk_buff_head, ptr %inputq, i32 0, i32 1
  %82 = ptrtoint ptr %qlen.i.i188 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %qlen.i.i188, align 4
  %sub.i.i189 = add i32 %83, -1
  store volatile i32 %sub.i.i189, ptr %qlen.i.i188, align 4
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %81, align 8
  %prev9.i.i190 = getelementptr inbounds %struct.anon.83, ptr %81, i32 0, i32 1
  %86 = ptrtoint ptr %prev9.i.i190 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev9.i.i190, align 4
  store ptr null, ptr %prev9.i.i190, align 4
  store ptr null, ptr %81, align 8
  %prev17.i.i191 = getelementptr inbounds %struct.anon.83, ptr %85, i32 0, i32 1
  %88 = ptrtoint ptr %prev17.i.i191 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %87, ptr %prev17.i.i191, align 4
  %89 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %85, ptr %87, align 8
  br label %__skb_dequeue.exit193

__skb_dequeue.exit193:                            ; preds = %if.then.i192, %if.else.__skb_dequeue.exit193_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #9
  %prev.i.i194 = getelementptr inbounds %struct.sk_buff_list, ptr %inputq, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i.i194 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i.i194, align 4
  %92 = ptrtoint ptr %_skb.0227 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %inputq, ptr %_skb.0227, align 8
  %93 = ptrtoint ptr %prev9.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %91, ptr %prev9.i, align 4
  store volatile ptr %_skb.0227, ptr %prev.i.i194, align 4
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %_skb.0227, ptr %91, align 4
  %qlen.i.i.i196 = getelementptr inbounds %struct.sk_buff_head, ptr %inputq, i32 0, i32 1
  %95 = ptrtoint ptr %qlen.i.i.i196 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %qlen.i.i.i196, align 4
  %add.i.i.i197 = add i32 %96, 1
  store volatile i32 %add.i.i.i197, ptr %qlen.i.i.i196, align 4
  br label %if.end59

if.end59:                                         ; preds = %__skb_dequeue.exit193, %if.then57
  %97 = ptrtoint ptr %defq to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %defq, align 4
  %cmp63.not229 = icmp eq ptr %98, %defq
  br i1 %cmp63.not229, label %if.end59.cleanup_crit_edge, label %for.body65.lr.ph

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body65.lr.ph:                                 ; preds = %if.end59
  %prev.i.i214 = getelementptr inbounds %struct.sk_buff_list, ptr %inputq, i32 0, i32 1
  %qlen.i.i.i216 = getelementptr inbounds %struct.sk_buff_head, ptr %inputq, i32 0, i32 1
  br label %for.body65

for.body65:                                       ; preds = %for.inc81.for.body65_crit_edge, %for.body65.lr.ph
  %_skb.1230 = phi ptr [ %98, %for.body65.lr.ph ], [ %tmp.0231, %for.inc81.for.body65_crit_edge ]
  %99 = ptrtoint ptr %_skb.1230 to i32
  call void @__asan_load4_noabort(i32 %99)
  %tmp.0231 = load ptr, ptr %_skb.1230, align 8
  %data.i198 = getelementptr inbounds %struct.sk_buff, ptr %_skb.1230, i32 0, i32 19
  %100 = ptrtoint ptr %data.i198 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i198, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %104 = and i32 %103, 31457280
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %104)
  %cmp.i.not.i199 = icmp eq i32 %104, 12582912
  %..i200 = select i1 %cmp.i.not.i199, i32 3, i32 6, !prof !38
  %arrayidx.i.i201 = getelementptr [15 x i32], ptr %101, i32 0, i32 %..i200
  %105 = ptrtoint ptr %arrayidx.i.i201 to i32
  call void @__asan_load4_noabort(i32 %105)
  %retval.0.i202 = load i32, ptr %arrayidx.i.i201, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i202, i32 %retval.0.i)
  %cmp68.not = icmp eq i32 %retval.0.i202, %retval.0.i
  br i1 %cmp68.not, label %if.end71, label %for.body65.for.inc81_crit_edge

for.body65.for.inc81_crit_edge:                   ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc81

if.end71:                                         ; preds = %for.body65
  %106 = and i32 %103, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %106)
  %cmp.i203 = icmp eq i32 %106, 402653184
  %107 = lshr i32 %103, 19
  %shl.i.i.i.i204 = and i32 %107, 60
  %m.addr.0.idx.i205 = select i1 %cmp.i203, i32 %shl.i.i.i.i204, i32 0
  %m.addr.0.i206 = getelementptr i8, ptr %101, i32 %m.addr.0.idx.i205
  %arrayidx.i.i207 = getelementptr [15 x i32], ptr %m.addr.0.i206, i32 0, i32 4
  %108 = ptrtoint ptr %arrayidx.i.i207 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i.i207, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %19)
  %cmp73.not = icmp eq i32 %109, %19
  br i1 %cmp73.not, label %if.end76, label %if.end71.for.inc81_crit_edge

if.end71.for.inc81_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc81

if.end76:                                         ; preds = %if.end71
  %110 = and i32 %103, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool78.not = icmp eq i32 %110, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end80:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %qlen.i, align 4
  %sub.i211 = add i32 %112, -1
  store volatile i32 %sub.i211, ptr %qlen.i, align 4
  %113 = ptrtoint ptr %_skb.1230 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %_skb.1230, align 8
  %prev9.i212 = getelementptr inbounds %struct.anon.83, ptr %_skb.1230, i32 0, i32 1
  %115 = ptrtoint ptr %prev9.i212 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %prev9.i212, align 4
  store ptr null, ptr %prev9.i212, align 4
  store ptr null, ptr %_skb.1230, align 8
  %prev17.i213 = getelementptr inbounds %struct.anon.83, ptr %114, i32 0, i32 1
  %117 = ptrtoint ptr %prev17.i213 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %116, ptr %prev17.i213, align 4
  %118 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %114, ptr %116, align 8
  %119 = ptrtoint ptr %prev.i.i214 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev.i.i214, align 4
  store volatile ptr %inputq, ptr %_skb.1230, align 8
  store volatile ptr %120, ptr %prev9.i212, align 4
  store volatile ptr %_skb.1230, ptr %prev.i.i214, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %_skb.1230, ptr %120, align 4
  %122 = ptrtoint ptr %qlen.i.i.i216 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %qlen.i.i.i216, align 4
  %add.i.i.i217 = add i32 %123, 1
  store volatile i32 %add.i.i.i217, ptr %qlen.i.i.i216, align 4
  br label %for.inc81

for.inc81:                                        ; preds = %if.end80, %if.end71.for.inc81_crit_edge, %for.body65.for.inc81_crit_edge
  %cmp63.not = icmp eq ptr %tmp.0231, %defq
  br i1 %cmp63.not, label %for.inc81.cleanup_crit_edge, label %for.inc81.for.body65_crit_edge

for.inc81.for.body65_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body65

for.inc81.cleanup_crit_edge:                      ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then.i178, %if.then52.cleanup.sink.split_crit_edge, %if.then.i163, %if.end43.cleanup.sink.split_crit_edge, %if.then.i, %if.end31.cleanup.sink.split_crit_edge
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %defq, i32 0, i32 1
  %124 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i.i, align 4
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %defq, ptr %1, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %1, i32 0, i32 1
  %127 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %125, ptr %prev10.i.i.i, align 4
  store volatile ptr %1, ptr %prev.i.i, align 4
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %1, ptr %125, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %defq, i32 0, i32 1
  %129 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i183 = add i32 %130, 1
  store volatile i32 %add.i.i.i183, ptr %qlen.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc81.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_max_win(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_min_win(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_bearer_mtu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_mtu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_set_queue_limits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_bearer_bcast_support(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_bearer_bc_xmit(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_buf_acquire(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_msg_pskb_copy(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_node_xmit(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_nit_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_clone_to_loopback(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !18, !19, !20, !22, !23, !24, !26}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @tipc_bclink_name, !1, !"tipc_bclink_name", i1 false, i1 false}
!1 = !{!"../net/tipc/bcast.c", i32 48, i32 12}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/tipc/bcast.c", i32 410, i32 5}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tipc_mcast_xmit._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @tipc_mcast_xmit._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @tipc_bcast_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../net/tipc/bcast.c", i32 699, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sysctl_tipc_bc_retruni, !12, !"sysctl_tipc_bc_retruni", i1 false, i1 false}
!12 = !{!"../net/tipc/bcast.c", i32 49, i32 15}
!13 = !{ptr @skb_queue_head_init.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2155092418, i64 2155092906, i64 2155092455, i64 2155092511, i64 2155092545, i64 2155092569, i64 2155092610, i64 2155092631, i64 2155092659, i64 2155092693}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{!"auto-init"}
!42 = !{i64 2149407227}
!43 = !{i64 2149407493}
