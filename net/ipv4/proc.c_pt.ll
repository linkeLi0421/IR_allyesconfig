; ModuleID = '/llk/IR_all_yes/net/ipv4/proc.c_pt.bc'
source_filename = "../net/ipv4/proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.168, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.168 = type { ptr }
%struct.snmp_mib = type { ptr, i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.183, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.183 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.fqdir = type { i32, i32, i32, i32, ptr, ptr, i8, [103 x i8], %struct.rhashtable, [28 x i8], %struct.atomic_t, %struct.work_struct, %struct.llist_node, [76 x i8] }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }

@ip_proc_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ip_proc_init_net, ptr null, ptr @ip_proc_exit_net, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sockstat\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"netstat\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"snmp\00", [27 x i8] zeroinitializer }, align 32
@tcp_prot = external dso_local global %struct.proto, align 4
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"TCP: inuse %d orphan %d tw %d alloc %d mem %ld\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UDP: inuse %d mem %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@udp_prot = external dso_local global %struct.proto, align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"UDPLITE: inuse %d\0A\00", [45 x i8] zeroinitializer }, align 32
@udplite_prot = external dso_local global %struct.proto, align 4
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RAW: inuse %d\0A\00", [17 x i8] zeroinitializer }, align 32
@raw_prot = external dso_local global %struct.proto, align 4
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FRAG: inuse %u memory %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TcpExt:\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@snmp4_net_list = internal constant { [126 x %struct.snmp_mib], [240 x i8] } { [126 x %struct.snmp_mib] [%struct.snmp_mib { ptr @.str.14, i32 1 }, %struct.snmp_mib { ptr @.str.15, i32 2 }, %struct.snmp_mib { ptr @.str.16, i32 3 }, %struct.snmp_mib { ptr @.str.17, i32 4 }, %struct.snmp_mib { ptr @.str.18, i32 5 }, %struct.snmp_mib { ptr @.str.19, i32 6 }, %struct.snmp_mib { ptr @.str.20, i32 7 }, %struct.snmp_mib { ptr @.str.21, i32 8 }, %struct.snmp_mib { ptr @.str.22, i32 9 }, %struct.snmp_mib { ptr @.str.23, i32 10 }, %struct.snmp_mib { ptr @.str.24, i32 11 }, %struct.snmp_mib { ptr @.str.25, i32 12 }, %struct.snmp_mib { ptr @.str.26, i32 13 }, %struct.snmp_mib { ptr @.str.27, i32 14 }, %struct.snmp_mib { ptr @.str.28, i32 15 }, %struct.snmp_mib { ptr @.str.29, i32 16 }, %struct.snmp_mib { ptr @.str.30, i32 17 }, %struct.snmp_mib { ptr @.str.31, i32 18 }, %struct.snmp_mib { ptr @.str.32, i32 19 }, %struct.snmp_mib { ptr @.str.33, i32 20 }, %struct.snmp_mib { ptr @.str.34, i32 21 }, %struct.snmp_mib { ptr @.str.35, i32 22 }, %struct.snmp_mib { ptr @.str.36, i32 23 }, %struct.snmp_mib { ptr @.str.37, i32 24 }, %struct.snmp_mib { ptr @.str.38, i32 25 }, %struct.snmp_mib { ptr @.str.39, i32 26 }, %struct.snmp_mib { ptr @.str.40, i32 27 }, %struct.snmp_mib { ptr @.str.41, i32 28 }, %struct.snmp_mib { ptr @.str.42, i32 29 }, %struct.snmp_mib { ptr @.str.43, i32 30 }, %struct.snmp_mib { ptr @.str.44, i32 31 }, %struct.snmp_mib { ptr @.str.45, i32 32 }, %struct.snmp_mib { ptr @.str.46, i32 33 }, %struct.snmp_mib { ptr @.str.47, i32 34 }, %struct.snmp_mib { ptr @.str.48, i32 35 }, %struct.snmp_mib { ptr @.str.49, i32 36 }, %struct.snmp_mib { ptr @.str.50, i32 37 }, %struct.snmp_mib { ptr @.str.51, i32 38 }, %struct.snmp_mib { ptr @.str.52, i32 39 }, %struct.snmp_mib { ptr @.str.53, i32 40 }, %struct.snmp_mib { ptr @.str.54, i32 41 }, %struct.snmp_mib { ptr @.str.55, i32 42 }, %struct.snmp_mib { ptr @.str.56, i32 43 }, %struct.snmp_mib { ptr @.str.57, i32 44 }, %struct.snmp_mib { ptr @.str.58, i32 45 }, %struct.snmp_mib { ptr @.str.59, i32 78 }, %struct.snmp_mib { ptr @.str.60, i32 46 }, %struct.snmp_mib { ptr @.str.61, i32 47 }, %struct.snmp_mib { ptr @.str.62, i32 48 }, %struct.snmp_mib { ptr @.str.63, i32 49 }, %struct.snmp_mib { ptr @.str.64, i32 50 }, %struct.snmp_mib { ptr @.str.65, i32 51 }, %struct.snmp_mib { ptr @.str.66, i32 52 }, %struct.snmp_mib { ptr @.str.67, i32 53 }, %struct.snmp_mib { ptr @.str.68, i32 54 }, %struct.snmp_mib { ptr @.str.69, i32 55 }, %struct.snmp_mib { ptr @.str.70, i32 56 }, %struct.snmp_mib { ptr @.str.71, i32 57 }, %struct.snmp_mib { ptr @.str.72, i32 58 }, %struct.snmp_mib { ptr @.str.73, i32 59 }, %struct.snmp_mib { ptr @.str.74, i32 60 }, %struct.snmp_mib { ptr @.str.75, i32 61 }, %struct.snmp_mib { ptr @.str.76, i32 62 }, %struct.snmp_mib { ptr @.str.77, i32 63 }, %struct.snmp_mib { ptr @.str.78, i32 64 }, %struct.snmp_mib { ptr @.str.79, i32 65 }, %struct.snmp_mib { ptr @.str.80, i32 66 }, %struct.snmp_mib { ptr @.str.81, i32 67 }, %struct.snmp_mib { ptr @.str.82, i32 68 }, %struct.snmp_mib { ptr @.str.83, i32 69 }, %struct.snmp_mib { ptr @.str.84, i32 70 }, %struct.snmp_mib { ptr @.str.85, i32 71 }, %struct.snmp_mib { ptr @.str.86, i32 72 }, %struct.snmp_mib { ptr @.str.87, i32 73 }, %struct.snmp_mib { ptr @.str.88, i32 74 }, %struct.snmp_mib { ptr @.str.89, i32 75 }, %struct.snmp_mib { ptr @.str.90, i32 76 }, %struct.snmp_mib { ptr @.str.91, i32 77 }, %struct.snmp_mib { ptr @.str.92, i32 79 }, %struct.snmp_mib { ptr @.str.93, i32 80 }, %struct.snmp_mib { ptr @.str.94, i32 81 }, %struct.snmp_mib { ptr @.str.95, i32 82 }, %struct.snmp_mib { ptr @.str.96, i32 83 }, %struct.snmp_mib { ptr @.str.97, i32 84 }, %struct.snmp_mib { ptr @.str.98, i32 85 }, %struct.snmp_mib { ptr @.str.99, i32 86 }, %struct.snmp_mib { ptr @.str.100, i32 87 }, %struct.snmp_mib { ptr @.str.101, i32 88 }, %struct.snmp_mib { ptr @.str.102, i32 89 }, %struct.snmp_mib { ptr @.str.103, i32 90 }, %struct.snmp_mib { ptr @.str.104, i32 91 }, %struct.snmp_mib { ptr @.str.105, i32 92 }, %struct.snmp_mib { ptr @.str.106, i32 93 }, %struct.snmp_mib { ptr @.str.107, i32 94 }, %struct.snmp_mib { ptr @.str.108, i32 95 }, %struct.snmp_mib { ptr @.str.109, i32 96 }, %struct.snmp_mib { ptr @.str.110, i32 97 }, %struct.snmp_mib { ptr @.str.111, i32 98 }, %struct.snmp_mib { ptr @.str.112, i32 99 }, %struct.snmp_mib { ptr @.str.113, i32 100 }, %struct.snmp_mib { ptr @.str.114, i32 101 }, %struct.snmp_mib { ptr @.str.115, i32 102 }, %struct.snmp_mib { ptr @.str.116, i32 103 }, %struct.snmp_mib { ptr @.str.117, i32 104 }, %struct.snmp_mib { ptr @.str.118, i32 105 }, %struct.snmp_mib { ptr @.str.119, i32 106 }, %struct.snmp_mib { ptr @.str.120, i32 107 }, %struct.snmp_mib { ptr @.str.121, i32 108 }, %struct.snmp_mib { ptr @.str.122, i32 109 }, %struct.snmp_mib { ptr @.str.123, i32 110 }, %struct.snmp_mib { ptr @.str.124, i32 111 }, %struct.snmp_mib { ptr @.str.125, i32 112 }, %struct.snmp_mib { ptr @.str.126, i32 113 }, %struct.snmp_mib { ptr @.str.127, i32 114 }, %struct.snmp_mib { ptr @.str.128, i32 115 }, %struct.snmp_mib { ptr @.str.129, i32 116 }, %struct.snmp_mib { ptr @.str.130, i32 117 }, %struct.snmp_mib { ptr @.str.131, i32 118 }, %struct.snmp_mib { ptr @.str.132, i32 119 }, %struct.snmp_mib { ptr @.str.133, i32 120 }, %struct.snmp_mib { ptr @.str.134, i32 121 }, %struct.snmp_mib { ptr @.str.135, i32 122 }, %struct.snmp_mib { ptr @.str.136, i32 123 }, %struct.snmp_mib { ptr @.str.137, i32 124 }, %struct.snmp_mib { ptr @.str.138, i32 125 }, %struct.snmp_mib zeroinitializer], [240 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0ATcpExt:\00", [23 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %lu\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0AIpExt:\00", [24 x i8] zeroinitializer }, align 32
@snmp4_ipextstats_list = internal constant { [19 x %struct.snmp_mib], [40 x i8] } { [19 x %struct.snmp_mib] [%struct.snmp_mib { ptr @.str.139, i32 9 }, %struct.snmp_mib { ptr @.str.140, i32 12 }, %struct.snmp_mib { ptr @.str.141, i32 23 }, %struct.snmp_mib { ptr @.str.142, i32 24 }, %struct.snmp_mib { ptr @.str.143, i32 25 }, %struct.snmp_mib { ptr @.str.144, i32 26 }, %struct.snmp_mib { ptr @.str.145, i32 2 }, %struct.snmp_mib { ptr @.str.146, i32 6 }, %struct.snmp_mib { ptr @.str.147, i32 27 }, %struct.snmp_mib { ptr @.str.148, i32 28 }, %struct.snmp_mib { ptr @.str.149, i32 29 }, %struct.snmp_mib { ptr @.str.150, i32 30 }, %struct.snmp_mib { ptr @.str.151, i32 31 }, %struct.snmp_mib { ptr @.str.152, i32 32 }, %struct.snmp_mib { ptr @.str.153, i32 33 }, %struct.snmp_mib { ptr @.str.154, i32 34 }, %struct.snmp_mib { ptr @.str.155, i32 35 }, %struct.snmp_mib { ptr @.str.156, i32 36 }, %struct.snmp_mib zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %llu\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SyncookiesSent\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SyncookiesRecv\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SyncookiesFailed\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EmbryonicRsts\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PruneCalled\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RcvPruned\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OfoPruned\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OutOfWindowIcmps\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LockDroppedIcmps\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ArpFilter\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TW\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TWRecycled\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TWKilled\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PAWSActive\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PAWSEstab\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DelayedACKs\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DelayedACKLocked\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DelayedACKLost\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ListenOverflows\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ListenDrops\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TCPHPHits\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCPPureAcks\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TCPHPAcks\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPRenoRecovery\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPSackRecovery\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPSACKReneging\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCPSACKReorder\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCPRenoReorder\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCPTSReorder\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCPFullUndo\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCPPartialUndo\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCPDSACKUndo\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCPLossUndo\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TCPLostRetransmit\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPRenoFailures\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPSackFailures\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPLossFailures\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCPFastRetrans\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TCPSlowStartRetrans\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCPTimeouts\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TCPLossProbes\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TCPLossProbeRecovery\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TCPRenoRecoveryFail\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TCPSackRecoveryFail\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPRcvCollapsed\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TCPBacklogCoalesce\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPDSACKOldSent\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPDSACKOfoSent\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCPDSACKRecv\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPDSACKOfoRecv\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCPAbortOnData\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPAbortOnClose\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCPAbortOnMemory\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TCPAbortOnTimeout\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCPAbortOnLinger\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCPAbortFailed\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TCPMemoryPressures\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TCPMemoryPressuresChrono\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCPSACKDiscard\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TCPDSACKIgnoredOld\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TCPDSACKIgnoredNoUndo\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPSpuriousRTOs\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCPMD5NotFound\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCPMD5Unexpected\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TCPMD5Failure\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCPSackShifted\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TCPSackMerged\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TCPSackShiftFallback\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCPBacklogDrop\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PFMemallocDrop\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TCPMinTTLDrop\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TCPDeferAcceptDrop\00", [45 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IPReversePathFilter\00", [44 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TCPTimeWaitOverflow\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TCPReqQFullDoCookies\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPReqQFullDrop\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCPRetransFail\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCPRcvCoalesce\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCPOFOQueue\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TCPOFODrop\00", [21 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCPOFOMerge\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPChallengeACK\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPSYNChallenge\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TCPFastOpenActive\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TCPFastOpenActiveFail\00", [42 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TCPFastOpenPassive\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TCPFastOpenPassiveFail\00", [41 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TCPFastOpenListenOverflow\00", [38 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TCPFastOpenCookieReqd\00", [42 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TCPFastOpenBlackhole\00", [43 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TCPSpuriousRtxHostQueues\00", [39 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BusyPollRxPackets\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCPAutoCorking\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TCPFromZeroWindowAdv\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TCPToZeroWindowAdv\00", [45 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TCPWantZeroWindowAdv\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TCPSynRetrans\00", [18 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPOrigDataSent\00", [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TCPHystartTrainDetect\00", [42 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TCPHystartTrainCwnd\00", [44 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TCPHystartDelayDetect\00", [42 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TCPHystartDelayCwnd\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TCPACKSkippedSynRecv\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TCPACKSkippedPAWS\00", [46 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCPACKSkippedSeq\00", [47 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TCPACKSkippedFinWait2\00", [42 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TCPACKSkippedTimeWait\00", [42 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TCPACKSkippedChallenge\00", [41 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCPWinProbe\00", [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCPKeepAlive\00", [19 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCPMTUPFail\00", [20 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCPMTUPSuccess\00", [17 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCPDelivered\00", [19 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCPDeliveredCE\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCPAckCompressed\00", [47 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TCPZeroWindowDrop\00", [46 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCPRcvQDrop\00", [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCPWqueueTooBig\00", [16 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TCPFastOpenPassiveAltKey\00", [39 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TcpTimeoutRehash\00", [47 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TcpDuplicateDataRehash\00", [41 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCPDSACKRecvSegs\00", [47 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TCPDSACKIgnoredDubious\00", [41 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TCPMigrateReqSuccess\00", [43 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TCPMigrateReqFailure\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"InNoRoutes\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"InTruncatedPkts\00", [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"InMcastPkts\00", [20 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OutMcastPkts\00", [19 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"InBcastPkts\00", [20 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OutBcastPkts\00", [19 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"InOctets\00", [23 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OutOctets\00", [22 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"InMcastOctets\00", [18 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OutMcastOctets\00", [17 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"InBcastOctets\00", [18 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OutBcastOctets\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"InCsumErrors\00", [19 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"InNoECTPkts\00", [20 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"InECT1Pkts\00", [21 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"InECT0Pkts\00", [21 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"InCEPkts\00", [23 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ReasmOverlaps\00", [18 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Ip: Forwarding DefaultTTL\00", [38 x i8] zeroinitializer }, align 32
@snmp4_ipstats_list = internal constant { [18 x %struct.snmp_mib], [48 x i8] } { [18 x %struct.snmp_mib] [%struct.snmp_mib { ptr @.str.159, i32 1 }, %struct.snmp_mib { ptr @.str.160, i32 7 }, %struct.snmp_mib { ptr @.str.161, i32 10 }, %struct.snmp_mib { ptr @.str.162, i32 4 }, %struct.snmp_mib { ptr @.str.163, i32 11 }, %struct.snmp_mib { ptr @.str.164, i32 13 }, %struct.snmp_mib { ptr @.str.165, i32 3 }, %struct.snmp_mib { ptr @.str.166, i32 5 }, %struct.snmp_mib { ptr @.str.167, i32 14 }, %struct.snmp_mib { ptr @.str.168, i32 15 }, %struct.snmp_mib { ptr @.str.169, i32 16 }, %struct.snmp_mib { ptr @.str.170, i32 17 }, %struct.snmp_mib { ptr @.str.171, i32 18 }, %struct.snmp_mib { ptr @.str.172, i32 19 }, %struct.snmp_mib { ptr @.str.173, i32 20 }, %struct.snmp_mib { ptr @.str.174, i32 21 }, %struct.snmp_mib { ptr @.str.175, i32 22 }, %struct.snmp_mib zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\0AIp: %d %d\00", [21 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"InReceives\00", [21 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"InHdrErrors\00", [20 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"InAddrErrors\00", [19 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ForwDatagrams\00", [18 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"InUnknownProtos\00", [16 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"InDiscards\00", [21 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"InDelivers\00", [21 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OutRequests\00", [20 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OutDiscards\00", [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OutNoRoutes\00", [20 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ReasmTimeout\00", [19 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ReasmReqds\00", [21 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ReasmOKs\00", [23 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ReasmFails\00", [21 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FragOKs\00", [24 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FragFails\00", [22 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FragCreates\00", [20 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0AIcmp: InMsgs InErrors InCsumErrors\00", [60 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" In%s\00", [26 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" OutMsgs OutErrors\00", [45 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" Out%s\00", [25 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0AIcmp: %lu %lu %lu\00", [45 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" %lu %lu\00", [23 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DestUnreachs\00", [19 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TimeExcds\00", [22 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ParmProbs\00", [22 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SrcQuenchs\00", [21 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Redirects\00", [22 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Echos\00", [26 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EchoReps\00", [23 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Timestamps\00", [21 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TimestampReps\00", [18 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AddrMasks\00", [22 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AddrMaskReps\00", [19 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0AIcmpMsg:\00", [22 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" %sType%u\00", [22 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Out\00", [28 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"In\00", [29 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0ATcp:\00", [26 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %ld\00", [27 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0AUdp:\00", [26 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0AUdpLite:\00", [22 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RtoAlgorithm\00", [19 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RtoMin\00", [25 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RtoMax\00", [25 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MaxConn\00", [24 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ActiveOpens\00", [20 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PassiveOpens\00", [19 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AttemptFails\00", [19 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EstabResets\00", [20 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CurrEstab\00", [22 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"InSegs\00", [25 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OutSegs\00", [24 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RetransSegs\00", [20 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"InErrs\00", [25 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OutRsts\00", [24 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"InDatagrams\00", [20 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NoPorts\00", [24 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"InErrors\00", [23 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OutDatagrams\00", [19 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RcvbufErrors\00", [19 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SndbufErrors\00", [19 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IgnoredMulti\00", [19 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MemErrors\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.223 = private unnamed_addr constant [12 x i8] c"ip_proc_ops\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 549, i32 48 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 522, i32 30 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 525, i32 30 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 528, i32 30 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 60, i32 18 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 64, i32 18 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 67, i32 18 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 69, i32 18 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 71, i32 19 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 475, i32 16 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 477, i32 19 }
@___asan_gen_.256 = private unnamed_addr constant [15 x i8] c"snmp4_net_list\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 174, i32 30 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 479, i32 16 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 486, i32 20 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 493, i32 16 }
@___asan_gen_.268 = private unnamed_addr constant [22 x i8] c"snmp4_ipextstats_list\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 100, i32 30 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 506, i32 20 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 175, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 176, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 177, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 178, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 179, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 180, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 181, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 182, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 183, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 184, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 185, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 186, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 187, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 188, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 189, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 190, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 191, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 192, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 193, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 194, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 195, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 196, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 197, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 198, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 199, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 200, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 201, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 202, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 203, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 204, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 205, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 206, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 207, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 208, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 209, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 210, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 211, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 212, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 213, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 214, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 215, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 216, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 217, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 218, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 219, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 220, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 221, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 222, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 223, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 224, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 225, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 226, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 227, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 228, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 229, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 230, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 231, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 232, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 233, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 234, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 235, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 236, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 237, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 238, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 239, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 240, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 241, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 242, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 243, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 244, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 245, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 246, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 247, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 248, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 249, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 250, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 251, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 252, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 253, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 254, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 255, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 256, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 257, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 258, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 259, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 260, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 261, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 262, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 263, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 264, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 265, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 266, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 267, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 268, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 269, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 270, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 271, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 272, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 273, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 274, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 275, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 276, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 277, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 278, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 279, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 280, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 281, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 282, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 283, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 284, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 285, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 286, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 287, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 288, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 289, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 290, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 291, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 292, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 293, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 294, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 295, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 296, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 297, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 298, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 299, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 101, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 102, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 103, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 104, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 105, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 106, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 107, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 108, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 109, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 110, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 111, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 112, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 114, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 115, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 116, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 117, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 118, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 119, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 384, i32 16 }
@___asan_gen_.706 = private unnamed_addr constant [19 x i8] c"snmp4_ipstats_list\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 78, i32 30 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 388, i32 18 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 79, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 80, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 81, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 82, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 83, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 84, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 85, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 86, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 87, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 88, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 89, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 90, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 91, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 92, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 93, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 94, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 95, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 352, i32 16 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 354, i32 19 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 355, i32 16 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 357, i32 19 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 358, i32 18 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 365, i32 18 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 127, i32 4 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 128, i32 4 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 129, i32 4 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 130, i32 4 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 131, i32 4 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 132, i32 4 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 133, i32 4 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 134, i32 4 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 135, i32 4 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 136, i32 4 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 137, i32 4 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 309, i32 17 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 311, i32 20 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 312, i32 23 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 312, i32 31 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 410, i32 16 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 420, i32 20 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 429, i32 16 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 439, i32 16 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 143, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 144, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 145, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 146, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 147, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 148, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 149, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 150, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 151, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 152, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 153, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 154, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 155, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 156, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 162, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 163, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 164, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 165, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 166, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 167, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 169, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.902 = private constant [19 x i8] c"../net/ipv4/proc.c\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 170, i32 2 }
@llvm.compiler.used = appending global [227 x ptr] [ptr @ip_proc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @snmp4_net_list, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @snmp4_ipextstats_list, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @snmp4_ipstats_list, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222], section "llvm.metadata"
@0 = internal global [227 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_proc_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snmp4_net_list to i32), i32 1008, i32 1248, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snmp4_ipextstats_list to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snmp4_ipstats_list to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_misc_proc_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip_proc_ops) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_proc_init_net(ptr nocapture noundef readonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @sockstat_seq_show, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net, align 4
  %call2 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @netstat_seq_show, ptr noundef null) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.out_netstat_crit_edge, label %if.end5

if.end.out_netstat_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_netstat

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_net, align 4
  %call7 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %5, ptr noundef nonnull @snmp_seq_show, ptr noundef null) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %out_snmp, label %if.end5.return_crit_edge

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

out_snmp:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %7) #7
  br label %out_netstat

out_netstat:                                      ; preds = %out_snmp, %if.end.out_netstat_crit_edge
  %8 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %9) #7
  br label %return

return:                                           ; preds = %out_netstat, %if.end5.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5.return_crit_edge ], [ -12, %entry.return_crit_edge ], [ -12, %out_netstat ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_proc_exit_net(ptr nocapture noundef readonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.2, ptr noundef %1) #7
  %2 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %3) #7
  %4 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_single(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sockstat_seq_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call = tail call i32 @tcp_orphan_count_sum() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.proto, ptr @tcp_prot, i32 0, i32 33) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.proto, ptr @tcp_prot, i32 0, i32 33), align 4
  %call.i.i27 = tail call i64 @__percpu_counter_sum(ptr noundef %2) #7
  %3 = tail call i64 @llvm.smax.i64(i64 %call.i.i27, i64 0) #7
  %conv.i = trunc i64 %3 to i32
  tail call void @socket_seq_show(ptr noundef %seq) #7
  %call2 = tail call i32 @sock_prot_inuse_get(ptr noundef %1, ptr noundef nonnull @tcp_prot) #7
  %ipv4 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ipv4, i32 noundef 4) #7
  %4 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ipv4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.proto, ptr @tcp_prot, i32 0, i32 32) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.proto, ptr @tcp_prot, i32 0, i32 32), align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %6, i32 noundef 4) #7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.3, i32 noundef %call2, i32 noundef %call, i32 noundef %5, i32 noundef %conv.i, i32 noundef %8) #7
  %call5 = tail call i32 @sock_prot_inuse_get(ptr noundef %1, ptr noundef nonnull @udp_prot) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.proto, ptr @udp_prot, i32 0, i32 32) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.proto, ptr @udp_prot, i32 0, i32 32), align 4
  %call.i.i.i28 = tail call zeroext i1 @__kasan_check_read(ptr noundef %9, i32 noundef 4) #7
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, i32 noundef %call5, i32 noundef %11) #7
  %call7 = tail call i32 @sock_prot_inuse_get(ptr noundef %1, ptr noundef nonnull @udplite_prot) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.5, i32 noundef %call7) #7
  %call8 = tail call i32 @sock_prot_inuse_get(ptr noundef %1, ptr noundef nonnull @raw_prot) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.6, i32 noundef %call8) #7
  %fqdir = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 24
  %12 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fqdir, align 4
  %nelems = getelementptr inbounds %struct.fqdir, ptr %13, i32 0, i32 8, i32 8
  %call.i.i26 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems, i32 noundef 4) #7
  %14 = ptrtoint ptr %nelems to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %nelems, align 4
  %16 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fqdir, align 4
  %mem.i = getelementptr inbounds %struct.fqdir, ptr %17, i32 0, i32 10
  %call.i.i.i29 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mem.i, i32 noundef 4) #7
  %18 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %mem.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, i32 noundef %15, i32 noundef %19) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netstat_seq_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.8) #7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0149 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [126 x %struct.snmp_mib], ptr @snmp4_net_list, i32 0, i32 %i.0149
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef %3) #7
  %inc = add nuw nsw i32 %i.0149, 1
  %exitcond.not = icmp eq i32 %inc, 125
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.10) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 500) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.cond29.preheader, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %call4151 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call4151, i32 %5)
  %cmp5152 = icmp ult i32 %call4151, %5
  br i1 %cmp5152, label %for.cond7.preheader.lr.ph, label %for.cond3.preheader.for.body24.preheader_crit_edge

for.cond3.preheader.for.body24.preheader_crit_edge: ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24.preheader

for.body24.preheader:                             ; preds = %for.cond3.loopexit.for.body24.preheader_crit_edge, %for.cond3.preheader.for.body24.preheader_crit_edge
  br label %for.body24

for.cond7.preheader.lr.ph:                        ; preds = %for.cond3.preheader
  %net_statistics = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30, i32 3
  br label %for.cond7.preheader

for.cond29.preheader:                             ; preds = %for.end
  %net_statistics34 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30, i32 3
  br label %for.body32

for.cond3.loopexit:                               ; preds = %for.body11
  %call4 = tail call i32 @cpumask_next(i32 noundef %call4153, ptr noundef nonnull @__cpu_possible_mask) #11
  %cmp5 = icmp ult i32 %call4, %5
  br i1 %cmp5, label %for.cond3.loopexit.for.cond7.preheader_crit_edge, label %for.cond3.loopexit.for.body24.preheader_crit_edge

for.cond3.loopexit.for.body24.preheader_crit_edge: ; preds = %for.cond3.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24.preheader

for.cond3.loopexit.for.cond7.preheader_crit_edge: ; preds = %for.cond3.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond3.loopexit.for.cond7.preheader_crit_edge, %for.cond7.preheader.lr.ph
  %call4153 = phi i32 [ %call4151, %for.cond7.preheader.lr.ph ], [ %call4, %for.cond3.loopexit.for.cond7.preheader_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call4153
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  br label %for.body11

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.cond7.preheader
  %i2.0150 = phi i32 [ 0, %for.cond7.preheader ], [ %inc18, %for.body11.for.body11_crit_edge ]
  %8 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_statistics, align 4
  %entry13 = getelementptr [126 x %struct.snmp_mib], ptr @snmp4_net_list, i32 0, i32 %i2.0150, i32 1
  %10 = ptrtoint ptr %entry13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entry13, align 4
  %12 = ptrtoint ptr %9 to i32
  %add.i = add i32 %7, %12
  %13 = inttoptr i32 %add.i to ptr
  %add.ptr.i = getelementptr i32, ptr %13, i32 %11
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  %arrayidx15 = getelementptr i32, ptr %call7.i.i, i32 %i2.0150
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx15, align 4
  %conv16 = add i32 %17, %15
  store i32 %conv16, ptr %arrayidx15, align 4
  %inc18 = add i32 %i2.0150, 1
  %arrayidx8 = getelementptr [126 x %struct.snmp_mib], ptr @snmp4_net_list, i32 0, i32 %inc18
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx8, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %for.cond3.loopexit, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.body24.preheader
  %i.1154 = phi i32 [ %inc27, %for.body24.for.body24_crit_edge ], [ 0, %for.body24.preheader ]
  %arrayidx25 = getelementptr i32, ptr %call7.i.i, i32 %i.1154
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx25, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %21) #7
  %inc27 = add nuw nsw i32 %i.1154, 1
  %exitcond165.not = icmp eq i32 %inc27, 125
  br i1 %exitcond165.not, label %for.body24.if.end_crit_edge, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24

for.body24.if.end_crit_edge:                      ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %for.cond29.preheader
  %i.2155 = phi i32 [ 0, %for.cond29.preheader ], [ %inc39, %for.body32.for.body32_crit_edge ]
  %22 = ptrtoint ptr %net_statistics34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_statistics34, align 4
  %entry36 = getelementptr [126 x %struct.snmp_mib], ptr @snmp4_net_list, i32 0, i32 %i.2155, i32 1
  %24 = ptrtoint ptr %entry36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entry36, align 4
  %call37 = tail call i32 @snmp_fold_field(ptr noundef %23, i32 noundef %25) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %call37) #7
  %inc39 = add nuw nsw i32 %i.2155, 1
  %exitcond166.not = icmp eq i32 %inc39, 125
  br i1 %exitcond166.not, label %for.body32.if.end_crit_edge, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body32

for.body32.if.end_crit_edge:                      ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %for.body32.if.end_crit_edge, %for.body24.if.end_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.12) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.139) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.140) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.141) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.142) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.143) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.144) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.145) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.146) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.147) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.148) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.149) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.150) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.151) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.152) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.153) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.154) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.155) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.156) #7
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.12) #7
  br i1 %tobool.not, label %for.cond83.preheader, label %if.then51

for.cond83.preheader:                             ; preds = %if.end
  %mib87 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30
  br label %for.body86

if.then51:                                        ; preds = %if.end
  %26 = call ptr @memset(ptr %call7.i.i, i32 0, i32 144)
  %call55158 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call55158, i32 %27)
  %cmp56159 = icmp ult i32 %call55158, %27
  br i1 %cmp56159, label %for.cond59.preheader.lr.ph, label %if.then51.for.cond74.preheader_crit_edge

if.then51.for.cond74.preheader_crit_edge:         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond74.preheader

for.cond59.preheader.lr.ph:                       ; preds = %if.then51
  %mib64 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30
  br label %for.cond59.preheader

for.cond54.loopexit:                              ; preds = %for.body63
  %call55 = tail call i32 @cpumask_next(i32 noundef %call55160, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %cmp56 = icmp ult i32 %call55, %28
  br i1 %cmp56, label %for.cond54.loopexit.for.cond59.preheader_crit_edge, label %for.cond54.loopexit.for.cond74.preheader_crit_edge

for.cond54.loopexit.for.cond74.preheader_crit_edge: ; preds = %for.cond54.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond74.preheader

for.cond54.loopexit.for.cond59.preheader_crit_edge: ; preds = %for.cond54.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond59.preheader

for.cond59.preheader:                             ; preds = %for.cond54.loopexit.for.cond59.preheader_crit_edge, %for.cond59.preheader.lr.ph
  %call55160 = phi i32 [ %call55158, %for.cond59.preheader.lr.ph ], [ %call55, %for.cond54.loopexit.for.cond59.preheader_crit_edge ]
  br label %for.body63

for.cond74.preheader:                             ; preds = %for.cond54.loopexit.for.cond74.preheader_crit_edge, %if.then51.for.cond74.preheader_crit_edge
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %30) #7
  %arrayidx78.1 = getelementptr i64, ptr %call7.i.i, i32 1
  %31 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx78.1, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %32) #7
  %arrayidx78.2 = getelementptr i64, ptr %call7.i.i, i32 2
  %33 = ptrtoint ptr %arrayidx78.2 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx78.2, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %34) #7
  %arrayidx78.3 = getelementptr i64, ptr %call7.i.i, i32 3
  %35 = ptrtoint ptr %arrayidx78.3 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx78.3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %36) #7
  %arrayidx78.4 = getelementptr i64, ptr %call7.i.i, i32 4
  %37 = ptrtoint ptr %arrayidx78.4 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx78.4, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %38) #7
  %arrayidx78.5 = getelementptr i64, ptr %call7.i.i, i32 5
  %39 = ptrtoint ptr %arrayidx78.5 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx78.5, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %40) #7
  %arrayidx78.6 = getelementptr i64, ptr %call7.i.i, i32 6
  %41 = ptrtoint ptr %arrayidx78.6 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx78.6, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %42) #7
  %arrayidx78.7 = getelementptr i64, ptr %call7.i.i, i32 7
  %43 = ptrtoint ptr %arrayidx78.7 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx78.7, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %44) #7
  %arrayidx78.8 = getelementptr i64, ptr %call7.i.i, i32 8
  %45 = ptrtoint ptr %arrayidx78.8 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx78.8, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %46) #7
  %arrayidx78.9 = getelementptr i64, ptr %call7.i.i, i32 9
  %47 = ptrtoint ptr %arrayidx78.9 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx78.9, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %48) #7
  %arrayidx78.10 = getelementptr i64, ptr %call7.i.i, i32 10
  %49 = ptrtoint ptr %arrayidx78.10 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx78.10, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %50) #7
  %arrayidx78.11 = getelementptr i64, ptr %call7.i.i, i32 11
  %51 = ptrtoint ptr %arrayidx78.11 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx78.11, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %52) #7
  %arrayidx78.12 = getelementptr i64, ptr %call7.i.i, i32 12
  %53 = ptrtoint ptr %arrayidx78.12 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx78.12, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %54) #7
  %arrayidx78.13 = getelementptr i64, ptr %call7.i.i, i32 13
  %55 = ptrtoint ptr %arrayidx78.13 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx78.13, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %56) #7
  %arrayidx78.14 = getelementptr i64, ptr %call7.i.i, i32 14
  %57 = ptrtoint ptr %arrayidx78.14 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx78.14, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %58) #7
  %arrayidx78.15 = getelementptr i64, ptr %call7.i.i, i32 15
  %59 = ptrtoint ptr %arrayidx78.15 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx78.15, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %60) #7
  %arrayidx78.16 = getelementptr i64, ptr %call7.i.i, i32 16
  %61 = ptrtoint ptr %arrayidx78.16 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx78.16, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %62) #7
  %arrayidx78.17 = getelementptr i64, ptr %call7.i.i, i32 17
  %63 = ptrtoint ptr %arrayidx78.17 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx78.17, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %64) #7
  br label %if.end95

for.body63:                                       ; preds = %for.body63.for.body63_crit_edge, %for.cond59.preheader
  %i52.0157 = phi i32 [ 0, %for.cond59.preheader ], [ %inc71, %for.body63.for.body63_crit_edge ]
  %65 = ptrtoint ptr %mib64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mib64, align 4
  %entry66 = getelementptr [19 x %struct.snmp_mib], ptr @snmp4_ipextstats_list, i32 0, i32 %i52.0157, i32 1
  %67 = ptrtoint ptr %entry66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %entry66, align 4
  %call67 = tail call i64 @snmp_get_cpu_field64(ptr noundef %66, i32 noundef %call55160, i32 noundef %68, i32 noundef 296) #7
  %arrayidx68 = getelementptr i64, ptr %call7.i.i, i32 %i52.0157
  %69 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx68, align 8
  %add69 = add i64 %70, %call67
  store i64 %add69, ptr %arrayidx68, align 8
  %inc71 = add nuw nsw i32 %i52.0157, 1
  %exitcond168 = icmp eq i32 %inc71, 18
  br i1 %exitcond168, label %for.cond54.loopexit, label %for.body63.for.body63_crit_edge

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body63

for.body86:                                       ; preds = %for.body86.for.body86_crit_edge, %for.cond83.preheader
  %i.5162 = phi i32 [ 0, %for.cond83.preheader ], [ %inc93, %for.body86.for.body86_crit_edge ]
  %71 = ptrtoint ptr %mib87 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mib87, align 4
  %entry90 = getelementptr [19 x %struct.snmp_mib], ptr @snmp4_ipextstats_list, i32 0, i32 %i.5162, i32 1
  %73 = ptrtoint ptr %entry90 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %entry90, align 4
  %call91 = tail call i64 @snmp_fold_field64(ptr noundef %72, i32 noundef %74, i32 noundef 296) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %call91) #7
  %inc93 = add nuw nsw i32 %i.5162, 1
  %exitcond170.not = icmp eq i32 %inc93, 18
  br i1 %exitcond170.not, label %for.body86.if.end95_crit_edge, label %for.body86.for.body86_crit_edge

