; ModuleID = '/llk/IR_all_yes/net/tipc/monitor.c_pt.bc'
source_filename = "../net/tipc/monitor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tipc_monitor = type { [512 x %struct.hlist_head], i32, ptr, %struct.rwlock_t, %struct.tipc_mon_domain, i16, i16, ptr, %struct.timer_list, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.tipc_mon_domain = type { i16, i16, i16, i16, i64, [64 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.tipc_peer = type { i32, ptr, %struct.hlist_node, %struct.list_head, i8, i8, i8, i8, i8 }
%struct.tipc_mon_state = type { i16, i16, i16, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.113, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.113 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.114, i32, %struct.spinlock }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.tipc_nl_msg = type { ptr, i32, i32 }
%struct.sk_buff = type { %union.anon.15, %union.anon.18, %union.anon.19, [48 x i8], %union.anon.20, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.22, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, ptr, %union.anon.17 }
%union.anon.17 = type { ptr }
%union.anon.18 = type { ptr }
%union.anon.19 = type { i64 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32, ptr }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.24, i32, i32, i32, i16, i16, %union.anon.26, i32, %union.anon.27, %union.anon.28, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.24 = type { i32 }
%union.anon.26 = type { i32 }
%union.anon.27 = type { i32 }
%union.anon.28 = type { i16 }

@tipc_max_domain_size = dso_local constant { i32, [28 x i8] } { i32 272, [28 x i8] zeroinitializer }, align 32
@tipc_mon_peer_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014tipc: Mon: unknown link %x/%u DOWN\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tipc_mon_peer_down\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/tipc/monitor.c\00", [45 x i8] zeroinitializer }, align 32
@tipc_mon_peer_down._entry_ptr = internal global ptr @tipc_mon_peer_down._entry, section ".printk_index", align 4
@tipc_mon_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mon->lock\00", [21 x i8] zeroinitializer }, align 32
@tipc_mon_create.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&mon->timer)\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tipc_genl_family = external dso_local global %struct.genl_family, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tipc_net_id = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [21 x i8] c"tipc_max_domain_size\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 105, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 456, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 667, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private constant [22 x i8] c"../net/tipc/monitor.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 676, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 45, i32 7 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 695, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 723, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 991, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @tipc_mon_peer_down._entry, ptr @tipc_mon_peer_down._entry_ptr, ptr @tipc_max_domain_size, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tipc_mon_create.__key, ptr @.str.3, ptr @tipc_mon_create.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_max_domain_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_mon_peer_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_mon_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_mon_create.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_mon_remove_peer(ptr noundef %net, i32 noundef %addr, i32 noundef %bearer_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %arrayidx.i = getelementptr %struct.tipc_net, ptr %call.i, i32 0, i32 13, i32 %bearer_id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %arrayidx.i.i = getelementptr %struct.tipc_net, ptr %call.i.i, i32 0, i32 13, i32 %bearer_id
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %self.i = getelementptr inbounds %struct.tipc_monitor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %self.i, align 4
  %lock = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 3
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #12
  %and.i.i = and i32 %addr, 511
  %arrayidx.i54 = getelementptr [512 x %struct.hlist_head], ptr %1, i32 0, i32 %and.i.i
  %6 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i54, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -8
  %tobool2.not2528.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not25.i = or i1 %tobool.not.i, %tobool2.not2528.i
  br i1 %tobool2.not25.i, label %if.end.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %peer.026.i = phi ptr [ %add.ptr10.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %peer.026.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %peer.026.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %addr)
  %cmp.i = icmp eq i32 %9, %addr
  br i1 %cmp.i, label %if.end5, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %hash.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hash.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  %add.ptr10.i = getelementptr i8, ptr %11, i32 -8
  %tobool2.not29.i = icmp eq ptr %add.ptr10.i, null
  %tobool2.not.i = or i1 %tobool6.not.i, %tobool2.not29.i
  br i1 %tobool2.not.i, label %for.inc.i.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.exit_crit_edge:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end5:                                          ; preds = %for.body.i
  %prev.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %13, i32 -16
  %list = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 3
  %call.i.i56 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i56, label %if.end.i.i, label %if.end5.list_del.exit_crit_edge

if.end5.list_del.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end5.list_del.exit_crit_edge
  %20 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %hash = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 2
  %22 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hash, align 4
  %pprev2.i.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pprev2.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %23, ptr %25, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %list_del.exit.hlist_del.exit_crit_edge, label %do.body13.i.i

list_del.exit.hlist_del.exit_crit_edge:           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  %27 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %list_del.exit.hlist_del.exit_crit_edge
  %28 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %hash, align 4
  %29 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %domain = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 1
  %30 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %domain, align 4
  tail call void @kfree(ptr noundef %31) #12
  tail call void @kfree(ptr noundef nonnull %peer.026.i) #12
  %peer_cnt = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %peer_cnt, align 8
  %dec = add i32 %33, -1
  store i32 %dec, ptr %peer_cnt, align 8
  %is_head3.i = getelementptr i8, ptr %13, i32 11
  %34 = ptrtoint ptr %is_head3.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_head3.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not4.i = icmp eq i8 %35, 0
  br i1 %tobool.not4.i, label %hlist_del.exit.while.body.i_crit_edge, label %hlist_del.exit.peer_head.exit_crit_edge

hlist_del.exit.peer_head.exit_crit_edge:          ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %peer_head.exit

hlist_del.exit.while.body.i_crit_edge:            ; preds = %hlist_del.exit
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %hlist_del.exit.while.body.i_crit_edge
  %36 = phi ptr [ %38, %while.body.i.while.body.i_crit_edge ], [ %13, %hlist_del.exit.while.body.i_crit_edge ]
  %prev.i.i58 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %prev.i.i58 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i58, align 4
  %is_head.i = getelementptr i8, ptr %38, i32 11
  %39 = ptrtoint ptr %is_head.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %is_head.i, align 1, !range !37
  %tobool.not.i59 = icmp eq i8 %40, 0
  br i1 %tobool.not.i59, label %while.body.i.while.body.i_crit_edge, label %peer_head.exit.loopexit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

peer_head.exit.loopexit:                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.le = getelementptr i8, ptr %38, i32 -16
  br label %peer_head.exit

peer_head.exit:                                   ; preds = %peer_head.exit.loopexit, %hlist_del.exit.peer_head.exit_crit_edge
  %peer.addr.0.lcssa.i = phi ptr [ %add.ptr.i55, %hlist_del.exit.peer_head.exit_crit_edge ], [ %add.ptr.i.i.le, %peer_head.exit.loopexit ]
  %cmp = icmp eq ptr %peer.addr.0.lcssa.i, %5
  br i1 %cmp, label %if.then8, label %peer_head.exit.if.end9_crit_edge

peer_head.exit.if.end9_crit_edge:                 ; preds = %peer_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %peer_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mon_update_local_domain(ptr noundef nonnull %1)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %peer_head.exit.if.end9_crit_edge
  %41 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %peer_cnt, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end9
  %i.0.i.i = phi i32 [ 0, %if.end9 ], [ %inc.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %mul.i.i = mul i32 %i.0.i.i, %i.0.i.i
  %cmp.i.i = icmp slt i32 %mul.i.i, %42
  %inc.i.i = add i32 %i.0.i.i, 1
  br i1 %cmp.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %dom_size.exit.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

dom_size.exit.i:                                  ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i)
  %cmp7.i = icmp sgt i32 %i.0.i.i, 0
  br i1 %cmp7.i, label %for.body.preheader.i, label %dom_size.exit.i.mon_update_neighbors.exit_crit_edge

dom_size.exit.i.mon_update_neighbors.exit_crit_edge: ; preds = %dom_size.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_update_neighbors.exit

for.body.preheader.i:                             ; preds = %dom_size.exit.i
  %43 = tail call i32 @llvm.smin.i32(i32 %i.0.i.i, i32 64) #12
  br label %for.body.i61

for.body.i61:                                     ; preds = %mon_apply_domain.exit.i.for.body.i61_crit_edge, %for.body.preheader.i
  %i.010.i = phi i32 [ %inc.i, %mon_apply_domain.exit.i.for.body.i61_crit_edge ], [ 0, %for.body.preheader.i ]
  %peer.addr.08.i = phi ptr [ %add.ptr.i.i65, %mon_apply_domain.exit.i.for.body.i61_crit_edge ], [ %add.ptr.i55, %for.body.preheader.i ]
  %domain.i.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.addr.08.i, i32 0, i32 1
  %44 = ptrtoint ptr %domain.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %domain.i.i, align 4
  %tobool.not.i.i60 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i60, label %for.body.i61.mon_apply_domain.exit.i_crit_edge, label %lor.lhs.false.i.i

for.body.i61.mon_apply_domain.exit.i_crit_edge:   ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_apply_domain.exit.i

lor.lhs.false.i.i:                                ; preds = %for.body.i61
  %is_up.i.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.addr.08.i, i32 0, i32 6
  %46 = ptrtoint ptr %is_up.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %is_up.i.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool1.not.i.i = icmp eq i8 %47, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.mon_apply_domain.exit.i_crit_edge, label %if.end.i.i62

lor.lhs.false.i.i.mon_apply_domain.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_apply_domain.exit.i

if.end.i.i62:                                     ; preds = %lor.lhs.false.i.i
  %applied.i.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.addr.08.i, i32 0, i32 4
  %48 = ptrtoint ptr %applied.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %applied.i.i, align 4
  %member_cnt.i.i = getelementptr inbounds %struct.tipc_mon_domain, ptr %45, i32 0, i32 3
  %49 = ptrtoint ptr %member_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %member_cnt.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp7.not.i.i = icmp eq i16 %50, 0
  br i1 %cmp7.not.i.i, label %if.end.i.i62.mon_apply_domain.exit.i_crit_edge, label %if.end.i.i62.for.body.i.i_crit_edge

if.end.i.i62.for.body.i.i_crit_edge:              ; preds = %if.end.i.i62
  br label %for.body.i.i

if.end.i.i62.mon_apply_domain.exit.i_crit_edge:   ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_apply_domain.exit.i

for.body.i.i:                                     ; preds = %if.end7.i.i.for.body.i.i_crit_edge, %if.end.i.i62.for.body.i.i_crit_edge
  %member.09.pn.i.i = phi ptr [ %member.09.i.i, %if.end7.i.i.for.body.i.i_crit_edge ], [ %peer.addr.08.i, %if.end.i.i62.for.body.i.i_crit_edge ]
  %i.08.i.i = phi i32 [ %inc10.i.i, %if.end7.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i62.for.body.i.i_crit_edge ]
  %.pn.pn.in.i.i = getelementptr inbounds %struct.tipc_peer, ptr %member.09.pn.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %.pn.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn.pn.i.i = load ptr, ptr %.pn.pn.in.i.i, align 4
  %member.09.i.i = getelementptr i8, ptr %.pn.pn.i.i, i32 -16
  %arrayidx.i.i63 = getelementptr %struct.tipc_mon_domain, ptr %45, i32 0, i32 5, i32 %i.08.i.i
  %52 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i63, align 4
  %54 = ptrtoint ptr %member.09.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %member.09.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp4.not.i.i = icmp eq i32 %53, %55
  br i1 %cmp4.not.i.i, label %if.end7.i.i, label %for.body.i.i.mon_apply_domain.exit.i_crit_edge

for.body.i.i.mon_apply_domain.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_apply_domain.exit.i

if.end7.i.i:                                      ; preds = %for.body.i.i
  %56 = ptrtoint ptr %applied.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %applied.i.i, align 4
  %inc.i5.i = add i8 %57, 1
  store i8 %inc.i5.i, ptr %applied.i.i, align 4
  %inc10.i.i = add nuw nsw i32 %i.08.i.i, 1
  %58 = ptrtoint ptr %member_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %member_cnt.i.i, align 2
  %conv.i.i = zext i16 %59 to i32
  %cmp.i6.i = icmp ult i32 %inc10.i.i, %conv.i.i
  br i1 %cmp.i6.i, label %if.end7.i.i.for.body.i.i_crit_edge, label %if.end7.i.i.mon_apply_domain.exit.i_crit_edge

if.end7.i.i.mon_apply_domain.exit.i_crit_edge:    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_apply_domain.exit.i

if.end7.i.i.for.body.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

mon_apply_domain.exit.i:                          ; preds = %if.end7.i.i.mon_apply_domain.exit.i_crit_edge, %for.body.i.i.mon_apply_domain.exit.i_crit_edge, %if.end.i.i62.mon_apply_domain.exit.i_crit_edge, %lor.lhs.false.i.i.mon_apply_domain.exit.i_crit_edge, %for.body.i61.mon_apply_domain.exit.i_crit_edge
  %prev.i.i64 = getelementptr inbounds %struct.tipc_peer, ptr %peer.addr.08.i, i32 0, i32 3, i32 1
  %60 = ptrtoint ptr %prev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i64, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %61, i32 -16
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %43
  br i1 %exitcond.not.i, label %mon_apply_domain.exit.i.mon_update_neighbors.exit_crit_edge, label %mon_apply_domain.exit.i.for.body.i61_crit_edge

mon_apply_domain.exit.i.for.body.i61_crit_edge:   ; preds = %mon_apply_domain.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i61

mon_apply_domain.exit.i.mon_update_neighbors.exit_crit_edge: ; preds = %mon_apply_domain.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_update_neighbors.exit

mon_update_neighbors.exit:                        ; preds = %mon_apply_domain.exit.i.mon_update_neighbors.exit_crit_edge, %dom_size.exit.i.mon_update_neighbors.exit_crit_edge
  %call.i66 = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %62 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %peer_cnt, align 8
  %mon_threshold.i = getelementptr inbounds %struct.tipc_net, ptr %call.i66, i32 0, i32 14
  %64 = ptrtoint ptr %mon_threshold.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mon_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp.i68 = icmp sgt i32 %63, %65
  br i1 %cmp.i68, label %mon_update_neighbors.exit.if.end23_crit_edge, label %if.then11

mon_update_neighbors.exit.if.end23_crit_edge:     ; preds = %mon_update_neighbors.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then11:                                        ; preds = %mon_update_neighbors.exit
  %list12 = getelementptr inbounds %struct.tipc_peer, ptr %5, i32 0, i32 3
  %66 = ptrtoint ptr %list12 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn78 = load ptr, ptr %list12, align 4
  %cmp15.not79 = icmp eq ptr %.pn78, %list12
  br i1 %cmp15.not79, label %if.then11.if.end23_crit_edge, label %if.then11.for.body_crit_edge

if.then11.for.body_crit_edge:                     ; preds = %if.then11
  br label %for.body

if.then11.if.end23_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then11.for.body_crit_edge
  %.pn80 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn78, %if.then11.for.body_crit_edge ]
  %domain16 = getelementptr i8, ptr %.pn80, i32 -12
  %67 = ptrtoint ptr %domain16 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %domain16, align 4
  tail call void @kfree(ptr noundef %68) #12
  %69 = ptrtoint ptr %domain16 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %domain16, align 4
  %applied = getelementptr i8, ptr %.pn80, i32 8
  %70 = ptrtoint ptr %applied to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %applied, align 4
  %71 = ptrtoint ptr %.pn80 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn = load ptr, ptr %.pn80, align 4
  %cmp15.not = icmp eq ptr %.pn, %list12
  br i1 %cmp15.not, label %for.body.if.end23_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end23:                                         ; preds = %for.body.if.end23_crit_edge, %if.then11.if.end23_crit_edge, %mon_update_neighbors.exit.if.end23_crit_edge
  %self1.i = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 2
  %72 = ptrtoint ptr %self1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %self1.i, align 4
  %.pn.in32.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.addr.0.lcssa.i, i32 0, i32 3
  %74 = ptrtoint ptr %.pn.in32.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn33.i = load ptr, ptr %.pn.in32.i, align 4
  %peer.034.i = getelementptr i8, ptr %.pn33.i, i32 -16
  %cmp.not35.i = icmp eq ptr %peer.034.i, %73
  br i1 %cmp.not35.i, label %if.end23.mon_assign_roles.exit_crit_edge, label %if.end23.for.body.i70_crit_edge

