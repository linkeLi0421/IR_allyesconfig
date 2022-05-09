; ModuleID = '/llk/IR_all_yes/net/appletalk/atalk_proc.c_pt.bc'
source_filename = "../net/appletalk/atalk_proc.c"
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
%struct.atalk_route = type { ptr, %struct.atalk_addr, %struct.atalk_addr, i32, ptr }
%struct.atalk_addr = type { i16, i8 }
%struct.atalk_iface = type { ptr, %struct.atalk_addr, i32, %struct.atalk_netrange, ptr }
%struct.atalk_netrange = type { i8, i16, i16 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.23, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.23 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atalk\00", [26 x i8] zeroinitializer }, align 32
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atalk/interface\00", [16 x i8] zeroinitializer }, align 32
@atalk_seq_interface_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @atalk_seq_interface_start, ptr @atalk_seq_interface_stop, ptr @atalk_seq_interface_next, ptr @atalk_seq_interface_show }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atalk/route\00", [20 x i8] zeroinitializer }, align 32
@atalk_seq_route_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @atalk_seq_route_start, ptr @atalk_seq_route_stop, ptr @atalk_seq_route_next, ptr @atalk_seq_route_show }, [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atalk/socket\00", [19 x i8] zeroinitializer }, align 32
@atalk_seq_socket_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @atalk_seq_socket_start, ptr @atalk_seq_socket_stop, ptr @atalk_seq_socket_next, ptr @atalk_seq_socket_show }, [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atalk/arp\00", [22 x i8] zeroinitializer }, align 32
@aarp_seq_ops = external dso_local constant %struct.seq_operations, align 4
@atalk_interfaces_lock = external dso_local global %struct.rwlock_t, align 4
@atalk_interfaces = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Interface        Address   Networks  Status\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%-16s %04X:%02X  %04X-%04X  %d\0A\00", [32 x i8] zeroinitializer }, align 32
@atalk_routes_lock = external dso_local global %struct.rwlock_t, align 4
@atalk_routes = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Target        Router  Flags Dev\0A\00", [63 x i8] zeroinitializer }, align 32
@atrtr_default = external dso_local local_unnamed_addr global %struct.atalk_route, align 4
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Default     %04X:%02X  %-4d  %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%04X:%02X     %04X:%02X  %-4d  %s\0A\00", [61 x i8] zeroinitializer }, align 32
@atalk_sockets_lock = external dso_local global %struct.rwlock_t, align 4
@atalk_sockets = external dso_local global %struct.hlist_head, align 4
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Type Local_addr  Remote_addr Tx_queue Rx_queue St UID\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%02X   %04X:%02X:%02X  %04X:%02X:%02X  %08X:%08X %02X %u\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 212, i32 18 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 215, i32 7 }
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"atalk_seq_interface_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 189, i32 36 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 219, i32 7 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"atalk_seq_route_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 196, i32 36 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 223, i32 7 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"atalk_seq_socket_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 203, i32 36 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 227, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 64, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 70, i32 18 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 125, i32 17 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 131, i32 19 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 137, i32 18 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 169, i32 19 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [30 x i8] c"../net/appletalk/atalk_proc.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 177, i32 18 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.1, ptr @atalk_seq_interface_ops, ptr @.str.2, ptr @atalk_seq_route_ops, ptr @.str.3, ptr @atalk_seq_socket_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_seq_interface_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_seq_route_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_seq_socket_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atalk_proc_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str, ptr noundef %0) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @atalk_seq_interface_ops, i32 noundef 0, ptr noundef null) #4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call5 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %2, ptr noundef nonnull @atalk_seq_route_ops, i32 noundef 0, ptr noundef null) #4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.out_crit_edge, label %if.end8

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end8:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call9 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @atalk_seq_socket_ops, i32 noundef 0, ptr noundef null) #4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.out_crit_edge, label %if.end12

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end12:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call13 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %4, ptr noundef nonnull @aarp_seq_ops, i32 noundef 8, ptr noundef null) #4
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.out_crit_edge, label %if.end12.return_crit_edge

