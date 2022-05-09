; ModuleID = '/llk/IR_all_yes/net/x25/x25_proc.c_pt.bc'
source_filename = "../net/x25/x25_proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.x25_route = type { %struct.list_head, %struct.x25_address, i32, ptr, %struct.refcount_struct }
%struct.x25_address = type { [16 x i8] }
%struct.x25_neigh = type { %struct.list_head, ptr, i32, i32, %struct.sk_buff_head, i32, %struct.timer_list, i32, %struct.refcount_struct }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [112 x i8] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.140, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.141, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.142, ptr, %struct.address_space, %struct.list_head, %union.anon.143, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%union.anon.140 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.141 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.142 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.143 = type { ptr }
%struct.x25_forward = type { %struct.list_head, i32, ptr, ptr, %struct.atomic_t }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x25\00", [28 x i8] zeroinitializer }, align 32
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"x25/route\00", [22 x i8] zeroinitializer }, align 32
@x25_seq_route_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @x25_seq_route_start, ptr @x25_seq_route_stop, ptr @x25_seq_route_next, ptr @x25_seq_route_show }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"x25/socket\00", [21 x i8] zeroinitializer }, align 32
@x25_seq_socket_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @x25_seq_socket_start, ptr @x25_seq_socket_stop, ptr @x25_seq_socket_next, ptr @x25_seq_socket_show }, [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"x25/forward\00", [20 x i8] zeroinitializer }, align 32
@x25_seq_forward_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @x25_seq_forward_start, ptr @x25_seq_forward_stop, ptr @x25_seq_forward_next, ptr @x25_seq_forward_show }, [16 x i8] zeroinitializer }, align 32
@x25_route_list_lock = external dso_local global %struct.rwlock_t, align 4
@x25_route_list = external dso_local global %struct.list_head, align 4
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Address          Digits  Device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%-15s  %-6d  %-5s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@x25_list_lock = external dso_local global %struct.rwlock_t, align 4
@x25_list = external dso_local global %struct.hlist_head, align 4
@.str.7 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"dest_addr  src_addr   dev   lci st vs vr va   t  t2 t21 t22 t23 Snd-Q Rcv-Q inode\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%-10s %-10s %-5s %3.3X  %d  %d  %d  %d %3lu %3lu %3lu %3lu %3lu %5d %5d %ld\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@x25_forward_list_lock = external dso_local global %struct.rwlock_t, align 4
@x25_forward_list = external dso_local global %struct.list_head, align 4
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lci dev1       dev2\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%d %-10s %-10s\0A\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 171, i32 18 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 174, i32 7 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"x25_seq_route_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 148, i32 36 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 178, i32 7 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"x25_seq_socket_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 155, i32 36 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 182, i32 7 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"x25_seq_forward_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 162, i32 36 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 48, i32 17 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 53, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 55, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 86, i32 19 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 99, i32 18 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 101, i32 36 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 136, i32 19 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [22 x i8] c"../net/x25/x25_proc.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 142, i32 18 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @x25_proc_exit, ptr @.str, ptr @.str.1, ptr @x25_seq_route_ops, ptr @.str.2, ptr @x25_seq_socket_ops, ptr @.str.3, ptr @x25_seq_forward_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_seq_route_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_seq_socket_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_seq_forward_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x25_proc_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str, ptr noundef %0) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @x25_seq_route_ops, i32 noundef 0, ptr noundef null) #3
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call5 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %2, ptr noundef nonnull @x25_seq_socket_ops, i32 noundef 0, ptr noundef null) #3
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.out_crit_edge, label %if.end8

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end8:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call9 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @x25_seq_forward_ops, i32 noundef 0, ptr noundef null) #3
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.out_crit_edge, label %if.end8.return_crit_edge

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

out:                                              ; preds = %if.end8.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call13 = tail call i32 @remove_proc_subtree(ptr noundef nonnull @.str, ptr noundef %4) #3
  br label %return