if.end23.for.body.i70_crit_edge:                  ; preds = %if.end23
  br label %for.body.i70

if.end23.mon_assign_roles.exit_crit_edge:         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_assign_roles.exit

for.body.i70:                                     ; preds = %for.inc.i73.for.body.i70_crit_edge, %if.end23.for.body.i70_crit_edge
  %peer.039.i = phi ptr [ %peer.0.i, %for.inc.i73.for.body.i70_crit_edge ], [ %peer.034.i, %if.end23.for.body.i70_crit_edge ]
  %.pn38.i = phi ptr [ %.pn.i, %for.inc.i73.for.body.i70_crit_edge ], [ %.pn33.i, %if.end23.for.body.i70_crit_edge ]
  %i.037.i = phi i32 [ %i.1.i, %for.inc.i73.for.body.i70_crit_edge ], [ 0, %if.end23.for.body.i70_crit_edge ]
  %head.addr.036.i = phi ptr [ %head.addr.1.i, %for.inc.i73.for.body.i70_crit_edge ], [ %peer.addr.0.lcssa.i, %if.end23.for.body.i70_crit_edge ]
  %is_local.i = getelementptr i8, ptr %.pn38.i, i32 12
  %75 = ptrtoint ptr %is_local.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %is_local.i, align 4
  %inc.i69 = add i32 %i.037.i, 1
  %applied.i = getelementptr inbounds %struct.tipc_peer, ptr %head.addr.036.i, i32 0, i32 4
  %76 = ptrtoint ptr %applied.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %applied.i, align 4
  %conv.i = zext i8 %77 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.037.i, i32 %conv.i)
  %cmp2.i = icmp slt i32 %i.037.i, %conv.i
  br i1 %cmp2.i, label %if.then.i, label %if.end8.i

if.then.i:                                        ; preds = %for.body.i70
  %is_head.i71 = getelementptr i8, ptr %.pn38.i, i32 11
  %78 = ptrtoint ptr %is_head.i71 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %is_head.i71, align 1
  %cmp4.i = icmp eq ptr %head.addr.036.i, %73
  br i1 %cmp4.i, label %if.then6.i, label %if.then.i.for.inc.i73_crit_edge

if.then.i.for.inc.i73_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i73

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %is_local.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %is_local.i, align 4
  br label %for.inc.i73

if.end8.i:                                        ; preds = %for.body.i70
  %is_up.i = getelementptr i8, ptr %.pn38.i, i32 10
  %80 = ptrtoint ptr %is_up.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %is_up.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i72 = icmp eq i8 %81, 0
  br i1 %tobool.not.i72, label %if.end8.i.for.inc.i73_crit_edge, label %if.end10.i

if.end8.i.for.inc.i73_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i73

if.end10.i:                                       ; preds = %if.end8.i
  %is_head11.i = getelementptr i8, ptr %.pn38.i, i32 11
  %82 = ptrtoint ptr %is_head11.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %is_head11.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool12.not.i = icmp eq i8 %83, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.mon_assign_roles.exit_crit_edge

if.end10.i.mon_assign_roles.exit_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_assign_roles.exit

if.end14.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %is_head11.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %is_head11.i, align 1
  br label %for.inc.i73

for.inc.i73:                                      ; preds = %if.end14.i, %if.end8.i.for.inc.i73_crit_edge, %if.then6.i, %if.then.i.for.inc.i73_crit_edge
  %head.addr.1.i = phi ptr [ %73, %if.then6.i ], [ %head.addr.036.i, %if.then.i.for.inc.i73_crit_edge ], [ %peer.039.i, %if.end14.i ], [ %head.addr.036.i, %if.end8.i.for.inc.i73_crit_edge ]
  %i.1.i = phi i32 [ %inc.i69, %if.then6.i ], [ %inc.i69, %if.then.i.for.inc.i73_crit_edge ], [ 0, %if.end14.i ], [ %inc.i69, %if.end8.i.for.inc.i73_crit_edge ]
  %.pn.in.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.039.i, i32 0, i32 3
  %85 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %peer.0.i = getelementptr i8, ptr %.pn.i, i32 -16
  %cmp.not.i = icmp eq ptr %peer.0.i, %73
  br i1 %cmp.not.i, label %for.inc.i73.mon_assign_roles.exit_crit_edge, label %for.inc.i73.for.body.i70_crit_edge

for.inc.i73.for.body.i70_crit_edge:               ; preds = %for.inc.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i70

for.inc.i73.mon_assign_roles.exit_crit_edge:      ; preds = %for.inc.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_assign_roles.exit

mon_assign_roles.exit:                            ; preds = %for.inc.i73.mon_assign_roles.exit_crit_edge, %if.end10.i.mon_assign_roles.exit_crit_edge, %if.end23.mon_assign_roles.exit_crit_edge
  %list_gen.i = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 5
  %86 = ptrtoint ptr %list_gen.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %list_gen.i, align 8
  %inc17.i = add i16 %87, 1
  store i16 %inc17.i, ptr %list_gen.i, align 8
  br label %exit

exit:                                             ; preds = %mon_assign_roles.exit, %for.inc.i.exit_crit_edge, %if.end.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mon_update_local_domain(ptr nocapture noundef %mon) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %self1 = getelementptr inbounds %struct.tipc_monitor, ptr %mon, i32 0, i32 2
  %0 = ptrtoint ptr %self1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self1, align 4
  %domain = getelementptr inbounds %struct.tipc_peer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 4
  %up_map = getelementptr inbounds %struct.tipc_mon_domain, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %up_map to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %up_map, align 8
  %peer_cnt = getelementptr inbounds %struct.tipc_monitor, ptr %mon, i32 0, i32 1
  %6 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %peer_cnt, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %i.0.i = phi i32 [ 0, %entry ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %mul.i = mul i32 %i.0.i, %i.0.i
  %cmp.i = icmp slt i32 %mul.i, %7
  %inc.i = add i32 %i.0.i, 1
  br i1 %cmp.i, label %while.cond.i.while.cond.i_crit_edge, label %dom_size.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

dom_size.exit:                                    ; preds = %while.cond.i
  %cache2 = getelementptr inbounds %struct.tipc_monitor, ptr %mon, i32 0, i32 4
  %8 = tail call i32 @llvm.smin.i32(i32 %i.0.i, i32 64) #12
  %9 = trunc i32 %8 to i16
  %conv = add i16 %9, -1
  %conv3 = trunc i16 %conv to i8
  %applied = getelementptr inbounds %struct.tipc_peer, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %applied to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv3, ptr %applied, align 4
  %mul.i103 = shl i16 %conv, 2
  %add.i = add i16 %mul.i103, 16
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %add.i, ptr %3, align 8
  %member_cnt6 = getelementptr inbounds %struct.tipc_mon_domain, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %member_cnt6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %member_cnt6, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %conv)
  %cmp = icmp ne i16 %13, %conv
  %14 = ptrtoint ptr %member_cnt6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %member_cnt6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %cmp13108.not = icmp eq i16 %conv, 0
  br i1 %cmp13108.not, label %dom_size.exit.for.end_crit_edge, label %for.body.preheader

dom_size.exit.for.end_crit_edge:                  ; preds = %dom_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %dom_size.exit
  %wide.trip.count = zext i16 %conv to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %diff.0.in111 = phi i1 [ %cmp, %for.body.preheader ], [ %or102, %for.body.for.body_crit_edge ]
  %peer.0109 = phi ptr [ %1, %for.body.preheader ], [ %add.ptr.i, %for.body.for.body_crit_edge ]
  %list.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.0109, i32 0, i32 3
  %15 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 -16
  %arrayidx = getelementptr %struct.tipc_mon_domain, ptr %3, i32 0, i32 5, i32 %indvars.iv
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp16 = icmp ne i32 %18, %20
  %or102 = or i1 %diff.0.in111, %cmp16
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx, align 4
  %is_up = getelementptr i8, ptr %16, i32 10
  %22 = ptrtoint ptr %is_up to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_up, align 2, !range !37
  %sh_prom.i = zext i32 %indvars.iv to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %neg.i = xor i64 %shl.i, -1
  %24 = ptrtoint ptr %up_map to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %up_map, align 8
  %and.i = and i64 %25, %neg.i
  %conv.i104 = zext i8 %23 to i64
  %shl2.i = shl nuw i64 %conv.i104, %sh_prom.i
  %or.i = or i64 %and.i, %shl2.i
  store i64 %or.i, ptr %up_map, align 8
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i, align 4
  %arrayidx33 = getelementptr %struct.tipc_monitor, ptr %mon, i32 0, i32 4, i32 5, i32 %indvars.iv
  %28 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx33, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %dom_size.exit.for.end_crit_edge
  %diff.0.in.lcssa = phi i1 [ %cmp, %dom_size.exit.for.end_crit_edge ], [ %or102, %for.body.for.end_crit_edge ]
  %29 = ptrtoint ptr %up_map to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %up_map, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %5)
  %cmp35 = icmp ne i64 %30, %5
  %or39101 = or i1 %diff.0.in.lcssa, %cmp35
  br i1 %or39101, label %if.end, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.end
  %dom_gen = getelementptr inbounds %struct.tipc_monitor, ptr %mon, i32 0, i32 6
  %31 = ptrtoint ptr %dom_gen to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dom_gen, align 2
  %inc43 = add i16 %32, 1
  store i16 %inc43, ptr %dom_gen, align 2
  %gen = getelementptr inbounds %struct.tipc_mon_domain, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %gen to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %inc43, ptr %gen, align 2
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %3, align 8
  %36 = ptrtoint ptr %cache2 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %cache2, align 8
  %37 = load i16, ptr %gen, align 2
  %gen49 = getelementptr inbounds %struct.tipc_monitor, ptr %mon, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %gen49 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %gen49, align 2
  %member_cnt51 = getelementptr inbounds %struct.tipc_monitor, ptr %mon, i32 0, i32 4, i32 3
  %39 = ptrtoint ptr %member_cnt51 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv, ptr %member_cnt51, align 2
  %40 = ptrtoint ptr %up_map to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %up_map, align 8
  %up_map54 = getelementptr inbounds %struct.tipc_monitor, ptr %mon, i32 0, i32 4, i32 4
  %42 = ptrtoint ptr %up_map54 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %up_map54, align 8
  %43 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %domain, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %is_up.i = getelementptr inbounds %struct.tipc_peer, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %is_up.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %is_up.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool1.not.i = icmp eq i8 %46, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %47 = ptrtoint ptr %applied to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %applied, align 4
  %member_cnt.i = getelementptr inbounds %struct.tipc_mon_domain, ptr %44, i32 0, i32 3
  %48 = ptrtoint ptr %member_cnt.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %member_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp7.not.i = icmp eq i16 %49, 0
  br i1 %cmp7.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %member.09.pn.i = phi ptr [ %member.09.i, %if.end7.i.for.body.i_crit_edge ], [ %1, %if.end.i.for.body.i_crit_edge ]
  %i.08.i = phi i32 [ %inc10.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %.pn.pn.in.i = getelementptr inbounds %struct.tipc_peer, ptr %member.09.pn.i, i32 0, i32 3
  %50 = ptrtoint ptr %.pn.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn.pn.i = load ptr, ptr %.pn.pn.in.i, align 4
  %member.09.i = getelementptr i8, ptr %.pn.pn.i, i32 -16
  %arrayidx.i = getelementptr %struct.tipc_mon_domain, ptr %44, i32 0, i32 5, i32 %i.08.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i, align 4
  %53 = ptrtoint ptr %member.09.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %member.09.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp4.not.i = icmp eq i32 %52, %54
  br i1 %cmp4.not.i, label %if.end7.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i:                                        ; preds = %for.body.i
  %55 = ptrtoint ptr %applied to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %applied, align 4
  %inc.i105 = add i8 %56, 1
  store i8 %inc.i105, ptr %applied, align 4
  %inc10.i = add nuw nsw i32 %i.08.i, 1
  %57 = ptrtoint ptr %member_cnt.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %member_cnt.i, align 2
  %conv.i106 = zext i16 %58 to i32
  %cmp.i107 = icmp ult i32 %inc10.i, %conv.i106
  br i1 %cmp.i107, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cleanup:                                          ; preds = %if.end7.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mon_assign_roles(ptr nocapture noundef %mon, ptr noundef readonly %head) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %self1 = getelementptr inbounds %struct.tipc_monitor, ptr %mon, i32 0, i32 2
  %0 = ptrtoint ptr %self1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self1, align 4
  %.pn.in32 = getelementptr inbounds %struct.tipc_peer, ptr %head, i32 0, i32 3
  %2 = ptrtoint ptr %.pn.in32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn33 = load ptr, ptr %.pn.in32, align 4
  %peer.034 = getelementptr i8, ptr %.pn33, i32 -16
  %cmp.not35 = icmp eq ptr %peer.034, %1
  br i1 %cmp.not35, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %peer.039 = phi ptr [ %peer.0, %for.inc.for.body_crit_edge ], [ %peer.034, %entry.for.body_crit_edge ]
  %.pn38 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn33, %entry.for.body_crit_edge ]
  %i.037 = phi i32 [ %i.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %head.addr.036 = phi ptr [ %head.addr.1, %for.inc.for.body_crit_edge ], [ %head, %entry.for.body_crit_edge ]
  %is_local = getelementptr i8, ptr %.pn38, i32 12
  %3 = ptrtoint ptr %is_local to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %is_local, align 4
  %inc = add i32 %i.037, 1
  %applied = getelementptr inbounds %struct.tipc_peer, ptr %head.addr.036, i32 0, i32 4
  %4 = ptrtoint ptr %applied to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %applied, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.037, i32 %conv)
  %cmp2 = icmp slt i32 %i.037, %conv
  br i1 %cmp2, label %if.then, label %if.end8