for.body86.for.body86_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body86

for.body86.if.end95_crit_edge:                    ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.end95:                                         ; preds = %for.body86.if.end95_crit_edge, %for.cond74.preheader
  tail call void @kfree(ptr noundef %call7.i.i) #7
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #7
  tail call void @mptcp_seq_show(ptr noundef %seq) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snmp_seq_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  %type.i = alloca [16 x i16], align 2
  %vals.i = alloca [16 x i32], align 4
  %buff64.i = alloca [37 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  call void @llvm.lifetime.start.p0(i64 296, ptr nonnull %buff64.i) #7
  %2 = call ptr @memset(ptr %buff64.i, i32 0, i32 296)
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.157) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.159) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.160) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.161) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.162) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.163) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.164) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.165) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.166) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.167) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.168) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.169) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.170) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.171) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.172) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.173) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.174) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.175) #7
  %devconf_all.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 6
  %3 = ptrtoint ptr %devconf_all.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %devconf_all.i, align 4
  %data.i = getelementptr inbounds %struct.ipv4_devconf, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not.i = icmp eq i32 %6, 0
  %cond.i = select i1 %tobool4.not.i, i32 2, i32 1
  %sysctl_ip_default_ttl.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 37
  %7 = ptrtoint ptr %sysctl_ip_default_ttl.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sysctl_ip_default_ttl.i, align 2
  %conv.i = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.158, i32 noundef %cond.i, i32 noundef %conv.i) #7
  %call3.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %9)
  %cmp4.i = icmp ult i32 %call3.i, %9
  br i1 %cmp4.i, label %for.cond10.preheader.lr.ph.i, label %entry.snmp_seq_show_ipstats.exit_crit_edge

