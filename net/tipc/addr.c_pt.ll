; ModuleID = '/llk/IR_all_yes/net/tipc/addr.c_pt.bc'
source_filename = "../net/tipc/addr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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

@tipc_set_node_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016tipc: Node identity %s, cluster identity %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tipc_set_node_id\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/tipc/addr.c\00", [16 x i8] zeroinitializer }, align 32
@tipc_set_node_id._entry_ptr = internal global ptr @tipc_set_node_id._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tipc_set_node_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016tipc: Node number set to %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tipc_set_node_addr\00", [45 x i8] zeroinitializer }, align 32
@tipc_set_node_addr._entry_ptr = internal global ptr @tipc_set_node_addr._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
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
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 45, i64 46, i64 58, i64 64, i64 95]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 63, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 74, i32 20 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 79, i32 2 }
@___asan_gen_.37 = private constant [19 x i8] c"../net/tipc/addr.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 117, i32 24 }
@___asan_gen_.43 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 45, i32 7 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 695, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 723, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @tipc_set_node_addr._entry, ptr @tipc_set_node_addr._entry_ptr, ptr @tipc_set_node_id._entry, ptr @tipc_set_node_id._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_set_node_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_set_node_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tipc_in_scope(i1 noundef zeroext %legacy_format, i32 noundef %domain, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %domain)
  %tobool.not = icmp eq i32 %domain, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %domain, i32 %addr)
  %cmp = icmp eq i32 %domain, %addr
  %or.cond = or i1 %tobool.not, %cmp
  %legacy_format.not = xor i1 %legacy_format, true
  %brmerge = or i1 %or.cond, %legacy_format.not
  br i1 %brmerge, label %entry.return_crit_edge, label %if.end3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3:                                          ; preds = %entry
  %and.i = and i32 %addr, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %domain)
  %cmp4 = icmp eq i32 %and.i, %domain
  br i1 %cmp4, label %if.end3.return_crit_edge, label %if.end9

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %and10 = and i32 %addr, -16777216
  call void @__sanitizer_cov_trace_cmp4(i32 %and10, i32 %domain)
  %cmp11 = icmp eq i32 %and10, %domain
  br label %return

return:                                           ; preds = %if.end9, %if.end3.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %or.cond, %entry.return_crit_edge ], [ true, %if.end3.return_crit_edge ], [ %cmp11, %if.end9 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_set_node_id(ptr noundef %net, ptr nocapture noundef readonly %id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_net(ptr noundef %net)
  %0 = call ptr @memcpy(ptr %call, ptr %id, i32 16)
  %node_id_string = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 4
  %call2 = tail call ptr @tipc_nodeid2string(ptr noundef %node_id_string, ptr noundef %id)
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %arrayidx1.i = getelementptr i32, ptr %id, i32 1
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1.i, align 4
  %xor.i = xor i32 %4, %2
  %arrayidx2.i = getelementptr i32, ptr %id, i32 2
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2.i, align 4
  %xor3.i = xor i32 %xor.i, %6
  %arrayidx4.i = getelementptr i32, ptr %id, i32 3
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4.i, align 4
  %xor5.i = xor i32 %xor3.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor5.i)
  %tobool.not.i = icmp eq i32 %xor5.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.hash128to32.exit_crit_edge, !prof !36

entry.hash128to32.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash128to32.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %4, %2
  %or11.i = or i32 %or.i, %6
  %or13.i = or i32 %or11.i, %8
  br label %hash128to32.exit

hash128to32.exit:                                 ; preds = %if.end.i, %entry.hash128to32.exit_crit_edge
  %retval.0.i = phi i32 [ %or13.i, %if.end.i ], [ %xor5.i, %entry.hash128to32.exit_crit_edge ]
  %trial_addr = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %trial_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i, ptr %trial_addr, align 4
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #9
  %node_id_string.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 4
  %net_id = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %net_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %net_id, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %node_id_string.i, i32 noundef %11) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_net(ptr noundef %net) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !26) #9
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 45, ptr noundef nonnull @.str.8) #9
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #9
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !38
  %9 = tail call i32 @llvm.read_register.i32(metadata !26) #9
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tipc_nodeid2string(ptr noundef returned %str, ptr nocapture noundef readonly %id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0118 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %id, i32 %i.0118
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = add i8 %1, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %3 = icmp ult i8 %2, 10
  %4 = add i8 %1, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %4)
  %5 = icmp ult i8 %4, 26
  %or.cond = or i1 %3, %5
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %.fr116 = freeze i8 %1
  %6 = add i8 %.fr116, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %6)
  %7 = icmp ult i8 %6, 26
  br i1 %7, label %if.end14.for.inc_crit_edge, label %switch.early.test

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