if.then:                                          ; preds = %for.body
  %is_head = getelementptr i8, ptr %.pn38, i32 11
  %6 = ptrtoint ptr %is_head to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %is_head, align 1
  %cmp4 = icmp eq ptr %head.addr.036, %1
  br i1 %cmp4, label %if.then6, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %is_local to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %is_local, align 4
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %is_up = getelementptr i8, ptr %.pn38, i32 10
  %8 = ptrtoint ptr %is_up to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_up, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end8.for.inc_crit_edge, label %if.end10

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end10:                                         ; preds = %if.end8
  %is_head11 = getelementptr i8, ptr %.pn38, i32 11
  %10 = ptrtoint ptr %is_head11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_head11, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp eq i8 %11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %is_head11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %is_head11, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %if.end8.for.inc_crit_edge, %if.then6, %if.then.for.inc_crit_edge
  %head.addr.1 = phi ptr [ %1, %if.then6 ], [ %head.addr.036, %if.then.for.inc_crit_edge ], [ %peer.039, %if.end14 ], [ %head.addr.036, %if.end8.for.inc_crit_edge ]
  %i.1 = phi i32 [ %inc, %if.then6 ], [ %inc, %if.then.for.inc_crit_edge ], [ 0, %if.end14 ], [ %inc, %if.end8.for.inc_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.tipc_peer, ptr %peer.039, i32 0, i32 3
  %13 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn.in, align 4
  %peer.0 = getelementptr i8, ptr %.pn, i32 -16
  %cmp.not = icmp eq ptr %peer.0, %1
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end10.for.end_crit_edge, %entry.for.end_crit_edge
  %list_gen = getelementptr inbounds %struct.tipc_monitor, ptr %mon, i32 0, i32 5
  %14 = ptrtoint ptr %list_gen to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %list_gen, align 8
  %inc17 = add i16 %15, 1
  store i16 %inc17, ptr %list_gen, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_mon_peer_up(ptr noundef %net, i32 noundef %addr, i32 noundef %bearer_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %arrayidx.i = getelementptr %struct.tipc_net, ptr %call.i, i32 0, i32 13, i32 %bearer_id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %arrayidx.i.i = getelementptr %struct.tipc_net, ptr %call.i.i, i32 0, i32 13, i32 %bearer_id
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %self.i = getelementptr inbounds %struct.tipc_monitor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %self.i, align 4
  %lock = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 3
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #12
  %and.i.i = and i32 %addr, 511
  %arrayidx.i17 = getelementptr [512 x %struct.hlist_head], ptr %1, i32 0, i32 %and.i.i
  %6 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i17, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -8
  %tobool2.not2528.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not25.i = or i1 %tobool.not.i, %tobool2.not2528.i
  br i1 %tobool2.not25.i, label %entry.land.lhs.true_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %peer.026.i = phi ptr [ %add.ptr10.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %entry.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %peer.026.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %peer.026.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %addr)
  %cmp.i = icmp eq i32 %9, %addr
  br i1 %cmp.i, label %for.body.i.if.end_crit_edge, label %for.inc.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.inc.i:                                        ; preds = %for.body.i
  %hash.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hash.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  %add.ptr10.i = getelementptr i8, ptr %11, i32 -8
  %tobool2.not29.i = icmp eq ptr %add.ptr10.i, null
  %tobool2.not.i = or i1 %tobool6.not.i, %tobool2.not29.i
  br i1 %tobool2.not.i, label %for.inc.i.land.lhs.true_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.land.lhs.true_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.inc.i.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %self1.i = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %self1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %self1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 2848, i32 noundef 32) #15
  %tobool.not.i18 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i18, label %land.lhs.true.exit_crit_edge, label %if.end.i

land.lhs.true.exit_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end.i:                                         ; preds = %land.lhs.true
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %addr, ptr %call7.i.i.i, align 8
  %list.i = getelementptr inbounds %struct.tipc_peer, ptr %call7.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.tipc_peer, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list.i, ptr %prev.i.i, align 4
  %hash.i19 = getelementptr inbounds %struct.tipc_peer, ptr %call7.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i17, align 4
  %20 = ptrtoint ptr %hash.i19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %19, ptr %hash.i19, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.end.i.hlist_add_head.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %hash.i19, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.end.i.hlist_add_head.exit.i_crit_edge
  %22 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %hash.i19, ptr %arrayidx.i17, align 4
  %pprev34.i.i = getelementptr inbounds %struct.tipc_peer, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %arrayidx.i17, ptr %pprev34.i.i, align 4
  %list4.i = getelementptr inbounds %struct.tipc_peer, ptr %13, i32 0, i32 3
  %24 = ptrtoint ptr %list4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn60.i = load ptr, ptr %list4.i, align 4
  %cmp.not62.i = icmp eq ptr %.pn60.i, %list4.i
  br i1 %cmp.not62.i, label %hlist_add_head.exit.i.for.end.i_crit_edge, label %hlist_add_head.exit.i.for.body.i22_crit_edge

hlist_add_head.exit.i.for.body.i22_crit_edge:     ; preds = %hlist_add_head.exit.i
  br label %for.body.i22

hlist_add_head.exit.i.for.end.i_crit_edge:        ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i22:                                     ; preds = %if.end22.i.for.body.i22_crit_edge, %hlist_add_head.exit.i.for.body.i22_crit_edge
  %.pn64.i = phi ptr [ %.pn.i, %if.end22.i.for.body.i22_crit_edge ], [ %.pn60.i, %hlist_add_head.exit.i.for.body.i22_crit_edge ]
  %prev.063.i = phi ptr [ %cur.065.i, %if.end22.i.for.body.i22_crit_edge ], [ %13, %hlist_add_head.exit.i.for.body.i22_crit_edge ]
  %cur.065.i = getelementptr i8, ptr %.pn64.i, i32 -16
  %25 = ptrtoint ptr %prev.063.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prev.063.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %addr)
  %cmp8.i = icmp ult i32 %26, %addr
  %27 = ptrtoint ptr %cur.065.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur.065.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %addr)
  %cmp10.i = icmp ugt i32 %28, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp20.i = icmp ugt i32 %26, %28
  br i1 %cmp8.i, label %land.lhs.true.i, label %if.end12.thread.i

land.lhs.true.i:                                  ; preds = %for.body.i22
  %or.cond = select i1 %cmp10.i, i1 true, i1 %cmp20.i
  br i1 %or.cond, label %land.lhs.true.i.for.end.i_crit_edge, label %land.lhs.true.i.if.end22.i_crit_edge

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end12.thread.i:                                ; preds = %for.body.i22
  %or.cond36 = select i1 %cmp10.i, i1 %cmp20.i, i1 false
  br i1 %or.cond36, label %if.end12.thread.i.for.end.i_crit_edge, label %if.end12.thread.i.if.end22.i_crit_edge

if.end12.thread.i.if.end22.i_crit_edge:           ; preds = %if.end12.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.end12.thread.i.for.end.i_crit_edge:            ; preds = %if.end12.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end22.i:                                       ; preds = %if.end12.thread.i.if.end22.i_crit_edge, %land.lhs.true.i.if.end22.i_crit_edge
  %29 = ptrtoint ptr %.pn64.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i = load ptr, ptr %.pn64.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %list4.i
  br i1 %cmp.not.i, label %if.end22.i.for.end.i_crit_edge, label %if.end22.i.for.body.i22_crit_edge

if.end22.i.for.body.i22_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i22

if.end22.i.for.end.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %if.end22.i.for.end.i_crit_edge, %if.end12.thread.i.for.end.i_crit_edge, %land.lhs.true.i.for.end.i_crit_edge, %hlist_add_head.exit.i.for.end.i_crit_edge
  %.pn.lcssa.i = phi ptr [ %list4.i, %hlist_add_head.exit.i.for.end.i_crit_edge ], [ %.pn64.i, %if.end12.thread.i.for.end.i_crit_edge ], [ %list4.i, %if.end22.i.for.end.i_crit_edge ], [ %.pn64.i, %land.lhs.true.i.for.end.i_crit_edge ]
  %prev.i57.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i57.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i57.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %31, ptr noundef %.pn.lcssa.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.list_add_tail.exit.i_crit_edge

for.end.i.list_add_tail.exit.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %prev.i57.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list.i, ptr %prev.i57.i, align 4
  %33 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %.pn.lcssa.i, ptr %list.i, align 8
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %list.i, ptr %31, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.end.i.list_add_tail.exit.i_crit_edge
  %peer_cnt.i = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %peer_cnt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %peer_cnt.i, align 8
  %inc.i = add i32 %37, 1
  store i32 %inc.i, ptr %peer_cnt.i, align 8
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i.while.cond.i.i.i_crit_edge, %list_add_tail.exit.i
  %i.0.i.i.i = phi i32 [ 0, %list_add_tail.exit.i ], [ %inc.i.i.i, %while.cond.i.i.i.while.cond.i.i.i_crit_edge ]
  %mul.i.i.i = mul i32 %i.0.i.i.i, %i.0.i.i.i
  %cmp.i.i.i = icmp slt i32 %mul.i.i.i, %inc.i
  %inc.i.i.i = add i32 %i.0.i.i.i, 1
  br i1 %cmp.i.i.i, label %while.cond.i.i.i.while.cond.i.i.i_crit_edge, label %dom_size.exit.i.i

while.cond.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.i

dom_size.exit.i.i:                                ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i.i)
  %cmp7.i.i = icmp sgt i32 %i.0.i.i.i, 0
  br i1 %cmp7.i.i, label %for.body.preheader.i.i, label %dom_size.exit.i.i.if.end_crit_edge

dom_size.exit.i.i.if.end_crit_edge:               ; preds = %dom_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.preheader.i.i:                           ; preds = %dom_size.exit.i.i
  %38 = tail call i32 @llvm.smin.i32(i32 %i.0.i.i.i, i32 64) #12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %mon_apply_domain.exit.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.010.i.i = phi i32 [ %inc.i.i, %mon_apply_domain.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %peer.addr.08.i.i = phi ptr [ %add.ptr.i.i.i, %mon_apply_domain.exit.i.i.for.body.i.i_crit_edge ], [ %call7.i.i.i, %for.body.preheader.i.i ]
  %domain.i.i.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.addr.08.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %domain.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %domain.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.mon_apply_domain.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

for.body.i.i.mon_apply_domain.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_apply_domain.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body.i.i
  %is_up.i.i.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.addr.08.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %is_up.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_up.i.i.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool1.not.i.i.i = icmp eq i8 %42, 0
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.mon_apply_domain.exit.i.i_crit_edge, label %if.end.i.i58.i

lor.lhs.false.i.i.i.mon_apply_domain.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_apply_domain.exit.i.i

if.end.i.i58.i:                                   ; preds = %lor.lhs.false.i.i.i
  %applied.i.i.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.addr.08.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %applied.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %applied.i.i.i, align 4
  %member_cnt.i.i.i = getelementptr inbounds %struct.tipc_mon_domain, ptr %40, i32 0, i32 3
  %44 = ptrtoint ptr %member_cnt.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %member_cnt.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp7.not.i.i.i = icmp eq i16 %45, 0
  br i1 %cmp7.not.i.i.i, label %if.end.i.i58.i.mon_apply_domain.exit.i.i_crit_edge, label %if.end.i.i58.i.for.body.i.i.i_crit_edge

if.end.i.i58.i.for.body.i.i.i_crit_edge:          ; preds = %if.end.i.i58.i
  br label %for.body.i.i.i

if.end.i.i58.i.mon_apply_domain.exit.i.i_crit_edge: ; preds = %if.end.i.i58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_apply_domain.exit.i.i

for.body.i.i.i:                                   ; preds = %if.end7.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i58.i.for.body.i.i.i_crit_edge
  %member.09.pn.i.i.i = phi ptr [ %member.09.i.i.i, %if.end7.i.i.i.for.body.i.i.i_crit_edge ], [ %peer.addr.08.i.i, %if.end.i.i58.i.for.body.i.i.i_crit_edge ]
  %i.08.i.i.i = phi i32 [ %inc10.i.i.i, %if.end7.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.i58.i.for.body.i.i.i_crit_edge ]
  %.pn.pn.in.i.i.i = getelementptr inbounds %struct.tipc_peer, ptr %member.09.pn.i.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %.pn.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.pn.i.i.i = load ptr, ptr %.pn.pn.in.i.i.i, align 4
  %member.09.i.i.i = getelementptr i8, ptr %.pn.pn.i.i.i, i32 -16
  %arrayidx.i.i.i = getelementptr %struct.tipc_mon_domain, ptr %40, i32 0, i32 5, i32 %i.08.i.i.i
  %47 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i.i, align 4
  %49 = ptrtoint ptr %member.09.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %member.09.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp4.not.i.i.i = icmp eq i32 %48, %50
  br i1 %cmp4.not.i.i.i, label %if.end7.i.i.i, label %for.body.i.i.i.mon_apply_domain.exit.i.i_crit_edge

for.body.i.i.i.mon_apply_domain.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_apply_domain.exit.i.i

if.end7.i.i.i:                                    ; preds = %for.body.i.i.i
  %51 = ptrtoint ptr %applied.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %applied.i.i.i, align 4
  %inc.i5.i.i = add i8 %52, 1
  store i8 %inc.i5.i.i, ptr %applied.i.i.i, align 4
  %inc10.i.i.i = add nuw nsw i32 %i.08.i.i.i, 1
  %53 = ptrtoint ptr %member_cnt.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %member_cnt.i.i.i, align 2
  %conv.i.i.i = zext i16 %54 to i32
  %cmp.i6.i.i = icmp ult i32 %inc10.i.i.i, %conv.i.i.i
  br i1 %cmp.i6.i.i, label %if.end7.i.i.i.for.body.i.i.i_crit_edge, label %if.end7.i.i.i.mon_apply_domain.exit.i.i_crit_edge

if.end7.i.i.i.mon_apply_domain.exit.i.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_apply_domain.exit.i.i

if.end7.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

mon_apply_domain.exit.i.i:                        ; preds = %if.end7.i.i.i.mon_apply_domain.exit.i.i_crit_edge, %for.body.i.i.i.mon_apply_domain.exit.i.i_crit_edge, %if.end.i.i58.i.mon_apply_domain.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.mon_apply_domain.exit.i.i_crit_edge, %for.body.i.i.mon_apply_domain.exit.i.i_crit_edge
  %prev.i.i.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.addr.08.i.i, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %56, i32 -16
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %38
  br i1 %exitcond.not.i.i, label %mon_apply_domain.exit.i.i.if.end_crit_edge, label %mon_apply_domain.exit.i.i.for.body.i.i_crit_edge

mon_apply_domain.exit.i.i.for.body.i.i_crit_edge: ; preds = %mon_apply_domain.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

mon_apply_domain.exit.i.i.if.end_crit_edge:       ; preds = %mon_apply_domain.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %mon_apply_domain.exit.i.i.if.end_crit_edge, %dom_size.exit.i.i.if.end_crit_edge, %for.body.i.if.end_crit_edge
  %peer.0 = phi ptr [ %call7.i.i.i, %dom_size.exit.i.i.if.end_crit_edge ], [ %call7.i.i.i, %mon_apply_domain.exit.i.i.if.end_crit_edge ], [ %peer.026.i, %for.body.i.if.end_crit_edge ]
  %is_up = getelementptr inbounds %struct.tipc_peer, ptr %peer.0, i32 0, i32 6
  %57 = ptrtoint ptr %is_up to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %is_up, align 2
  %is_head3.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.0, i32 0, i32 7
  %58 = ptrtoint ptr %is_head3.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %is_head3.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not4.i = icmp eq i8 %59, 0
  br i1 %tobool.not4.i, label %if.end.while.body.i_crit_edge, label %if.end.peer_head.exit_crit_edge