entry.snmp_seq_show_ipstats.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %snmp_seq_show_ipstats.exit

for.cond10.preheader.lr.ph.i:                     ; preds = %entry
  %mib.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30
  br label %for.cond10.preheader.i

for.cond7.loopexit.i:                             ; preds = %for.body14.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call5.i, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %10
  br i1 %cmp.i, label %for.cond7.loopexit.i.for.cond10.preheader.i_crit_edge, label %for.cond7.loopexit.i.snmp_seq_show_ipstats.exit_crit_edge

for.cond7.loopexit.i.snmp_seq_show_ipstats.exit_crit_edge: ; preds = %for.cond7.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snmp_seq_show_ipstats.exit

for.cond7.loopexit.i.for.cond10.preheader.i_crit_edge: ; preds = %for.cond7.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond10.preheader.i

for.cond10.preheader.i:                           ; preds = %for.cond7.loopexit.i.for.cond10.preheader.i_crit_edge, %for.cond10.preheader.lr.ph.i
  %call5.i = phi i32 [ %call3.i, %for.cond10.preheader.lr.ph.i ], [ %call.i, %for.cond7.loopexit.i.for.cond10.preheader.i_crit_edge ]
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %for.cond10.preheader.i
  %i6.02.i = phi i32 [ 0, %for.cond10.preheader.i ], [ %inc20.i, %for.body14.i.for.body14.i_crit_edge ]
  %11 = ptrtoint ptr %mib.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mib.i, align 4
  %entry16.i = getelementptr [18 x %struct.snmp_mib], ptr @snmp4_ipstats_list, i32 0, i32 %i6.02.i, i32 1
  %13 = ptrtoint ptr %entry16.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %entry16.i, align 4
  %call17.i = tail call i64 @snmp_get_cpu_field64(ptr noundef %12, i32 noundef %call5.i, i32 noundef %14, i32 noundef 296) #7
  %arrayidx18.i = getelementptr [37 x i64], ptr %buff64.i, i32 0, i32 %i6.02.i
  %15 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx18.i, align 8
  %add.i = add i64 %16, %call17.i
  store i64 %add.i, ptr %arrayidx18.i, align 8
  %inc20.i = add nuw nsw i32 %i6.02.i, 1
  %exitcond.i = icmp eq i32 %inc20.i, 17
  br i1 %exitcond.i, label %for.cond7.loopexit.i, label %for.body14.i.for.body14.i_crit_edge

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body14.i