switch.early.test:                                ; preds = %if.end14
  %8 = zext i8 %.fr116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %.fr116, label %for.end [
    i8 95, label %switch.early.test.for.inc_crit_edge
    i8 64, label %switch.early.test.for.inc_crit_edge132
    i8 58, label %switch.early.test.for.inc_crit_edge133
    i8 46, label %switch.early.test.for.inc_crit_edge134
    i8 45, label %switch.early.test.for.inc_crit_edge135
    i8 0, label %switch.early.test.for.inc_crit_edge136
  ]

switch.early.test.for.inc_crit_edge136:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

switch.early.test.for.inc_crit_edge135:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

switch.early.test.for.inc_crit_edge134:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

switch.early.test.for.inc_crit_edge133:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

switch.early.test.for.inc_crit_edge132:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

switch.early.test.for.inc_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %switch.early.test.for.inc_crit_edge, %switch.early.test.for.inc_crit_edge132, %switch.early.test.for.inc_crit_edge133, %switch.early.test.for.inc_crit_edge134, %switch.early.test.for.inc_crit_edge135, %switch.early.test.for.inc_crit_edge136, %if.end14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0118, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.if.then56_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.then56_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

for.end:                                          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0118)
  %cmp54 = icmp eq i32 %i.0118, 16
  br i1 %cmp54, label %for.end.if.then56_crit_edge, label %for.body62.preheader

for.end.if.then56_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