if.end.peer_head.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %peer_head.exit

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %peer.addr.05.i = phi ptr [ %add.ptr.i.i, %while.body.i.while.body.i_crit_edge ], [ %peer.0, %if.end.while.body.i_crit_edge ]
  %prev.i.i23 = getelementptr inbounds %struct.tipc_peer, ptr %peer.addr.05.i, i32 0, i32 3, i32 1
  %60 = ptrtoint ptr %prev.i.i23 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i23, align 4
  %add.ptr.i.i = getelementptr i8, ptr %61, i32 -16
  %is_head.i = getelementptr i8, ptr %61, i32 11
  %62 = ptrtoint ptr %is_head.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_head.i, align 1, !range !37
  %tobool.not.i24 = icmp eq i8 %63, 0
  br i1 %tobool.not.i24, label %while.body.i.while.body.i_crit_edge, label %while.body.i.peer_head.exit_crit_edge

while.body.i.peer_head.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %peer_head.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

peer_head.exit:                                   ; preds = %while.body.i.peer_head.exit_crit_edge, %if.end.peer_head.exit_crit_edge
  %peer.addr.0.lcssa.i = phi ptr [ %peer.0, %if.end.peer_head.exit_crit_edge ], [ %add.ptr.i.i, %while.body.i.peer_head.exit_crit_edge ]
  %cmp = icmp eq ptr %peer.addr.0.lcssa.i, %5
  br i1 %cmp, label %if.then5, label %peer_head.exit.if.end6_crit_edge

peer_head.exit.if.end6_crit_edge:                 ; preds = %peer_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %peer_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mon_update_local_domain(ptr noundef %1)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %peer_head.exit.if.end6_crit_edge
  %self1.i25 = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %self1.i25 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %self1.i25, align 4
  %.pn.in32.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.addr.0.lcssa.i, i32 0, i32 3
  %66 = ptrtoint ptr %.pn.in32.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn33.i = load ptr, ptr %.pn.in32.i, align 4
  %peer.034.i = getelementptr i8, ptr %.pn33.i, i32 -16
  %cmp.not35.i = icmp eq ptr %peer.034.i, %65
  br i1 %cmp.not35.i, label %if.end6.mon_assign_roles.exit_crit_edge, label %if.end6.for.body.i27_crit_edge

if.end6.for.body.i27_crit_edge:                   ; preds = %if.end6
  br label %for.body.i27

if.end6.mon_assign_roles.exit_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_assign_roles.exit

for.body.i27:                                     ; preds = %for.inc.i32.for.body.i27_crit_edge, %if.end6.for.body.i27_crit_edge
  %peer.039.i = phi ptr [ %peer.0.i, %for.inc.i32.for.body.i27_crit_edge ], [ %peer.034.i, %if.end6.for.body.i27_crit_edge ]
  %.pn38.i = phi ptr [ %.pn.i30, %for.inc.i32.for.body.i27_crit_edge ], [ %.pn33.i, %if.end6.for.body.i27_crit_edge ]
  %i.037.i = phi i32 [ %i.1.i, %for.inc.i32.for.body.i27_crit_edge ], [ 0, %if.end6.for.body.i27_crit_edge ]
  %head.addr.036.i = phi ptr [ %head.addr.1.i, %for.inc.i32.for.body.i27_crit_edge ], [ %peer.addr.0.lcssa.i, %if.end6.for.body.i27_crit_edge ]
  %is_local.i = getelementptr i8, ptr %.pn38.i, i32 12
  %67 = ptrtoint ptr %is_local.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %is_local.i, align 4
  %inc.i26 = add i32 %i.037.i, 1
  %applied.i = getelementptr inbounds %struct.tipc_peer, ptr %head.addr.036.i, i32 0, i32 4
  %68 = ptrtoint ptr %applied.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %applied.i, align 4
  %conv.i = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.037.i, i32 %conv.i)
  %cmp2.i = icmp slt i32 %i.037.i, %conv.i
  br i1 %cmp2.i, label %if.then.i, label %if.end8.i

if.then.i:                                        ; preds = %for.body.i27
  %is_head.i28 = getelementptr i8, ptr %.pn38.i, i32 11
  %70 = ptrtoint ptr %is_head.i28 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %is_head.i28, align 1
  %cmp4.i = icmp eq ptr %head.addr.036.i, %65
  br i1 %cmp4.i, label %if.then6.i, label %if.then.i.for.inc.i32_crit_edge

if.then.i.for.inc.i32_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i32

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %is_local.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %is_local.i, align 4
  br label %for.inc.i32

if.end8.i:                                        ; preds = %for.body.i27
  %is_up.i = getelementptr i8, ptr %.pn38.i, i32 10
  %72 = ptrtoint ptr %is_up.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %is_up.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i29 = icmp eq i8 %73, 0
  br i1 %tobool.not.i29, label %if.end8.i.for.inc.i32_crit_edge, label %if.end10.i

if.end8.i.for.inc.i32_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i32

if.end10.i:                                       ; preds = %if.end8.i
  %is_head11.i = getelementptr i8, ptr %.pn38.i, i32 11
  %74 = ptrtoint ptr %is_head11.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %is_head11.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool12.not.i = icmp eq i8 %75, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.mon_assign_roles.exit_crit_edge

if.end10.i.mon_assign_roles.exit_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_assign_roles.exit

if.end14.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %is_head11.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %is_head11.i, align 1
  br label %for.inc.i32

for.inc.i32:                                      ; preds = %if.end14.i, %if.end8.i.for.inc.i32_crit_edge, %if.then6.i, %if.then.i.for.inc.i32_crit_edge
  %head.addr.1.i = phi ptr [ %65, %if.then6.i ], [ %head.addr.036.i, %if.then.i.for.inc.i32_crit_edge ], [ %peer.039.i, %if.end14.i ], [ %head.addr.036.i, %if.end8.i.for.inc.i32_crit_edge ]
  %i.1.i = phi i32 [ %inc.i26, %if.then6.i ], [ %inc.i26, %if.then.i.for.inc.i32_crit_edge ], [ 0, %if.end14.i ], [ %inc.i26, %if.end8.i.for.inc.i32_crit_edge ]
  %.pn.in.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.039.i, i32 0, i32 3
  %77 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn.i30 = load ptr, ptr %.pn.in.i, align 4
  %peer.0.i = getelementptr i8, ptr %.pn.i30, i32 -16
  %cmp.not.i31 = icmp eq ptr %peer.0.i, %65
  br i1 %cmp.not.i31, label %for.inc.i32.mon_assign_roles.exit_crit_edge, label %for.inc.i32.for.body.i27_crit_edge

for.inc.i32.for.body.i27_crit_edge:               ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i27

for.inc.i32.mon_assign_roles.exit_crit_edge:      ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_assign_roles.exit

mon_assign_roles.exit:                            ; preds = %for.inc.i32.mon_assign_roles.exit_crit_edge, %if.end10.i.mon_assign_roles.exit_crit_edge, %if.end6.mon_assign_roles.exit_crit_edge
  %list_gen.i = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 5
  %78 = ptrtoint ptr %list_gen.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %list_gen.i, align 8
  %inc17.i = add i16 %79, 1
  store i16 %inc17.i, ptr %list_gen.i, align 8
  br label %exit

exit:                                             ; preds = %mon_assign_roles.exit, %land.lhs.true.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_mon_peer_down(ptr noundef %net, i32 noundef %addr, i32 noundef %bearer_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %arrayidx.i = getelementptr %struct.tipc_net, ptr %call.i, i32 0, i32 13, i32 %bearer_id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %arrayidx.i.i = getelementptr %struct.tipc_net, ptr %call.i.i, i32 0, i32 13, i32 %bearer_id
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %self.i = getelementptr inbounds %struct.tipc_monitor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %self.i, align 4
  %lock = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 3
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #12
  %and.i.i = and i32 %addr, 511
  %arrayidx.i46 = getelementptr [512 x %struct.hlist_head], ptr %1, i32 0, i32 %and.i.i
  %6 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i46, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -8
  %tobool2.not2528.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not25.i = or i1 %tobool.not.i, %tobool2.not2528.i
  br i1 %tobool2.not25.i, label %if.end.do.end_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %peer.026.i = phi ptr [ %add.ptr10.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %peer.026.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %peer.026.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %addr)
  %cmp.i = icmp eq i32 %9, %addr
  br i1 %cmp.i, label %if.end6, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %hash.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hash.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  %add.ptr10.i = getelementptr i8, ptr %11, i32 -8
  %tobool2.not29.i = icmp eq ptr %add.ptr10.i, null
  %tobool2.not.i = or i1 %tobool6.not.i, %tobool2.not29.i
  br i1 %tobool2.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %addr, i32 noundef %bearer_id) #16
  br label %exit

if.end6:                                          ; preds = %for.body.i
  %applied7 = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 4
  %12 = ptrtoint ptr %applied7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %applied7, align 4
  store i8 0, ptr %applied7, align 4
  %domain = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 1
  %14 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %domain, align 4
  store ptr null, ptr %domain, align 4
  %is_head = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 7
  %16 = ptrtoint ptr %is_head to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_head, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10.not = icmp eq i8 %17, 0
  br i1 %tobool10.not, label %if.end6.if.end12_crit_edge, label %if.then11

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.end6
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp37.i.not = icmp eq i8 %13, 0
  br i1 %cmp37.i.not, label %if.then11.if.end12_crit_edge, label %for.body.lr.ph.i

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

for.body.lr.ph.i:                                 ; preds = %if.then11
  %up_map.i = getelementptr inbounds %struct.tipc_mon_domain, ptr %15, i32 0, i32 4
  br label %for.body.i48

for.body.i48:                                     ; preds = %for.inc.i50.for.body.i48_crit_edge, %for.body.lr.ph.i
  %i.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc19.i, %for.inc.i50.for.body.i48_crit_edge ]
  %member.038.i = phi ptr [ %peer.026.i, %for.body.lr.ph.i ], [ %add.ptr.i.i, %for.inc.i50.for.body.i48_crit_edge ]
  %list.i.i = getelementptr inbounds %struct.tipc_peer, ptr %member.038.i, i32 0, i32 3
  %18 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 -16
  %is_up.i = getelementptr i8, ptr %19, i32 10
  %20 = ptrtoint ptr %is_up.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_up.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i47 = icmp eq i8 %21, 0
  br i1 %tobool.not.i47, label %for.body.i48.for.inc.i50_crit_edge, label %lor.lhs.false.i

for.body.i48.for.inc.i50_crit_edge:               ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i50

lor.lhs.false.i:                                  ; preds = %for.body.i48
  %22 = ptrtoint ptr %up_map.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %up_map.i, align 8
  %shl.i.i = shl nuw i32 1, %i.039.i
  %conv.i.i = sext i32 %shl.i.i to i64
  %and.i.i49 = and i64 %23, %conv.i.i
  %sh_prom.i.i = zext i32 %i.039.i to i64
  %shr.i.i = lshr i64 %and.i.i49, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool3.not.i = icmp eq i32 %conv1.i.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.for.inc.i50_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc.i50_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i50

if.end.i:                                         ; preds = %lor.lhs.false.i
  %is_local.i = getelementptr i8, ptr %19, i32 12
  %24 = ptrtoint ptr %is_local.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_local.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool4.not.i = icmp eq i8 %25, 0
  br i1 %tobool4.not.i, label %if.then11.i, label %if.end.i.for.inc.i50_crit_edge

if.end.i.for.inc.i50_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i50

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %down_cnt.i = getelementptr i8, ptr %19, i32 9
  %26 = ptrtoint ptr %down_cnt.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %down_cnt.i, align 1
  br label %for.inc.i50

for.inc.i50:                                      ; preds = %if.then11.i, %if.end.i.for.inc.i50_crit_edge, %lor.lhs.false.i.for.inc.i50_crit_edge, %for.body.i48.for.inc.i50_crit_edge
  %inc19.i = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc19.i, %conv
  br i1 %exitcond.not.i, label %for.inc.i50.if.end12_crit_edge, label %for.inc.i50.for.body.i48_crit_edge

for.inc.i50.for.body.i48_crit_edge:               ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i48

for.inc.i50.if.end12_crit_edge:                   ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end12:                                         ; preds = %for.inc.i50.if.end12_crit_edge, %if.then11.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  tail call void @kfree(ptr noundef %15) #12
  %down_cnt = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 5
  %27 = ptrtoint ptr %down_cnt to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 0, ptr %down_cnt, align 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end12
  %peer.addr.05.i = phi ptr [ %add.ptr.i.i51, %while.body.i.while.body.i_crit_edge ], [ %peer.026.i, %if.end12 ]
  %prev.i.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.addr.05.i, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %29, i32 -16
  %is_head.i = getelementptr i8, ptr %29, i32 11
  %30 = ptrtoint ptr %is_head.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_head.i, align 1, !range !37
  %tobool.not.i52 = icmp eq i8 %31, 0
  br i1 %tobool.not.i52, label %while.body.i.while.body.i_crit_edge, label %peer_head.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

peer_head.exit:                                   ; preds = %while.body.i
  %cmp = icmp eq ptr %add.ptr.i.i51, %5
  br i1 %cmp, label %if.then16, label %peer_head.exit.if.end17_crit_edge

peer_head.exit.if.end17_crit_edge:                ; preds = %peer_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %peer_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mon_update_local_domain(ptr noundef nonnull %1)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %peer_head.exit.if.end17_crit_edge
  %self1.i = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %self1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %self1.i, align 4
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn33.i = load ptr, ptr %29, align 4
  %peer.034.i = getelementptr i8, ptr %.pn33.i, i32 -16
  %cmp.not35.i = icmp eq ptr %peer.034.i, %33
  br i1 %cmp.not35.i, label %if.end17.mon_assign_roles.exit_crit_edge, label %if.end17.for.body.i57_crit_edge

if.end17.for.body.i57_crit_edge:                  ; preds = %if.end17
  br label %for.body.i57

if.end17.mon_assign_roles.exit_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_assign_roles.exit