snmp_seq_show_ipstats.exit:                       ; preds = %for.cond7.loopexit.i.snmp_seq_show_ipstats.exit_crit_edge, %entry.snmp_seq_show_ipstats.exit_crit_edge
  %17 = ptrtoint ptr %buff64.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %buff64.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %18) #7
  %arrayidx28.1.i = getelementptr inbounds [37 x i64], ptr %buff64.i, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx28.1.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx28.1.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %20) #7
  %arrayidx28.2.i = getelementptr inbounds [37 x i64], ptr %buff64.i, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx28.2.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx28.2.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %22) #7
  %arrayidx28.3.i = getelementptr inbounds [37 x i64], ptr %buff64.i, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx28.3.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx28.3.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %24) #7
  %arrayidx28.4.i = getelementptr inbounds [37 x i64], ptr %buff64.i, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx28.4.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx28.4.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %26) #7
  %arrayidx28.5.i = getelementptr inbounds [37 x i64], ptr %buff64.i, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx28.5.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx28.5.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %28) #7
  %arrayidx28.6.i = getelementptr inbounds [37 x i64], ptr %buff64.i, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx28.6.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx28.6.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %30) #7
  %arrayidx28.7.i = getelementptr inbounds [37 x i64], ptr %buff64.i, i32 0, i32 7
  %31 = ptrtoint ptr %arrayidx28.7.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx28.7.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %32) #7
  %arrayidx28.8.i = getelementptr inbounds [37 x i64], ptr %buff64.i, i32 0, i32 8
  %33 = ptrtoint ptr %arrayidx28.8.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx28.8.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %34) #7
  %arrayidx28.9.i = getelementptr inbounds [37 x i64], ptr %buff64.i, i32 0, i32 9
  %35 = ptrtoint ptr %arrayidx28.9.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx28.9.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %36) #7
  %arrayidx28.10.i = getelementptr inbounds [37 x i64], ptr %buff64.i, i32 0, i32 10
  %37 = ptrtoint ptr %arrayidx28.10.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx28.10.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %38) #7
  %arrayidx28.11.i = getelementptr inbounds [37 x i64], ptr %buff64.i, i32 0, i32 11
  %39 = ptrtoint ptr %arrayidx28.11.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx28.11.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %40) #7
  %arrayidx28.12.i = getelementptr inbounds [37 x i64], ptr %buff64.i, i32 0, i32 12
  %41 = ptrtoint ptr %arrayidx28.12.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx28.12.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %42) #7
  %arrayidx28.13.i = getelementptr inbounds [37 x i64], ptr %buff64.i, i32 0, i32 13
  %43 = ptrtoint ptr %arrayidx28.13.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx28.13.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %44) #7
  %arrayidx28.14.i = getelementptr inbounds [37 x i64], ptr %buff64.i, i32 0, i32 14
  %45 = ptrtoint ptr %arrayidx28.14.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx28.14.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %46) #7
  %arrayidx28.15.i = getelementptr inbounds [37 x i64], ptr %buff64.i, i32 0, i32 15
  %47 = ptrtoint ptr %arrayidx28.15.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx28.15.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %48) #7
  %arrayidx28.16.i = getelementptr inbounds [37 x i64], ptr %buff64.i, i32 0, i32 16
  %49 = ptrtoint ptr %arrayidx28.16.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx28.16.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i64 noundef %50) #7
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %buff64.i) #7
  %51 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %private.i, align 8
  %icmpmsg_statistics.i = getelementptr inbounds %struct.net, ptr %52, i32 0, i32 30, i32 12
  %53 = ptrtoint ptr %icmpmsg_statistics.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %icmpmsg_statistics.i, align 4
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.176) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.182) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.183) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.184) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.185) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.186) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.187) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.188) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.189) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.190) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.191) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.192) #7
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.178) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.182) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.183) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.184) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.185) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.186) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.187) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.188) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.189) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.190) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.191) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.192) #7
  %icmp_statistics.i = getelementptr inbounds %struct.net, ptr %52, i32 0, i32 30, i32 11
  %55 = ptrtoint ptr %icmp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %icmp_statistics.i, align 4
  %call.i7 = tail call i32 @snmp_fold_field(ptr noundef %56, i32 noundef 1) #7
  %57 = ptrtoint ptr %icmp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %icmp_statistics.i, align 4
  %call16.i = tail call i32 @snmp_fold_field(ptr noundef %58, i32 noundef 2) #7
  %59 = ptrtoint ptr %icmp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %icmp_statistics.i, align 4
  %call19.i = tail call i32 @snmp_fold_field(ptr noundef %60, i32 noundef 27) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.180, i32 noundef %call.i7, i32 noundef %call16.i, i32 noundef %call19.i) #7
  %add.ptr.i = getelementptr %struct.atomic_t, ptr %54, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #7
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %62) #7
  %add.ptr.1.i = getelementptr %struct.atomic_t, ptr %54, i32 11
  %call.i.i.1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.1.i, i32 noundef 4) #7
  %63 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %add.ptr.1.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %64) #7
  %add.ptr.2.i = getelementptr %struct.atomic_t, ptr %54, i32 12
  %call.i.i.2.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.2.i, i32 noundef 4) #7
  %65 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %add.ptr.2.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %66) #7
  %add.ptr.3.i = getelementptr %struct.atomic_t, ptr %54, i32 4
  %call.i.i.3.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.3.i, i32 noundef 4) #7
  %67 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %add.ptr.3.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %68) #7
  %add.ptr.4.i = getelementptr %struct.atomic_t, ptr %54, i32 5
  %call.i.i.4.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.4.i, i32 noundef 4) #7
  %69 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %add.ptr.4.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %70) #7
  %add.ptr.5.i = getelementptr %struct.atomic_t, ptr %54, i32 8
  %call.i.i.5.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.5.i, i32 noundef 4) #7
  %71 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %add.ptr.5.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %72) #7
  %call.i.i.6.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %54, i32 noundef 4) #7
  %73 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %54, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %74) #7
  %add.ptr.7.i = getelementptr %struct.atomic_t, ptr %54, i32 13
  %call.i.i.7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.7.i, i32 noundef 4) #7
  %75 = ptrtoint ptr %add.ptr.7.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %add.ptr.7.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %76) #7
  %add.ptr.8.i = getelementptr %struct.atomic_t, ptr %54, i32 14
  %call.i.i.8.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.8.i, i32 noundef 4) #7
  %77 = ptrtoint ptr %add.ptr.8.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %add.ptr.8.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %78) #7
  %add.ptr.9.i = getelementptr %struct.atomic_t, ptr %54, i32 17
  %call.i.i.9.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.9.i, i32 noundef 4) #7
  %79 = ptrtoint ptr %add.ptr.9.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %add.ptr.9.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %80) #7
  %add.ptr.10.i = getelementptr %struct.atomic_t, ptr %54, i32 18
  %call.i.i.10.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.10.i, i32 noundef 4) #7
  %81 = ptrtoint ptr %add.ptr.10.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %add.ptr.10.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %82) #7
  %83 = ptrtoint ptr %icmp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %icmp_statistics.i, align 4
  %call32.i = tail call i32 @snmp_fold_field(ptr noundef %84, i32 noundef 14) #7
  %85 = ptrtoint ptr %icmp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %icmp_statistics.i, align 4
  %call35.i = tail call i32 @snmp_fold_field(ptr noundef %86, i32 noundef 15) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.181, i32 noundef %call32.i, i32 noundef %call35.i) #7
  %add.ptr43.i = getelementptr %struct.atomic_t, ptr %54, i32 259
  %call.i.i74.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr43.i, i32 noundef 4) #7
  %87 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %add.ptr43.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %88) #7
  %add.ptr43.1.i = getelementptr %struct.atomic_t, ptr %54, i32 267
  %call.i.i74.1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr43.1.i, i32 noundef 4) #7
  %89 = ptrtoint ptr %add.ptr43.1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %add.ptr43.1.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %90) #7
  %add.ptr43.2.i = getelementptr %struct.atomic_t, ptr %54, i32 268
  %call.i.i74.2.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr43.2.i, i32 noundef 4) #7
  %91 = ptrtoint ptr %add.ptr43.2.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %add.ptr43.2.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %92) #7
  %add.ptr43.3.i = getelementptr %struct.atomic_t, ptr %54, i32 260
  %call.i.i74.3.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr43.3.i, i32 noundef 4) #7
  %93 = ptrtoint ptr %add.ptr43.3.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %add.ptr43.3.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %94) #7
  %add.ptr43.4.i = getelementptr %struct.atomic_t, ptr %54, i32 261
  %call.i.i74.4.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr43.4.i, i32 noundef 4) #7
  %95 = ptrtoint ptr %add.ptr43.4.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %add.ptr43.4.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %96) #7
  %add.ptr43.5.i = getelementptr %struct.atomic_t, ptr %54, i32 264
  %call.i.i74.5.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr43.5.i, i32 noundef 4) #7
  %97 = ptrtoint ptr %add.ptr43.5.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %add.ptr43.5.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %98) #7
  %add.ptr43.6.i = getelementptr %struct.atomic_t, ptr %54, i32 256
  %call.i.i74.6.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr43.6.i, i32 noundef 4) #7
  %99 = ptrtoint ptr %add.ptr43.6.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %add.ptr43.6.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %100) #7
  %add.ptr43.7.i = getelementptr %struct.atomic_t, ptr %54, i32 269
  %call.i.i74.7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr43.7.i, i32 noundef 4) #7
  %101 = ptrtoint ptr %add.ptr43.7.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %add.ptr43.7.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %102) #7
  %add.ptr43.8.i = getelementptr %struct.atomic_t, ptr %54, i32 270
  %call.i.i74.8.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr43.8.i, i32 noundef 4) #7
  %103 = ptrtoint ptr %add.ptr43.8.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %add.ptr43.8.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %104) #7
  %add.ptr43.9.i = getelementptr %struct.atomic_t, ptr %54, i32 273
  %call.i.i74.9.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr43.9.i, i32 noundef 4) #7
  %105 = ptrtoint ptr %add.ptr43.9.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %add.ptr43.9.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %106) #7
  %add.ptr43.10.i = getelementptr %struct.atomic_t, ptr %54, i32 274
  %call.i.i74.10.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr43.10.i, i32 noundef 4) #7
  %107 = ptrtoint ptr %add.ptr43.10.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %add.ptr43.10.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %108) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %type.i) #7
  %109 = call ptr @memset(ptr %type.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vals.i) #7
  %110 = call ptr @memset(ptr %vals.i, i32 255, i32 64)
  %111 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %private.i, align 8
  %icmpmsg_statistics.i9 = getelementptr inbounds %struct.net, ptr %112, i32 0, i32 30, i32 12
  %arrayidx9.i.1.i = getelementptr inbounds i32, ptr %vals.i, i32 1
  %arrayidx9.i.2.i = getelementptr inbounds i32, ptr %vals.i, i32 2
  %arrayidx9.i.3.i = getelementptr inbounds i32, ptr %vals.i, i32 3
  %arrayidx9.i.4.i = getelementptr inbounds i32, ptr %vals.i, i32 4
  %arrayidx9.i.5.i = getelementptr inbounds i32, ptr %vals.i, i32 5
  %arrayidx9.i.6.i = getelementptr inbounds i32, ptr %vals.i, i32 6
  %arrayidx9.i.7.i = getelementptr inbounds i32, ptr %vals.i, i32 7
  %arrayidx9.i.8.i = getelementptr inbounds i32, ptr %vals.i, i32 8
  %arrayidx9.i.9.i = getelementptr inbounds i32, ptr %vals.i, i32 9
  %arrayidx9.i.10.i = getelementptr inbounds i32, ptr %vals.i, i32 10
  %arrayidx9.i.11.i = getelementptr inbounds i32, ptr %vals.i, i32 11
  %arrayidx9.i.12.i = getelementptr inbounds i32, ptr %vals.i, i32 12
  %arrayidx9.i.13.i = getelementptr inbounds i32, ptr %vals.i, i32 13
  %arrayidx9.i.14.i = getelementptr inbounds i32, ptr %vals.i, i32 14
  %arrayidx9.i.15.i = getelementptr inbounds i32, ptr %vals.i, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %snmp_seq_show_ipstats.exit
  %count.042.i = phi i32 [ 0, %snmp_seq_show_ipstats.exit ], [ %count.042.i.be, %for.body.i.backedge ]
  %i.040.i = phi i32 [ 0, %snmp_seq_show_ipstats.exit ], [ %i.040.i.be, %for.body.i.backedge ]
  %113 = ptrtoint ptr %icmpmsg_statistics.i9 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %icmpmsg_statistics.i9, align 4
  %arrayidx.i = getelementptr [512 x %struct.atomic_t], ptr %114, i32 0, i32 %i.040.i
  %call.i.i.i10 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #7
  %115 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i = icmp eq i32 %116, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %conv.i11 = trunc i32 %i.040.i to i16
  %arrayidx1.i = getelementptr [16 x i16], ptr %type.i, i32 0, i32 %count.042.i
  %117 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv.i11, ptr %arrayidx1.i, align 2
  %inc.i = add i32 %count.042.i, 1
  %arrayidx2.i = getelementptr [16 x i32], ptr %vals.i, i32 0, i32 %count.042.i
  %118 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %116, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc.i)
  %cmp3.i = icmp eq i32 %inc.i, 16
  br i1 %cmp3.i, label %if.then5.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.end.i
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.193) #7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then5.i
  %j.026.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then5.i ]
  %arrayidx.i.i = getelementptr i16, ptr %type.i, i32 %j.026.i.i
  %119 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %120 to i32
  %and.i.i = and i32 %conv.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool1.not.i.i, ptr @.str.196, ptr @.str.195
  %and4.i.i = and i32 %conv.i.i, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.194, ptr noundef nonnull %cond.i.i, i32 noundef %and4.i.i) #7
  %inc.i.i = add nuw nsw i32 %j.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %for.inc.thread.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %count.2.i = phi i32 [ %inc.i, %if.end.i.for.inc.i_crit_edge ], [ %count.042.i, %for.body.i.for.inc.i_crit_edge ]
  %inc8.i = add nuw nsw i32 %i.040.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %inc8.i)
  %exitcond.not.i = icmp eq i32 %inc8.i, 512
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.backedge