if.end12.return_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

out:                                              ; preds = %if.end12.out_crit_edge, %if.end8.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call17 = tail call i32 @remove_proc_subtree(ptr noundef nonnull @.str, ptr noundef %5) #4
  br label %return

return:                                           ; preds = %out, %if.end12.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %out ], [ -12, %entry.return_crit_edge ], [ 0, %if.end12.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_proc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atalk_proc_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call = tail call i32 @remove_proc_subtree(ptr noundef nonnull @.str, ptr noundef %0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atalk_seq_interface_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @atalk_interfaces_lock) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %entry
  %dec = add i64 %1, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @atalk_interfaces to i32))
  %i.05.i = load ptr, ptr @atalk_interfaces, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec)
  %tobool.not6.i = icmp eq i64 %dec, 0
  %tobool1.not7.i = icmp eq ptr %i.05.i, null
  %or.cond8.i = select i1 %tobool.not6.i, i1 true, i1 %tobool1.not7.i
  br i1 %or.cond8.i, label %cond.true.cond.end_crit_edge, label %cond.true.for.body.i_crit_edge

cond.true.for.body.i_crit_edge:                   ; preds = %cond.true
  br label %for.body.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cond.true.for.body.i_crit_edge
  %i.010.i = phi ptr [ %i.0.i, %for.body.i.for.body.i_crit_edge ], [ %i.05.i, %cond.true.for.body.i_crit_edge ]
  %pos.addr.09.i = phi i64 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %dec, %cond.true.for.body.i_crit_edge ]
  %dec.i = add i64 %pos.addr.09.i, -1
  %next.i = getelementptr inbounds %struct.atalk_iface, ptr %i.010.i, i32 0, i32 4
  %2 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %i.0.i = load ptr, ptr %next.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.i)
  %tobool.not.i = icmp eq i64 %dec.i, 0
  %tobool1.not.i = icmp eq ptr %i.0.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %for.body.i.cond.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.cond.end_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.end:                                         ; preds = %for.body.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ inttoptr (i32 1 to ptr), %entry.cond.end_crit_edge ], [ %i.05.i, %cond.true.cond.end_crit_edge ], [ %i.0.i, %for.body.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atalk_seq_interface_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_interfaces_lock) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @atalk_seq_interface_next(ptr nocapture noundef readnone %seq, ptr noundef readonly %v, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %next = getelementptr inbounds %struct.atalk_iface, ptr %v, i32 0, i32 4
  %i.0.in = select i1 %cmp, ptr @atalk_interfaces, ptr %next
  %2 = ptrtoint ptr %i.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %i.0 = load ptr, ptr %i.0.in, align 4
  ret ptr %i.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atalk_seq_interface_show(ptr noundef %seq, ptr noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.5) #4
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v, align 4
  %address = getelementptr inbounds %struct.atalk_iface, ptr %v, i32 0, i32 1
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %address, align 4
  %conv = zext i16 %3 to i32
  %s_node = getelementptr inbounds %struct.atalk_iface, ptr %v, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s_node, align 2
  %conv2 = zext i8 %5 to i32
  %nr_firstnet = getelementptr inbounds %struct.atalk_iface, ptr %v, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %nr_firstnet to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nr_firstnet, align 2
  %conv3 = zext i16 %7 to i32
  %nr_lastnet = getelementptr inbounds %struct.atalk_iface, ptr %v, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %nr_lastnet to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nr_lastnet, align 4
  %conv5 = zext i16 %9 to i32
  %status = getelementptr inbounds %struct.atalk_iface, ptr %v, i32 0, i32 2
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %11) #4
  br label %out

out:                                              ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atalk_seq_route_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @atalk_routes_lock) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %entry
  %dec = add i64 %1, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @atalk_routes to i32))
  %r.05.i = load ptr, ptr @atalk_routes, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec)
  %tobool.not6.i = icmp eq i64 %dec, 0
  %tobool1.not7.i = icmp eq ptr %r.05.i, null
  %or.cond8.i = select i1 %tobool.not6.i, i1 true, i1 %tobool1.not7.i
  br i1 %or.cond8.i, label %cond.true.cond.end_crit_edge, label %cond.true.for.body.i_crit_edge