for.body.i57:                                     ; preds = %for.inc.i61.for.body.i57_crit_edge, %if.end17.for.body.i57_crit_edge
  %peer.039.i = phi ptr [ %peer.0.i, %for.inc.i61.for.body.i57_crit_edge ], [ %peer.034.i, %if.end17.for.body.i57_crit_edge ]
  %.pn38.i = phi ptr [ %.pn.i, %for.inc.i61.for.body.i57_crit_edge ], [ %.pn33.i, %if.end17.for.body.i57_crit_edge ]
  %i.037.i = phi i32 [ %i.1.i, %for.inc.i61.for.body.i57_crit_edge ], [ 0, %if.end17.for.body.i57_crit_edge ]
  %head.addr.036.i = phi ptr [ %head.addr.1.i, %for.inc.i61.for.body.i57_crit_edge ], [ %add.ptr.i.i51, %if.end17.for.body.i57_crit_edge ]
  %is_local.i53 = getelementptr i8, ptr %.pn38.i, i32 12
  %35 = ptrtoint ptr %is_local.i53 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %is_local.i53, align 4
  %inc.i54 = add i32 %i.037.i, 1
  %applied.i55 = getelementptr inbounds %struct.tipc_peer, ptr %head.addr.036.i, i32 0, i32 4
  %36 = ptrtoint ptr %applied.i55 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %applied.i55, align 4
  %conv.i56 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.037.i, i32 %conv.i56)
  %cmp2.i = icmp slt i32 %i.037.i, %conv.i56
  br i1 %cmp2.i, label %if.then.i, label %if.end8.i

if.then.i:                                        ; preds = %for.body.i57
  %is_head.i58 = getelementptr i8, ptr %.pn38.i, i32 11
  %38 = ptrtoint ptr %is_head.i58 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %is_head.i58, align 1
  %cmp4.i = icmp eq ptr %head.addr.036.i, %33
  br i1 %cmp4.i, label %if.then6.i, label %if.then.i.for.inc.i61_crit_edge

if.then.i.for.inc.i61_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i61

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %is_local.i53 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %is_local.i53, align 4
  br label %for.inc.i61

if.end8.i:                                        ; preds = %for.body.i57
  %is_up.i59 = getelementptr i8, ptr %.pn38.i, i32 10
  %40 = ptrtoint ptr %is_up.i59 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %is_up.i59, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i60 = icmp eq i8 %41, 0
  br i1 %tobool.not.i60, label %if.end8.i.for.inc.i61_crit_edge, label %if.end10.i

if.end8.i.for.inc.i61_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i61

if.end10.i:                                       ; preds = %if.end8.i
  %is_head11.i = getelementptr i8, ptr %.pn38.i, i32 11
  %42 = ptrtoint ptr %is_head11.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %is_head11.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool12.not.i = icmp eq i8 %43, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.mon_assign_roles.exit_crit_edge

if.end10.i.mon_assign_roles.exit_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_assign_roles.exit

if.end14.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %is_head11.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %is_head11.i, align 1
  br label %for.inc.i61

for.inc.i61:                                      ; preds = %if.end14.i, %if.end8.i.for.inc.i61_crit_edge, %if.then6.i, %if.then.i.for.inc.i61_crit_edge
  %head.addr.1.i = phi ptr [ %33, %if.then6.i ], [ %head.addr.036.i, %if.then.i.for.inc.i61_crit_edge ], [ %peer.039.i, %if.end14.i ], [ %head.addr.036.i, %if.end8.i.for.inc.i61_crit_edge ]
  %i.1.i = phi i32 [ %inc.i54, %if.then6.i ], [ %inc.i54, %if.then.i.for.inc.i61_crit_edge ], [ 0, %if.end14.i ], [ %inc.i54, %if.end8.i.for.inc.i61_crit_edge ]
  %.pn.in.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.039.i, i32 0, i32 3
  %45 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %peer.0.i = getelementptr i8, ptr %.pn.i, i32 -16
  %cmp.not.i = icmp eq ptr %peer.0.i, %33
  br i1 %cmp.not.i, label %for.inc.i61.mon_assign_roles.exit_crit_edge, label %for.inc.i61.for.body.i57_crit_edge

for.inc.i61.for.body.i57_crit_edge:               ; preds = %for.inc.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i57

for.inc.i61.mon_assign_roles.exit_crit_edge:      ; preds = %for.inc.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_assign_roles.exit

mon_assign_roles.exit:                            ; preds = %for.inc.i61.mon_assign_roles.exit_crit_edge, %if.end10.i.mon_assign_roles.exit_crit_edge, %if.end17.mon_assign_roles.exit_crit_edge
  %list_gen.i = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 5
  %46 = ptrtoint ptr %list_gen.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %list_gen.i, align 8
  %inc17.i = add i16 %47, 1
  store i16 %inc17.i, ptr %list_gen.i, align 8
  br label %exit

exit:                                             ; preds = %mon_assign_roles.exit, %do.end
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mon_identify_lost_members(ptr nocapture noundef readonly %peer, ptr nocapture noundef readonly %dom_bef, i32 noundef %applied_bef) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %applied = getelementptr inbounds %struct.tipc_peer, ptr %peer, i32 0, i32 4
  %0 = ptrtoint ptr %applied to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %applied, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %applied_bef)
  %cmp37 = icmp sgt i32 %applied_bef, 0
  br i1 %cmp37, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %domain = getelementptr inbounds %struct.tipc_peer, ptr %peer, i32 0, i32 1
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 4
  %up_map = getelementptr inbounds %struct.tipc_mon_domain, ptr %dom_bef, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool7.not = icmp eq i8 %1, 0
  %up_map13 = getelementptr inbounds %struct.tipc_mon_domain, ptr %3, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc19, %for.inc.for.body_crit_edge ]
  %member.038 = phi ptr [ %peer, %for.body.lr.ph ], [ %add.ptr.i, %for.inc.for.body_crit_edge ]
  %list.i = getelementptr inbounds %struct.tipc_peer, ptr %member.038, i32 0, i32 3
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -16
  %is_up = getelementptr i8, ptr %5, i32 10
  %6 = ptrtoint ptr %is_up to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_up, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %8 = ptrtoint ptr %up_map to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %up_map, align 8
  %shl.i = shl nuw i32 1, %i.039
  %conv.i = sext i32 %shl.i to i64
  %and.i = and i64 %9, %conv.i
  %sh_prom.i = zext i32 %i.039 to i64
  %shr.i = lshr i64 %and.i, %sh_prom.i
  %conv1.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %tobool3.not = icmp eq i32 %conv1.i, 0
  br i1 %tobool3.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %is_local = getelementptr i8, ptr %5, i32 12
  %10 = ptrtoint ptr %is_local to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_local, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %i.039, i32 %conv)
  %cmp9 = icmp ugt i32 %i.039, %conv
  %or.cond = select i1 %tobool7.not, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %down_cnt = getelementptr i8, ptr %5, i32 9
  %12 = ptrtoint ptr %down_cnt to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %down_cnt, align 1
  br label %for.inc

if.end12:                                         ; preds = %if.end6
  %13 = ptrtoint ptr %up_map13 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %up_map13, align 8
  %and.i33 = and i64 %14, %conv.i
  %shr.i35 = lshr i64 %and.i33, %sh_prom.i
  %conv1.i36 = trunc i64 %shr.i35 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i36)
  %tobool15.not = icmp eq i32 %conv1.i36, 0
  br i1 %tobool15.not, label %if.then16, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %down_cnt17 = getelementptr i8, ptr %5, i32 9
  %15 = ptrtoint ptr %down_cnt17 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %down_cnt17, align 1
  %inc = add i8 %16, 1
  store i8 %inc, ptr %down_cnt17, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.end12.for.inc_crit_edge, %if.then11, %if.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc19 = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc19, %applied_bef
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_mon_rcv(ptr noundef %net, ptr nocapture noundef readonly %data, i16 noundef zeroext %dlen, i32 noundef %addr, ptr nocapture noundef %state, i32 noundef %bearer_id) local_unnamed_addr #0 align 64 {
entry:
  %dom_bef = alloca %struct.tipc_mon_domain, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %arrayidx.i = getelementptr %struct.tipc_net, ptr %call.i, i32 0, i32 13, i32 %bearer_id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %dom_bef) #12
  %2 = call ptr @memset(ptr %dom_bef, i32 255, i32 272)
  %member_cnt = getelementptr inbounds %struct.tipc_mon_domain, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %member_cnt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %member_cnt, align 2
  %conv.i = zext i16 %4 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 16
  %gen = getelementptr inbounds %struct.tipc_mon_domain, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %gen to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %gen, align 2
  %ack_gen = getelementptr inbounds %struct.tipc_mon_domain, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %ack_gen to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ack_gen, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data, align 8
  %probing6 = getelementptr inbounds %struct.tipc_mon_state, ptr %state, i32 0, i32 3
  %11 = ptrtoint ptr %probing6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %probing6, align 2
  %12 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %bf.cast.not = icmp ne i8 %12, 0
  %bf.clear9 = and i8 %bf.load, -65
  %13 = ptrtoint ptr %probing6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bf.clear9, ptr %probing6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %4)
  %cmp = icmp ugt i16 %4, 64
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv11 = zext i16 %dlen to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %dlen)
  %cmp13 = icmp ugt i16 %dlen, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv11)
  %cmp19.not = icmp eq i32 %add.i, %conv11
  %or.cond = select i1 %cmp13, i1 %cmp19.not, i1 false
  %conv26 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv26)
  %cmp27.not = icmp eq i32 %add.i, %conv26
  %or.cond184 = select i1 %or.cond, i1 %cmp27.not, i1 false
  br i1 %or.cond184, label %if.end30, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %14 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %bf.cast34.not = icmp eq i8 %14, 0
  br i1 %bf.cast34.not, label %if.then35, label %if.end30.if.end43_crit_edge

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add i16 %6, -1
  %peer_gen = getelementptr inbounds %struct.tipc_mon_state, ptr %state, i32 0, i32 1
  %15 = ptrtoint ptr %peer_gen to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %sub, ptr %peer_gen, align 2
  %acked_gen38 = getelementptr inbounds %struct.tipc_mon_state, ptr %state, i32 0, i32 2
  %16 = ptrtoint ptr %acked_gen38 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %8, ptr %acked_gen38, align 2
  %bf.set42 = or i8 %bf.clear9, 16
  %17 = ptrtoint ptr %probing6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %bf.set42, ptr %probing6, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.end30.if.end43_crit_edge
  %acked_gen44 = getelementptr inbounds %struct.tipc_mon_state, ptr %state, i32 0, i32 2
  %18 = ptrtoint ptr %acked_gen44 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %acked_gen44, align 2
  %20 = sub i16 %19, %8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %tobool.not = icmp sgt i16 %20, -1
  br i1 %tobool.not, label %if.end43.if.end48_crit_edge, label %if.then46

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %acked_gen44 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %8, ptr %acked_gen44, align 2
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end43.if.end48_crit_edge
  %peer_gen49 = getelementptr inbounds %struct.tipc_mon_state, ptr %state, i32 0, i32 1
  %22 = ptrtoint ptr %peer_gen49 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %peer_gen49, align 2
  %24 = sub i16 %23, %6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool51.not = icmp slt i16 %24, 0
  %brmerge = select i1 %tobool51.not, i1 true, i1 %bf.cast.not
  br i1 %brmerge, label %if.end54, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end54:                                         ; preds = %if.end48
  %lock = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 3
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #12
  %and.i.i = and i32 %addr, 511
  %arrayidx.i178 = getelementptr [512 x %struct.hlist_head], ptr %1, i32 0, i32 %and.i.i
  %25 = ptrtoint ptr %arrayidx.i178 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i178, align 4
  %tobool.not.i = icmp eq ptr %26, null
  %add.ptr.i = getelementptr i8, ptr %26, i32 -8
  %tobool2.not2528.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not25.i = or i1 %tobool.not.i, %tobool2.not2528.i
  br i1 %tobool2.not25.i, label %if.end54.exit_crit_edge, label %if.end54.for.body.i_crit_edge

if.end54.for.body.i_crit_edge:                    ; preds = %if.end54
  br label %for.body.i

if.end54.exit_crit_edge:                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end54.for.body.i_crit_edge
  %peer.026.i = phi ptr [ %add.ptr10.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end54.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %peer.026.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %peer.026.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %addr)
  %cmp.i179 = icmp eq i32 %28, %addr
  br i1 %cmp.i179, label %lor.lhs.false57, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %hash.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 2
  %29 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hash.i, align 4
  %tobool6.not.i = icmp eq ptr %30, null
  %add.ptr10.i = getelementptr i8, ptr %30, i32 -8
  %tobool2.not29.i = icmp eq ptr %add.ptr10.i, null
  %tobool2.not.i = or i1 %tobool6.not.i, %tobool2.not29.i
  br i1 %tobool2.not.i, label %for.inc.i.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.exit_crit_edge:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

lor.lhs.false57:                                  ; preds = %for.body.i
  %is_up = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 6
  %31 = ptrtoint ptr %is_up to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_up, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool58.not = icmp eq i8 %32, 0
  br i1 %tobool58.not, label %lor.lhs.false57.exit_crit_edge, label %if.end60

lor.lhs.false57.exit_crit_edge:                   ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end60:                                         ; preds = %lor.lhs.false57
  %down_cnt = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 5
  %33 = ptrtoint ptr %down_cnt to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %down_cnt, align 1
  %34 = ptrtoint ptr %peer_gen49 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %peer_gen49, align 2
  %36 = sub i16 %35, %6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %36)
  %tobool63.not = icmp sgt i16 %36, -1
  br i1 %tobool63.not, label %if.end60.exit_crit_edge, label %if.end65

if.end60.exit_crit_edge:                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end65:                                         ; preds = %if.end60
  %37 = ptrtoint ptr %peer_gen49 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %6, ptr %peer_gen49, align 2
  %member_cnt67 = getelementptr inbounds %struct.tipc_mon_domain, ptr %dom_bef, i32 0, i32 3
  %38 = ptrtoint ptr %member_cnt67 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %member_cnt67, align 2
  %domain = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 1
  %39 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %domain, align 4
  %tobool68.not = icmp eq ptr %40, null
  br i1 %tobool68.not, label %if.end65.if.then79_crit_edge, label %if.then69

if.end65.if.then79_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then79

if.then69:                                        ; preds = %if.end65
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %40, align 8
  %conv71 = zext i16 %42 to i32
  %43 = call ptr @memcpy(ptr %dom_bef, ptr %40, i32 %conv71)
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv71)
  %cmp77 = icmp ugt i32 %add.i, %conv71
  br i1 %cmp77, label %if.then69.if.then79_crit_edge, label %if.then69.if.end85_crit_edge

if.then69.if.end85_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then69.if.then79_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then79

if.then79:                                        ; preds = %if.then69.if.then79_crit_edge, %if.end65.if.then79_crit_edge
  tail call void @kfree(ptr noundef %40) #12
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2592) #17
  %44 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call9.i, ptr %domain, align 4
  %tobool82.not = icmp eq ptr %call9.i, null
  br i1 %tobool82.not, label %if.then79.exit_crit_edge, label %if.then79.if.end85_crit_edge