for.inc.thread.i:                                 ; preds = %for.body.i.i
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.193) #7
  %121 = ptrtoint ptr %vals.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %vals.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %122) #7
  %123 = ptrtoint ptr %arrayidx9.i.1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx9.i.1.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %124) #7
  %125 = ptrtoint ptr %arrayidx9.i.2.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx9.i.2.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %126) #7
  %127 = ptrtoint ptr %arrayidx9.i.3.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx9.i.3.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %128) #7
  %129 = ptrtoint ptr %arrayidx9.i.4.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx9.i.4.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %130) #7
  %131 = ptrtoint ptr %arrayidx9.i.5.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx9.i.5.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %132) #7
  %133 = ptrtoint ptr %arrayidx9.i.6.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx9.i.6.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %134) #7
  %135 = ptrtoint ptr %arrayidx9.i.7.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx9.i.7.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %136) #7
  %137 = ptrtoint ptr %arrayidx9.i.8.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx9.i.8.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %138) #7
  %139 = ptrtoint ptr %arrayidx9.i.9.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx9.i.9.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %140) #7
  %141 = ptrtoint ptr %arrayidx9.i.10.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx9.i.10.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %142) #7
  %143 = ptrtoint ptr %arrayidx9.i.11.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx9.i.11.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %144) #7
  %145 = ptrtoint ptr %arrayidx9.i.12.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx9.i.12.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %146) #7
  %147 = ptrtoint ptr %arrayidx9.i.13.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx9.i.13.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %148) #7
  %149 = ptrtoint ptr %arrayidx9.i.14.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx9.i.14.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %150) #7
  %151 = ptrtoint ptr %arrayidx9.i.15.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx9.i.15.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %152) #7
  %inc844.i = add nuw nsw i32 %i.040.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %inc844.i)
  %exitcond.not45.i = icmp eq i32 %inc844.i, 512
  br i1 %exitcond.not45.i, label %for.inc.thread.i.icmpmsg_put.exit_crit_edge, label %for.inc.thread.i.for.body.i.backedge_crit_edge

for.inc.thread.i.for.body.i.backedge_crit_edge:   ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.backedge

for.inc.thread.i.icmpmsg_put.exit_crit_edge:      ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %icmpmsg_put.exit

for.body.i.backedge:                              ; preds = %for.inc.thread.i.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %count.042.i.be = phi i32 [ %count.2.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ 0, %for.inc.thread.i.for.body.i.backedge_crit_edge ]
  %i.040.i.be = phi i32 [ %inc8.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %inc844.i, %for.inc.thread.i.for.body.i.backedge_crit_edge ]
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.2.i)
  %tobool.not.i.i = icmp eq i32 %count.2.i, 0
  br i1 %tobool.not.i.i, label %for.end.i.icmpmsg_put.exit_crit_edge, label %if.then.i.i

for.end.i.icmpmsg_put.exit_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %icmpmsg_put.exit

if.then.i.i:                                      ; preds = %for.end.i
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.193) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.2.i)
  %cmp25.i.i = icmp sgt i32 %count.2.i, 0
  br i1 %cmp25.i.i, label %if.then.i.i.for.body.i30.i_crit_edge, label %for.end.thread.i.i

if.then.i.i.for.body.i30.i_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i30.i

for.end.thread.i.i:                               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.193) #7
  br label %icmpmsg_put.exit

for.body.i30.i:                                   ; preds = %for.body.i30.i.for.body.i30.i_crit_edge, %if.then.i.i.for.body.i30.i_crit_edge
  %j.026.i21.i = phi i32 [ %inc.i28.i, %for.body.i30.i.for.body.i30.i_crit_edge ], [ 0, %if.then.i.i.for.body.i30.i_crit_edge ]
  %arrayidx.i22.i = getelementptr i16, ptr %type.i, i32 %j.026.i21.i
  %153 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %arrayidx.i22.i, align 2
  %conv.i23.i = zext i16 %154 to i32
  %and.i24.i = and i32 %conv.i23.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i)
  %tobool1.not.i25.i = icmp eq i32 %and.i24.i, 0
  %cond.i26.i = select i1 %tobool1.not.i25.i, ptr @.str.196, ptr @.str.195
  %and4.i27.i = and i32 %conv.i23.i, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.194, ptr noundef nonnull %cond.i26.i, i32 noundef %and4.i27.i) #7
  %inc.i28.i = add nuw nsw i32 %j.026.i21.i, 1
  %exitcond.not.i29.i = icmp eq i32 %inc.i28.i, %count.2.i
  br i1 %exitcond.not.i29.i, label %for.body8.i36.preheader.i, label %for.body.i30.i.for.body.i30.i_crit_edge

for.body.i30.i.for.body.i30.i_crit_edge:          ; preds = %for.body.i30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i30.i

for.body8.i36.preheader.i:                        ; preds = %for.body.i30.i
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.193) #7
  br label %for.body8.i36.i

for.body8.i36.i:                                  ; preds = %for.body8.i36.i.for.body8.i36.i_crit_edge, %for.body8.i36.preheader.i
  %j.128.i32.i = phi i32 [ %inc11.i34.i, %for.body8.i36.i.for.body8.i36.i_crit_edge ], [ 0, %for.body8.i36.preheader.i ]
  %arrayidx9.i33.i = getelementptr i32, ptr %vals.i, i32 %j.128.i32.i
  %155 = ptrtoint ptr %arrayidx9.i33.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx9.i33.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %156) #7
  %inc11.i34.i = add nuw nsw i32 %j.128.i32.i, 1
  %exitcond29.not.i35.i = icmp eq i32 %inc11.i34.i, %count.2.i
  br i1 %exitcond29.not.i35.i, label %for.body8.i36.i.icmpmsg_put.exit_crit_edge, label %for.body8.i36.i.for.body8.i36.i_crit_edge

for.body8.i36.i.for.body8.i36.i_crit_edge:        ; preds = %for.body8.i36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.i36.i

for.body8.i36.i.icmpmsg_put.exit_crit_edge:       ; preds = %for.body8.i36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %icmpmsg_put.exit

icmpmsg_put.exit:                                 ; preds = %for.body8.i36.i.icmpmsg_put.exit_crit_edge, %for.end.thread.i.i, %for.end.i.icmpmsg_put.exit_crit_edge, %for.inc.thread.i.icmpmsg_put.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vals.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %type.i) #7
  %157 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %private.i, align 8
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.197) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.201) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.202) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.203) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.204) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.205) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.206) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.207) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.208) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.209) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.210) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.211) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.212) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.213) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.214) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.151) #7
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.197) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %159 = load i32, ptr @nr_cpu_ids, align 4
  %call11.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i, i32 %159)
  %cmp12.i = icmp ult i32 %call11.i, %159
  br i1 %cmp12.i, label %for.cond6.preheader.lr.ph.i, label %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge

icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge: ; preds = %icmpmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24.peel.next48.i

for.cond6.preheader.lr.ph.i:                      ; preds = %icmpmsg_put.exit
  %tcp_statistics.i = getelementptr inbounds %struct.net, ptr %158, i32 0, i32 30, i32 2
  %160 = ptrtoint ptr %tcp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %tcp_statistics.i, align 4
  %162 = ptrtoint ptr %161 to i32
  br label %for.cond6.preheader.i

for.cond6.preheader.i:                            ; preds = %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge, %for.cond6.preheader.lr.ph.i
  %buff.i.sroa.0.0 = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %conv15.i, %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge ]
  %buff.i.sroa.14.0 = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %conv15.1.i, %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge ]
  %buff.i.sroa.23.0 = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %conv15.2.i, %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge ]
  %buff.i.sroa.32.0 = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %conv15.3.i, %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge ]
  %buff.i.sroa.41.0 = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %conv15.4.i, %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge ]
  %buff.i.sroa.50.0 = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %conv15.5.i, %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge ]
  %buff.i.sroa.59.0 = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %conv15.6.i, %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge ]
  %buff.i.sroa.68.0 = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %conv15.7.i, %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge ]
  %buff.i.sroa.77.0 = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %conv15.8.i, %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge ]
  %buff.i.sroa.86.0 = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %conv15.9.i, %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge ]
  %buff.i.sroa.89.0 = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %conv15.10.i, %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge ]
  %buff.i.sroa.92.0 = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %conv15.11.i, %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge ]
  %buff.i.sroa.95.0 = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %conv15.12.i, %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge ]
  %buff.i.sroa.98.0 = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %conv15.13.i, %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge ]
  %buff.i.sroa.101.0 = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %conv15.14.i, %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge ]
  %call13.i = phi i32 [ %call11.i, %for.cond6.preheader.lr.ph.i ], [ %call.i14, %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge ]
  %arrayidx.i.i13 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call13.i
  %163 = ptrtoint ptr %arrayidx.i.i13 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx.i.i13, align 4
  %add.i.i = add i32 %164, %162
  %165 = inttoptr i32 %add.i.i to ptr
  %add.ptr.i.i = getelementptr i32, ptr %165, i32 1
  %166 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %add.ptr.i.i, align 4
  %conv15.i = add i32 %buff.i.sroa.0.0, %167
  %add.ptr.i.1.i = getelementptr i32, ptr %165, i32 2
  %168 = ptrtoint ptr %add.ptr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %add.ptr.i.1.i, align 4
  %conv15.1.i = add i32 %buff.i.sroa.14.0, %169
  %add.ptr.i.2.i = getelementptr i32, ptr %165, i32 3
  %170 = ptrtoint ptr %add.ptr.i.2.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %add.ptr.i.2.i, align 4
  %conv15.2.i = add i32 %buff.i.sroa.23.0, %171
  %add.ptr.i.3.i = getelementptr i32, ptr %165, i32 4
  %172 = ptrtoint ptr %add.ptr.i.3.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %add.ptr.i.3.i, align 4
  %conv15.3.i = add i32 %buff.i.sroa.32.0, %173
  %add.ptr.i.4.i = getelementptr i32, ptr %165, i32 5
  %174 = ptrtoint ptr %add.ptr.i.4.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %add.ptr.i.4.i, align 4
  %conv15.4.i = add i32 %buff.i.sroa.41.0, %175
  %add.ptr.i.5.i = getelementptr i32, ptr %165, i32 6
  %176 = ptrtoint ptr %add.ptr.i.5.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %add.ptr.i.5.i, align 4
  %conv15.5.i = add i32 %buff.i.sroa.50.0, %177
  %add.ptr.i.6.i = getelementptr i32, ptr %165, i32 7
  %178 = ptrtoint ptr %add.ptr.i.6.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %add.ptr.i.6.i, align 4
  %conv15.6.i = add i32 %buff.i.sroa.59.0, %179
  %add.ptr.i.7.i = getelementptr i32, ptr %165, i32 8
  %180 = ptrtoint ptr %add.ptr.i.7.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %add.ptr.i.7.i, align 4
  %conv15.7.i = add i32 %buff.i.sroa.68.0, %181
  %add.ptr.i.8.i = getelementptr i32, ptr %165, i32 9
  %182 = ptrtoint ptr %add.ptr.i.8.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %add.ptr.i.8.i, align 4
  %conv15.8.i = add i32 %buff.i.sroa.77.0, %183
  %add.ptr.i.9.i = getelementptr i32, ptr %165, i32 10
  %184 = ptrtoint ptr %add.ptr.i.9.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %add.ptr.i.9.i, align 4
  %conv15.9.i = add i32 %buff.i.sroa.86.0, %185
  %add.ptr.i.10.i = getelementptr i32, ptr %165, i32 11
  %186 = ptrtoint ptr %add.ptr.i.10.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %add.ptr.i.10.i, align 4
  %conv15.10.i = add i32 %buff.i.sroa.89.0, %187
  %add.ptr.i.11.i = getelementptr i32, ptr %165, i32 12
  %188 = ptrtoint ptr %add.ptr.i.11.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %add.ptr.i.11.i, align 4
  %conv15.11.i = add i32 %buff.i.sroa.92.0, %189
  %add.ptr.i.12.i = getelementptr i32, ptr %165, i32 13
  %190 = ptrtoint ptr %add.ptr.i.12.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %add.ptr.i.12.i, align 4
  %conv15.12.i = add i32 %buff.i.sroa.95.0, %191
  %add.ptr.i.13.i = getelementptr i32, ptr %165, i32 14
  %192 = ptrtoint ptr %add.ptr.i.13.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %add.ptr.i.13.i, align 4
  %conv15.13.i = add i32 %buff.i.sroa.98.0, %193
  %add.ptr.i.14.i = getelementptr i32, ptr %165, i32 15
  %194 = ptrtoint ptr %add.ptr.i.14.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %add.ptr.i.14.i, align 4
  %conv15.14.i = add i32 %buff.i.sroa.101.0, %195
  %call.i14 = tail call i32 @cpumask_next(i32 noundef %call13.i, ptr noundef nonnull @__cpu_possible_mask) #11
  %cmp.i15 = icmp ult i32 %call.i14, %159
  br i1 %cmp.i15, label %for.cond6.preheader.i.for.cond6.preheader.i_crit_edge, label %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge

for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge: ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24.peel.next48.i

for.cond6.preheader.i.for.cond6.preheader.i_crit_edge: ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader.i

for.body24.peel.next48.i:                         ; preds = %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge, %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge
  %buff.i.sroa.0.1 = phi i32 [ 0, %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge ], [ %conv15.i, %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge ]
  %buff.i.sroa.14.1 = phi i32 [ 0, %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge ], [ %conv15.1.i, %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge ]
  %buff.i.sroa.23.1 = phi i32 [ 0, %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge ], [ %conv15.2.i, %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge ]
  %buff.i.sroa.32.1 = phi i32 [ 0, %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge ], [ %conv15.3.i, %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge ]
  %buff.i.sroa.41.1 = phi i32 [ 0, %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge ], [ %conv15.4.i, %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge ]
  %buff.i.sroa.50.1 = phi i32 [ 0, %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge ], [ %conv15.5.i, %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge ]
  %buff.i.sroa.59.1 = phi i32 [ 0, %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge ], [ %conv15.6.i, %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge ]
  %buff.i.sroa.68.1 = phi i32 [ 0, %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge ], [ %conv15.7.i, %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge ]
  %buff.i.sroa.77.1 = phi i32 [ 0, %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge ], [ %conv15.8.i, %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge ]
  %buff.i.sroa.86.1 = phi i32 [ 0, %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge ], [ %conv15.9.i, %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge ]
  %buff.i.sroa.89.1 = phi i32 [ 0, %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge ], [ %conv15.10.i, %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge ]
  %buff.i.sroa.92.1 = phi i32 [ 0, %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge ], [ %conv15.11.i, %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge ]
  %buff.i.sroa.95.1 = phi i32 [ 0, %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge ], [ %conv15.12.i, %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge ]
  %buff.i.sroa.98.1 = phi i32 [ 0, %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge ], [ %conv15.13.i, %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge ]
  %buff.i.sroa.101.1 = phi i32 [ 0, %icmpmsg_put.exit.for.body24.peel.next48.i_crit_edge ], [ %conv15.14.i, %for.cond6.preheader.i.for.body24.peel.next48.i_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.0.1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.14.1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.23.1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.198, i32 noundef %buff.i.sroa.32.1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.41.1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.50.1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.59.1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.68.1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.77.1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.86.1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.89.1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.92.1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.95.1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.98.1) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.101.1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %196 = load i32, ptr @nr_cpu_ids, align 4
  %call3817.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call3817.i, i32 %196)
  %cmp3918.i = icmp ult i32 %call3817.i, %196
  br i1 %cmp3918.i, label %for.cond42.preheader.lr.ph.i, label %for.body24.peel.next48.i.for.end58.i_crit_edge

for.body24.peel.next48.i.for.end58.i_crit_edge:   ; preds = %for.body24.peel.next48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end58.i

for.cond42.preheader.lr.ph.i:                     ; preds = %for.body24.peel.next48.i
  %udp_statistics.i = getelementptr inbounds %struct.net, ptr %158, i32 0, i32 30, i32 4
  %197 = ptrtoint ptr %udp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %udp_statistics.i, align 4
  %199 = ptrtoint ptr %198 to i32
  br label %for.cond42.preheader.i

for.cond42.preheader.i:                           ; preds = %for.cond42.preheader.i.for.cond42.preheader.i_crit_edge, %for.cond42.preheader.lr.ph.i
  %buff.i.sroa.0.2 = phi i32 [ 0, %for.cond42.preheader.lr.ph.i ], [ %conv54.i, %for.cond42.preheader.i.for.cond42.preheader.i_crit_edge ]
  %buff.i.sroa.14.2 = phi i32 [ 0, %for.cond42.preheader.lr.ph.i ], [ %conv54.1.i, %for.cond42.preheader.i.for.cond42.preheader.i_crit_edge ]
  %buff.i.sroa.23.2 = phi i32 [ 0, %for.cond42.preheader.lr.ph.i ], [ %conv54.2.i, %for.cond42.preheader.i.for.cond42.preheader.i_crit_edge ]
  %buff.i.sroa.32.2 = phi i32 [ 0, %for.cond42.preheader.lr.ph.i ], [ %conv54.3.i, %for.cond42.preheader.i.for.cond42.preheader.i_crit_edge ]
  %buff.i.sroa.41.2 = phi i32 [ 0, %for.cond42.preheader.lr.ph.i ], [ %conv54.4.i, %for.cond42.preheader.i.for.cond42.preheader.i_crit_edge ]
  %buff.i.sroa.50.2 = phi i32 [ 0, %for.cond42.preheader.lr.ph.i ], [ %conv54.5.i, %for.cond42.preheader.i.for.cond42.preheader.i_crit_edge ]
  %buff.i.sroa.59.2 = phi i32 [ 0, %for.cond42.preheader.lr.ph.i ], [ %conv54.6.i, %for.cond42.preheader.i.for.cond42.preheader.i_crit_edge ]
  %buff.i.sroa.68.2 = phi i32 [ 0, %for.cond42.preheader.lr.ph.i ], [ %conv54.7.i, %for.cond42.preheader.i.for.cond42.preheader.i_crit_edge ]
  %buff.i.sroa.77.2 = phi i32 [ 0, %for.cond42.preheader.lr.ph.i ], [ %conv54.8.i, %for.cond42.preheader.i.for.cond42.preheader.i_crit_edge ]
  %call3819.i = phi i32 [ %call3817.i, %for.cond42.preheader.lr.ph.i ], [ %call38.i, %for.cond42.preheader.i.for.cond42.preheader.i_crit_edge ]
  %arrayidx.i1.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call3819.i
  %200 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx.i1.i, align 4
  %add.i2.i = add i32 %201, %199
  %202 = inttoptr i32 %add.i2.i to ptr
  %add.ptr.i3.i = getelementptr i32, ptr %202, i32 1
  %203 = ptrtoint ptr %add.ptr.i3.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %add.ptr.i3.i, align 4
  %conv54.i = add i32 %buff.i.sroa.0.2, %204
  %add.ptr.i3.1.i = getelementptr i32, ptr %202, i32 2
  %205 = ptrtoint ptr %add.ptr.i3.1.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %add.ptr.i3.1.i, align 4
  %conv54.1.i = add i32 %buff.i.sroa.14.2, %206
  %add.ptr.i3.2.i = getelementptr i32, ptr %202, i32 3
  %207 = ptrtoint ptr %add.ptr.i3.2.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %add.ptr.i3.2.i, align 4
  %conv54.2.i = add i32 %buff.i.sroa.23.2, %208
  %add.ptr.i3.3.i = getelementptr i32, ptr %202, i32 4
  %209 = ptrtoint ptr %add.ptr.i3.3.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %add.ptr.i3.3.i, align 4
  %conv54.3.i = add i32 %buff.i.sroa.32.2, %210
  %add.ptr.i3.4.i = getelementptr i32, ptr %202, i32 5
  %211 = ptrtoint ptr %add.ptr.i3.4.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %add.ptr.i3.4.i, align 4
  %conv54.4.i = add i32 %buff.i.sroa.41.2, %212
  %add.ptr.i3.5.i = getelementptr i32, ptr %202, i32 6
  %213 = ptrtoint ptr %add.ptr.i3.5.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %add.ptr.i3.5.i, align 4
  %conv54.5.i = add i32 %buff.i.sroa.50.2, %214
  %add.ptr.i3.6.i = getelementptr i32, ptr %202, i32 7
  %215 = ptrtoint ptr %add.ptr.i3.6.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %add.ptr.i3.6.i, align 4
  %conv54.6.i = add i32 %buff.i.sroa.59.2, %216
  %add.ptr.i3.7.i = getelementptr i32, ptr %202, i32 8
  %217 = ptrtoint ptr %add.ptr.i3.7.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %add.ptr.i3.7.i, align 4
  %conv54.7.i = add i32 %buff.i.sroa.68.2, %218
  %add.ptr.i3.8.i = getelementptr i32, ptr %202, i32 9
  %219 = ptrtoint ptr %add.ptr.i3.8.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %add.ptr.i3.8.i, align 4
  %conv54.8.i = add i32 %buff.i.sroa.77.2, %220
  %call38.i = tail call i32 @cpumask_next(i32 noundef %call3819.i, ptr noundef nonnull @__cpu_possible_mask) #11
  %cmp39.i = icmp ult i32 %call38.i, %196
  br i1 %cmp39.i, label %for.cond42.preheader.i.for.cond42.preheader.i_crit_edge, label %for.cond42.preheader.i.for.end58.i_crit_edge

for.cond42.preheader.i.for.end58.i_crit_edge:     ; preds = %for.cond42.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end58.i

for.cond42.preheader.i.for.cond42.preheader.i_crit_edge: ; preds = %for.cond42.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond42.preheader.i

for.end58.i:                                      ; preds = %for.cond42.preheader.i.for.end58.i_crit_edge, %for.body24.peel.next48.i.for.end58.i_crit_edge
  %buff.i.sroa.0.3 = phi i32 [ 0, %for.body24.peel.next48.i.for.end58.i_crit_edge ], [ %conv54.i, %for.cond42.preheader.i.for.end58.i_crit_edge ]
  %buff.i.sroa.14.3 = phi i32 [ 0, %for.body24.peel.next48.i.for.end58.i_crit_edge ], [ %conv54.1.i, %for.cond42.preheader.i.for.end58.i_crit_edge ]
  %buff.i.sroa.23.3 = phi i32 [ 0, %for.body24.peel.next48.i.for.end58.i_crit_edge ], [ %conv54.2.i, %for.cond42.preheader.i.for.end58.i_crit_edge ]
  %buff.i.sroa.32.3 = phi i32 [ 0, %for.body24.peel.next48.i.for.end58.i_crit_edge ], [ %conv54.3.i, %for.cond42.preheader.i.for.end58.i_crit_edge ]
  %buff.i.sroa.41.3 = phi i32 [ 0, %for.body24.peel.next48.i.for.end58.i_crit_edge ], [ %conv54.4.i, %for.cond42.preheader.i.for.end58.i_crit_edge ]
  %buff.i.sroa.50.3 = phi i32 [ 0, %for.body24.peel.next48.i.for.end58.i_crit_edge ], [ %conv54.5.i, %for.cond42.preheader.i.for.end58.i_crit_edge ]
  %buff.i.sroa.59.3 = phi i32 [ 0, %for.body24.peel.next48.i.for.end58.i_crit_edge ], [ %conv54.6.i, %for.cond42.preheader.i.for.end58.i_crit_edge ]
  %buff.i.sroa.68.3 = phi i32 [ 0, %for.body24.peel.next48.i.for.end58.i_crit_edge ], [ %conv54.7.i, %for.cond42.preheader.i.for.end58.i_crit_edge ]
  %buff.i.sroa.77.3 = phi i32 [ 0, %for.body24.peel.next48.i.for.end58.i_crit_edge ], [ %conv54.8.i, %for.cond42.preheader.i.for.end58.i_crit_edge ]
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.199) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.215) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.216) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.217) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.218) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.219) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.220) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.151) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.221) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.222) #7
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.199) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.0.3) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.14.3) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.23.3) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.32.3) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.41.3) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.50.3) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.59.3) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.68.3) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.77.3) #7
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.200) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %221 = load i32, ptr @nr_cpu_ids, align 4
  %call8223.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call8223.i, i32 %221)
  %cmp8324.i = icmp ult i32 %call8223.i, %221
  br i1 %cmp8324.i, label %for.cond86.preheader.lr.ph.i, label %for.end58.i.snmp_seq_show_tcp_udp.exit_crit_edge

for.end58.i.snmp_seq_show_tcp_udp.exit_crit_edge: ; preds = %for.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snmp_seq_show_tcp_udp.exit

for.cond86.preheader.lr.ph.i:                     ; preds = %for.end58.i
  %udplite_statistics.i = getelementptr inbounds %struct.net, ptr %158, i32 0, i32 30, i32 9
  %222 = ptrtoint ptr %udplite_statistics.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %udplite_statistics.i, align 4
  %224 = ptrtoint ptr %223 to i32
  br label %for.cond86.preheader.i