return:                                           ; preds = %out, %if.end8.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %out ], [ -12, %entry.return_crit_edge ], [ 0, %if.end8.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_proc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_proc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call = tail call i32 @remove_proc_subtree(ptr noundef nonnull @.str, ptr noundef %0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @x25_seq_route_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @x25_route_list_lock) #3
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start_head(ptr noundef nonnull @x25_route_list, i64 noundef %1) #3
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @x25_seq_route_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @x25_route_list_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @x25_seq_route_next(ptr nocapture noundef readnone %seq, ptr noundef %v, ptr noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef nonnull @x25_route_list, ptr noundef %pos) #3
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_seq_route_show(ptr noundef %seq, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, @x25_route_list
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.4) #3
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %address = getelementptr inbounds %struct.x25_route, ptr %v, i32 0, i32 1
  %sigdigits = getelementptr inbounds %struct.x25_route, ptr %v, i32 0, i32 2
  %0 = ptrtoint ptr %sigdigits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sigdigits, align 4
  %dev = getelementptr inbounds %struct.x25_route, ptr %v, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.not, ptr @.str.6, ptr %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.5, ptr noundef %address, i32 noundef %1, ptr noundef nonnull %spec.select) #3
  br label %out

out:                                              ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start_head(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @x25_seq_socket_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @x25_list_lock) #3
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_hlist_start_head(ptr noundef nonnull @x25_list, i64 noundef %1) #3
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @x25_seq_socket_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @x25_list_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @x25_seq_socket_next(ptr nocapture noundef readnone %seq, ptr noundef %v, ptr noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_hlist_next(ptr noundef %v, ptr noundef nonnull @x25_list, ptr noundef %pos) #3
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_seq_socket_show(ptr noundef %seq, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7) #3
  br label %out

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %v, i32 -84
  %neighbour = getelementptr i8, ptr %v, i32 908
  %0 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %neighbour, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %lor.lhs.false

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %dev3 = getelementptr inbounds %struct.x25_neigh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %cmp4 = icmp eq ptr %3, null
  %spec.select64 = select i1 %cmp4, ptr @.str.6, ptr %3
  br label %if.end8

if.end8:                                          ; preds = %lor.lhs.false, %if.end.if.end8_crit_edge
  %devname.0 = phi ptr [ @.str.6, %if.end.if.end8_crit_edge ], [ %spec.select64, %lor.lhs.false ]
  %dest_addr = getelementptr i8, ptr %v, i32 892
  %4 = ptrtoint ptr %dest_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dest_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool9.not, ptr @.str.9, ptr %dest_addr
  %source_addr = getelementptr i8, ptr %v, i32 876
  %6 = ptrtoint ptr %source_addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %source_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool15.not = icmp eq i8 %7, 0
  %cond22 = select i1 %tobool15.not, ptr @.str.9, ptr %source_addr
  %lci = getelementptr i8, ptr %v, i32 912
  %8 = ptrtoint ptr %lci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lci, align 4
  %and = and i32 %9, 4095
  %state = getelementptr i8, ptr %v, i32 920
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state, align 4
  %conv = zext i8 %11 to i32
  %vs = getelementptr i8, ptr %v, i32 922
  %12 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vs, align 2
  %conv23 = zext i16 %13 to i32
  %vr = getelementptr i8, ptr %v, i32 924
  %14 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vr, align 8
  %conv24 = zext i16 %15 to i32
  %va = getelementptr i8, ptr %v, i32 926
  %16 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %va, align 2
  %conv25 = zext i16 %17 to i32
  %call26 = tail call i32 @x25_display_timer(ptr noundef %add.ptr.i) #3
  %div = udiv i32 %call26, 100
  %t2 = getelementptr i8, ptr %v, i32 932
  %18 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %t2, align 8
  %div27 = udiv i32 %19, 100
  %t21 = getelementptr i8, ptr %v, i32 936
  %20 = ptrtoint ptr %t21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t21, align 4
  %div28 = udiv i32 %21, 100
  %t22 = getelementptr i8, ptr %v, i32 940
  %22 = ptrtoint ptr %t22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %t22, align 8
  %div29 = udiv i32 %23, 100
  %t23 = getelementptr i8, ptr %v, i32 944
  %24 = ptrtoint ptr %t23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %t23, align 4
  %div30 = udiv i32 %25, 100
  %sk_wmem_alloc.i = getelementptr i8, ptr %v, i32 360
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #3
  %26 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i = add i32 %27, -1
  %sk_backlog.i = getelementptr i8, ptr %v, i32 288
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #3
  %28 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %sk_backlog.i, align 4
  %sk_socket = getelementptr i8, ptr %v, i32 796
  %30 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk_socket, align 8
  %tobool33.not = icmp eq ptr %31, null
  br i1 %tobool33.not, label %if.end8.cond.end38_crit_edge, label %cond.true34

if.end8.cond.end38_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end38

cond.true34:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %i_ino = getelementptr inbounds %struct.socket_alloc, ptr %31, i32 0, i32 1, i32 11
  %32 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino, align 8
  br label %cond.end38

cond.end38:                                       ; preds = %cond.true34, %if.end8.cond.end38_crit_edge
  %cond39 = phi i32 [ %33, %cond.true34 ], [ 0, %if.end8.cond.end38_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.8, ptr noundef %spec.select, ptr noundef %cond22, ptr noundef nonnull %devname.0, i32 noundef %and, i32 noundef %conv, i32 noundef %conv23, i32 noundef %conv24, i32 noundef %conv25, i32 noundef %div, i32 noundef %div27, i32 noundef %div28, i32 noundef %div29, i32 noundef %div30, i32 noundef %sub.i, i32 noundef %29, i32 noundef %cond39) #3
  br label %out

out:                                              ; preds = %cond.end38, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_start_head(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x25_display_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @x25_seq_forward_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @x25_forward_list_lock) #3
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start_head(ptr noundef nonnull @x25_forward_list, i64 noundef %1) #3
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @x25_seq_forward_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @x25_forward_list_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @x25_seq_forward_next(ptr nocapture noundef readnone %seq, ptr noundef %v, ptr noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef nonnull @x25_forward_list, ptr noundef %pos) #3
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_seq_forward_show(ptr noundef %seq, ptr noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, @x25_forward_list
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10) #3
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %lci = getelementptr inbounds %struct.x25_forward, ptr %v, i32 0, i32 1
  %0 = ptrtoint ptr %lci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lci, align 4
  %dev1 = getelementptr inbounds %struct.x25_forward, ptr %v, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.x25_forward, ptr %v, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %1, ptr noundef %3, ptr noundef %5) #3
  br label %out