if.then79.if.end85_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then79.exit_crit_edge:                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end85:                                         ; preds = %if.then79.if.end85_crit_edge, %if.then69.if.end85_crit_edge
  %dom.0 = phi ptr [ %call9.i, %if.then79.if.end85_crit_edge ], [ %40, %if.then69.if.end85_crit_edge ]
  %conv86 = trunc i32 %add.i to i16
  %45 = ptrtoint ptr %dom.0 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv86, ptr %dom.0, align 8
  %gen88 = getelementptr inbounds %struct.tipc_mon_domain, ptr %dom.0, i32 0, i32 1
  %46 = ptrtoint ptr %gen88 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %6, ptr %gen88, align 2
  %member_cnt89 = getelementptr inbounds %struct.tipc_mon_domain, ptr %dom.0, i32 0, i32 3
  %47 = ptrtoint ptr %member_cnt89 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %4, ptr %member_cnt89, align 2
  %up_map = getelementptr inbounds %struct.tipc_mon_domain, ptr %data, i32 0, i32 4
  %48 = ptrtoint ptr %up_map to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %up_map, align 8
  %up_map91 = getelementptr inbounds %struct.tipc_mon_domain, ptr %dom.0, i32 0, i32 4
  %50 = ptrtoint ptr %up_map91 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %up_map91, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp93186.not = icmp eq i16 %4, 0
  br i1 %cmp93186.not, label %if.end85.for.end_crit_edge, label %if.end85.for.body_crit_edge

if.end85.for.body_crit_edge:                      ; preds = %if.end85
  br label %for.body

if.end85.for.end_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end85.for.body_crit_edge
  %i.0187 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end85.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tipc_mon_domain, ptr %data, i32 0, i32 5, i32 %i.0187
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx, align 4
  %arrayidx97 = getelementptr %struct.tipc_mon_domain, ptr %dom.0, i32 0, i32 5, i32 %i.0187
  %53 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx97, align 4
  %inc = add nuw nsw i32 %i.0187, 1
  %exitcond.not = icmp eq i32 %inc, %conv.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end85.for.end_crit_edge
  %applied = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 4
  %54 = ptrtoint ptr %applied to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %applied, align 4
  %conv98 = zext i8 %55 to i32
  tail call fastcc void @mon_apply_domain(ptr noundef nonnull %peer.026.i)
  call fastcc void @mon_identify_lost_members(ptr noundef nonnull %peer.026.i, ptr noundef nonnull %dom_bef, i32 noundef %conv98)
  %is_head3.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 7
  %56 = ptrtoint ptr %is_head3.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_head3.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not4.i = icmp eq i8 %57, 0
  br i1 %tobool.not4.i, label %for.end.while.body.i_crit_edge, label %for.end.peer_head.exit_crit_edge

for.end.peer_head.exit_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %peer_head.exit

for.end.while.body.i_crit_edge:                   ; preds = %for.end
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.end.while.body.i_crit_edge
  %peer.addr.05.i = phi ptr [ %add.ptr.i.i, %while.body.i.while.body.i_crit_edge ], [ %peer.026.i, %for.end.while.body.i_crit_edge ]
  %prev.i.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.addr.05.i, i32 0, i32 3, i32 1
  %58 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 -16
  %is_head.i = getelementptr i8, ptr %59, i32 11
  %60 = ptrtoint ptr %is_head.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %is_head.i, align 1, !range !37
  %tobool.not.i181 = icmp eq i8 %61, 0
  br i1 %tobool.not.i181, label %while.body.i.while.body.i_crit_edge, label %while.body.i.peer_head.exit_crit_edge

while.body.i.peer_head.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %peer_head.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

peer_head.exit:                                   ; preds = %while.body.i.peer_head.exit_crit_edge, %for.end.peer_head.exit_crit_edge
  %peer.addr.0.lcssa.i = phi ptr [ %peer.026.i, %for.end.peer_head.exit_crit_edge ], [ %add.ptr.i.i, %while.body.i.peer_head.exit_crit_edge ]
  tail call fastcc void @mon_assign_roles(ptr noundef %1, ptr noundef %peer.addr.0.lcssa.i)
  br label %exit

exit:                                             ; preds = %peer_head.exit, %if.then79.exit_crit_edge, %if.end60.exit_crit_edge, %lor.lhs.false57.exit_crit_edge, %for.inc.i.exit_crit_edge, %if.end54.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end48.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %dom_bef) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mon_apply_domain(ptr nocapture noundef %peer) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.tipc_peer, ptr %peer, i32 0, i32 1
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %is_up = getelementptr inbounds %struct.tipc_peer, ptr %peer, i32 0, i32 6
  %2 = ptrtoint ptr %is_up to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_up, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %applied = getelementptr inbounds %struct.tipc_peer, ptr %peer, i32 0, i32 4
  %4 = ptrtoint ptr %applied to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %applied, align 4
  %member_cnt = getelementptr inbounds %struct.tipc_mon_domain, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %member_cnt to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %member_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp7.not = icmp eq i16 %6, 0
  br i1 %cmp7.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %if.end.for.body_crit_edge
  %member.09.pn = phi ptr [ %member.09, %if.end7.for.body_crit_edge ], [ %peer, %if.end.for.body_crit_edge ]
  %i.08 = phi i32 [ %inc10, %if.end7.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %.pn.pn.in = getelementptr inbounds %struct.tipc_peer, ptr %member.09.pn, i32 0, i32 3
  %7 = ptrtoint ptr %.pn.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.pn = load ptr, ptr %.pn.pn.in, align 4
  %member.09 = getelementptr i8, ptr %.pn.pn, i32 -16
  %arrayidx = getelementptr %struct.tipc_mon_domain, ptr %1, i32 0, i32 5, i32 %i.08
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %member.09 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %member.09, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4.not = icmp eq i32 %9, %11
  br i1 %cmp4.not, label %if.end7, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %for.body
  %12 = ptrtoint ptr %applied to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %applied, align 4
  %inc = add i8 %13, 1
  store i8 %inc, ptr %applied, align 4
  %inc10 = add nuw nsw i32 %i.08, 1
  %14 = ptrtoint ptr %member_cnt to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %member_cnt, align 2
  %conv = zext i16 %15 to i32
  %cmp = icmp ult i32 %inc10, %conv
  br i1 %cmp, label %if.end7.for.body_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %if.end7.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_mon_prep(ptr noundef %net, ptr nocapture noundef writeonly %data, ptr nocapture noundef writeonly %dlen, ptr nocapture noundef readonly %state, i32 noundef %bearer_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %arrayidx.i = getelementptr %struct.tipc_net, ptr %call.i, i32 0, i32 13, i32 %bearer_id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %dom_gen = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dom_gen to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dom_gen, align 2
  %call.i48 = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %peer_cnt.i = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %peer_cnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %peer_cnt.i, align 8
  %mon_threshold.i = getelementptr inbounds %struct.tipc_net, ptr %call.i48, i32 0, i32 14
  %6 = ptrtoint ptr %mon_threshold.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mon_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i = icmp sgt i32 %5, %7
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %data, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %acked_gen = getelementptr inbounds %struct.tipc_mon_state, ptr %state, i32 0, i32 2
  %9 = ptrtoint ptr %acked_gen to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %acked_gen, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %3)
  %cmp = icmp eq i16 %10, %3
  br i1 %cmp, label %if.then6, label %if.end15, !prof !38

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %dlen, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 16, ptr %data, align 8
  %gen13 = getelementptr inbounds %struct.tipc_mon_domain, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %gen13 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %3, ptr %gen13, align 2
  %peer_gen = getelementptr inbounds %struct.tipc_mon_state, ptr %state, i32 0, i32 1
  %14 = ptrtoint ptr %peer_gen to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %peer_gen, align 2
  %ack_gen = getelementptr inbounds %struct.tipc_mon_domain, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %ack_gen to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %ack_gen, align 4
  %member_cnt = getelementptr inbounds %struct.tipc_mon_domain, ptr %data, i32 0, i32 3
  %17 = ptrtoint ptr %member_cnt to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %member_cnt, align 2
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 3
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #12
  %cache = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %cache to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cache, align 8
  %conv18 = zext i16 %19 to i32
  %20 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv18, ptr %dlen, align 4
  %21 = call ptr @memcpy(ptr %data, ptr %cache, i32 %conv18)
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #12
  %peer_gen22 = getelementptr inbounds %struct.tipc_mon_state, ptr %state, i32 0, i32 1
  %22 = ptrtoint ptr %peer_gen22 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %peer_gen22, align 2
  %ack_gen24 = getelementptr inbounds %struct.tipc_mon_domain, ptr %data, i32 0, i32 2
  %24 = ptrtoint ptr %ack_gen24 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %ack_gen24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then6, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_mon_get_state(ptr noundef %net, i32 noundef %addr, ptr nocapture noundef %state, i32 noundef %bearer_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %arrayidx.i = getelementptr %struct.tipc_net, ptr %call.i, i32 0, i32 13, i32 %bearer_id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %call.i111 = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %peer_cnt.i = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %peer_cnt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peer_cnt.i, align 8
  %mon_threshold.i = getelementptr inbounds %struct.tipc_net, ptr %call.i111, i32 0, i32 14
  %4 = ptrtoint ptr %mon_threshold.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mon_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i = icmp sgt i32 %3, %5
  %probing5 = getelementptr inbounds %struct.tipc_mon_state, ptr %state, i32 0, i32 3
  %6 = ptrtoint ptr %probing5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load6 = load i8, ptr %probing5, align 2
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear3 = and i8 %bf.load6, 63
  %bf.set4 = or i8 %bf.clear3, -128
  %7 = ptrtoint ptr %probing5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bf.set4, ptr %probing5, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = and i8 %bf.load6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %bf.cast.not = icmp eq i8 %8, 0
  br i1 %bf.cast.not, label %land.lhs.true, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %state, align 2
  %list_gen8 = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %list_gen8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %list_gen8, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp = icmp eq i16 %10, %12
  br i1 %cmp, label %land.lhs.true11, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true11:                                  ; preds = %land.lhs.true
  %acked_gen = getelementptr inbounds %struct.tipc_mon_state, ptr %state, i32 0, i32 2
  %13 = ptrtoint ptr %acked_gen to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %acked_gen, align 2
  %dom_gen = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %dom_gen to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dom_gen, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp14 = icmp eq i16 %14, %16
  br i1 %cmp14, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.if.end17_crit_edge

land.lhs.true11.if.end17_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true11.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %lock = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 3
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #12
  %and.i.i = and i32 %addr, 511
  %arrayidx.i112 = getelementptr [512 x %struct.hlist_head], ptr %1, i32 0, i32 %and.i.i
  %17 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i112, align 4
  %tobool.not.i = icmp eq ptr %18, null
  %add.ptr.i = getelementptr i8, ptr %18, i32 -8
  %tobool2.not2528.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not25.i = or i1 %tobool.not.i, %tobool2.not2528.i
  br i1 %tobool2.not25.i, label %if.end17.if.end83_crit_edge, label %if.end17.for.body.i_crit_edge

if.end17.for.body.i_crit_edge:                    ; preds = %if.end17
  br label %for.body.i

if.end17.if.end83_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end17.for.body.i_crit_edge
  %peer.026.i = phi ptr [ %add.ptr10.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end17.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %peer.026.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %peer.026.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %addr)
  %cmp.i113 = icmp eq i32 %20, %addr
  br i1 %cmp.i113, label %if.then19, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %hash.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 2
  %21 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hash.i, align 4
  %tobool6.not.i = icmp eq ptr %22, null
  %add.ptr10.i = getelementptr i8, ptr %22, i32 -8
  %tobool2.not29.i = icmp eq ptr %add.ptr10.i, null
  %tobool2.not.i = or i1 %tobool6.not.i, %tobool2.not29.i
  br i1 %tobool2.not.i, label %for.inc.i.if.end83_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end83_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then19:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %acked_gen20 = getelementptr inbounds %struct.tipc_mon_state, ptr %state, i32 0, i32 2
  %23 = ptrtoint ptr %acked_gen20 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %acked_gen20, align 2
  %dom_gen22 = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %dom_gen22 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dom_gen22, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp24.not = icmp eq i16 %24, %26
  %27 = ptrtoint ptr %probing5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load27 = load i8, ptr %probing5, align 2
  %bf.shl = select i1 %cmp24.not, i8 0, i8 64
  %bf.clear28 = and i8 %bf.load27, -65
  %bf.set29 = or i8 %bf.clear28, %bf.shl
  store i8 %bf.set29, ptr %probing5, align 2
  %down_cnt = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 5
  %28 = ptrtoint ptr %down_cnt to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %down_cnt, align 1
  %conv31 = zext i8 %29 to i32
  %not.cmp24.not = xor i1 %cmp24.not, true
  %conv37 = zext i1 %not.cmp24.not to i32
  %or = or i32 %conv31, %conv37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool38.not = icmp eq i32 %or, 0
  %bf.shl40 = select i1 %tobool38.not, i8 0, i8 64
  %bf.set42 = or i8 %bf.shl40, %bf.clear28
  %30 = ptrtoint ptr %probing5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %bf.set42, ptr %probing5, align 2
  %31 = ptrtoint ptr %down_cnt to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %down_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp46 = icmp ugt i8 %32, 3
  %bf.load27.mask = and i8 %bf.load27, 32
  %bf.shl56 = select i1 %cmp46, i8 32, i8 %bf.load27.mask
  %bf.clear57 = and i8 %bf.set42, -33
  %bf.set58 = or i8 %bf.clear57, %bf.shl56
  %33 = ptrtoint ptr %probing5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %bf.set58, ptr %probing5, align 2
  %is_local = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 8
  %34 = ptrtoint ptr %is_local to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_local, align 4, !range !37
  %bf.shl63 = shl nuw i8 %35, 7
  %bf.clear64 = and i8 %bf.set58, 127
  %bf.set65 = or i8 %bf.clear64, %bf.shl63
  store i8 %bf.set65, ptr %probing5, align 2
  %is_head = getelementptr inbounds %struct.tipc_peer, ptr %peer.026.i, i32 0, i32 7
  %36 = ptrtoint ptr %is_head to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_head, align 1, !range !37
  %or74110 = or i8 %37, %35
  %bf.shl77 = shl nuw i8 %or74110, 7
  %bf.set79 = or i8 %bf.clear64, %bf.shl77
  store i8 %bf.set79, ptr %probing5, align 2
  %list_gen81 = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %list_gen81 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %list_gen81, align 8
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %state, align 2
  br label %if.end83

if.end83:                                         ; preds = %if.then19, %for.inc.i.if.end83_crit_edge, %if.end17.if.end83_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %land.lhs.true11.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_mon_create(ptr noundef %net, i32 noundef %bearer_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_net(ptr noundef %net)
  %arrayidx = getelementptr %struct.tipc_net, ptr %call, i32 0, i32 13, i32 %bearer_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 2440) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2848, i32 noundef 32) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i52 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 272) #15
  %tobool4.not = icmp eq ptr %call7.i.i, null
  %tobool5.not = icmp eq ptr %call7.i.i51, null
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool5.not
  %tobool7.not = icmp eq ptr %call7.i.i52, null
  %or.cond50 = select i1 %or.cond, i1 true, i1 %tobool7.not
  br i1 %or.cond50, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %call7.i.i) #12
  tail call void @kfree(ptr noundef %call7.i.i51) #12
  tail call void @kfree(ptr noundef %call7.i.i52) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.tipc_monitor, ptr %call7.i.i, i32 0, i32 3
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @tipc_mon_create.__key) #12
  %net12 = getelementptr inbounds %struct.tipc_monitor, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %net12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %net, ptr %net12, align 4
  %peer_cnt = getelementptr inbounds %struct.tipc_monitor, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %peer_cnt, align 8
  %self13 = getelementptr inbounds %struct.tipc_monitor, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %self13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i51, ptr %self13, align 4
  %domain = getelementptr inbounds %struct.tipc_peer, ptr %call7.i.i51, i32 0, i32 1
  %9 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i52, ptr %domain, align 4
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %node_addr.i, align 4
  %12 = ptrtoint ptr %call7.i.i51 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call7.i.i51, align 8
  %is_up = getelementptr inbounds %struct.tipc_peer, ptr %call7.i.i51, i32 0, i32 6
  %13 = ptrtoint ptr %is_up to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %is_up, align 2
  %is_head = getelementptr inbounds %struct.tipc_peer, ptr %call7.i.i51, i32 0, i32 7
  %14 = ptrtoint ptr %is_head to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %is_head, align 1
  %list = getelementptr inbounds %struct.tipc_peer, ptr %call7.i.i51, i32 0, i32 3
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.tipc_peer, ptr %call7.i.i51, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev.i, align 4
  %timer = getelementptr inbounds %struct.tipc_monitor, ptr %call7.i.i, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @mon_timeout, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @tipc_mon_create.__key.4) #12
  %random = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 6
  %17 = ptrtoint ptr %random to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %random, align 4
  %and = and i32 %18, 65535
  %add = add nuw nsw i32 %and, 120000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %add) #12
  %timer_intv = getelementptr inbounds %struct.tipc_monitor, ptr %call7.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %timer_intv to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call2.i, ptr %timer_intv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add21 = add i32 %20, %call2.i
  %call22 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add21) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -12, %if.then8 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_net(ptr noundef %net) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !27) #12
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !39
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 45, ptr noundef nonnull @.str.7) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #12
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !40
  %9 = tail call i32 @llvm.read_register.i32(metadata !27) #12
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mon_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_cnt = getelementptr i8, ptr %t, i32 -336
  %0 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %peer_cnt, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %i.0.i = phi i32 [ 0, %entry ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %mul.i = mul i32 %i.0.i, %i.0.i
  %cmp.i = icmp slt i32 %mul.i, %1
  %inc.i = add i32 %i.0.i, 1
  br i1 %cmp.i, label %while.cond.i.while.cond.i_crit_edge, label %dom_size.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

dom_size.exit:                                    ; preds = %while.cond.i
  %add.ptr = getelementptr i8, ptr %t, i32 -2384
  %lock = getelementptr i8, ptr %t, i32 -328
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #12
  %self1 = getelementptr i8, ptr %t, i32 -332
  %2 = ptrtoint ptr %self1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %self1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dom_size.exit.if.end_crit_edge, label %land.lhs.true

dom_size.exit.if.end_crit_edge:                   ; preds = %dom_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %dom_size.exit
  %4 = tail call i32 @llvm.smin.i32(i32 %i.0.i, i32 64) #12
  %sub = add i32 %4, -1
  %applied = getelementptr inbounds %struct.tipc_peer, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %applied to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %applied, align 4
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp.not = icmp eq i32 %sub, %conv
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @mon_update_local_domain(ptr noundef %add.ptr)
  %7 = ptrtoint ptr %self1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %self1, align 4
  %.pn.in32.i = getelementptr inbounds %struct.tipc_peer, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %.pn.in32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn33.i = load ptr, ptr %.pn.in32.i, align 4
  %peer.034.i = getelementptr i8, ptr %.pn33.i, i32 -16
  %cmp.not35.i = icmp eq ptr %peer.034.i, %8
  br i1 %cmp.not35.i, label %if.then.mon_assign_roles.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.mon_assign_roles.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_assign_roles.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %peer.039.i = phi ptr [ %peer.0.i, %for.inc.i.for.body.i_crit_edge ], [ %peer.034.i, %if.then.for.body.i_crit_edge ]
  %.pn38.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn33.i, %if.then.for.body.i_crit_edge ]
  %i.037.i = phi i32 [ %i.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %head.addr.036.i = phi ptr [ %head.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %3, %if.then.for.body.i_crit_edge ]
  %is_local.i = getelementptr i8, ptr %.pn38.i, i32 12
  %10 = ptrtoint ptr %is_local.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %is_local.i, align 4
  %inc.i14 = add i32 %i.037.i, 1
  %applied.i = getelementptr inbounds %struct.tipc_peer, ptr %head.addr.036.i, i32 0, i32 4
  %11 = ptrtoint ptr %applied.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %applied.i, align 4
  %conv.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.037.i, i32 %conv.i)
  %cmp2.i = icmp slt i32 %i.037.i, %conv.i
  br i1 %cmp2.i, label %if.then.i, label %if.end8.i