for.cond86.preheader.i:                           ; preds = %for.cond86.preheader.i.for.cond86.preheader.i_crit_edge, %for.cond86.preheader.lr.ph.i
  %buff.i.sroa.0.4 = phi i32 [ 0, %for.cond86.preheader.lr.ph.i ], [ %conv98.i, %for.cond86.preheader.i.for.cond86.preheader.i_crit_edge ]
  %buff.i.sroa.14.4 = phi i32 [ 0, %for.cond86.preheader.lr.ph.i ], [ %conv98.1.i, %for.cond86.preheader.i.for.cond86.preheader.i_crit_edge ]
  %buff.i.sroa.23.4 = phi i32 [ 0, %for.cond86.preheader.lr.ph.i ], [ %conv98.2.i, %for.cond86.preheader.i.for.cond86.preheader.i_crit_edge ]
  %buff.i.sroa.32.4 = phi i32 [ 0, %for.cond86.preheader.lr.ph.i ], [ %conv98.3.i, %for.cond86.preheader.i.for.cond86.preheader.i_crit_edge ]
  %buff.i.sroa.41.4 = phi i32 [ 0, %for.cond86.preheader.lr.ph.i ], [ %conv98.4.i, %for.cond86.preheader.i.for.cond86.preheader.i_crit_edge ]
  %buff.i.sroa.50.4 = phi i32 [ 0, %for.cond86.preheader.lr.ph.i ], [ %conv98.5.i, %for.cond86.preheader.i.for.cond86.preheader.i_crit_edge ]
  %buff.i.sroa.59.4 = phi i32 [ 0, %for.cond86.preheader.lr.ph.i ], [ %conv98.6.i, %for.cond86.preheader.i.for.cond86.preheader.i_crit_edge ]
  %buff.i.sroa.68.4 = phi i32 [ 0, %for.cond86.preheader.lr.ph.i ], [ %conv98.7.i, %for.cond86.preheader.i.for.cond86.preheader.i_crit_edge ]
  %buff.i.sroa.77.4 = phi i32 [ 0, %for.cond86.preheader.lr.ph.i ], [ %conv98.8.i, %for.cond86.preheader.i.for.cond86.preheader.i_crit_edge ]
  %call8225.i = phi i32 [ %call8223.i, %for.cond86.preheader.lr.ph.i ], [ %call82.i, %for.cond86.preheader.i.for.cond86.preheader.i_crit_edge ]
  %arrayidx.i5.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call8225.i
  %225 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx.i5.i, align 4
  %add.i6.i = add i32 %226, %224
  %227 = inttoptr i32 %add.i6.i to ptr
  %add.ptr.i7.i = getelementptr i32, ptr %227, i32 1
  %228 = ptrtoint ptr %add.ptr.i7.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %add.ptr.i7.i, align 4
  %conv98.i = add i32 %buff.i.sroa.0.4, %229
  %add.ptr.i7.1.i = getelementptr i32, ptr %227, i32 2
  %230 = ptrtoint ptr %add.ptr.i7.1.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %add.ptr.i7.1.i, align 4
  %conv98.1.i = add i32 %buff.i.sroa.14.4, %231
  %add.ptr.i7.2.i = getelementptr i32, ptr %227, i32 3
  %232 = ptrtoint ptr %add.ptr.i7.2.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %add.ptr.i7.2.i, align 4
  %conv98.2.i = add i32 %buff.i.sroa.23.4, %233
  %add.ptr.i7.3.i = getelementptr i32, ptr %227, i32 4
  %234 = ptrtoint ptr %add.ptr.i7.3.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %add.ptr.i7.3.i, align 4
  %conv98.3.i = add i32 %buff.i.sroa.32.4, %235
  %add.ptr.i7.4.i = getelementptr i32, ptr %227, i32 5
  %236 = ptrtoint ptr %add.ptr.i7.4.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %add.ptr.i7.4.i, align 4
  %conv98.4.i = add i32 %buff.i.sroa.41.4, %237
  %add.ptr.i7.5.i = getelementptr i32, ptr %227, i32 6
  %238 = ptrtoint ptr %add.ptr.i7.5.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %add.ptr.i7.5.i, align 4
  %conv98.5.i = add i32 %buff.i.sroa.50.4, %239
  %add.ptr.i7.6.i = getelementptr i32, ptr %227, i32 7
  %240 = ptrtoint ptr %add.ptr.i7.6.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %add.ptr.i7.6.i, align 4
  %conv98.6.i = add i32 %buff.i.sroa.59.4, %241
  %add.ptr.i7.7.i = getelementptr i32, ptr %227, i32 8
  %242 = ptrtoint ptr %add.ptr.i7.7.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %add.ptr.i7.7.i, align 4
  %conv98.7.i = add i32 %buff.i.sroa.68.4, %243
  %add.ptr.i7.8.i = getelementptr i32, ptr %227, i32 9
  %244 = ptrtoint ptr %add.ptr.i7.8.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %add.ptr.i7.8.i, align 4
  %conv98.8.i = add i32 %buff.i.sroa.77.4, %245
  %call82.i = tail call i32 @cpumask_next(i32 noundef %call8225.i, ptr noundef nonnull @__cpu_possible_mask) #11
  %cmp83.i = icmp ult i32 %call82.i, %221
  br i1 %cmp83.i, label %for.cond86.preheader.i.for.cond86.preheader.i_crit_edge, label %for.cond86.preheader.i.snmp_seq_show_tcp_udp.exit_crit_edge

for.cond86.preheader.i.snmp_seq_show_tcp_udp.exit_crit_edge: ; preds = %for.cond86.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snmp_seq_show_tcp_udp.exit

for.cond86.preheader.i.for.cond86.preheader.i_crit_edge: ; preds = %for.cond86.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond86.preheader.i