for.body62.preheader:                             ; preds = %for.end
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %id, align 1
  %conv65 = zext i8 %10 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %str, ptr noundef nonnull @.str.6, i32 noundef %conv65)
  %arrayidx63.1 = getelementptr i8, ptr %str, i32 2
  %arrayidx64.1 = getelementptr i8, ptr %id, i32 1
  %11 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx64.1, align 1
  %conv65.1 = zext i8 %12 to i32
  %call.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx63.1, ptr noundef nonnull @.str.6, i32 noundef %conv65.1)
  %arrayidx63.2 = getelementptr i8, ptr %str, i32 4
  %arrayidx64.2 = getelementptr i8, ptr %id, i32 2
  %13 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx64.2, align 1
  %conv65.2 = zext i8 %14 to i32
  %call.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx63.2, ptr noundef nonnull @.str.6, i32 noundef %conv65.2)
  %arrayidx63.3 = getelementptr i8, ptr %str, i32 6
  %arrayidx64.3 = getelementptr i8, ptr %id, i32 3
  %15 = ptrtoint ptr %arrayidx64.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx64.3, align 1
  %conv65.3 = zext i8 %16 to i32
  %call.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx63.3, ptr noundef nonnull @.str.6, i32 noundef %conv65.3)
  %arrayidx63.4 = getelementptr i8, ptr %str, i32 8
  %arrayidx64.4 = getelementptr i8, ptr %id, i32 4
  %17 = ptrtoint ptr %arrayidx64.4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx64.4, align 1
  %conv65.4 = zext i8 %18 to i32
  %call.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx63.4, ptr noundef nonnull @.str.6, i32 noundef %conv65.4)
  %arrayidx63.5 = getelementptr i8, ptr %str, i32 10
  %arrayidx64.5 = getelementptr i8, ptr %id, i32 5
  %19 = ptrtoint ptr %arrayidx64.5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx64.5, align 1
  %conv65.5 = zext i8 %20 to i32
  %call.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx63.5, ptr noundef nonnull @.str.6, i32 noundef %conv65.5)
  %arrayidx63.6 = getelementptr i8, ptr %str, i32 12
  %arrayidx64.6 = getelementptr i8, ptr %id, i32 6
  %21 = ptrtoint ptr %arrayidx64.6 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx64.6, align 1
  %conv65.6 = zext i8 %22 to i32
  %call.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx63.6, ptr noundef nonnull @.str.6, i32 noundef %conv65.6)
  %arrayidx63.7 = getelementptr i8, ptr %str, i32 14
  %arrayidx64.7 = getelementptr i8, ptr %id, i32 7
  %23 = ptrtoint ptr %arrayidx64.7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx64.7, align 1
  %conv65.7 = zext i8 %24 to i32
  %call.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx63.7, ptr noundef nonnull @.str.6, i32 noundef %conv65.7)
  %arrayidx63.8 = getelementptr i8, ptr %str, i32 16
  %arrayidx64.8 = getelementptr i8, ptr %id, i32 8
  %25 = ptrtoint ptr %arrayidx64.8 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx64.8, align 1
  %conv65.8 = zext i8 %26 to i32
  %call.8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx63.8, ptr noundef nonnull @.str.6, i32 noundef %conv65.8)
  %arrayidx63.9 = getelementptr i8, ptr %str, i32 18
  %arrayidx64.9 = getelementptr i8, ptr %id, i32 9
  %27 = ptrtoint ptr %arrayidx64.9 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx64.9, align 1
  %conv65.9 = zext i8 %28 to i32
  %call.9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx63.9, ptr noundef nonnull @.str.6, i32 noundef %conv65.9)
  %arrayidx63.10 = getelementptr i8, ptr %str, i32 20
  %arrayidx64.10 = getelementptr i8, ptr %id, i32 10
  %29 = ptrtoint ptr %arrayidx64.10 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx64.10, align 1
  %conv65.10 = zext i8 %30 to i32
  %call.10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx63.10, ptr noundef nonnull @.str.6, i32 noundef %conv65.10)
  %arrayidx63.11 = getelementptr i8, ptr %str, i32 22
  %arrayidx64.11 = getelementptr i8, ptr %id, i32 11
  %31 = ptrtoint ptr %arrayidx64.11 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx64.11, align 1
  %conv65.11 = zext i8 %32 to i32
  %call.11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx63.11, ptr noundef nonnull @.str.6, i32 noundef %conv65.11)
  %arrayidx63.12 = getelementptr i8, ptr %str, i32 24
  %arrayidx64.12 = getelementptr i8, ptr %id, i32 12
  %33 = ptrtoint ptr %arrayidx64.12 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx64.12, align 1
  %conv65.12 = zext i8 %34 to i32
  %call.12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx63.12, ptr noundef nonnull @.str.6, i32 noundef %conv65.12)
  %arrayidx63.13 = getelementptr i8, ptr %str, i32 26
  %arrayidx64.13 = getelementptr i8, ptr %id, i32 13
  %35 = ptrtoint ptr %arrayidx64.13 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx64.13, align 1
  %conv65.13 = zext i8 %36 to i32
  %call.13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx63.13, ptr noundef nonnull @.str.6, i32 noundef %conv65.13)
  %arrayidx63.14 = getelementptr i8, ptr %str, i32 28
  %arrayidx64.14 = getelementptr i8, ptr %id, i32 14
  %37 = ptrtoint ptr %arrayidx64.14 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx64.14, align 1
  %conv65.14 = zext i8 %38 to i32
  %call.14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx63.14, ptr noundef nonnull @.str.6, i32 noundef %conv65.14)
  %arrayidx63.15 = getelementptr i8, ptr %str, i32 30
  %arrayidx64.15 = getelementptr i8, ptr %id, i32 15
  %39 = ptrtoint ptr %arrayidx64.15 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx64.15, align 1
  %conv65.15 = zext i8 %40 to i32
  %call.15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx63.15, ptr noundef nonnull @.str.6, i32 noundef %conv65.15)
  %arrayidx70121 = getelementptr i8, ptr %str, i32 31
  %41 = ptrtoint ptr %arrayidx70121 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx70121, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %42)
  %cmp72122 = icmp eq i8 %42, 48
  br i1 %cmp72122, label %for.body62.preheader.for.body74_crit_edge, label %for.body62.preheader.cleanup_crit_edge

for.body62.preheader.cleanup_crit_edge:           ; preds = %for.body62.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body62.preheader.for.body74_crit_edge:        ; preds = %for.body62.preheader
  br label %for.body74

if.then56:                                        ; preds = %for.end.if.then56_crit_edge, %for.inc.if.then56_crit_edge
  %43 = call ptr @memcpy(ptr %str, ptr %id, i32 16)
  %arrayidx57 = getelementptr i8, ptr %str, i32 16
  %44 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx57, align 1
  br label %cleanup