cond.true.for.body.i_crit_edge:                   ; preds = %cond.true
  br label %for.body.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cond.true.for.body.i_crit_edge
  %r.010.i = phi ptr [ %r.0.i, %for.body.i.for.body.i_crit_edge ], [ %r.05.i, %cond.true.for.body.i_crit_edge ]
  %pos.addr.09.i = phi i64 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %dec, %cond.true.for.body.i_crit_edge ]
  %dec.i = add i64 %pos.addr.09.i, -1
  %next.i = getelementptr inbounds %struct.atalk_route, ptr %r.010.i, i32 0, i32 4
  %2 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %r.0.i = load ptr, ptr %next.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.i)
  %tobool.not.i = icmp eq i64 %dec.i, 0
  %tobool1.not.i = icmp eq ptr %r.0.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %for.body.i.cond.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.cond.end_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.end:                                         ; preds = %for.body.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ inttoptr (i32 1 to ptr), %entry.cond.end_crit_edge ], [ %r.05.i, %cond.true.cond.end_crit_edge ], [ %r.0.i, %for.body.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atalk_seq_route_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_routes_lock) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @atalk_seq_route_next(ptr nocapture noundef readnone %seq, ptr noundef readonly %v, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %next = getelementptr inbounds %struct.atalk_route, ptr %v, i32 0, i32 4
  %r.0.in = select i1 %cmp, ptr @atalk_routes, ptr %next
  %2 = ptrtoint ptr %r.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %r.0 = load ptr, ptr %r.0.in, align 4
  ret ptr %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atalk_seq_route_show(ptr noundef %seq, ptr noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.7) #4
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @atrtr_default to i32))
  %0 = load ptr, ptr @atrtr_default, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then1

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.atalk_route, ptr @atrtr_default, i32 0, i32 2) to i32))
  %1 = load i16, ptr getelementptr inbounds (%struct.atalk_route, ptr @atrtr_default, i32 0, i32 2), align 4
  %conv = zext i16 %1 to i32
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.atalk_route, ptr @atrtr_default, i32 0, i32 2, i32 1) to i32))
  %2 = load i8, ptr getelementptr inbounds (%struct.atalk_route, ptr @atrtr_default, i32 0, i32 2, i32 1), align 2
  %conv3 = zext i8 %2 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.atalk_route, ptr @atrtr_default, i32 0, i32 3) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.atalk_route, ptr @atrtr_default, i32 0, i32 3), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv3, i32 noundef %3, ptr noundef nonnull %0) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %target = getelementptr inbounds %struct.atalk_route, ptr %v, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %target, align 4
  %conv6 = zext i16 %5 to i32
  %s_node8 = getelementptr inbounds %struct.atalk_route, ptr %v, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %s_node8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_node8, align 2
  %conv9 = zext i8 %7 to i32
  %gateway10 = getelementptr inbounds %struct.atalk_route, ptr %v, i32 0, i32 2
  %8 = ptrtoint ptr %gateway10 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %gateway10, align 4
  %conv12 = zext i16 %9 to i32
  %s_node14 = getelementptr inbounds %struct.atalk_route, ptr %v, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %s_node14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %s_node14, align 2
  %conv15 = zext i8 %11 to i32
  %flags16 = getelementptr inbounds %struct.atalk_route, ptr %v, i32 0, i32 3
  %12 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags16, align 4
  %14 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, i32 noundef %conv6, i32 noundef %conv9, i32 noundef %conv12, i32 noundef %conv15, i32 noundef %13, ptr noundef %15) #4
  br label %out