snmp_seq_show_tcp_udp.exit:                       ; preds = %for.cond86.preheader.i.snmp_seq_show_tcp_udp.exit_crit_edge, %for.end58.i.snmp_seq_show_tcp_udp.exit_crit_edge
  %buff.i.sroa.0.5 = phi i32 [ 0, %for.end58.i.snmp_seq_show_tcp_udp.exit_crit_edge ], [ %conv98.i, %for.cond86.preheader.i.snmp_seq_show_tcp_udp.exit_crit_edge ]
  %buff.i.sroa.14.5 = phi i32 [ 0, %for.end58.i.snmp_seq_show_tcp_udp.exit_crit_edge ], [ %conv98.1.i, %for.cond86.preheader.i.snmp_seq_show_tcp_udp.exit_crit_edge ]
  %buff.i.sroa.23.5 = phi i32 [ 0, %for.end58.i.snmp_seq_show_tcp_udp.exit_crit_edge ], [ %conv98.2.i, %for.cond86.preheader.i.snmp_seq_show_tcp_udp.exit_crit_edge ]
  %buff.i.sroa.32.5 = phi i32 [ 0, %for.end58.i.snmp_seq_show_tcp_udp.exit_crit_edge ], [ %conv98.3.i, %for.cond86.preheader.i.snmp_seq_show_tcp_udp.exit_crit_edge ]
  %buff.i.sroa.41.5 = phi i32 [ 0, %for.end58.i.snmp_seq_show_tcp_udp.exit_crit_edge ], [ %conv98.4.i, %for.cond86.preheader.i.snmp_seq_show_tcp_udp.exit_crit_edge ]
  %buff.i.sroa.50.5 = phi i32 [ 0, %for.end58.i.snmp_seq_show_tcp_udp.exit_crit_edge ], [ %conv98.5.i, %for.cond86.preheader.i.snmp_seq_show_tcp_udp.exit_crit_edge ]
  %buff.i.sroa.59.5 = phi i32 [ 0, %for.end58.i.snmp_seq_show_tcp_udp.exit_crit_edge ], [ %conv98.6.i, %for.cond86.preheader.i.snmp_seq_show_tcp_udp.exit_crit_edge ]
  %buff.i.sroa.68.5 = phi i32 [ 0, %for.end58.i.snmp_seq_show_tcp_udp.exit_crit_edge ], [ %conv98.7.i, %for.cond86.preheader.i.snmp_seq_show_tcp_udp.exit_crit_edge ]
  %buff.i.sroa.77.5 = phi i32 [ 0, %for.end58.i.snmp_seq_show_tcp_udp.exit_crit_edge ], [ %conv98.8.i, %for.cond86.preheader.i.snmp_seq_show_tcp_udp.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.215) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.216) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.217) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.218) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.219) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.220) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.151) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.221) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.222) #7
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.200) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.0.5) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.14.5) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.23.5) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.32.5) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.41.5) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.50.5) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.59.5) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.68.5) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %buff.i.sroa.77.5) #7
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_orphan_count_sum() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @socket_seq_show(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_prot_inuse_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snmp_fold_field(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @snmp_get_cpu_field64(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @snmp_fold_field64(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_seq_show(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 227)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 227)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458}
!llvm.module.flags = !{!460, !461, !462, !463, !464, !465, !466, !467}
!llvm.ident = !{!468}

!0 = !{ptr @ip_proc_ops, !1, !"ip_proc_ops", i1 false, i1 false}
!1 = !{!"../net/ipv4/proc.c", i32 549, i32 48}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ipv4/proc.c", i32 522, i32 30}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ipv4/proc.c", i32 525, i32 30}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ipv4/proc.c", i32 528, i32 30}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ipv4/proc.c", i32 60, i32 18}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ipv4/proc.c", i32 64, i32 18}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ipv4/proc.c", i32 67, i32 18}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/ipv4/proc.c", i32 69, i32 18}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/ipv4/proc.c", i32 71, i32 19}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/ipv4/proc.c", i32 475, i32 16}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/ipv4/proc.c", i32 477, i32 19}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ipv4/proc.c", i32 479, i32 16}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ipv4/proc.c", i32 486, i32 20}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv4/proc.c", i32 493, i32 16}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ipv4/proc.c", i32 506, i32 20}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/ipv4/proc.c", i32 175, i32 2}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/ipv4/proc.c", i32 176, i32 2}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/ipv4/proc.c", i32 177, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/ipv4/proc.c", i32 178, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ipv4/proc.c", i32 179, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/ipv4/proc.c", i32 180, i32 2}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/ipv4/proc.c", i32 181, i32 2}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/ipv4/proc.c", i32 182, i32 2}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/ipv4/proc.c", i32 183, i32 2}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/ipv4/proc.c", i32 184, i32 2}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/ipv4/proc.c", i32 185, i32 2}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/ipv4/proc.c", i32 186, i32 2}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/ipv4/proc.c", i32 187, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/ipv4/proc.c", i32 188, i32 2}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/ipv4/proc.c", i32 189, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/ipv4/proc.c", i32 190, i32 2}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/ipv4/proc.c", i32 191, i32 2}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/ipv4/proc.c", i32 192, i32 2}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/ipv4/proc.c", i32 193, i32 2}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/ipv4/proc.c", i32 194, i32 2}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/ipv4/proc.c", i32 195, i32 2}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/ipv4/proc.c", i32 196, i32 2}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/ipv4/proc.c", i32 197, i32 2}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/ipv4/proc.c", i32 198, i32 2}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/ipv4/proc.c", i32 199, i32 2}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/ipv4/proc.c", i32 200, i32 2}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/ipv4/proc.c", i32 201, i32 2}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/ipv4/proc.c", i32 202, i32 2}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/ipv4/proc.c", i32 203, i32 2}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/ipv4/proc.c", i32 204, i32 2}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/ipv4/proc.c", i32 205, i32 2}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/ipv4/proc.c", i32 206, i32 2}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/ipv4/proc.c", i32 207, i32 2}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/ipv4/proc.c", i32 208, i32 2}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/ipv4/proc.c", i32 209, i32 2}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/ipv4/proc.c", i32 210, i32 2}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/ipv4/proc.c", i32 211, i32 2}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/ipv4/proc.c", i32 212, i32 2}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/ipv4/proc.c", i32 213, i32 2}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/ipv4/proc.c", i32 214, i32 2}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/ipv4/proc.c", i32 215, i32 2}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/ipv4/proc.c", i32 216, i32 2}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/ipv4/proc.c", i32 217, i32 2}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/ipv4/proc.c", i32 218, i32 2}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/ipv4/proc.c", i32 219, i32 2}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/ipv4/proc.c", i32 220, i32 2}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/ipv4/proc.c", i32 221, i32 2}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/ipv4/proc.c", i32 222, i32 2}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/ipv4/proc.c", i32 223, i32 2}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/ipv4/proc.c", i32 224, i32 2}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/ipv4/proc.c", i32 225, i32 2}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/ipv4/proc.c", i32 226, i32 2}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../net/ipv4/proc.c", i32 227, i32 2}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/ipv4/proc.c", i32 228, i32 2}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../net/ipv4/proc.c", i32 229, i32 2}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../net/ipv4/proc.c", i32 230, i32 2}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/ipv4/proc.c", i32 231, i32 2}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/ipv4/proc.c", i32 232, i32 2}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/ipv4/proc.c", i32 233, i32 2}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/ipv4/proc.c", i32 234, i32 2}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/ipv4/proc.c", i32 235, i32 2}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../net/ipv4/proc.c", i32 236, i32 2}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../net/ipv4/proc.c", i32 237, i32 2}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../net/ipv4/proc.c", i32 238, i32 2}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/ipv4/proc.c", i32 239, i32 2}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../net/ipv4/proc.c", i32 240, i32 2}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/ipv4/proc.c", i32 241, i32 2}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../net/ipv4/proc.c", i32 242, i32 2}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/ipv4/proc.c", i32 243, i32 2}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../net/ipv4/proc.c", i32 244, i32 2}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../net/ipv4/proc.c", i32 245, i32 2}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../net/ipv4/proc.c", i32 246, i32 2}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/ipv4/proc.c", i32 247, i32 2}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../net/ipv4/proc.c", i32 248, i32 2}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../net/ipv4/proc.c", i32 249, i32 2}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../net/ipv4/proc.c", i32 250, i32 2}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../net/ipv4/proc.c", i32 251, i32 2}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../net/ipv4/proc.c", i32 252, i32 2}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../net/ipv4/proc.c", i32 253, i32 2}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../net/ipv4/proc.c", i32 254, i32 2}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../net/ipv4/proc.c", i32 255, i32 2}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../net/ipv4/proc.c", i32 256, i32 2}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../net/ipv4/proc.c", i32 257, i32 2}
!196 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../net/ipv4/proc.c", i32 258, i32 2}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../net/ipv4/proc.c", i32 259, i32 2}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../net/ipv4/proc.c", i32 260, i32 2}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../net/ipv4/proc.c", i32 261, i32 2}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../net/ipv4/proc.c", i32 262, i32 2}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../net/ipv4/proc.c", i32 263, i32 2}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../net/ipv4/proc.c", i32 264, i32 2}
!210 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../net/ipv4/proc.c", i32 265, i32 2}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../net/ipv4/proc.c", i32 266, i32 2}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../net/ipv4/proc.c", i32 267, i32 2}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../net/ipv4/proc.c", i32 268, i32 2}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../net/ipv4/proc.c", i32 269, i32 2}
!220 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../net/ipv4/proc.c", i32 270, i32 2}
!222 = !{ptr @.str.110, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../net/ipv4/proc.c", i32 271, i32 2}
!224 = !{ptr @.str.111, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../net/ipv4/proc.c", i32 272, i32 2}
!226 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../net/ipv4/proc.c", i32 273, i32 2}
!228 = !{ptr @.str.113, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../net/ipv4/proc.c", i32 274, i32 2}
!230 = !{ptr @.str.114, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../net/ipv4/proc.c", i32 275, i32 2}
!232 = !{ptr @.str.115, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../net/ipv4/proc.c", i32 276, i32 2}
!234 = !{ptr @.str.116, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../net/ipv4/proc.c", i32 277, i32 2}
!236 = !{ptr @.str.117, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../net/ipv4/proc.c", i32 278, i32 2}
!238 = !{ptr @.str.118, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../net/ipv4/proc.c", i32 279, i32 2}
!240 = !{ptr @.str.119, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../net/ipv4/proc.c", i32 280, i32 2}
!242 = !{ptr @.str.120, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../net/ipv4/proc.c", i32 281, i32 2}
!244 = !{ptr @.str.121, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../net/ipv4/proc.c", i32 282, i32 2}
!246 = !{ptr @.str.122, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../net/ipv4/proc.c", i32 283, i32 2}
!248 = !{ptr @.str.123, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../net/ipv4/proc.c", i32 284, i32 2}
!250 = !{ptr @.str.124, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../net/ipv4/proc.c", i32 285, i32 2}
!252 = !{ptr @.str.125, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../net/ipv4/proc.c", i32 286, i32 2}
!254 = !{ptr @.str.126, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../net/ipv4/proc.c", i32 287, i32 2}
!256 = !{ptr @.str.127, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../net/ipv4/proc.c", i32 288, i32 2}
!258 = !{ptr @.str.128, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../net/ipv4/proc.c", i32 289, i32 2}
!260 = !{ptr @.str.129, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../net/ipv4/proc.c", i32 290, i32 2}
!262 = !{ptr @.str.130, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../net/ipv4/proc.c", i32 291, i32 2}
!264 = !{ptr @.str.131, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../net/ipv4/proc.c", i32 292, i32 2}
!266 = !{ptr @.str.132, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../net/ipv4/proc.c", i32 293, i32 2}
!268 = !{ptr @.str.133, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../net/ipv4/proc.c", i32 294, i32 2}
!270 = !{ptr @.str.134, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../net/ipv4/proc.c", i32 295, i32 2}
!272 = !{ptr @.str.135, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../net/ipv4/proc.c", i32 296, i32 2}
!274 = !{ptr @.str.136, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../net/ipv4/proc.c", i32 297, i32 2}
!276 = !{ptr @.str.137, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../net/ipv4/proc.c", i32 298, i32 2}
!278 = !{ptr @.str.138, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../net/ipv4/proc.c", i32 299, i32 2}
!280 = !{ptr @snmp4_net_list, !281, !"snmp4_net_list", i1 false, i1 false}
!281 = !{!"../net/ipv4/proc.c", i32 174, i32 30}
!282 = !{ptr @.str.139, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../net/ipv4/proc.c", i32 101, i32 2}
!284 = !{ptr @.str.140, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../net/ipv4/proc.c", i32 102, i32 2}
!286 = !{ptr @.str.141, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../net/ipv4/proc.c", i32 103, i32 2}
!288 = !{ptr @.str.142, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../net/ipv4/proc.c", i32 104, i32 2}
!290 = !{ptr @.str.143, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../net/ipv4/proc.c", i32 105, i32 2}
!292 = !{ptr @.str.144, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../net/ipv4/proc.c", i32 106, i32 2}
!294 = !{ptr @.str.145, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../net/ipv4/proc.c", i32 107, i32 2}
!296 = !{ptr @.str.146, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../net/ipv4/proc.c", i32 108, i32 2}
!298 = !{ptr @.str.147, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../net/ipv4/proc.c", i32 109, i32 2}
!300 = !{ptr @.str.148, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../net/ipv4/proc.c", i32 110, i32 2}
!302 = !{ptr @.str.149, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../net/ipv4/proc.c", i32 111, i32 2}
!304 = !{ptr @.str.150, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../net/ipv4/proc.c", i32 112, i32 2}
!306 = !{ptr @.str.151, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../net/ipv4/proc.c", i32 114, i32 2}
!308 = !{ptr @.str.152, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../net/ipv4/proc.c", i32 115, i32 2}
!310 = !{ptr @.str.153, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../net/ipv4/proc.c", i32 116, i32 2}
!312 = !{ptr @.str.154, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../net/ipv4/proc.c", i32 117, i32 2}
!314 = !{ptr @.str.155, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../net/ipv4/proc.c", i32 118, i32 2}
!316 = !{ptr @.str.156, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../net/ipv4/proc.c", i32 119, i32 2}
!318 = !{ptr @snmp4_ipextstats_list, !319, !"snmp4_ipextstats_list", i1 false, i1 false}
!319 = !{!"../net/ipv4/proc.c", i32 100, i32 30}
!320 = !{ptr @.str.157, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../net/ipv4/proc.c", i32 384, i32 16}
!322 = !{ptr @.str.158, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../net/ipv4/proc.c", i32 388, i32 18}
!324 = !{ptr @.str.159, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../net/ipv4/proc.c", i32 79, i32 2}
!326 = !{ptr @.str.160, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../net/ipv4/proc.c", i32 80, i32 2}
!328 = !{ptr @.str.161, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../net/ipv4/proc.c", i32 81, i32 2}
!330 = !{ptr @.str.162, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../net/ipv4/proc.c", i32 82, i32 2}
!332 = !{ptr @.str.163, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../net/ipv4/proc.c", i32 83, i32 2}
!334 = !{ptr @.str.164, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../net/ipv4/proc.c", i32 84, i32 2}
!336 = !{ptr @.str.165, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../net/ipv4/proc.c", i32 85, i32 2}
!338 = !{ptr @.str.166, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../net/ipv4/proc.c", i32 86, i32 2}
!340 = !{ptr @.str.167, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../net/ipv4/proc.c", i32 87, i32 2}
!342 = !{ptr @.str.168, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../net/ipv4/proc.c", i32 88, i32 2}
!344 = !{ptr @.str.169, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../net/ipv4/proc.c", i32 89, i32 2}
!346 = !{ptr @.str.170, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../net/ipv4/proc.c", i32 90, i32 2}
!348 = !{ptr @.str.171, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../net/ipv4/proc.c", i32 91, i32 2}
!350 = !{ptr @.str.172, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../net/ipv4/proc.c", i32 92, i32 2}
!352 = !{ptr @.str.173, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../net/ipv4/proc.c", i32 93, i32 2}
!354 = !{ptr @.str.174, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../net/ipv4/proc.c", i32 94, i32 2}
!356 = !{ptr @.str.175, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../net/ipv4/proc.c", i32 95, i32 2}
!358 = !{ptr @snmp4_ipstats_list, !359, !"snmp4_ipstats_list", i1 false, i1 false}
!359 = !{!"../net/ipv4/proc.c", i32 78, i32 30}
!360 = !{ptr @.str.176, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../net/ipv4/proc.c", i32 352, i32 16}
!362 = !{ptr @.str.177, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../net/ipv4/proc.c", i32 354, i32 19}
!364 = !{ptr @.str.178, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../net/ipv4/proc.c", i32 355, i32 16}
!366 = !{ptr @.str.179, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../net/ipv4/proc.c", i32 357, i32 19}
!368 = !{ptr @.str.180, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../net/ipv4/proc.c", i32 358, i32 18}
!370 = !{ptr @.str.181, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../net/ipv4/proc.c", i32 365, i32 18}
!372 = !{ptr @.str.182, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../net/ipv4/proc.c", i32 127, i32 4}
!374 = !{ptr @.str.183, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../net/ipv4/proc.c", i32 128, i32 4}
!376 = !{ptr @.str.184, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../net/ipv4/proc.c", i32 129, i32 4}
!378 = !{ptr @.str.185, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../net/ipv4/proc.c", i32 130, i32 4}
!380 = !{ptr @.str.186, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../net/ipv4/proc.c", i32 131, i32 4}
!382 = !{ptr @.str.187, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../net/ipv4/proc.c", i32 132, i32 4}
!384 = !{ptr @.str.188, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../net/ipv4/proc.c", i32 133, i32 4}
!386 = !{ptr @.str.189, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../net/ipv4/proc.c", i32 134, i32 4}
!388 = !{ptr @.str.190, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../net/ipv4/proc.c", i32 135, i32 4}
!390 = !{ptr @.str.191, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../net/ipv4/proc.c", i32 136, i32 4}
!392 = !{ptr @.str.192, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../net/ipv4/proc.c", i32 137, i32 4}
!394 = distinct !{null, !395, !"icmpmibmap", i1 false, i1 false}
!395 = !{!"../net/ipv4/proc.c", i32 126, i32 3}
!396 = !{ptr @.str.193, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../net/ipv4/proc.c", i32 309, i32 17}
!398 = !{ptr @.str.194, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../net/ipv4/proc.c", i32 311, i32 20}
!400 = !{ptr @.str.195, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../net/ipv4/proc.c", i32 312, i32 23}
!402 = !{ptr @.str.196, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../net/ipv4/proc.c", i32 312, i32 31}
!404 = !{ptr @.str.197, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../net/ipv4/proc.c", i32 410, i32 16}
!406 = !{ptr @.str.198, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../net/ipv4/proc.c", i32 420, i32 20}
!408 = !{ptr @.str.199, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../net/ipv4/proc.c", i32 429, i32 16}
!410 = !{ptr @.str.200, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../net/ipv4/proc.c", i32 439, i32 16}
!412 = !{ptr @.str.201, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../net/ipv4/proc.c", i32 143, i32 2}
!414 = !{ptr @.str.202, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../net/ipv4/proc.c", i32 144, i32 2}
!416 = !{ptr @.str.203, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../net/ipv4/proc.c", i32 145, i32 2}
!418 = !{ptr @.str.204, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../net/ipv4/proc.c", i32 146, i32 2}
!420 = !{ptr @.str.205, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../net/ipv4/proc.c", i32 147, i32 2}
!422 = !{ptr @.str.206, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../net/ipv4/proc.c", i32 148, i32 2}
!424 = !{ptr @.str.207, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../net/ipv4/proc.c", i32 149, i32 2}
!426 = !{ptr @.str.208, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../net/ipv4/proc.c", i32 150, i32 2}
!428 = !{ptr @.str.209, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../net/ipv4/proc.c", i32 151, i32 2}
!430 = !{ptr @.str.210, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../net/ipv4/proc.c", i32 152, i32 2}
!432 = !{ptr @.str.211, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../net/ipv4/proc.c", i32 153, i32 2}
!434 = !{ptr @.str.212, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../net/ipv4/proc.c", i32 154, i32 2}
!436 = !{ptr @.str.213, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../net/ipv4/proc.c", i32 155, i32 2}
!438 = !{ptr @.str.214, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../net/ipv4/proc.c", i32 156, i32 2}
!440 = distinct !{null, !441, !"snmp4_tcp_list", i1 false, i1 false}
!441 = !{!"../net/ipv4/proc.c", i32 142, i32 30}
!442 = !{ptr @.str.215, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../net/ipv4/proc.c", i32 162, i32 2}
!444 = !{ptr @.str.216, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../net/ipv4/proc.c", i32 163, i32 2}
!446 = !{ptr @.str.217, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../net/ipv4/proc.c", i32 164, i32 2}
!448 = !{ptr @.str.218, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../net/ipv4/proc.c", i32 165, i32 2}
!450 = !{ptr @.str.219, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../net/ipv4/proc.c", i32 166, i32 2}
!452 = !{ptr @.str.220, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../net/ipv4/proc.c", i32 167, i32 2}
!454 = !{ptr @.str.221, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../net/ipv4/proc.c", i32 169, i32 2}
!456 = !{ptr @.str.222, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../net/ipv4/proc.c", i32 170, i32 2}
!458 = distinct !{null, !459, !"snmp4_udp_list", i1 false, i1 false}
!459 = !{!"../net/ipv4/proc.c", i32 161, i32 30}
!460 = !{i32 1, !"wchar_size", i32 2}
!461 = !{i32 1, !"min_enum_size", i32 4}
!462 = !{i32 8, !"branch-target-enforcement", i32 0}
!463 = !{i32 8, !"sign-return-address", i32 0}
!464 = !{i32 8, !"sign-return-address-all", i32 0}
!465 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!466 = !{i32 7, !"uwtable", i32 1}
!467 = !{i32 7, !"frame-pointer", i32 2}
!468 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