for.body74:                                       ; preds = %for.body74.for.body74_crit_edge, %for.body62.preheader.for.body74_crit_edge
  %arrayidx70124 = phi ptr [ %arrayidx70, %for.body74.for.body74_crit_edge ], [ %arrayidx70121, %for.body62.preheader.for.body74_crit_edge ]
  %i.2123 = phi i32 [ %dec, %for.body74.for.body74_crit_edge ], [ 31, %for.body62.preheader.for.body74_crit_edge ]
  %45 = ptrtoint ptr %arrayidx70124 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx70124, align 1
  %dec = add i32 %i.2123, -1
  %arrayidx70 = getelementptr i8, ptr %str, i32 %dec
  %46 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx70, align 1
  %cmp72 = icmp eq i8 %47, 48
  br i1 %cmp72, label %for.body74.for.body74_crit_edge, label %for.body74.cleanup_crit_edge

for.body74.cleanup_crit_edge:                     ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body74.for.body74_crit_edge:                  ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body74

cleanup:                                          ; preds = %for.body74.cleanup_crit_edge, %if.then56, %for.body62.preheader.cleanup_crit_edge
  ret ptr %str
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_set_node_addr(ptr noundef %net, i32 noundef %addr) local_unnamed_addr #1 align 64 {
entry:
  %node_id = alloca [16 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_net(ptr noundef %net)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %node_id) #9
  %0 = call ptr @memset(ptr %node_id, i32 0, i32 16)
  %node_addr = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %node_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %addr, ptr %node_addr, align 4
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #9
  %node_id_string.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %node_id_string.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %char0.i = load i8, ptr %node_id_string.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool.not.i = icmp eq i8 %char0.i, 0
  %tobool.not14 = icmp eq ptr %call.i, null
  %tobool.not = select i1 %tobool.not.i, i1 true, i1 %tobool.not14
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %node_id, ptr noundef nonnull @.str.3, i32 noundef %addr)
  %call.i12 = tail call fastcc ptr @tipc_net(ptr noundef %net) #9
  %3 = call ptr @memcpy(ptr %call.i12, ptr %node_id, i32 16)
  %node_id_string.i13 = getelementptr inbounds %struct.tipc_net, ptr %call.i12, i32 0, i32 4
  %call2.i = call ptr @tipc_nodeid2string(ptr noundef %node_id_string.i13, ptr noundef nonnull %node_id) #9
  %4 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %node_id, align 4
  %arrayidx1.i.i = getelementptr inbounds i32, ptr %node_id, i32 1
  %6 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.i.i, align 4
  %xor.i.i = xor i32 %7, %5
  %arrayidx2.i.i = getelementptr inbounds i32, ptr %node_id, i32 2
  %8 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.i.i, align 4
  %xor3.i.i = xor i32 %xor.i.i, %9
  %arrayidx4.i.i = getelementptr inbounds i32, ptr %node_id, i32 3
  %10 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i.i, align 4
  %xor5.i.i = xor i32 %xor3.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor5.i.i)
  %tobool.not.i.i = icmp eq i32 %xor5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.tipc_set_node_id.exit_crit_edge, !prof !36

if.then.tipc_set_node_id.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_set_node_id.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %7, %5
  %or11.i.i = or i32 %or.i.i, %9
  %or13.i.i = or i32 %or11.i.i, %11
  br label %tipc_set_node_id.exit

tipc_set_node_id.exit:                            ; preds = %if.end.i.i, %if.then.tipc_set_node_id.exit_crit_edge
  %retval.0.i.i = phi i32 [ %or13.i.i, %if.end.i.i ], [ %xor5.i.i, %if.then.tipc_set_node_id.exit_crit_edge ]
  %trial_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i12, i32 0, i32 2
  %12 = ptrtoint ptr %trial_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i.i, ptr %trial_addr.i, align 4
  %call.i.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #9
  %node_id_string.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 4
  %net_id.i = getelementptr inbounds %struct.tipc_net, ptr %call.i12, i32 0, i32 5
  %13 = ptrtoint ptr %net_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %net_id.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %node_id_string.i.i, i32 noundef %14) #12
  br label %if.end

if.end:                                           ; preds = %tipc_set_node_id.exit, %entry.if.end_crit_edge
  %trial_addr = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %trial_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %addr, ptr %trial_addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %addr_trial_end = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %addr_trial_end to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %addr_trial_end, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %addr) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %node_id) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !17, !18, !19, !21, !22, !23, !25}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/tipc/addr.c", i32 63, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tipc_set_node_id._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tipc_set_node_id._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/tipc/addr.c", i32 74, i32 20}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/tipc/addr.c", i32 79, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @tipc_set_node_addr._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @tipc_set_node_addr._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/tipc/addr.c", i32 117, i32 24}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 2149384275}
!38 = !{i64 2149384541}