if.then.i:                                        ; preds = %for.body.i
  %is_head.i = getelementptr i8, ptr %.pn38.i, i32 11
  %13 = ptrtoint ptr %is_head.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %is_head.i, align 1
  %cmp4.i = icmp eq ptr %head.addr.036.i, %8
  br i1 %cmp4.i, label %if.then6.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %is_local.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %is_local.i, align 4
  br label %for.inc.i

if.end8.i:                                        ; preds = %for.body.i
  %is_up.i = getelementptr i8, ptr %.pn38.i, i32 10
  %15 = ptrtoint ptr %is_up.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_up.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end8.i.for.inc.i_crit_edge, label %if.end10.i

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end8.i
  %is_head11.i = getelementptr i8, ptr %.pn38.i, i32 11
  %17 = ptrtoint ptr %is_head11.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_head11.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool12.not.i = icmp eq i8 %18, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.mon_assign_roles.exit_crit_edge

if.end10.i.mon_assign_roles.exit_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_assign_roles.exit

if.end14.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %is_head11.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %is_head11.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i, %if.end8.i.for.inc.i_crit_edge, %if.then6.i, %if.then.i.for.inc.i_crit_edge
  %head.addr.1.i = phi ptr [ %8, %if.then6.i ], [ %head.addr.036.i, %if.then.i.for.inc.i_crit_edge ], [ %peer.039.i, %if.end14.i ], [ %head.addr.036.i, %if.end8.i.for.inc.i_crit_edge ]
  %i.1.i = phi i32 [ %inc.i14, %if.then6.i ], [ %inc.i14, %if.then.i.for.inc.i_crit_edge ], [ 0, %if.end14.i ], [ %inc.i14, %if.end8.i.for.inc.i_crit_edge ]
  %.pn.in.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.039.i, i32 0, i32 3
  %20 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %peer.0.i = getelementptr i8, ptr %.pn.i, i32 -16
  %cmp.not.i = icmp eq ptr %peer.0.i, %8
  br i1 %cmp.not.i, label %for.inc.i.mon_assign_roles.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.mon_assign_roles.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mon_assign_roles.exit

mon_assign_roles.exit:                            ; preds = %for.inc.i.mon_assign_roles.exit_crit_edge, %if.end10.i.mon_assign_roles.exit_crit_edge, %if.then.mon_assign_roles.exit_crit_edge
  %list_gen.i = getelementptr i8, ptr %t, i32 -8
  %21 = ptrtoint ptr %list_gen.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %list_gen.i, align 8
  %inc17.i = add i16 %22, 1
  store i16 %inc17.i, ptr %list_gen.i, align 8
  br label %if.end

if.end:                                           ; preds = %mon_assign_roles.exit, %land.lhs.true.if.end_crit_edge, %dom_size.exit.if.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %timer_intv = getelementptr i8, ptr %t, i32 48
  %24 = ptrtoint ptr %timer_intv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timer_intv, align 8
  %add = add i32 %25, %23
  %call4 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_mon_delete(ptr noundef %net, i32 noundef %bearer_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_net(ptr noundef %net)
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %arrayidx.i = getelementptr %struct.tipc_net, ptr %call.i, i32 0, i32 13, i32 %bearer_id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %arrayidx.i.i = getelementptr %struct.tipc_net, ptr %call.i.i, i32 0, i32 13, i32 %bearer_id
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %self.i = getelementptr inbounds %struct.tipc_monitor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %self.i, align 4
  %lock = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 3
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #12
  %arrayidx = getelementptr %struct.tipc_net, ptr %call, i32 0, i32 13, i32 %bearer_id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  %list = getelementptr inbounds %struct.tipc_peer, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list, align 4
  %peer.045 = getelementptr i8, ptr %8, i32 -16
  %cmp.not46 = icmp eq ptr %peer.045, %5
  br i1 %cmp.not46, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %hlist_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %peer.048 = phi ptr [ %peer.0, %hlist_del.exit.for.body_crit_edge ], [ %peer.045, %if.end.for.body_crit_edge ]
  %.pn.in47 = phi ptr [ %.pn, %hlist_del.exit.for.body_crit_edge ], [ %8, %if.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %.pn.in47 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in47, align 4
  %call.i.i44 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in47) #12
  br i1 %call.i.i44, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in47, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %.pn.in47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn.in47, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %16 = ptrtoint ptr %.pn.in47 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in47, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in47, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %hash = getelementptr i8, ptr %.pn.in47, i32 -8
  %18 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hash, align 4
  %pprev2.i.i = getelementptr i8, ptr %.pn.in47, i32 -4
  %20 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pprev2.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %19, ptr %21, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %list_del.exit.hlist_del.exit_crit_edge, label %do.body13.i.i

list_del.exit.hlist_del.exit_crit_edge:           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %list_del.exit.hlist_del.exit_crit_edge
  %24 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %hash, align 4
  %25 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %domain = getelementptr i8, ptr %.pn.in47, i32 -12
  %26 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %domain, align 4
  tail call void @kfree(ptr noundef %27) #12
  tail call void @kfree(ptr noundef %peer.048) #12
  %peer.0 = getelementptr i8, ptr %.pn, i32 -16
  %cmp.not = icmp eq ptr %peer.0, %5
  br i1 %cmp.not, label %hlist_del.exit.for.end_crit_edge, label %hlist_del.exit.for.body_crit_edge

hlist_del.exit.for.body_crit_edge:                ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

hlist_del.exit.for.end_crit_edge:                 ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %hlist_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %self17 = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %self17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %self17, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #12
  %timer = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 8
  %call19 = tail call i32 @del_timer_sync(ptr noundef %timer) #12
  %domain20 = getelementptr inbounds %struct.tipc_peer, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %domain20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %domain20, align 4
  tail call void @kfree(ptr noundef %30) #12
  tail call void @kfree(ptr noundef %5) #12
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_mon_reinit_self(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %arrayidx.i = getelementptr %struct.tipc_net, ptr %call.i, i32 0, i32 13, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 3
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #12
  %call.i9 = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i9, i32 0, i32 1
  %2 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node_addr.i, align 4
  %self = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %self, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %5, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %call.i.1 = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %arrayidx.i.1 = getelementptr %struct.tipc_net, ptr %call.i.1, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool.not.1 = icmp eq ptr %8, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %lock.1 = getelementptr inbounds %struct.tipc_monitor, ptr %8, i32 0, i32 3
  tail call void @_raw_write_lock_bh(ptr noundef %lock.1) #12
  %call.i9.1 = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %node_addr.i.1 = getelementptr inbounds %struct.tipc_net, ptr %call.i9.1, i32 0, i32 1
  %9 = ptrtoint ptr %node_addr.i.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %node_addr.i.1, align 4
  %self.1 = getelementptr inbounds %struct.tipc_monitor, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %self.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %self.1, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %12, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %lock.1) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %call.i.2 = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %arrayidx.i.2 = getelementptr %struct.tipc_net, ptr %call.i.2, i32 0, i32 13, i32 2
  %14 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.2, align 4
  %tobool.not.2 = icmp eq ptr %15, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %lock.2 = getelementptr inbounds %struct.tipc_monitor, ptr %15, i32 0, i32 3
  tail call void @_raw_write_lock_bh(ptr noundef %lock.2) #12
  %call.i9.2 = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %node_addr.i.2 = getelementptr inbounds %struct.tipc_net, ptr %call.i9.2, i32 0, i32 1
  %16 = ptrtoint ptr %node_addr.i.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node_addr.i.2, align 4
  %self.2 = getelementptr inbounds %struct.tipc_monitor, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %self.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %self.2, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %19, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %lock.2) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_monitor_set_threshold(ptr noundef %net, i32 noundef %cluster_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_net(ptr noundef %net)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %cluster_size)
  %cmp = icmp ugt i32 %cluster_size, 4095
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mon_threshold = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %mon_threshold to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cluster_size, ptr %mon_threshold, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_monitor_get_threshold(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_net(ptr noundef %net)
  %mon_threshold = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %mon_threshold to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mon_threshold, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_add_monitor_peer(ptr noundef %net, ptr nocapture noundef readonly %msg, i32 noundef %bearer_id, ptr nocapture noundef %prev_node) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i102.i = alloca i64, align 8
  %tmp.i100.i = alloca i32, align 4
  %tmp.i95.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %arrayidx.i = getelementptr %struct.tipc_net, ptr %call.i, i32 0, i32 13, i32 %bearer_id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 3
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #12
  %self = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %self, align 4
  %portid.i = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 1
  %seq.i = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %peer.0 = phi ptr [ %3, %if.end ], [ %add.ptr.i, %do.cond.do.body_crit_edge ]
  %4 = ptrtoint ptr %prev_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prev_node, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %do.body.if.end5_crit_edge, label %if.then2

do.body.if.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then2:                                         ; preds = %do.body
  %6 = ptrtoint ptr %peer.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %peer.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp = icmp eq i32 %7, %5
  br i1 %cmp, label %if.then3, label %if.then2.do.cond_crit_edge

if.then2.do.cond_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond

if.then3:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %prev_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %prev_node, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %do.body.if.end5_crit_edge
  %domain.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.0, i32 0, i32 1
  %9 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %domain.i, align 4
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %msg, align 4
  %13 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %portid.i, align 4
  %15 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seq.i, align 4
  %call.i28 = call ptr @genlmsg_put(ptr noundef %12, i32 noundef %14, i32 noundef %16, ptr noundef nonnull @tipc_genl_family, i32 noundef 2, i8 noundef zeroext 19) #12
  %tobool.not.i = icmp eq ptr %call.i28, null
  br i1 %tobool.not.i, label %if.end5.if.then8_crit_edge, label %if.end.i

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.end.i:                                         ; preds = %if.end5
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msg, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %18, i32 noundef 10, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool3.not109.i = icmp eq ptr %20, null
  %tobool3.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool3.not109.i
  br i1 %tobool3.not.i, label %if.end.i.if.then.i.i_crit_edge, label %if.end5.i

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end5.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msg, align 4
  %23 = ptrtoint ptr %peer.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %peer.0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #12
  %25 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %22, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end5.i.if.then.i.i.i_crit_edge

if.end5.i.if.then.i.i.i_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.end10.i:                                       ; preds = %if.end5.i
  %26 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %msg, align 4
  %applied.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.0, i32 0, i32 4
  %28 = ptrtoint ptr %applied.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %applied.i, align 4
  %conv.i = zext i8 %29 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i95.i) #12
  %30 = ptrtoint ptr %tmp.i95.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.i, ptr %tmp.i95.i, align 4
  %call.i96.i = call i32 @nla_put(ptr noundef %27, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i95.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i95.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.i)
  %tobool13.not.i = icmp eq i32 %call.i96.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end10.i.if.then.i.i.i_crit_edge