out:                                              ; preds = %if.end4, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atalk_seq_socket_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @atalk_sockets_lock) #4
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_hlist_start_head(ptr noundef nonnull @atalk_sockets, i64 noundef %1) #4
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atalk_seq_socket_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_sockets_lock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atalk_seq_socket_next(ptr nocapture noundef readnone %seq, ptr noundef %v, ptr noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_hlist_next(ptr noundef %v, ptr noundef nonnull @atalk_sockets, ptr noundef %pos) #4
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atalk_seq_socket_show(ptr noundef %seq, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10) #4
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %v, i32 -84
  %sk_type = getelementptr i8, ptr %v, i32 550
  %0 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sk_type, align 2
  %conv = zext i16 %1 to i32
  %src_net = getelementptr i8, ptr %v, i32 878
  %2 = ptrtoint ptr %src_net to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %src_net, align 2
  %conv2 = zext i16 %3 to i32
  %src_node = getelementptr i8, ptr %v, i32 881
  %4 = ptrtoint ptr %src_node to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %src_node, align 1
  %conv3 = zext i8 %5 to i32
  %src_port = getelementptr i8, ptr %v, i32 883
  %6 = ptrtoint ptr %src_port to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %src_port, align 1
  %conv4 = zext i8 %7 to i32
  %dest_net = getelementptr i8, ptr %v, i32 876
  %8 = ptrtoint ptr %dest_net to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dest_net, align 8
  %conv5 = zext i16 %9 to i32
  %dest_node = getelementptr i8, ptr %v, i32 880
  %10 = ptrtoint ptr %dest_node to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dest_node, align 4
  %conv6 = zext i8 %11 to i32
  %dest_port = getelementptr i8, ptr %v, i32 882
  %12 = ptrtoint ptr %dest_port to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dest_port, align 2
  %conv7 = zext i8 %13 to i32
  %sk_wmem_alloc.i = getelementptr i8, ptr %v, i32 360
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #4
  %14 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i = add i32 %15, -1
  %sk_backlog.i = getelementptr i8, ptr %v, i32 288
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #4
  %16 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %sk_backlog.i, align 4
  %skc_state = getelementptr i8, ptr %v, i32 -66
  %18 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state, align 2
  %conv10 = zext i8 %19 to i32
  %file.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %20 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 25
  %24 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %user_ns.i, align 4
  %call12 = tail call i32 @sock_i_uid(ptr noundef %add.ptr.i) #4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call12, 0
  %call14 = tail call i32 @from_kuid_munged(ptr noundef %25, [1 x i32] %.fca.0.insert) #4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %sub.i, i32 noundef %17, i32 noundef %conv10, i32 noundef %call14) #4
  br label %out

out:                                              ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_start_head(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/appletalk/atalk_proc.c", i32 212, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/appletalk/atalk_proc.c", i32 215, i32 7}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/appletalk/atalk_proc.c", i32 219, i32 7}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/appletalk/atalk_proc.c", i32 223, i32 7}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/appletalk/atalk_proc.c", i32 227, i32 31}
!10 = !{ptr @atalk_seq_interface_ops, !11, !"atalk_seq_interface_ops", i1 false, i1 false}
!11 = !{!"../net/appletalk/atalk_proc.c", i32 189, i32 36}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/appletalk/atalk_proc.c", i32 64, i32 17}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/appletalk/atalk_proc.c", i32 70, i32 18}
!16 = !{ptr @atalk_seq_route_ops, !17, !"atalk_seq_route_ops", i1 false, i1 false}
!17 = !{!"../net/appletalk/atalk_proc.c", i32 196, i32 36}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/appletalk/atalk_proc.c", i32 125, i32 17}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/appletalk/atalk_proc.c", i32 131, i32 19}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/appletalk/atalk_proc.c", i32 137, i32 18}
!24 = !{ptr @atalk_seq_socket_ops, !25, !"atalk_seq_socket_ops", i1 false, i1 false}
!25 = !{!"../net/appletalk/atalk_proc.c", i32 203, i32 36}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/appletalk/atalk_proc.c", i32 169, i32 19}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/appletalk/atalk_proc.c", i32 177, i32 18}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