out:                                              ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/x25/x25_proc.c", i32 171, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/x25/x25_proc.c", i32 174, i32 7}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/x25/x25_proc.c", i32 178, i32 7}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/x25/x25_proc.c", i32 182, i32 7}
!8 = !{ptr @x25_seq_route_ops, !9, !"x25_seq_route_ops", i1 false, i1 false}
!9 = !{!"../net/x25/x25_proc.c", i32 148, i32 36}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/x25/x25_proc.c", i32 48, i32 17}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/x25/x25_proc.c", i32 53, i32 18}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/x25/x25_proc.c", i32 55, i32 32}
!16 = !{ptr @x25_seq_socket_ops, !17, !"x25_seq_socket_ops", i1 false, i1 false}
!17 = !{!"../net/x25/x25_proc.c", i32 155, i32 36}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/x25/x25_proc.c", i32 86, i32 19}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/x25/x25_proc.c", i32 99, i32 18}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/x25/x25_proc.c", i32 101, i32 36}
!24 = !{ptr @x25_seq_forward_ops, !25, !"x25_seq_forward_ops", i1 false, i1 false}
!25 = !{!"../net/x25/x25_proc.c", i32 162, i32 36}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/x25/x25_proc.c", i32 136, i32 19}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/x25/x25_proc.c", i32 142, i32 18}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
