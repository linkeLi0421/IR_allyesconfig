; ModuleID = '/llk/IR_all_yes/net/rds/sysctl.c_pt.bc'
source_filename = "../net/rds/sysctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.143, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.143 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }

@rds_sysctl_reconnect_max_jiffies = dso_local global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@rds_sysctl_max_unacked_packets = dso_local global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@rds_sysctl_max_unacked_bytes = dso_local global { i32, [28 x i8] } { i32 16777216, [28 x i8] zeroinitializer }, align 32
@rds_sysctl_ping_enable = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@rds_sysctl_reg_table = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rds_sysctl_reconnect_min = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@rds_sysctl_reconnect_min_jiffies = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@init_net = external dso_local global %struct.net, align 128
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"net/rds\00", [24 x i8] zeroinitializer }, align 32
@rds_sysctl_rds_table = internal global { [6 x %struct.ctl_table], [40 x i8] } { [6 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr @rds_sysctl_reconnect_min_jiffies, i32 4, i16 420, ptr null, ptr @proc_doulongvec_ms_jiffies_minmax, ptr null, ptr @rds_sysctl_reconnect_min, ptr @rds_sysctl_reconnect_max_jiffies }, %struct.ctl_table { ptr @.str.2, ptr @rds_sysctl_reconnect_max_jiffies, i32 4, i16 420, ptr null, ptr @proc_doulongvec_ms_jiffies_minmax, ptr null, ptr @rds_sysctl_reconnect_min_jiffies, ptr @rds_sysctl_reconnect_max }, %struct.ctl_table { ptr @.str.3, ptr @rds_sysctl_max_unacked_packets, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.4, ptr @rds_sysctl_max_unacked_bytes, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.5, ptr @rds_sysctl_ping_enable, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reconnect_min_delay_ms\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reconnect_max_delay_ms\00", [41 x i8] zeroinitializer }, align 32
@rds_sysctl_reconnect_max = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max_unacked_packets\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_unacked_bytes\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ping_enable\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [33 x i8] c"rds_sysctl_reconnect_max_jiffies\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 45, i32 15 }
@___asan_gen_.9 = private unnamed_addr constant [31 x i8] c"rds_sysctl_max_unacked_packets\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 47, i32 15 }
@___asan_gen_.12 = private unnamed_addr constant [29 x i8] c"rds_sysctl_max_unacked_bytes\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 48, i32 15 }
@___asan_gen_.15 = private unnamed_addr constant [23 x i8] c"rds_sysctl_ping_enable\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 50, i32 14 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"rds_sysctl_reg_table\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 39, i32 33 }
@___asan_gen_.21 = private unnamed_addr constant [25 x i8] c"rds_sysctl_reconnect_min\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 41, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant [33 x i8] c"rds_sysctl_reconnect_min_jiffies\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 44, i32 15 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 106, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"rds_sysctl_rds_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 52, i32 25 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 54, i32 21 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 63, i32 21 }
@___asan_gen_.39 = private unnamed_addr constant [25 x i8] c"rds_sysctl_reconnect_max\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 42, i32 22 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 72, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 79, i32 15 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [20 x i8] c"../net/rds/sysctl.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 86, i32 15 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @rds_sysctl_reconnect_max_jiffies, ptr @rds_sysctl_max_unacked_packets, ptr @rds_sysctl_max_unacked_bytes, ptr @rds_sysctl_ping_enable, ptr @rds_sysctl_reg_table, ptr @rds_sysctl_reconnect_min, ptr @rds_sysctl_reconnect_min_jiffies, ptr @.str, ptr @rds_sysctl_rds_table, ptr @.str.1, ptr @.str.2, ptr @rds_sysctl_reconnect_max, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_sysctl_reconnect_max_jiffies to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_sysctl_max_unacked_packets to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_sysctl_max_unacked_bytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_sysctl_ping_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_sysctl_reg_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_sysctl_reconnect_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_sysctl_reconnect_min_jiffies to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_sysctl_rds_table to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_sysctl_reconnect_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_sysctl_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rds_sysctl_reg_table, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_sysctl_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1, ptr @rds_sysctl_reconnect_min, align 4
  store i32 1, ptr @rds_sysctl_reconnect_min_jiffies, align 4
  %call1 = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str, ptr noundef nonnull @rds_sysctl_rds_table) #2
  store ptr %call1, ptr @rds_sysctl_reg_table, align 4
  %tobool.not = icmp eq ptr %call1, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_ms_jiffies_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @rds_sysctl_reconnect_max_jiffies, !1, !"rds_sysctl_reconnect_max_jiffies", i1 false, i1 false}
!1 = !{!"../net/rds/sysctl.c", i32 45, i32 15}
!2 = !{ptr @rds_sysctl_max_unacked_packets, !3, !"rds_sysctl_max_unacked_packets", i1 false, i1 false}
!3 = !{!"../net/rds/sysctl.c", i32 47, i32 15}
!4 = !{ptr @rds_sysctl_max_unacked_bytes, !5, !"rds_sysctl_max_unacked_bytes", i1 false, i1 false}
!5 = !{!"../net/rds/sysctl.c", i32 48, i32 15}
!6 = !{ptr @rds_sysctl_ping_enable, !7, !"rds_sysctl_ping_enable", i1 false, i1 false}
!7 = !{!"../net/rds/sysctl.c", i32 50, i32 14}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/rds/sysctl.c", i32 106, i32 34}
!10 = !{ptr @rds_sysctl_reg_table, !11, !"rds_sysctl_reg_table", i1 false, i1 false}
!11 = !{!"../net/rds/sysctl.c", i32 39, i32 33}
!12 = !{ptr @rds_sysctl_reconnect_min_jiffies, !13, !"rds_sysctl_reconnect_min_jiffies", i1 false, i1 false}
!13 = !{!"../net/rds/sysctl.c", i32 44, i32 15}
!14 = !{ptr @rds_sysctl_reconnect_min, !15, !"rds_sysctl_reconnect_min", i1 false, i1 false}
!15 = !{!"../net/rds/sysctl.c", i32 41, i32 22}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/rds/sysctl.c", i32 54, i32 21}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/rds/sysctl.c", i32 63, i32 21}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/rds/sysctl.c", i32 72, i32 15}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/rds/sysctl.c", i32 79, i32 15}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/rds/sysctl.c", i32 86, i32 15}
!26 = !{ptr @rds_sysctl_rds_table, !27, !"rds_sysctl_rds_table", i1 false, i1 false}
!27 = !{!"../net/rds/sysctl.c", i32 52, i32 25}
!28 = !{ptr @rds_sysctl_reconnect_max, !29, !"rds_sysctl_reconnect_max", i1 false, i1 false}
!29 = !{!"../net/rds/sysctl.c", i32 42, i32 22}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