if.end10.i.if.then.i.i.i_crit_edge:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.end15.i:                                       ; preds = %if.end10.i
  %is_up.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.0, i32 0, i32 6
  %31 = ptrtoint ptr %is_up.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_up.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool16.not.i = icmp eq i8 %32, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end23.i_crit_edge, label %if.then17.i

if.end15.i.if.end23.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then17.i:                                      ; preds = %if.end15.i
  %33 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %msg, align 4
  %call.i97.i = call i32 @nla_put(ptr noundef %34, i32 noundef 6, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %tobool20.not.i = icmp eq i32 %call.i97.i, 0
  br i1 %tobool20.not.i, label %if.then17.i.if.end23.i_crit_edge, label %if.then17.i.if.then.i.i.i_crit_edge

if.then17.i.if.then.i.i.i_crit_edge:              ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.then17.i.if.end23.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then17.i.if.end23.i_crit_edge, %if.end15.i.if.end23.i_crit_edge
  %is_local.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.0, i32 0, i32 8
  %35 = ptrtoint ptr %is_local.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %is_local.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool24.not.i = icmp eq i8 %36, 0
  br i1 %tobool24.not.i, label %if.end23.i.if.end31.i_crit_edge, label %if.then25.i

if.end23.i.if.end31.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then25.i:                                      ; preds = %if.end23.i
  %37 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %msg, align 4
  %call.i98.i = call i32 @nla_put(ptr noundef %38, i32 noundef 8, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.i)
  %tobool28.not.i = icmp eq i32 %call.i98.i, 0
  br i1 %tobool28.not.i, label %if.then25.i.if.end31.i_crit_edge, label %if.then25.i.if.then.i.i.i_crit_edge

if.then25.i.if.then.i.i.i_crit_edge:              ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.then25.i.if.end31.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then25.i.if.end31.i_crit_edge, %if.end23.i.if.end31.i_crit_edge
  %is_head.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.0, i32 0, i32 7
  %39 = ptrtoint ptr %is_head.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %is_head.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool32.not.i = icmp eq i8 %40, 0
  br i1 %tobool32.not.i, label %if.end31.i.if.end39.i_crit_edge, label %if.then33.i

if.end31.i.if.end39.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

if.then33.i:                                      ; preds = %if.end31.i
  %41 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %msg, align 4
  %call.i99.i = call i32 @nla_put(ptr noundef %42, i32 noundef 7, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i)
  %tobool36.not.i = icmp eq i32 %call.i99.i, 0
  br i1 %tobool36.not.i, label %if.then33.i.if.end39.i_crit_edge, label %if.then33.i.if.then.i.i.i_crit_edge

if.then33.i.if.then.i.i.i_crit_edge:              ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.then33.i.if.end39.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then33.i.if.end39.i_crit_edge, %if.end31.i.if.end39.i_crit_edge
  %tobool40.not.i = icmp eq ptr %10, null
  br i1 %tobool40.not.i, label %if.end39.i.__tipc_nl_add_monitor_peer.exit_crit_edge, label %if.then41.i

if.end39.i.__tipc_nl_add_monitor_peer.exit_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tipc_nl_add_monitor_peer.exit

if.then41.i:                                      ; preds = %if.end39.i
  %43 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %msg, align 4
  %gen.i = getelementptr inbounds %struct.tipc_mon_domain, ptr %10, i32 0, i32 1
  %45 = ptrtoint ptr %gen.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %gen.i, align 2
  %conv43.i = zext i16 %46 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i100.i) #12
  %47 = ptrtoint ptr %tmp.i100.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv43.i, ptr %tmp.i100.i, align 4
  %call.i101.i = call i32 @nla_put(ptr noundef %44, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i100.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i100.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i)
  %tobool45.not.i = icmp eq i32 %call.i101.i, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %if.then41.i.if.then.i.i.i_crit_edge

if.then41.i.if.then.i.i.i_crit_edge:              ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.end47.i:                                       ; preds = %if.then41.i
  %48 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %msg, align 4
  %up_map.i = getelementptr inbounds %struct.tipc_mon_domain, ptr %10, i32 0, i32 4
  %50 = ptrtoint ptr %up_map.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %up_map.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i102.i) #12
  %52 = ptrtoint ptr %tmp.i102.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %tmp.i102.i, align 8
  %call.i103.i = call i32 @nla_put_64bit(ptr noundef %49, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i102.i, i32 noundef 9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i102.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %tobool50.not.i = icmp eq i32 %call.i103.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end47.i.if.then.i.i.i_crit_edge

if.end47.i.if.then.i.i.i_crit_edge:               ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.end52.i:                                       ; preds = %if.end47.i
  %53 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %msg, align 4
  %member_cnt.i = getelementptr inbounds %struct.tipc_mon_domain, ptr %10, i32 0, i32 3
  %55 = ptrtoint ptr %member_cnt.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %member_cnt.i, align 2
  %conv54.i = zext i16 %56 to i32
  %mul.i = shl nuw nsw i32 %conv54.i, 2
  %members.i = getelementptr inbounds %struct.tipc_mon_domain, ptr %10, i32 0, i32 5
  %call55.i = call i32 @nla_put(ptr noundef %54, i32 noundef 5, i32 noundef %mul.i, ptr noundef %members.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end52.i.__tipc_nl_add_monitor_peer.exit_crit_edge, label %if.end52.i.if.then.i.i.i_crit_edge

if.end52.i.if.then.i.i.i_crit_edge:               ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.end52.i.__tipc_nl_add_monitor_peer.exit_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tipc_nl_add_monitor_peer.exit

if.then.i.i.i:                                    ; preds = %if.end52.i.if.then.i.i.i_crit_edge, %if.end47.i.if.then.i.i.i_crit_edge, %if.then41.i.if.then.i.i.i_crit_edge, %if.then33.i.if.then.i.i.i_crit_edge, %if.then25.i.if.then.i.i.i_crit_edge, %if.then17.i.if.then.i.i.i_crit_edge, %if.end10.i.if.then.i.i.i_crit_edge, %if.end5.i.if.then.i.i.i_crit_edge
  %57 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %msg, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 19
  %59 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %60, %20
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !41

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %61 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i105.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i106.i = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i.i107.i = sub i32 %sub.ptr.lhs.cast.i.i105.i, %sub.ptr.rhs.cast.i.i106.i
  call void @skb_trim(ptr noundef %58, i32 noundef %sub.ptr.sub.i.i107.i) #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %nla_nest_cancel.exit.i, %if.end.i.if.then.i.i_crit_edge
  %63 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %msg, align 4
  %add.ptr1.i108.i = getelementptr i8, ptr %call.i28, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i108.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then8_crit_edge, label %if.then.i.i.i.i

if.then.i.i.if.then8_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %64, i32 0, i32 19
  %65 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %66, %add.ptr1.i108.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !41

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %67 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i108.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %68 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %64, i32 noundef %sub.ptr.sub.i.i.i.i) #12
  br label %if.then8

__tipc_nl_add_monitor_peer.exit:                  ; preds = %if.end52.i.__tipc_nl_add_monitor_peer.exit_crit_edge, %if.end39.i.__tipc_nl_add_monitor_peer.exit_crit_edge
  %69 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %msg, align 4
  %tail.i.i104.i = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 16
  %71 = ptrtoint ptr %tail.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tail.i.i104.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %73 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.i.i, ptr %20, align 2
  %74 = load ptr, ptr %msg, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %call.i28, i32 -20
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 16
  %75 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %77 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  br label %do.cond

if.then8:                                         ; preds = %if.end.i.i.i.i, %if.then.i.i.if.then8_crit_edge, %if.end5.if.then8_crit_edge
  %78 = ptrtoint ptr %peer.0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %peer.0, align 4
  %80 = ptrtoint ptr %prev_node to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %prev_node, align 4
  br label %cleanup.sink.split

do.cond:                                          ; preds = %__tipc_nl_add_monitor_peer.exit, %if.then2.do.cond_crit_edge
  %list.i = getelementptr inbounds %struct.tipc_peer, ptr %peer.0, i32 0, i32 3
  %81 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %list.i, align 4
  %add.ptr.i = getelementptr i8, ptr %82, i32 -16
  %83 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %self, align 4
  %cmp14.not = icmp eq ptr %add.ptr.i, %84
  br i1 %cmp14.not, label %do.cond.cleanup.sink.split_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.cond.cleanup.sink.split_crit_edge:             ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.cond.cleanup.sink.split_crit_edge, %if.then8
  %retval.0.ph = phi i32 [ -90, %if.then8 ], [ 0, %do.cond.cleanup.sink.split_crit_edge ]
  call void @_raw_read_unlock_bh(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__tipc_nl_add_monitor(ptr noundef %net, ptr nocapture noundef readonly %msg, i32 noundef %bearer_id) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i86 = alloca i32, align 4
  %tmp.i84 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %bearer_name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %arrayidx.i = getelementptr %struct.tipc_net, ptr %call.i, i32 0, i32 13, i32 %bearer_id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bearer_name) #12
  %2 = call ptr @memset(ptr %bearer_name, i32 255, i32 32)
  %call1 = call i32 @tipc_bearer_get_name(ptr noundef %net, ptr noundef nonnull %bearer_name, i32 noundef %bearer_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp ne i32 %call1, 0
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %msg, align 4
  %portid = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %portid, align 4
  %seq = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %seq, align 4
  %call3 = call ptr @genlmsg_put(ptr noundef %4, i32 noundef %6, i32 noundef %8, ptr noundef nonnull @tipc_genl_family, i32 noundef 2, i8 noundef zeroext 18) #12
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msg, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %10, i32 noundef 9, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool9.not93 = icmp eq ptr %12, null
  %tobool9.not = select i1 %cmp.i, i1 true, i1 %tobool9.not93
  br i1 %tobool9.not, label %if.end6.if.then.i_crit_edge, label %if.end11

if.end6.if.then.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end11:                                         ; preds = %if.end6
  %lock = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 3
  call void @_raw_read_lock_bh(ptr noundef %lock) #12
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %bearer_id, ptr %tmp.i, align 4
  %call.i78 = call i32 @nla_put(ptr noundef %14, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool14.not = icmp eq i32 %call.i78, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.if.then.i.i_crit_edge

if.end11.if.then.i.i_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end16:                                         ; preds = %if.end11
  %call.i79 = call fastcc ptr @tipc_net(ptr noundef %net) #12
  %peer_cnt.i = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %peer_cnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %peer_cnt.i, align 8
  %mon_threshold.i = getelementptr inbounds %struct.tipc_net, ptr %call.i79, i32 0, i32 14
  %18 = ptrtoint ptr %mon_threshold.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mon_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.i80 = icmp sgt i32 %17, %19
  br i1 %cmp.i80, label %if.then18, label %if.end16.if.end24_crit_edge

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then18:                                        ; preds = %if.end16
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %msg, align 4
  %call.i81 = call i32 @nla_put(ptr noundef %21, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool21.not = icmp eq i32 %call.i81, 0
  br i1 %tobool21.not, label %if.then18.if.end24_crit_edge, label %if.then18.if.then.i.i_crit_edge

if.then18.if.then.i.i_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end24:                                         ; preds = %if.then18.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  %22 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %msg, align 4
  %call.i82 = call i32 @strlen(ptr noundef nonnull %bearer_name) #18
  %add.i = add i32 %call.i82, 1
  %call1.i83 = call i32 @nla_put(ptr noundef %23, i32 noundef 4, i32 noundef %add.i, ptr noundef nonnull %bearer_name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83)
  %tobool28.not = icmp eq i32 %call1.i83, 0
  br i1 %tobool28.not, label %if.end30, label %if.end24.if.then.i.i_crit_edge

if.end24.if.then.i.i_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end30:                                         ; preds = %if.end24
  %24 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %msg, align 4
  %26 = ptrtoint ptr %peer_cnt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %peer_cnt.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i84) #12
  %28 = ptrtoint ptr %tmp.i84 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tmp.i84, align 4
  %call.i85 = call i32 @nla_put(ptr noundef %25, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i84) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i84) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool33.not = icmp eq i32 %call.i85, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.if.then.i.i_crit_edge

if.end30.if.then.i.i_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end35:                                         ; preds = %if.end30
  %29 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %msg, align 4
  %list_gen = getelementptr inbounds %struct.tipc_monitor, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %list_gen to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %list_gen, align 8
  %conv = zext i16 %32 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i86) #12
  %33 = ptrtoint ptr %tmp.i86 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv, ptr %tmp.i86, align 4
  %call.i87 = call i32 @nla_put(ptr noundef %30, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i86) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i86) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool38.not = icmp eq i32 %call.i87, 0
  br i1 %tobool38.not, label %if.end40, label %if.end35.if.then.i.i_crit_edge

if.end35.if.then.i.i_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_read_unlock_bh(ptr noundef %lock) #12
  %34 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %msg, align 4
  %tail.i.i88 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %tail.i.i88 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i.i88, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %38 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i, ptr %12, align 2
  %39 = load ptr, ptr %msg, align 4
  %add.ptr1.i = getelementptr i8, ptr %call3, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %42 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end35.if.then.i.i_crit_edge, %if.end30.if.then.i.i_crit_edge, %if.end24.if.then.i.i_crit_edge, %if.then18.if.then.i.i_crit_edge, %if.end11.if.then.i.i_crit_edge
  call void @_raw_read_unlock_bh(ptr noundef %lock) #12
  %43 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %msg, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 19
  %45 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %46, %12
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !41

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i89 = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i.i90 = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i.i91 = sub i32 %sub.ptr.lhs.cast.i.i89, %sub.ptr.rhs.cast.i.i90
  call void @skb_trim(ptr noundef %44, i32 noundef %sub.ptr.sub.i.i91) #12
  br label %if.then.i

if.then.i:                                        ; preds = %nla_nest_cancel.exit, %if.end6.if.then.i_crit_edge
  %49 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %msg, align 4
  %add.ptr1.i92 = getelementptr i8, ptr %call3, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i92, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 19
  %51 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %52, %add.ptr1.i92
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !41

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %53 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i92 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %50, i32 noundef %sub.ptr.sub.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end40, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end40 ], [ 0, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bearer_name) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_bearer_get_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @tipc_max_domain_size, !1, !"tipc_max_domain_size", i1 false, i1 false}
!1 = !{!"../net/tipc/monitor.c", i32 105, i32 11}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/tipc/monitor.c", i32 456, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tipc_mon_peer_down._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @tipc_mon_peer_down._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @tipc_mon_create.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../net/tipc/monitor.c", i32 667, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @tipc_mon_create.__key.4, !12, !"__key", i1 false, i1 false}
!12 = !{!"../net/tipc/monitor.c", i32 676, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/net/netlink.h", i32 991, i32 3}
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
!39 = !{i64 2149728812}
!40 = !{i64 2149729078}
!41 = !{!"branch_weights", i32 1, i32 2000}
