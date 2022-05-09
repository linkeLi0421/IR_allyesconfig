; ModuleID = '/llk/IR_all_yes/net/tipc/netlink_compat.c_pt.bc'
source_filename = "../net/tipc/netlink_compat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.tipc_nl_compat_cmd_dump = type { ptr, ptr, ptr }
%struct.tipc_nl_compat_cmd_doit = type { ptr, ptr }
%struct.tipc_nl_compat_msg = type { i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.sk_buff = type { %union.anon.0, %union.anon.126, %union.anon.127, [48 x i8], %union.anon.128, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.130, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.126 = type { ptr }
%union.anon.127 = type { i64 }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, ptr }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.132, i32, i32, i32, i16, i16, %union.anon.134, i32, %union.anon.135, %union.anon.136, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.132 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.tipc_genlmsghdr = type { i32, i16, i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
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
%struct.tlv_desc = type { i16, i16 }
%struct.tipc_link_info = type { i32, i32, [68 x i8] }
%struct.genl_dumpit_info = type { ptr, %struct.genl_ops, ptr }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.115 }
%union.anon.115 = type { [6 x i32], [24 x i8] }
%struct.__va_list = type { ptr }

@tipc_genl_compat_family = internal global %struct.genl_family { i32 0, i32 8, [16 x i8] c"TIPC\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 -128, i8 0, i8 1, i8 0, ptr null, ptr null, ptr null, ptr null, ptr @tipc_genl_compat_ops, ptr null, ptr null }, section ".data..ro_after_init", align 4
@tipc_netlink_compat_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013tipc: Failed to register legacy compat interface\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tipc_netlink_compat_start\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/tipc/netlink_compat.c\00", [38 x i8] zeroinitializer }, align 32
@tipc_netlink_compat_start._entry_ptr = internal global ptr @tipc_netlink_compat_start._entry, section ".printk_index", align 4
@tipc_genl_compat_ops = internal constant { [1 x %struct.genl_small_ops], [20 x i8] } { [1 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @tipc_nl_compat_recv, ptr null, i8 1, i8 0, i8 0, i8 3 }], [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\81\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\84\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\80\00", [30 x i8] zeroinitializer }, align 32
@tipc_genl_family = external dso_local global %struct.genl_family, align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"<truncated>\0A\00", [19 x i8] zeroinitializer }, align 32
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\0ALink <%s>\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"  ACTIVE\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  STANDBY\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  DEFUNCT\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  MTU:%u  Priority:%u\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"  Tolerance:%u ms  Window:%u packets\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"  RX packets:%u fragments:%u/%u bundles:%u/%u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"  TX packets:%u fragments:%u/%u bundles:%u/%u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"  TX profile sample:%u packets  average:%u octets\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"  0-64:%u%% -256:%u%% -1024:%u%% -4096:%u%% \00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"-16384:%u%% -32768:%u%% -66000:%u%%\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"  RX states:%u probes:%u naks:%u defs:%u dups:%u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"  TX states:%u probes:%u naks:%u acks:%u dups:%u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"  Congestion link:%u  Send queue max:%u avg:%u\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  Window:%u packets\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  RX naks:%u defs:%u dups:%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  TX naks:%u acks:%u dups:%u\0A\00", [34 x i8] zeroinitializer }, align 32
@tipc_nl_compat_name_table_dump_header.header = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Type       \00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Lower      Upper      \00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Port Identity              \00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Publication Scope\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@tipc_nl_compat_name_table_dump.scope_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" zone\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" cluster\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" node\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%-10u \00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%-10u %-10u \00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"<%u.%u.%u:%u>\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%-26s \00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%-10u %s\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u:\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  connected to <%u.%u.%u:%u>\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" via {%u,%u}\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" bound to\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" {%u,%u}\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" {%u,%u,%u}\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TIPC version 2.0.0\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [20 x i64] [i64 18, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 11, i64 15, i64 16395, i64 16641, i64 16642, i64 16647, i64 16648, i64 16649, i64 16652, i64 32769, i64 32779]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967274, i64 4294967295]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 16, i64 16647, i64 16648, i64 16649]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 16, i64 16647, i64 16648, i64 16649]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 16, i64 16647, i64 16648, i64 16649]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 16, i64 32769, i64 32779]
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1368, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"tipc_genl_compat_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1343, i32 36 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1312, i32 30 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1319, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1328, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 269, i32 6 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 593, i32 29 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 602, i32 30 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 604, i32 30 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 606, i32 30 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 608, i32 29 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 612, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 617, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 626, i32 5 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 635, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 641, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 651, i32 29 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 660, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 668, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 676, i32 5 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 508, i32 29 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 527, i32 29 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 532, i32 29 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 875, i32 28 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 876, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 877, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 878, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 879, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 892, i32 29 }
@___asan_gen_.146 = private unnamed_addr constant [10 x i8] c"scope_str\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 905, i32 28 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 905, i32 43 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 905, i32 47 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 905, i32 56 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 906, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 942, i32 29 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 948, i32 29 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 956, i32 20 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 958, i32 29 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 963, i32 29 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1058, i32 29 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1072, i32 30 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1079, i32 31 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1085, i32 30 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 992, i32 30 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 994, i32 30 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [29 x i8] c"../net/tipc/netlink_compat.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1189, i32 29 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @tipc_netlink_compat_start._entry, ptr @tipc_netlink_compat_start._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tipc_genl_compat_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @tipc_nl_compat_name_table_dump_header.header, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @tipc_nl_compat_name_table_dump.scope_str, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_netlink_compat_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_genl_compat_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nl_compat_name_table_dump_header.header to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nl_compat_name_table_dump.scope_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_netlink_compat_start() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @tipc_genl_compat_family) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_netlink_compat_stop() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_unregister_family(ptr noundef nonnull @tipc_genl_compat_family) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_nl_compat_recv(ptr noundef %skb, ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  %dump.i = alloca %struct.tipc_nl_compat_cmd_dump, align 4
  %doit.i = alloca %struct.tipc_nl_compat_cmd_doit, align 8
  %msg = alloca %struct.tipc_nl_compat_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %msg) #10
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userhdr, align 4
  %2 = call ptr @memset(ptr %msg, i32 0, i32 36)
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr1 = getelementptr i8, ptr %4, i32 28
  %req = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 7
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr1, ptr %req, align 4
  %cmd = getelementptr inbounds %struct.tipc_genlmsghdr, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cmd, align 4
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msg, align 4
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %9 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_net.i, align 4
  %net = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 5
  %11 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %net, align 4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dst_sk = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 8
  %15 = ptrtoint ptr %dst_sk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dst_sk, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %7)
  %tobool.not = icmp ult i16 %7, 16384
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call5 = tail call zeroext i1 @netlink_net_capable(ptr noundef %skb, i32 noundef 12) #10
  br i1 %call5, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call fastcc ptr @tipc_get_err_tlv(ptr noundef nonnull @.str.3)
  %rep = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %16 = ptrtoint ptr %rep to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call6, ptr %rep, align 4
  br label %send

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %4, align 4
  %sub1.i = add i32 %18, -28
  %req_size = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 4
  %19 = ptrtoint ptr %req_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub1.i, ptr %req_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %tobool9.not = icmp eq i32 %sub1.i, 0
  br i1 %tobool9.not, label %if.end.if.end19_crit_edge, label %land.lhs.true10

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true10:                                  ; preds = %if.end
  %conv13 = trunc i32 %sub1.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv13)
  %cmp.i = icmp ugt i16 %conv13, 3
  br i1 %cmp.i, label %TLV_OK.exit, label %land.lhs.true10.if.then16_crit_edge

land.lhs.true10.if.then16_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

TLV_OK.exit:                                      ; preds = %land.lhs.true10
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %conv13)
  %cmp4.i.not = icmp ugt i16 %23, %conv13
  br i1 %cmp4.i.not, label %TLV_OK.exit.if.then16_crit_edge, label %TLV_OK.exit.if.end19_crit_edge

TLV_OK.exit.if.end19_crit_edge:                   ; preds = %TLV_OK.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

TLV_OK.exit.if.then16_crit_edge:                  ; preds = %TLV_OK.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then16:                                        ; preds = %TLV_OK.exit.if.then16_crit_edge, %land.lhs.true10.if.then16_crit_edge
  %call17 = tail call fastcc ptr @tipc_get_err_tlv(ptr noundef nonnull @.str.4)
  %rep18 = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %24 = ptrtoint ptr %rep18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call17, ptr %rep18, align 4
  br label %send

if.end19:                                         ; preds = %TLV_OK.exit.if.end19_crit_edge, %if.end.if.end19_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dump.i) #10
  %25 = getelementptr inbounds %struct.tipc_nl_compat_cmd_dump, ptr %dump.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.tipc_nl_compat_cmd_dump, ptr %dump.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %doit.i) #10
  %27 = getelementptr inbounds %struct.tipc_nl_compat_cmd_doit, ptr %doit.i, i32 0, i32 1
  %28 = call ptr @memset(ptr %dump.i, i32 0, i32 12)
  %29 = ptrtoint ptr %doit.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %doit.i, align 8
  %30 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %msg, align 4
  %32 = zext i16 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i16 %31, label %tipc_nl_compat_handle.exit.thread67 [
    i16 0, label %sw.bb.i
    i16 3, label %sw.bb2.i
    i16 16641, label %sw.bb4.i
    i16 16642, label %sw.bb7.i
    i16 11, label %sw.bb12.i
    i16 4, label %sw.bb18.i
    i16 16647, label %if.end19.sw.bb24.i_crit_edge
    i16 16648, label %if.end19.sw.bb24.i_crit_edge70
    i16 16649, label %if.end19.sw.bb24.i_crit_edge71
    i16 16652, label %sw.bb29.i
    i16 5, label %sw.bb34.i
    i16 6, label %sw.bb41.i
    i16 2, label %sw.bb47.i
    i16 1, label %sw.bb52.i
    i16 -32767, label %sw.bb57.i
    i16 -32757, label %sw.bb62.i
    i16 16395, label %sw.bb67.i
    i16 15, label %sw.bb72.i
  ]

if.end19.sw.bb24.i_crit_edge71:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24.i

if.end19.sw.bb24.i_crit_edge70:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24.i

if.end19.sw.bb24.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24.i

tipc_nl_compat_handle.exit.thread67:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %doit.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dump.i) #10
  br label %if.then24

sw.bb.i:                                          ; preds = %if.end19
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb.i.tipc_tlv_alloc.exit.i_crit_edge, label %if.end.i.i

sw.bb.i.tipc_tlv_alloc.exit.i_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_tlv_alloc.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %34, i32 28
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %35 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %36, i32 28
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  br label %tipc_tlv_alloc.exit.i

tipc_tlv_alloc.exit.i:                            ; preds = %if.end.i.i, %sw.bb.i.tipc_tlv_alloc.exit.i_crit_edge
  %..i = phi i32 [ -12, %sw.bb.i.tipc_tlv_alloc.exit.i_crit_edge ], [ 0, %if.end.i.i ]
  %rep.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %37 = ptrtoint ptr %rep.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i.i, ptr %rep.i, align 4
  br label %tipc_nl_compat_handle.exit

sw.bb2.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %rep_size.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 2
  %38 = ptrtoint ptr %rep_size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 108, ptr %rep_size.i, align 4
  %39 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @tipc_nl_bearer_dump, ptr %25, align 4
  %40 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @tipc_nl_compat_bearer_dump, ptr %26, align 4
  %call3.i = call fastcc i32 @tipc_nl_compat_dumpit(ptr noundef nonnull %dump.i, ptr noundef nonnull %msg) #10
  br label %tipc_nl_compat_handle.exit

sw.bb4.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %req_type.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 3
  %41 = ptrtoint ptr %req_type.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 23, ptr %req_type.i, align 4
  %42 = ptrtoint ptr %doit.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @__tipc_nl_bearer_enable, ptr %doit.i, align 8
  %43 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @tipc_nl_compat_bearer_enable, ptr %27, align 4
  %call6.i = call fastcc i32 @tipc_nl_compat_doit(ptr noundef nonnull %doit.i, ptr noundef nonnull %msg) #10
  br label %tipc_nl_compat_handle.exit

sw.bb7.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %req_type8.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 3
  %44 = ptrtoint ptr %req_type8.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 19, ptr %req_type8.i, align 4
  %45 = ptrtoint ptr %doit.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @__tipc_nl_bearer_disable, ptr %doit.i, align 8
  %46 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @tipc_nl_compat_bearer_disable, ptr %27, align 4
  %call11.i = call fastcc i32 @tipc_nl_compat_doit(ptr noundef nonnull %doit.i, ptr noundef nonnull %msg) #10
  br label %tipc_nl_compat_handle.exit

sw.bb12.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %req_type13.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 3
  %47 = ptrtoint ptr %req_type13.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 20, ptr %req_type13.i, align 4
  %rep_size14.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 2
  %48 = ptrtoint ptr %rep_size14.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 32768, ptr %rep_size14.i, align 4
  %rep_type.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 1
  %49 = ptrtoint ptr %rep_type.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 5, ptr %rep_type.i, align 4
  %50 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @tipc_nl_node_dump_link, ptr %25, align 4
  %51 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @tipc_nl_compat_link_stat_dump, ptr %26, align 4
  %call17.i = call fastcc i32 @tipc_nl_compat_dumpit(ptr noundef nonnull %dump.i, ptr noundef nonnull %msg) #10
  br label %tipc_nl_compat_handle.exit

sw.bb18.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %req_type19.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 3
  %52 = ptrtoint ptr %req_type19.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 17, ptr %req_type19.i, align 4
  %rep_size20.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 2
  %53 = ptrtoint ptr %rep_size20.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 32768, ptr %rep_size20.i, align 4
  %54 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @tipc_nl_node_dump_link, ptr %25, align 4
  %55 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @tipc_nl_compat_link_dump, ptr %26, align 4
  %call23.i = call fastcc i32 @tipc_nl_compat_dumpit(ptr noundef nonnull %dump.i, ptr noundef nonnull %msg) #10
  br label %tipc_nl_compat_handle.exit

sw.bb24.i:                                        ; preds = %if.end19.sw.bb24.i_crit_edge, %if.end19.sw.bb24.i_crit_edge70, %if.end19.sw.bb24.i_crit_edge71
  %req_type25.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 3
  %56 = ptrtoint ptr %req_type25.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 24, ptr %req_type25.i, align 4
  %57 = ptrtoint ptr %doit.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @tipc_nl_node_set_link, ptr %doit.i, align 8
  %58 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @tipc_nl_compat_link_set, ptr %27, align 4
  %call28.i = call fastcc i32 @tipc_nl_compat_doit(ptr noundef nonnull %doit.i, ptr noundef nonnull %msg) #10
  br label %tipc_nl_compat_handle.exit

sw.bb29.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %req_type30.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 3
  %59 = ptrtoint ptr %req_type30.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 20, ptr %req_type30.i, align 4
  %60 = ptrtoint ptr %doit.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @tipc_nl_node_reset_link_stats, ptr %doit.i, align 8
  %61 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @tipc_nl_compat_link_reset_stats, ptr %27, align 4
  %call33.i = call fastcc i32 @tipc_nl_compat_doit(ptr noundef nonnull %doit.i, ptr noundef nonnull %msg) #10
  br label %tipc_nl_compat_handle.exit

sw.bb34.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %req_type35.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 3
  %62 = ptrtoint ptr %req_type35.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 25, ptr %req_type35.i, align 4
  %rep_size36.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 2
  %63 = ptrtoint ptr %rep_size36.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 32768, ptr %rep_size36.i, align 4
  %rep_type37.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 1
  %64 = ptrtoint ptr %rep_type37.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 5, ptr %rep_type37.i, align 4
  %65 = ptrtoint ptr %dump.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @tipc_nl_compat_name_table_dump_header, ptr %dump.i, align 4
  %66 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @tipc_nl_name_table_dump, ptr %25, align 4
  %67 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @tipc_nl_compat_name_table_dump, ptr %26, align 4
  %call40.i = call fastcc i32 @tipc_nl_compat_dumpit(ptr noundef nonnull %dump.i, ptr noundef nonnull %msg) #10
  br label %tipc_nl_compat_handle.exit

sw.bb41.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %rep_size42.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 2
  %68 = ptrtoint ptr %rep_size42.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 32768, ptr %rep_size42.i, align 4
  %rep_type43.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 1
  %69 = ptrtoint ptr %rep_type43.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 5, ptr %rep_type43.i, align 4
  %70 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @tipc_nl_sk_dump, ptr %25, align 4
  %71 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @tipc_nl_compat_sk_dump, ptr %26, align 4
  %call46.i = call fastcc i32 @tipc_nl_compat_dumpit(ptr noundef nonnull %dump.i, ptr noundef nonnull %msg) #10
  br label %tipc_nl_compat_handle.exit

sw.bb47.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %rep_size48.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 2
  %72 = ptrtoint ptr %rep_size48.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 60, ptr %rep_size48.i, align 4
  %73 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @tipc_nl_media_dump, ptr %25, align 4
  %74 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @tipc_nl_compat_media_dump, ptr %26, align 4
  %call51.i = call fastcc i32 @tipc_nl_compat_dumpit(ptr noundef nonnull %dump.i, ptr noundef nonnull %msg) #10
  br label %tipc_nl_compat_handle.exit

sw.bb52.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %rep_size53.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 2
  %75 = ptrtoint ptr %rep_size53.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 32768, ptr %rep_size53.i, align 4
  %76 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @tipc_nl_node_dump, ptr %25, align 4
  %77 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @tipc_nl_compat_node_dump, ptr %26, align 4
  %call56.i = call fastcc i32 @tipc_nl_compat_dumpit(ptr noundef nonnull %dump.i, ptr noundef nonnull %msg) #10
  br label %tipc_nl_compat_handle.exit

sw.bb57.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %req_type58.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 3
  %78 = ptrtoint ptr %req_type58.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 17, ptr %req_type58.i, align 4
  %79 = ptrtoint ptr %doit.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @__tipc_nl_net_set, ptr %doit.i, align 8
  %80 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @tipc_nl_compat_net_set, ptr %27, align 4
  %call61.i = call fastcc i32 @tipc_nl_compat_doit(ptr noundef nonnull %doit.i, ptr noundef nonnull %msg) #10
  br label %tipc_nl_compat_handle.exit

sw.bb62.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %req_type63.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 3
  %81 = ptrtoint ptr %req_type63.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 2, ptr %req_type63.i, align 4
  %82 = ptrtoint ptr %doit.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @__tipc_nl_net_set, ptr %doit.i, align 8
  %83 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @tipc_nl_compat_net_set, ptr %27, align 4
  %call66.i = call fastcc i32 @tipc_nl_compat_doit(ptr noundef nonnull %doit.i, ptr noundef nonnull %msg) #10
  br label %tipc_nl_compat_handle.exit

sw.bb67.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %rep_size68.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 2
  %84 = ptrtoint ptr %rep_size68.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 4, ptr %rep_size68.i, align 4
  %85 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @tipc_nl_net_dump, ptr %25, align 4
  %86 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @tipc_nl_compat_net_dump, ptr %26, align 4
  %call71.i = call fastcc i32 @tipc_nl_compat_dumpit(ptr noundef nonnull %dump.i, ptr noundef nonnull %msg) #10
  br label %tipc_nl_compat_handle.exit

sw.bb72.i:                                        ; preds = %if.end19
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 32800, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %tipc_tlv_alloc.exit.thread.i.i, label %if.end.i113.i

tipc_tlv_alloc.exit.thread.i.i:                   ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #12
  %rep8.i.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %87 = ptrtoint ptr %rep8.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %rep8.i.i, align 4
  br label %tipc_nl_compat_handle.exit.thread

if.end.i113.i:                                    ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %88 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %89, i32 28
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %90 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %91, i32 28
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %rep.i.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %92 = ptrtoint ptr %rep.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i.i.i.i, ptr %rep.i.i, align 4
  %93 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %add.ptr.i.i.i.i, align 2
  %tlv_type.i.i.i.i = getelementptr i8, ptr %89, i32 30
  %94 = ptrtoint ptr %tlv_type.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 5, ptr %tlv_type.i.i.i.i, align 2
  %call.i.i112.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 4) #10
  %95 = ptrtoint ptr %rep.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rep.i.i, align 4
  tail call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %96, ptr noundef nonnull @.str.44) #10
  br label %tipc_nl_compat_handle.exit.thread

tipc_nl_compat_handle.exit.thread:                ; preds = %if.end.i113.i, %tipc_tlv_alloc.exit.thread.i.i
  %retval.0.i.ph = phi i32 [ -12, %tipc_tlv_alloc.exit.thread.i.i ], [ 0, %if.end.i113.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %doit.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dump.i) #10
  br label %send

tipc_nl_compat_handle.exit:                       ; preds = %sw.bb67.i, %sw.bb62.i, %sw.bb57.i, %sw.bb52.i, %sw.bb47.i, %sw.bb41.i, %sw.bb34.i, %sw.bb29.i, %sw.bb24.i, %sw.bb18.i, %sw.bb12.i, %sw.bb7.i, %sw.bb4.i, %sw.bb2.i, %tipc_tlv_alloc.exit.i
  %retval.0.i = phi i32 [ %call71.i, %sw.bb67.i ], [ %call66.i, %sw.bb62.i ], [ %call61.i, %sw.bb57.i ], [ %call56.i, %sw.bb52.i ], [ %call51.i, %sw.bb47.i ], [ %call46.i, %sw.bb41.i ], [ %call40.i, %sw.bb34.i ], [ %call33.i, %sw.bb29.i ], [ %call28.i, %sw.bb24.i ], [ %call23.i, %sw.bb18.i ], [ %call17.i, %sw.bb12.i ], [ %call11.i, %sw.bb7.i ], [ %call6.i, %sw.bb4.i ], [ %call3.i, %sw.bb2.i ], [ %..i, %tipc_tlv_alloc.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %doit.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dump.i) #10
  %97 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %retval.0.i, label %tipc_nl_compat_handle.exit.send_crit_edge [
    i32 -95, label %tipc_nl_compat_handle.exit.if.then24_crit_edge
    i32 -1, label %tipc_nl_compat_handle.exit.if.then24_crit_edge72
    i32 -22, label %if.then29
  ]

tipc_nl_compat_handle.exit.if.then24_crit_edge72: ; preds = %tipc_nl_compat_handle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

tipc_nl_compat_handle.exit.if.then24_crit_edge:   ; preds = %tipc_nl_compat_handle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

tipc_nl_compat_handle.exit.send_crit_edge:        ; preds = %tipc_nl_compat_handle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %send

if.then24:                                        ; preds = %tipc_nl_compat_handle.exit.if.then24_crit_edge, %tipc_nl_compat_handle.exit.if.then24_crit_edge72, %tipc_nl_compat_handle.exit.thread67
  %retval.0.i69 = phi i32 [ -95, %tipc_nl_compat_handle.exit.thread67 ], [ %retval.0.i, %tipc_nl_compat_handle.exit.if.then24_crit_edge ], [ %retval.0.i, %tipc_nl_compat_handle.exit.if.then24_crit_edge72 ]
  %call25 = call fastcc ptr @tipc_get_err_tlv(ptr noundef nonnull @.str.4)
  %rep26 = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %98 = ptrtoint ptr %rep26 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call25, ptr %rep26, align 4
  br label %send

if.then29:                                        ; preds = %tipc_nl_compat_handle.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = call fastcc ptr @tipc_get_err_tlv(ptr noundef nonnull @.str.5)
  %rep31 = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %99 = ptrtoint ptr %rep31 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call30, ptr %rep31, align 4
  br label %send

send:                                             ; preds = %if.then29, %if.then24, %tipc_nl_compat_handle.exit.send_crit_edge, %tipc_nl_compat_handle.exit.thread, %if.then16, %if.then
  %err.0 = phi i32 [ %retval.0.i69, %if.then24 ], [ -22, %if.then29 ], [ -95, %if.then16 ], [ -13, %if.then ], [ %retval.0.i, %tipc_nl_compat_handle.exit.send_crit_edge ], [ %retval.0.i.ph, %tipc_nl_compat_handle.exit.thread ]
  %rep34 = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %100 = ptrtoint ptr %rep34 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rep34, align 4
  %tobool35.not = icmp eq ptr %101, null
  br i1 %tobool35.not, label %send.cleanup_crit_edge, label %if.end37

send.cleanup_crit_edge:                           ; preds = %send
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %send
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = call ptr @skb_push(ptr noundef nonnull %101, i32 noundef 28) #10
  %102 = ptrtoint ptr %rep34 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rep34, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 19
  %104 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data.i, align 4
  %nlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 2
  %106 = ptrtoint ptr %nlhdr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %nlhdr, align 4
  %108 = call ptr @memcpy(ptr %105, ptr %107, i32 28)
  %109 = load ptr, ptr %rep34, align 4
  %len44 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %len44 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %len44, align 4
  %112 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %105, align 4
  %113 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %net, align 4
  %115 = load ptr, ptr %rep34, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %116 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %portid, align 4
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %114, i32 0, i32 21
  %118 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %genl_sock.i, align 4
  %call.i.i = call i32 @netlink_unicast(ptr noundef %119, ptr noundef %115, i32 noundef %117, i32 noundef 64) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %send.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %msg) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_net_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_get_err_tlv(ptr noundef readonly %str) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %str) #14
  %add2 = add i32 %call, 8
  %and = and i32 %add2, -4
  %0 = add i32 %and, 35
  %add2.i = and i32 %0, -4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add2.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %1 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 28
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %4, i32 28
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %5 = trunc i32 %call to i16
  %conv = add i16 %5, 1
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.then.tipc_skb_tailroom.exit.i_crit_edge

if.then.tipc_skb_tailroom.exit.i_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_skb_tailroom.exit.i

cond.false.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %8 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %tipc_skb_tailroom.exit.i

tipc_skb_tailroom.exit.i:                         ; preds = %cond.false.i.i.i, %if.then.tipc_skb_tailroom.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %if.then.tipc_skb_tailroom.exit.i_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %sub.i.i = sub i32 32772, %11
  %12 = tail call i32 @llvm.smin.i32(i32 %cond.i.i.i, i32 %sub.i.i) #10
  %conv.i = zext i16 %conv to i32
  %add2.i10 = add nuw nsw i32 %conv.i, 7
  %and.i = and i32 %add2.i10, 131068
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %and.i)
  %cmp.i = icmp ult i32 %12, %and.i
  br i1 %cmp.i, label %tipc_skb_tailroom.exit.i.if.end_crit_edge, label %if.end.i12

tipc_skb_tailroom.exit.i.if.end_crit_edge:        ; preds = %tipc_skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i12:                                       ; preds = %tipc_skb_tailroom.exit.i
  %add.i = add i16 %5, 5
  %call8.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %and.i) #10
  %tlv_type.i = getelementptr i8, ptr %4, i32 30
  %13 = ptrtoint ptr %tlv_type.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 16, ptr %tlv_type.i, align 2
  %14 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %add.i, ptr %add.ptr1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not.i11 = icmp eq i16 %conv, 0
  %tobool13.not.i = icmp eq ptr %str, null
  %or.cond.i = or i1 %tobool13.not.i, %tobool.not.i11
  br i1 %or.cond.i, label %if.end.i12.if.end_crit_edge, label %if.then14.i

if.end.i12.if.end_crit_edge:                      ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then14.i:                                      ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %4, i32 32
  %15 = call ptr @memcpy(ptr %add.ptr.i, ptr %str, i32 %conv.i)
  br label %if.end

if.end:                                           ; preds = %if.then14.i, %if.end.i12.if.end_crit_edge, %tipc_skb_tailroom.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_bearer_dump(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_nl_compat_bearer_dump(ptr nocapture noundef readonly %msg, ptr nocapture noundef readonly %attrs) #4 align 64 {
entry:
  %bearer = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %bearer) #10
  %0 = getelementptr inbounds [5 x ptr], ptr %bearer, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %attrs, i32 1
  %1 = call ptr @memset(ptr %bearer, i32 255, i32 20)
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %bearer, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool2.not = icmp eq i32 %call2.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rep = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %6 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rep, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 2
  %sub.i = add i16 %11, -4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end4.tipc_skb_tailroom.exit.i_crit_edge

if.end4.tipc_skb_tailroom.exit.i_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_skb_tailroom.exit.i

cond.false.i.i.i:                                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %16 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %tipc_skb_tailroom.exit.i

tipc_skb_tailroom.exit.i:                         ; preds = %cond.false.i.i.i, %if.end4.tipc_skb_tailroom.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %if.end4.tipc_skb_tailroom.exit.i_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i, align 4
  %sub.i.i13 = sub i32 32772, %19
  %20 = call i32 @llvm.smin.i32(i32 %cond.i.i.i, i32 %sub.i.i13) #10
  %conv.i14 = zext i16 %sub.i to i32
  %add2.i = add nuw nsw i32 %conv.i14, 7
  %and.i = and i32 %add2.i, 131068
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %and.i)
  %cmp.i = icmp ult i32 %20, %and.i
  br i1 %cmp.i, label %tipc_skb_tailroom.exit.i.cleanup_crit_edge, label %if.end.i

tipc_skb_tailroom.exit.i.cleanup_crit_edge:       ; preds = %tipc_skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %tipc_skb_tailroom.exit.i
  %call8.i = call ptr @skb_put(ptr noundef %7, i32 noundef %and.i) #10
  %tlv_type.i = getelementptr inbounds %struct.tlv_desc, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %tlv_type.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 19, ptr %tlv_type.i, align 2
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %11, ptr %13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i)
  %tobool.not.i = icmp eq i16 %sub.i, 0
  %tobool13.not.i = icmp eq ptr %add.ptr.i, null
  %or.cond.i = or i1 %tobool13.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.i.cleanup_crit_edge, label %if.then14.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i15 = getelementptr i8, ptr %13, i32 4
  %23 = call ptr @memcpy(ptr %add.ptr.i15, ptr %add.ptr.i, i32 %conv.i14)
  br label %cleanup

cleanup:                                          ; preds = %if.then14.i, %if.end.i.cleanup_crit_edge, %tipc_skb_tailroom.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -90, %tipc_skb_tailroom.exit.i.cleanup_crit_edge ], [ 0, %if.then14.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %bearer) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_nl_compat_dumpit(ptr nocapture noundef readonly %cmd, ptr noundef %msg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %req_type = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %req_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %req_size = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 4
  %2 = ptrtoint ptr %req_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %req = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 7
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %conv = trunc i32 %1 to i16
  %tlv_type.i = getelementptr inbounds %struct.tlv_desc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tlv_type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tlv_type.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %conv)
  %cmp.i.not = icmp eq i16 %7, %conv
  br i1 %cmp.i.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %rep_size = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %rep_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rep_size, align 4
  %10 = add i32 %9, 35
  %add2.i = and i32 %10, -4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add2.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %tipc_tlv_alloc.exit.thread, label %if.end8

tipc_tlv_alloc.exit.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %rep82 = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %11 = ptrtoint ptr %rep82 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rep82, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 28
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %15, i32 28
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %rep = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %16 = ptrtoint ptr %rep to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %rep, align 4
  %rep_type = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 1
  %17 = ptrtoint ptr %rep_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rep_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool9.not = icmp eq i32 %18, 0
  br i1 %tobool9.not, label %if.end8.if.end14_crit_edge, label %if.then10

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %conv13 = trunc i32 %18 to i16
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %20, align 2
  %tlv_type.i.i = getelementptr inbounds %struct.tlv_desc, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %tlv_type.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv13, ptr %tlv_type.i.i, align 2
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end8.if.end14_crit_edge
  %23 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd, align 4
  %tobool15.not = icmp eq ptr %24, null
  br i1 %tobool15.not, label %if.end14.if.end24_crit_edge, label %if.then16

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then16:                                        ; preds = %if.end14
  %call18 = tail call i32 %24(ptr noundef %msg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then16.if.end24_crit_edge, label %if.then20

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rep, align 4
  tail call void @kfree_skb_reason(ptr noundef %26, i32 noundef 0) #10
  %27 = ptrtoint ptr %rep to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rep, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.then16.if.end24_crit_edge, %if.end14.if.end24_crit_edge
  %call.i.i77 = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool26.not = icmp eq ptr %call.i.i77, null
  br i1 %tobool26.not, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rep, align 4
  tail call void @kfree_skb_reason(ptr noundef %29, i32 noundef 0) #10
  %30 = ptrtoint ptr %rep to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %rep, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_genl_family to i32))
  %31 = load i32, ptr @tipc_genl_family, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i77, i32 0, i32 7
  %32 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end30.if.then33_crit_edge

if.end30.if.then33_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

skb_tailroom.exit.i:                              ; preds = %if.end30
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i77, i32 0, i32 17
  %34 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i.i, align 4
  %tail.i.i78 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i77, i32 0, i32 16
  %36 = ptrtoint ptr %tail.i.i78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i.i78, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i)
  %cmp.i79 = icmp slt i32 %sub.ptr.sub.i.i, 16
  br i1 %cmp.i79, label %skb_tailroom.exit.i.if.then33_crit_edge, label %nlmsg_put.exit, !prof !109

skb_tailroom.exit.i.if.then33_crit_edge:          ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i77, i32 noundef 0, i32 noundef 0, i32 noundef %31, i32 noundef 0, i32 noundef 2) #10
  %tobool32.not = icmp eq ptr %call3.i, null
  br i1 %tobool32.not, label %nlmsg_put.exit.if.then33_crit_edge, label %if.end36

nlmsg_put.exit.if.then33_crit_edge:               ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.then33:                                        ; preds = %nlmsg_put.exit.if.then33_crit_edge, %skb_tailroom.exit.i.if.then33_crit_edge, %if.end30.if.then33_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i77, i32 noundef 0) #10
  %38 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rep, align 4
  tail call void @kfree_skb_reason(ptr noundef %39, i32 noundef 0) #10
  %40 = ptrtoint ptr %rep to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %rep, align 4
  br label %cleanup

if.end36:                                         ; preds = %nlmsg_put.exit
  %41 = ptrtoint ptr %tail.i.i78 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i78, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %43 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  %call37 = tail call fastcc i32 @__tipc_nl_compat_dumpit(ptr noundef %cmd, ptr noundef %msg, ptr noundef nonnull %call.i.i77)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end36.if.end42_crit_edge, label %if.then39

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rep, align 4
  tail call void @kfree_skb_reason(ptr noundef %45, i32 noundef 0) #10
  %46 = ptrtoint ptr %rep to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %rep, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36.if.end42_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i77, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then33, %if.then27, %if.then20, %tipc_tlv_alloc.exit.thread, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.then20 ], [ %call37, %if.end42 ], [ -90, %if.then33 ], [ -12, %if.then27 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -12, %tipc_tlv_alloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tipc_nl_bearer_enable(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_nl_compat_bearer_enable(ptr nocapture noundef readnone %cmd, ptr noundef %skb, ptr nocapture noundef readonly %msg) #4 align 64 {
entry:
  %tmp.i61 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 7
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not69 = icmp eq ptr %3, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not69
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %7)
  %cmp = icmp ult i16 %7, 13
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv.i.i = zext i16 %7 to i32
  %sub = add nsw i32 %conv.i.i, -12
  %8 = tail call i32 @llvm.umin.i32(i32 %sub, i32 32)
  %name = getelementptr i8, ptr %1, i32 12
  %call.i = tail call ptr @memchr(ptr noundef %name, i32 noundef 0, i32 noundef %8) #15
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call.i54 = tail call i32 @strlen(ptr noundef %name) #15
  %add.i = add i32 %call.i54, 1
  %call1.i55 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef %name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool12.not = icmp eq i32 %call1.i55, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %disc_domain = getelementptr i8, ptr %1, i32 8
  %9 = ptrtoint ptr %disc_domain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %disc_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tmp.i, align 4
  %call.i56 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool16.not = icmp eq i32 %call.i56, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %13)
  %cmp19 = icmp ult i32 %13, 32
  br i1 %cmp19, label %if.then20, label %if.end18.if.end31_crit_edge

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then20:                                        ; preds = %if.end18
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i, align 8
  %call1.i58 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %cmp.i59 = icmp slt i32 %call1.i58, 0
  %tobool22.not70 = icmp eq ptr %15, null
  %tobool22.not = select i1 %cmp.i59, i1 true, i1 %tobool22.not70
  br i1 %tobool22.not, label %if.then20.cleanup_crit_edge, label %if.end24

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.then20
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i61) #10
  %18 = ptrtoint ptr %tmp.i61 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tmp.i61, align 4
  %call.i62 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i61) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i61) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool27.not = icmp eq i32 %call.i62, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %15, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %if.end18.if.end31_crit_edge
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i65 = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i66 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i67 = sub i32 %sub.ptr.lhs.cast.i65, %sub.ptr.rhs.cast.i66
  %conv.i68 = trunc i32 %sub.ptr.sub.i67 to i16
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i68, ptr %3, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end24.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -90, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -90, %if.end8.cleanup_crit_edge ], [ -90, %if.end14.cleanup_crit_edge ], [ -90, %if.then20.cleanup_crit_edge ], [ -90, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_nl_compat_doit(ptr noundef %cmd, ptr noundef %msg) unnamed_addr #4 align 64 {
entry:
  %info.i = alloca %struct.genl_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %req_type = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %req_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %req_size = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 4
  %2 = ptrtoint ptr %req_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %req = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 7
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %conv = trunc i32 %1 to i16
  %tlv_type.i = getelementptr inbounds %struct.tlv_desc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tlv_type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tlv_type.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %conv)
  %cmp.i.not = icmp eq i16 %7, %conv
  br i1 %cmp.i.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i) #10
  %8 = call ptr @memset(ptr %info.i, i32 255, i32 40)
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %__tipc_nl_compat_doit.exit.thread, label %if.end.i

__tipc_nl_compat_doit.exit.thread:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.genl_family, ptr @tipc_genl_family, i32 0, i32 4) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @tipc_genl_family, i32 0, i32 4), align 4
  %add.i = add i32 %9, 1
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #10
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %if.end.i.__tipc_nl_compat_doit.exit.thread25_crit_edge, label %if.end7.i.i, !prof !109

if.end.i.__tipc_nl_compat_doit.exit.thread25_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__tipc_nl_compat_doit.exit.thread25

if.end7.i.i:                                      ; preds = %if.end.i
  %12 = extractvalue { i32, i1 } %10, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #16
  %tobool2.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool2.not.i, label %if.end7.i.i.__tipc_nl_compat_doit.exit.thread25_crit_edge, label %if.end4.i

if.end7.i.i.__tipc_nl_compat_doit.exit.thread25_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__tipc_nl_compat_doit.exit.thread25

if.end4.i:                                        ; preds = %if.end7.i.i
  %call.i37.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool6.not.i = icmp eq ptr %call.i37.i, null
  br i1 %tobool6.not.i, label %if.end4.i.__tipc_nl_compat_doit.exit_crit_edge, label %if.end8.i

if.end4.i.__tipc_nl_compat_doit.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__tipc_nl_compat_doit.exit

if.end8.i:                                        ; preds = %if.end4.i
  %13 = call ptr @memset(ptr %info.i, i32 0, i32 40)
  %attrs.i = getelementptr inbounds %struct.genl_info, ptr %info.i, i32 0, i32 5
  %14 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i.i, ptr %attrs.i, align 4
  tail call void @rtnl_lock() #10
  %transcode.i = getelementptr inbounds %struct.tipc_nl_compat_cmd_doit, ptr %cmd, i32 0, i32 1
  %15 = ptrtoint ptr %transcode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transcode.i, align 4
  %call9.i = tail call i32 %16(ptr noundef %cmd, ptr noundef nonnull %call.i.i, ptr noundef %msg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.doit_out.i_crit_edge

if.end8.i.doit_out.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %doit_out.i

if.end12.i:                                       ; preds = %if.end8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.genl_family, ptr @tipc_genl_family, i32 0, i32 4) to i32))
  %17 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @tipc_genl_family, i32 0, i32 4), align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  %call.i38.i = tail call i32 @__nla_parse(ptr noundef nonnull %call8.i.i, i32 noundef %17, ptr noundef %19, i32 noundef %21, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %tobool14.not.i = icmp eq i32 %call.i38.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.doit_out.i_crit_edge

if.end12.i.doit_out.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %doit_out.i

if.end16.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %dst_sk.i = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 8
  %22 = ptrtoint ptr %dst_sk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dst_sk.i, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %call.i37.i, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %24, align 4
  %26 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd, align 4
  %call17.i = call i32 %27(ptr noundef nonnull %call.i37.i, ptr noundef nonnull %info.i) #10
  br label %doit_out.i

doit_out.i:                                       ; preds = %if.end16.i, %if.end12.i.doit_out.i_crit_edge, %if.end8.i.doit_out.i_crit_edge
  %err.0.i = phi i32 [ %call9.i, %if.end8.i.doit_out.i_crit_edge ], [ %call.i38.i, %if.end12.i.doit_out.i_crit_edge ], [ %call17.i, %if.end16.i ]
  call void @rtnl_unlock() #10
  call void @kfree_skb_reason(ptr noundef nonnull %call.i37.i, i32 noundef 0) #10
  br label %__tipc_nl_compat_doit.exit

__tipc_nl_compat_doit.exit.thread25:              ; preds = %if.end7.i.i.__tipc_nl_compat_doit.exit.thread25_crit_edge, %if.end.i.__tipc_nl_compat_doit.exit.thread25_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i) #10
  br label %cleanup

__tipc_nl_compat_doit.exit:                       ; preds = %doit_out.i, %if.end4.i.__tipc_nl_compat_doit.exit_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %doit_out.i ], [ -12, %if.end4.i.__tipc_nl_compat_doit.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #10
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool5.not = icmp eq i32 %err.1.i, 0
  br i1 %tobool5.not, label %if.end7, label %__tipc_nl_compat_doit.exit.cleanup_crit_edge

__tipc_nl_compat_doit.exit.cleanup_crit_edge:     ; preds = %__tipc_nl_compat_doit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %__tipc_nl_compat_doit.exit
  %call.i.i20 = call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i21 = icmp eq ptr %call.i.i20, null
  br i1 %tobool.not.i21, label %if.end7.tipc_tlv_alloc.exit_crit_edge, label %if.end.i22

if.end7.tipc_tlv_alloc.exit_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_tlv_alloc.exit

if.end.i22:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i20, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 28
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i20, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %31, i32 28
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  br label %tipc_tlv_alloc.exit

tipc_tlv_alloc.exit:                              ; preds = %if.end.i22, %if.end7.tipc_tlv_alloc.exit_crit_edge
  %. = phi i32 [ -12, %if.end7.tipc_tlv_alloc.exit_crit_edge ], [ 0, %if.end.i22 ]
  %rep = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %32 = ptrtoint ptr %rep to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i20, ptr %rep, align 4
  br label %cleanup

cleanup:                                          ; preds = %tipc_tlv_alloc.exit, %__tipc_nl_compat_doit.exit.cleanup_crit_edge, %__tipc_nl_compat_doit.exit.thread25, %__tipc_nl_compat_doit.exit.thread, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %err.1.i, %__tipc_nl_compat_doit.exit.cleanup_crit_edge ], [ %., %tipc_tlv_alloc.exit ], [ -12, %__tipc_nl_compat_doit.exit.thread ], [ -12, %__tipc_nl_compat_doit.exit.thread25 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tipc_nl_bearer_disable(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_nl_compat_bearer_disable(ptr nocapture noundef readnone %cmd, ptr noundef %skb, ptr nocapture noundef readonly %msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 7
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not28 = icmp eq ptr %3, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not28
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %7)
  %cmp = icmp ult i16 %7, 5
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv.i.i = zext i16 %7 to i32
  %sub.i = add nsw i32 %conv.i.i, -4
  %8 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 32)
  %call.i = tail call ptr @memchr(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %8) #15
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call.i25 = tail call i32 @strlen(ptr noundef %add.ptr) #15
  %add.i = add i32 %call.i25, 1
  %call1.i26 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool10.not = icmp eq i32 %call1.i26, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %3, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -90, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -90, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_node_dump_link(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_nl_compat_link_stat_dump(ptr nocapture noundef readonly %msg, ptr nocapture noundef readonly %attrs) #4 align 64 {
entry:
  %link = alloca [11 x ptr], align 4
  %prop = alloca [7 x ptr], align 4
  %stats = alloca [34 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %link) #10
  %0 = call ptr @memset(ptr %link, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %prop) #10
  %1 = getelementptr inbounds [7 x ptr], ptr %prop, i32 0, i32 1
  %2 = getelementptr inbounds [7 x ptr], ptr %prop, i32 0, i32 2
  %3 = getelementptr inbounds [7 x ptr], ptr %prop, i32 0, i32 3
  %4 = call ptr @memset(ptr %prop, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %stats) #10
  %5 = call ptr @memset(ptr %stats, i32 255, i32 136)
  %arrayidx = getelementptr ptr, ptr %attrs, i32 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %conv.i.i = zext i16 %9 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %link, i32 noundef 10, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool2.not = icmp eq i32 %call2.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx5 = getelementptr inbounds [11 x ptr], ptr %link, i32 0, i32 7
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %add.ptr.i.i217 = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %conv.i.i218 = zext i16 %13 to i32
  %sub.i.i219 = add nsw i32 %conv.i.i218, -4
  %call2.i220 = call i32 @__nla_parse(ptr noundef nonnull %prop, i32 noundef 6, ptr noundef %add.ptr.i.i217, i32 noundef %sub.i.i219, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i220)
  %tobool12.not = icmp eq i32 %call2.i220, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %arrayidx15 = getelementptr inbounds [11 x ptr], ptr %link, i32 0, i32 8
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %add.ptr.i.i221 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %conv.i.i222 = zext i16 %17 to i32
  %sub.i.i223 = add nsw i32 %conv.i.i222, -4
  %call2.i224 = call i32 @__nla_parse(ptr noundef nonnull %stats, i32 noundef 33, ptr noundef %add.ptr.i.i221, i32 noundef %sub.i.i223, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i224)
  %tobool22.not = icmp eq i32 %call2.i224, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %req = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 7
  %18 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %req, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %21)
  %cmp = icmp ult i16 %21, 5
  br i1 %cmp, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %conv.i.i225 = zext i16 %21 to i32
  %sub.i = add nsw i32 %conv.i.i225, -4
  %22 = call i32 @llvm.umin.i32(i32 %sub.i, i32 68)
  %call.i = call ptr @memchr(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %22) #15
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %arrayidx33 = getelementptr inbounds [11 x ptr], ptr %link, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx33, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 4
  %call35 = call i32 @strcmp(ptr noundef %add.ptr, ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %if.end38, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %rep = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %25 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rep, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %26, ptr noundef nonnull @.str.7, ptr noundef %add.ptr.i)
  %arrayidx42 = getelementptr inbounds [11 x ptr], ptr %link, i32 0, i32 4
  %27 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx42, align 4
  %tobool43.not = icmp eq ptr %28, null
  br i1 %tobool43.not, label %if.end47, label %if.then44

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @__fill_bc_link_stat(ptr noundef %msg, ptr noundef nonnull %prop, ptr noundef nonnull %stats)
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  %arrayidx48 = getelementptr inbounds [11 x ptr], ptr %link, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx48, align 4
  %tobool49.not = icmp eq ptr %30, null
  br i1 %tobool49.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rep, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %32, ptr noundef nonnull @.str.8)
  br label %if.end62

if.else:                                          ; preds = %if.end47
  %arrayidx53 = getelementptr inbounds [11 x ptr], ptr %link, i32 0, i32 5
  %33 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx53, align 4
  %tobool54.not = icmp eq ptr %34, null
  %35 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rep, align 4
  br i1 %tobool54.not, label %if.else58, label %if.then55

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %36, ptr noundef nonnull @.str.9)
  br label %if.end62

if.else58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %36, ptr noundef nonnull @.str.10)
  br label %if.end62

if.end62:                                         ; preds = %if.else58, %if.then55, %if.then50
  %37 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rep, align 4
  %arrayidx64 = getelementptr inbounds [11 x ptr], ptr %link, i32 0, i32 3
  %39 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx64, align 4
  %add.ptr.i.i227 = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i227 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i227, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %add.ptr.i.i228 = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i228 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i.i228, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %38, ptr noundef nonnull @.str.11, i32 noundef %42, i32 noundef %46)
  %47 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rep, align 4
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %2, align 4
  %add.ptr.i.i229 = getelementptr i8, ptr %50, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i229 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i.i229, align 4
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  %add.ptr.i.i230 = getelementptr i8, ptr %54, i32 4
  %55 = ptrtoint ptr %add.ptr.i.i230 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i.i230, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %48, ptr noundef nonnull @.str.12, i32 noundef %52, i32 noundef %56)
  %57 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rep, align 4
  %arrayidx76 = getelementptr inbounds [11 x ptr], ptr %link, i32 0, i32 9
  %59 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx76, align 4
  %add.ptr.i.i231 = getelementptr i8, ptr %60, i32 4
  %61 = ptrtoint ptr %add.ptr.i.i231 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i.i231, align 4
  %arrayidx78 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx78, align 4
  %add.ptr.i.i232 = getelementptr i8, ptr %64, i32 4
  %65 = ptrtoint ptr %add.ptr.i.i232 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr.i.i232, align 4
  %sub = sub i32 %62, %66
  %arrayidx80 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 2
  %67 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx80, align 4
  %add.ptr.i.i233 = getelementptr i8, ptr %68, i32 4
  %69 = ptrtoint ptr %add.ptr.i.i233 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr.i.i233, align 4
  %arrayidx82 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 3
  %71 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx82, align 4
  %add.ptr.i.i234 = getelementptr i8, ptr %72, i32 4
  %73 = ptrtoint ptr %add.ptr.i.i234 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i.i234, align 4
  %arrayidx84 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 4
  %75 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx84, align 4
  %add.ptr.i.i235 = getelementptr i8, ptr %76, i32 4
  %77 = ptrtoint ptr %add.ptr.i.i235 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr.i.i235, align 4
  %arrayidx86 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 5
  %79 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx86, align 4
  %add.ptr.i.i236 = getelementptr i8, ptr %80, i32 4
  %81 = ptrtoint ptr %add.ptr.i.i236 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr.i.i236, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %58, ptr noundef nonnull @.str.13, i32 noundef %sub, i32 noundef %70, i32 noundef %74, i32 noundef %78, i32 noundef %82)
  %83 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rep, align 4
  %arrayidx90 = getelementptr inbounds [11 x ptr], ptr %link, i32 0, i32 10
  %85 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx90, align 4
  %add.ptr.i.i237 = getelementptr i8, ptr %86, i32 4
  %87 = ptrtoint ptr %add.ptr.i.i237 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %add.ptr.i.i237, align 4
  %arrayidx92 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 6
  %89 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx92, align 4
  %add.ptr.i.i238 = getelementptr i8, ptr %90, i32 4
  %91 = ptrtoint ptr %add.ptr.i.i238 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i.i238, align 4
  %sub94 = sub i32 %88, %92
  %arrayidx95 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 7
  %93 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx95, align 4
  %add.ptr.i.i239 = getelementptr i8, ptr %94, i32 4
  %95 = ptrtoint ptr %add.ptr.i.i239 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr.i.i239, align 4
  %arrayidx97 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 8
  %97 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx97, align 4
  %add.ptr.i.i240 = getelementptr i8, ptr %98, i32 4
  %99 = ptrtoint ptr %add.ptr.i.i240 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %add.ptr.i.i240, align 4
  %arrayidx99 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 9
  %101 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx99, align 4
  %add.ptr.i.i241 = getelementptr i8, ptr %102, i32 4
  %103 = ptrtoint ptr %add.ptr.i.i241 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr.i.i241, align 4
  %arrayidx101 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 10
  %105 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx101, align 4
  %add.ptr.i.i242 = getelementptr i8, ptr %106, i32 4
  %107 = ptrtoint ptr %add.ptr.i.i242 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %add.ptr.i.i242, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %84, ptr noundef nonnull @.str.14, i32 noundef %sub94, i32 noundef %96, i32 noundef %100, i32 noundef %104, i32 noundef %108)
  %109 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rep, align 4
  %arrayidx105 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 12
  %111 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx105, align 4
  %add.ptr.i.i243 = getelementptr i8, ptr %112, i32 4
  %113 = ptrtoint ptr %add.ptr.i.i243 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr.i.i243, align 4
  %arrayidx107 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 13
  %115 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx107, align 4
  %add.ptr.i.i244 = getelementptr i8, ptr %116, i32 4
  %117 = ptrtoint ptr %add.ptr.i.i244 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %add.ptr.i.i244, align 4
  %arrayidx109 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 11
  %119 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx109, align 4
  %add.ptr.i.i245 = getelementptr i8, ptr %120, i32 4
  %121 = ptrtoint ptr %add.ptr.i.i245 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %add.ptr.i.i245, align 4
  %div = udiv i32 %118, %122
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %110, ptr noundef nonnull @.str.15, i32 noundef %114, i32 noundef %div)
  %123 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rep, align 4
  %arrayidx113 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 14
  %125 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx113, align 4
  %add.ptr.i.i246 = getelementptr i8, ptr %126, i32 4
  %127 = ptrtoint ptr %add.ptr.i.i246 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %add.ptr.i.i246, align 4
  %129 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx109, align 4
  %add.ptr.i.i247 = getelementptr i8, ptr %130, i32 4
  %131 = ptrtoint ptr %add.ptr.i.i247 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %add.ptr.i.i247, align 4
  %mul.i = mul i32 %128, 100
  %div3.i = lshr i32 %132, 1
  %add.i = add i32 %div3.i, %mul.i
  %div1.i = udiv i32 %add.i, %132
  %arrayidx118 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 15
  %133 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx118, align 4
  %add.ptr.i.i248 = getelementptr i8, ptr %134, i32 4
  %135 = ptrtoint ptr %add.ptr.i.i248 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %add.ptr.i.i248, align 4
  %mul.i250 = mul i32 %136, 100
  %add.i252 = add i32 %mul.i250, %div3.i
  %div1.i253 = udiv i32 %add.i252, %132
  %arrayidx123 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 16
  %137 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx123, align 4
  %add.ptr.i.i254 = getelementptr i8, ptr %138, i32 4
  %139 = ptrtoint ptr %add.ptr.i.i254 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %add.ptr.i.i254, align 4
  %mul.i256 = mul i32 %140, 100
  %add.i258 = add i32 %mul.i256, %div3.i
  %div1.i259 = udiv i32 %add.i258, %132
  %arrayidx128 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 17
  %141 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx128, align 4
  %add.ptr.i.i260 = getelementptr i8, ptr %142, i32 4
  %143 = ptrtoint ptr %add.ptr.i.i260 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %add.ptr.i.i260, align 4
  %mul.i262 = mul i32 %144, 100
  %add.i264 = add i32 %mul.i262, %div3.i
  %div1.i265 = udiv i32 %add.i264, %132
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %124, ptr noundef nonnull @.str.16, i32 noundef %div1.i, i32 noundef %div1.i253, i32 noundef %div1.i259, i32 noundef %div1.i265)
  %145 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rep, align 4
  %arrayidx135 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 18
  %147 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx135, align 4
  %add.ptr.i.i266 = getelementptr i8, ptr %148, i32 4
  %149 = ptrtoint ptr %add.ptr.i.i266 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %add.ptr.i.i266, align 4
  %151 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx109, align 4
  %add.ptr.i.i267 = getelementptr i8, ptr %152, i32 4
  %153 = ptrtoint ptr %add.ptr.i.i267 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %add.ptr.i.i267, align 4
  %mul.i268 = mul i32 %150, 100
  %div3.i269 = lshr i32 %154, 1
  %add.i270 = add i32 %div3.i269, %mul.i268
  %div1.i271 = udiv i32 %add.i270, %154
  %arrayidx140 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 19
  %155 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx140, align 4
  %add.ptr.i.i272 = getelementptr i8, ptr %156, i32 4
  %157 = ptrtoint ptr %add.ptr.i.i272 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %add.ptr.i.i272, align 4
  %mul.i274 = mul i32 %158, 100
  %add.i276 = add i32 %mul.i274, %div3.i269
  %div1.i277 = udiv i32 %add.i276, %154
  %arrayidx145 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 20
  %159 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx145, align 4
  %add.ptr.i.i278 = getelementptr i8, ptr %160, i32 4
  %161 = ptrtoint ptr %add.ptr.i.i278 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %add.ptr.i.i278, align 4
  %mul.i280 = mul i32 %162, 100
  %add.i282 = add i32 %mul.i280, %div3.i269
  %div1.i283 = udiv i32 %add.i282, %154
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %146, ptr noundef nonnull @.str.17, i32 noundef %div1.i271, i32 noundef %div1.i277, i32 noundef %div1.i283)
  %163 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rep, align 4
  %arrayidx152 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 21
  %165 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx152, align 4
  %add.ptr.i.i284 = getelementptr i8, ptr %166, i32 4
  %167 = ptrtoint ptr %add.ptr.i.i284 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %add.ptr.i.i284, align 4
  %arrayidx154 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 22
  %169 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx154, align 4
  %add.ptr.i.i285 = getelementptr i8, ptr %170, i32 4
  %171 = ptrtoint ptr %add.ptr.i.i285 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %add.ptr.i.i285, align 4
  %arrayidx156 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 23
  %173 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx156, align 4
  %add.ptr.i.i286 = getelementptr i8, ptr %174, i32 4
  %175 = ptrtoint ptr %add.ptr.i.i286 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %add.ptr.i.i286, align 4
  %arrayidx158 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 24
  %177 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx158, align 4
  %add.ptr.i.i287 = getelementptr i8, ptr %178, i32 4
  %179 = ptrtoint ptr %add.ptr.i.i287 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %add.ptr.i.i287, align 4
  %arrayidx160 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 30
  %181 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx160, align 4
  %add.ptr.i.i288 = getelementptr i8, ptr %182, i32 4
  %183 = ptrtoint ptr %add.ptr.i.i288 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %add.ptr.i.i288, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %164, ptr noundef nonnull @.str.18, i32 noundef %168, i32 noundef %172, i32 noundef %176, i32 noundef %180, i32 noundef %184)
  %185 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rep, align 4
  %arrayidx164 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 25
  %187 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx164, align 4
  %add.ptr.i.i289 = getelementptr i8, ptr %188, i32 4
  %189 = ptrtoint ptr %add.ptr.i.i289 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %add.ptr.i.i289, align 4
  %arrayidx166 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 26
  %191 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx166, align 4
  %add.ptr.i.i290 = getelementptr i8, ptr %192, i32 4
  %193 = ptrtoint ptr %add.ptr.i.i290 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %add.ptr.i.i290, align 4
  %arrayidx168 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 27
  %195 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx168, align 4
  %add.ptr.i.i291 = getelementptr i8, ptr %196, i32 4
  %197 = ptrtoint ptr %add.ptr.i.i291 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %add.ptr.i.i291, align 4
  %arrayidx170 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 28
  %199 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arrayidx170, align 4
  %add.ptr.i.i292 = getelementptr i8, ptr %200, i32 4
  %201 = ptrtoint ptr %add.ptr.i.i292 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %add.ptr.i.i292, align 4
  %arrayidx172 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 29
  %203 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arrayidx172, align 4
  %add.ptr.i.i293 = getelementptr i8, ptr %204, i32 4
  %205 = ptrtoint ptr %add.ptr.i.i293 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %add.ptr.i.i293, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %186, ptr noundef nonnull @.str.19, i32 noundef %190, i32 noundef %194, i32 noundef %198, i32 noundef %202, i32 noundef %206)
  %207 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %rep, align 4
  %arrayidx176 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 31
  %209 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %arrayidx176, align 4
  %add.ptr.i.i294 = getelementptr i8, ptr %210, i32 4
  %211 = ptrtoint ptr %add.ptr.i.i294 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %add.ptr.i.i294, align 4
  %arrayidx178 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 32
  %213 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx178, align 4
  %add.ptr.i.i295 = getelementptr i8, ptr %214, i32 4
  %215 = ptrtoint ptr %add.ptr.i.i295 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %add.ptr.i.i295, align 4
  %arrayidx180 = getelementptr inbounds [34 x ptr], ptr %stats, i32 0, i32 33
  %217 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx180, align 4
  %add.ptr.i.i296 = getelementptr i8, ptr %218, i32 4
  %219 = ptrtoint ptr %add.ptr.i.i296 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %add.ptr.i.i296, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %208, ptr noundef nonnull @.str.20, i32 noundef %212, i32 noundef %216, i32 noundef %220)
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then44, %if.end32.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then44 ], [ 0, %if.end62 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call2.i220, %if.end8.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ %call2.i224, %if.end18.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %if.end28.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %stats) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %prop) #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %link) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_nl_compat_link_dump(ptr nocapture noundef readonly %msg, ptr nocapture noundef readonly %attrs) #4 align 64 {
entry:
  %link = alloca [11 x ptr], align 4
  %link_info = alloca %struct.tipc_link_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %link) #10
  %0 = call ptr @memset(ptr %link, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %link_info) #10
  %1 = getelementptr inbounds i8, ptr %link_info, i32 8
  %2 = call ptr @memset(ptr %1, i32 255, i32 68)
  %arrayidx = getelementptr ptr, ptr %attrs, i32 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  %conv.i.i = zext i16 %6 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %link, i32 noundef 10, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool2.not = icmp eq i32 %call2.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx5 = getelementptr inbounds [11 x ptr], ptr %link, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx5, align 4
  %tobool.i = icmp ne ptr %8, null
  %lnot.ext.i = zext i1 %tobool.i to i32
  %9 = ptrtoint ptr %link_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %lnot.ext.i, ptr %link_info, align 4
  %arrayidx7 = getelementptr inbounds [11 x ptr], ptr %link, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  %tobool.i17 = icmp ne ptr %11, null
  %lnot.ext.i18 = zext i1 %tobool.i17 to i32
  %up = getelementptr inbounds %struct.tipc_link_info, ptr %link_info, i32 0, i32 1
  %12 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %lnot.ext.i18, ptr %up, align 4
  %str = getelementptr inbounds %struct.tipc_link_info, ptr %link_info, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [11 x ptr], ptr %link, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx10, align 4
  %call11 = call i32 @nla_strscpy(ptr noundef %str, ptr noundef %14, i32 noundef 68) #10
  %rep = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %15 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rep, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i, align 8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end4.tipc_skb_tailroom.exit.i_crit_edge

if.end4.tipc_skb_tailroom.exit.i_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_skb_tailroom.exit.i

cond.false.i.i.i:                                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 17
  %21 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %tipc_skb_tailroom.exit.i

tipc_skb_tailroom.exit.i:                         ; preds = %cond.false.i.i.i, %if.end4.tipc_skb_tailroom.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %if.end4.tipc_skb_tailroom.exit.i_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 6
  %23 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.i, align 4
  %sub.i.i19 = sub i32 32772, %24
  %25 = call i32 @llvm.smin.i32(i32 %cond.i.i.i, i32 %sub.i.i19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %25)
  %cmp.i = icmp ult i32 %25, 80
  br i1 %cmp.i, label %tipc_skb_tailroom.exit.i.cleanup_crit_edge, label %if.end.i

tipc_skb_tailroom.exit.i.cleanup_crit_edge:       ; preds = %tipc_skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %tipc_skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i = call ptr @skb_put(ptr noundef %16, i32 noundef 80) #10
  %tlv_type.i = getelementptr inbounds %struct.tlv_desc, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %tlv_type.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 22, ptr %tlv_type.i, align 2
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 80, ptr %18, align 2
  %add.ptr.i = getelementptr i8, ptr %18, i32 4
  %28 = call ptr @memcpy(ptr %add.ptr.i, ptr %link_info, i32 76)
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %tipc_skb_tailroom.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -90, %tipc_skb_tailroom.exit.i.cleanup_crit_edge ], [ 0, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %link_info) #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %link) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_node_set_link(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_nl_compat_link_set(ptr nocapture noundef writeonly %cmd, ptr noundef %skb, ptr nocapture noundef readonly %msg) #4 align 64 {
entry:
  %tmp.i3.i.i78 = alloca i32, align 4
  %tmp.i1.i.i79 = alloca i32, align 4
  %tmp.i.i.i80 = alloca i32, align 4
  %tmp.i3.i.i40 = alloca i32, align 4
  %tmp.i1.i.i41 = alloca i32, align 4
  %tmp.i.i.i42 = alloca i32, align 4
  %tmp.i3.i.i = alloca i32, align 4
  %tmp.i1.i.i = alloca i32, align 4
  %tmp.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 7
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %3)
  %cmp = icmp ult i16 %3, 9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i.i = zext i16 %3 to i32
  %sub = add nsw i32 %conv.i.i, -8
  %4 = tail call i32 @llvm.umin.i32(i32 %sub, i32 68)
  %name = getelementptr i8, ptr %1, i32 8
  %call.i = tail call ptr @memchr(ptr noundef %name, i32 noundef 0, i32 noundef %4) #15
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call8 = tail call ptr @tipc_media_find(ptr noundef %name) #10
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end5
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @__tipc_nl_media_set, ptr %cmd, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not34.i = icmp eq ptr %9, null
  %tobool.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not34.i
  br i1 %tobool.not.i, label %if.then9.cleanup_crit_edge, label %if.end.i

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then9
  %name.i = getelementptr i8, ptr %7, i32 8
  %call.i.i = tail call i32 @strlen(ptr noundef %name.i) #15
  %add.i.i = add i32 %call.i.i, 1
  %call1.i23.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i.i, ptr noundef %name.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i)
  %tobool2.not.i = icmp eq i32 %call1.i23.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i25.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25.i)
  %cmp.i26.i = icmp slt i32 %call1.i25.i, 0
  %tobool6.not35.i = icmp eq ptr %11, null
  %tobool6.not.i = select i1 %cmp.i26.i, i1 true, i1 %tobool6.not35.i
  br i1 %tobool6.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end8.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %if.end4.i
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %msg, align 4
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %13, label %if.end8.i.cleanup.sink.split_crit_edge [
    i16 16648, label %sw.bb.i.i
    i16 16647, label %sw.bb1.i.i
    i16 16649, label %sw.bb4.i.i
  ]

if.end8.i.cleanup.sink.split_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb.i.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #10
  %17 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i.i.i, align 4
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #10
  br label %cleanup.sink.split

sw.bb1.i.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i1.i.i) #10
  %20 = ptrtoint ptr %tmp.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tmp.i1.i.i, align 4
  %call.i2.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i1.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i1.i.i) #10
  br label %cleanup.sink.split

sw.bb4.i.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i3.i.i) #10
  %23 = ptrtoint ptr %tmp.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %tmp.i3.i.i, align 4
  %call.i4.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i3.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i3.i.i) #10
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end5
  %net = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 5
  %24 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net, align 4
  %call14 = tail call ptr @tipc_bearer_find(ptr noundef %25, ptr noundef %name) #10
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end11
  %26 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @__tipc_nl_bearer_set, ptr %cmd, align 4
  %27 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %req, align 4
  %add.ptr.i44 = getelementptr i8, ptr %28, i32 4
  %tail.i.i.i45 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i.i45, align 8
  %call1.i.i46 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i46)
  %cmp.i.i47 = icmp slt i32 %call1.i.i46, 0
  %tobool.not34.i48 = icmp eq ptr %30, null
  %tobool.not.i49 = select i1 %cmp.i.i47, i1 true, i1 %tobool.not34.i48
  br i1 %tobool.not.i49, label %if.then16.cleanup_crit_edge, label %if.end.i55

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i55:                                       ; preds = %if.then16
  %name.i50 = getelementptr i8, ptr %28, i32 8
  %call.i.i51 = tail call i32 @strlen(ptr noundef %name.i50) #15
  %add.i.i52 = add i32 %call.i.i51, 1
  %call1.i23.i53 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i.i52, ptr noundef %name.i50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i53)
  %tobool2.not.i54 = icmp eq i32 %call1.i23.i53, 0
  br i1 %tobool2.not.i54, label %if.end4.i60, label %if.end.i55.cleanup_crit_edge

if.end.i55.cleanup_crit_edge:                     ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i60:                                      ; preds = %if.end.i55
  %31 = ptrtoint ptr %tail.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i.i45, align 8
  %call1.i25.i56 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25.i56)
  %cmp.i26.i57 = icmp slt i32 %call1.i25.i56, 0
  %tobool6.not35.i58 = icmp eq ptr %32, null
  %tobool6.not.i59 = select i1 %cmp.i26.i57, i1 true, i1 %tobool6.not35.i58
  br i1 %tobool6.not.i59, label %if.end4.i60.cleanup_crit_edge, label %if.end8.i61

if.end4.i60.cleanup_crit_edge:                    ; preds = %if.end4.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i61:                                      ; preds = %if.end4.i60
  %33 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %msg, align 4
  %35 = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %34, label %if.end8.i61.cleanup.sink.split_crit_edge [
    i16 16648, label %sw.bb.i.i63
    i16 16647, label %sw.bb1.i.i65
    i16 16649, label %sw.bb4.i.i67
  ]

if.end8.i61.cleanup.sink.split_crit_edge:         ; preds = %if.end8.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb.i.i63:                                      ; preds = %if.end8.i61
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %add.ptr.i44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i44, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i42) #10
  %38 = ptrtoint ptr %tmp.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tmp.i.i.i42, align 4
  %call.i.i.i62 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i42) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i42) #10
  br label %cleanup.sink.split

sw.bb1.i.i65:                                     ; preds = %if.end8.i61
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %add.ptr.i44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i44, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i1.i.i41) #10
  %41 = ptrtoint ptr %tmp.i1.i.i41 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %tmp.i1.i.i41, align 4
  %call.i2.i.i64 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i1.i.i41) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i1.i.i41) #10
  br label %cleanup.sink.split

sw.bb4.i.i67:                                     ; preds = %if.end8.i61
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %add.ptr.i44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i44, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i3.i.i40) #10
  %44 = ptrtoint ptr %tmp.i3.i.i40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tmp.i3.i.i40, align 4
  %call.i4.i.i66 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i3.i.i40) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i3.i.i40) #10
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end11
  %45 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %req, align 4
  %add.ptr.i82 = getelementptr i8, ptr %46, i32 4
  %tail.i.i.i83 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %47 = ptrtoint ptr %tail.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tail.i.i.i83, align 8
  %call1.i.i84 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i84)
  %cmp.i.i85 = icmp slt i32 %call1.i.i84, 0
  %tobool.not34.i86 = icmp eq ptr %48, null
  %tobool.not.i87 = select i1 %cmp.i.i85, i1 true, i1 %tobool.not34.i86
  br i1 %tobool.not.i87, label %if.end19.cleanup_crit_edge, label %if.end.i93

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i93:                                       ; preds = %if.end19
  %name.i88 = getelementptr i8, ptr %46, i32 8
  %call.i.i89 = tail call i32 @strlen(ptr noundef %name.i88) #15
  %add.i.i90 = add i32 %call.i.i89, 1
  %call1.i23.i91 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i.i90, ptr noundef %name.i88) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i91)
  %tobool2.not.i92 = icmp eq i32 %call1.i23.i91, 0
  br i1 %tobool2.not.i92, label %if.end4.i98, label %if.end.i93.cleanup_crit_edge

if.end.i93.cleanup_crit_edge:                     ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i98:                                      ; preds = %if.end.i93
  %49 = ptrtoint ptr %tail.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tail.i.i.i83, align 8
  %call1.i25.i94 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25.i94)
  %cmp.i26.i95 = icmp slt i32 %call1.i25.i94, 0
  %tobool6.not35.i96 = icmp eq ptr %50, null
  %tobool6.not.i97 = select i1 %cmp.i26.i95, i1 true, i1 %tobool6.not35.i96
  br i1 %tobool6.not.i97, label %if.end4.i98.cleanup_crit_edge, label %if.end8.i99

if.end4.i98.cleanup_crit_edge:                    ; preds = %if.end4.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i99:                                      ; preds = %if.end4.i98
  %51 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %msg, align 4
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %52, label %if.end8.i99.cleanup.sink.split_crit_edge [
    i16 16648, label %sw.bb.i.i101
    i16 16647, label %sw.bb1.i.i103
    i16 16649, label %sw.bb4.i.i105
  ]

if.end8.i99.cleanup.sink.split_crit_edge:         ; preds = %if.end8.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb.i.i101:                                     ; preds = %if.end8.i99
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %add.ptr.i82 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i82, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i80) #10
  %56 = ptrtoint ptr %tmp.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tmp.i.i.i80, align 4
  %call.i.i.i100 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i80) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i80) #10
  br label %cleanup.sink.split

sw.bb1.i.i103:                                    ; preds = %if.end8.i99
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %add.ptr.i82 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i82, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i1.i.i79) #10
  %59 = ptrtoint ptr %tmp.i1.i.i79 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %tmp.i1.i.i79, align 4
  %call.i2.i.i102 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i1.i.i79) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i1.i.i79) #10
  br label %cleanup.sink.split

sw.bb4.i.i105:                                    ; preds = %if.end8.i99
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %add.ptr.i82 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i82, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i3.i.i78) #10
  %62 = ptrtoint ptr %tmp.i3.i.i78 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %tmp.i3.i.i78, align 4
  %call.i4.i.i104 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i3.i.i78) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i3.i.i78) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb4.i.i105, %sw.bb1.i.i103, %sw.bb.i.i101, %if.end8.i99.cleanup.sink.split_crit_edge, %sw.bb4.i.i67, %sw.bb1.i.i65, %sw.bb.i.i63, %if.end8.i61.cleanup.sink.split_crit_edge, %sw.bb4.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.end8.i.cleanup.sink.split_crit_edge
  %tail.i.i.i83.sink121 = phi ptr [ %tail.i.i.i, %sw.bb4.i.i ], [ %tail.i.i.i, %sw.bb1.i.i ], [ %tail.i.i.i, %sw.bb.i.i ], [ %tail.i.i.i, %if.end8.i.cleanup.sink.split_crit_edge ], [ %tail.i.i.i45, %sw.bb4.i.i67 ], [ %tail.i.i.i45, %sw.bb1.i.i65 ], [ %tail.i.i.i45, %sw.bb.i.i63 ], [ %tail.i.i.i45, %if.end8.i61.cleanup.sink.split_crit_edge ], [ %tail.i.i.i83, %sw.bb4.i.i105 ], [ %tail.i.i.i83, %sw.bb1.i.i103 ], [ %tail.i.i.i83, %sw.bb.i.i101 ], [ %tail.i.i.i83, %if.end8.i99.cleanup.sink.split_crit_edge ]
  %.sink119 = phi ptr [ %11, %sw.bb4.i.i ], [ %11, %sw.bb1.i.i ], [ %11, %sw.bb.i.i ], [ %11, %if.end8.i.cleanup.sink.split_crit_edge ], [ %32, %sw.bb4.i.i67 ], [ %32, %sw.bb1.i.i65 ], [ %32, %sw.bb.i.i63 ], [ %32, %if.end8.i61.cleanup.sink.split_crit_edge ], [ %50, %sw.bb4.i.i105 ], [ %50, %sw.bb1.i.i103 ], [ %50, %sw.bb.i.i101 ], [ %50, %if.end8.i99.cleanup.sink.split_crit_edge ]
  %.sink116 = phi ptr [ %9, %sw.bb4.i.i ], [ %9, %sw.bb1.i.i ], [ %9, %sw.bb.i.i ], [ %9, %if.end8.i.cleanup.sink.split_crit_edge ], [ %30, %sw.bb4.i.i67 ], [ %30, %sw.bb1.i.i65 ], [ %30, %sw.bb.i.i63 ], [ %30, %if.end8.i61.cleanup.sink.split_crit_edge ], [ %48, %sw.bb4.i.i105 ], [ %48, %sw.bb1.i.i103 ], [ %48, %sw.bb.i.i101 ], [ %48, %if.end8.i99.cleanup.sink.split_crit_edge ]
  %63 = ptrtoint ptr %tail.i.i.i83.sink121 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tail.i.i.i83.sink121, align 8
  %sub.ptr.lhs.cast.i.i106 = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast.i.i107 = ptrtoint ptr %.sink119 to i32
  %sub.ptr.sub.i.i108 = sub i32 %sub.ptr.lhs.cast.i.i106, %sub.ptr.rhs.cast.i.i107
  %conv.i.i109 = trunc i32 %sub.ptr.sub.i.i108 to i16
  %65 = ptrtoint ptr %.sink119 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i.i109, ptr %.sink119, align 2
  %66 = load ptr, ptr %tail.i.i.i83.sink121, align 8
  %sub.ptr.lhs.cast.i30.i110 = ptrtoint ptr %66 to i32
  %sub.ptr.rhs.cast.i31.i111 = ptrtoint ptr %.sink116 to i32
  %sub.ptr.sub.i32.i112 = sub i32 %sub.ptr.lhs.cast.i30.i110, %sub.ptr.rhs.cast.i31.i111
  %conv.i33.i113 = trunc i32 %sub.ptr.sub.i32.i112 to i16
  %67 = ptrtoint ptr %.sink116 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i33.i113, ptr %.sink116, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.i98.cleanup_crit_edge, %if.end.i93.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end4.i60.cleanup_crit_edge, %if.end.i55.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -90, %if.then9.cleanup_crit_edge ], [ -90, %if.end.i.cleanup_crit_edge ], [ -90, %if.end4.i.cleanup_crit_edge ], [ -90, %if.then16.cleanup_crit_edge ], [ -90, %if.end.i55.cleanup_crit_edge ], [ -90, %if.end4.i60.cleanup_crit_edge ], [ -90, %if.end19.cleanup_crit_edge ], [ -90, %if.end.i93.cleanup_crit_edge ], [ -90, %if.end4.i98.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_node_reset_link_stats(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_nl_compat_link_reset_stats(ptr nocapture noundef readnone %cmd, ptr noundef %skb, ptr nocapture noundef readonly %msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 7
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not28 = icmp eq ptr %3, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not28
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %7)
  %cmp = icmp ult i16 %7, 5
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv.i.i = zext i16 %7 to i32
  %sub.i = add nsw i32 %conv.i.i, -4
  %8 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 68)
  %call.i = tail call ptr @memchr(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %8) #15
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call.i25 = tail call i32 @strlen(ptr noundef %add.ptr) #15
  %add.i = add i32 %call.i25, 1
  %call1.i26 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool10.not = icmp eq i32 %call1.i26, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %3, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -90, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -90, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_nl_compat_name_table_dump_header(ptr nocapture noundef readonly %msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 7
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %conv.i.i = zext i16 %3 to i32
  %sub.i = add nsw i32 %conv.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp618.not = icmp eq i32 %6, 0
  br i1 %cmp618.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %rep = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %7 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rep, align 4
  tail call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %8, ptr noundef nonnull @.str.24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %exitcond.not = icmp eq i32 %6, 1
  br i1 %exitcond.not, label %for.body.lr.ph.for.end_crit_edge, label %for.body.1

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.1:                                       ; preds = %for.body.lr.ph
  %9 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rep, align 4
  tail call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %10, ptr noundef nonnull @.str.25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %exitcond.not.1 = icmp eq i32 %6, 2
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %11 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rep, align 4
  tail call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %12, ptr noundef nonnull @.str.26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %exitcond.not.2 = icmp eq i32 %6, 3
  br i1 %exitcond.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rep, align 4
  tail call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %14, ptr noundef nonnull @.str.27)
  br label %for.end

for.end:                                          ; preds = %for.body.3, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %if.end.for.end_crit_edge
  %rep8 = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %15 = ptrtoint ptr %rep8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rep8, align 4
  tail call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %16, ptr noundef nonnull @.str.28)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_name_table_dump(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_nl_compat_name_table_dump(ptr nocapture noundef readonly %msg, ptr nocapture noundef readonly %attrs) #4 align 64 {
entry:
  %port_str = alloca [27 x i8], align 1
  %nt = alloca [2 x ptr], align 4
  %publ = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %port_str) #10
  %0 = call ptr @memset(ptr %port_str, i32 255, i32 27)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nt) #10
  %1 = ptrtoint ptr %nt to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %nt, align 4, !annotation !110
  %2 = getelementptr inbounds [2 x ptr], ptr %nt, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !110
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %publ) #10
  %4 = getelementptr inbounds [8 x ptr], ptr %publ, i32 0, i32 1
  %5 = getelementptr inbounds [8 x ptr], ptr %publ, i32 0, i32 2
  %6 = getelementptr inbounds [8 x ptr], ptr %publ, i32 0, i32 3
  %7 = getelementptr inbounds [8 x ptr], ptr %publ, i32 0, i32 4
  %8 = getelementptr inbounds [8 x ptr], ptr %publ, i32 0, i32 5
  %9 = getelementptr inbounds [8 x ptr], ptr %publ, i32 0, i32 6
  %10 = getelementptr inbounds [8 x ptr], ptr %publ, i32 0, i32 7
  %arrayidx = getelementptr ptr, ptr %attrs, i32 8
  %11 = call ptr @memset(ptr %publ, i32 255, i32 32)
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  %conv.i.i = zext i16 %15 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %nt, i32 noundef 1, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool2.not = icmp eq i32 %call2.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %2, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %add.ptr.i.i109 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 2
  %conv.i.i110 = zext i16 %19 to i32
  %sub.i.i111 = add nsw i32 %conv.i.i110, -4
  %call2.i112 = call i32 @__nla_parse(ptr noundef nonnull %publ, i32 noundef 7, ptr noundef %add.ptr.i.i109, i32 noundef %sub.i.i111, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i112)
  %tobool12.not = icmp eq i32 %call2.i112, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %req = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 7
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr, align 4
  %lowbound17 = getelementptr i8, ptr %21, i32 12
  %24 = ptrtoint ptr %lowbound17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lowbound17, align 4
  %upbound18 = getelementptr i8, ptr %21, i32 16
  %26 = ptrtoint ptr %upbound18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %upbound18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %tobool19.not = icmp sgt i32 %23, -1
  br i1 %tobool19.not, label %land.lhs.true, label %if.end14.if.end23_crit_edge

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end14
  %type16 = getelementptr i8, ptr %21, i32 8
  %28 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type16, align 4
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %4, align 4
  %add.ptr.i.i113 = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i113 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i113, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %33)
  %cmp.not = icmp eq i32 %29, %33
  br i1 %cmp.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end14.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool24.not = icmp eq i32 %25, 0
  br i1 %tobool24.not, label %if.end23.if.end30_crit_edge, label %land.lhs.true25

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true25:                                  ; preds = %if.end23
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %6, align 4
  %add.ptr.i.i114 = getelementptr i8, ptr %35, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i114 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i114, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %37)
  %cmp28 = icmp ugt i32 %25, %37
  br i1 %cmp28, label %land.lhs.true25.cleanup_crit_edge, label %land.lhs.true25.if.end30_crit_edge

land.lhs.true25.if.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true25.if.end30_crit_edge, %if.end23.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool31.not = icmp eq i32 %27, 0
  br i1 %tobool31.not, label %if.end30.if.end37_crit_edge, label %land.lhs.true32

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true32:                                  ; preds = %if.end30
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %5, align 4
  %add.ptr.i.i115 = getelementptr i8, ptr %39, i32 4
  %40 = ptrtoint ptr %add.ptr.i.i115 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i115, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %41)
  %cmp35 = icmp ult i32 %27, %41
  br i1 %cmp35, label %land.lhs.true32.cleanup_crit_edge, label %land.lhs.true32.if.end37_crit_edge

land.lhs.true32.if.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true32.cleanup_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true32.if.end37_crit_edge, %if.end30.if.end37_crit_edge
  %rep = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %42 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rep, align 4
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %4, align 4
  %add.ptr.i.i116 = getelementptr i8, ptr %45, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i116 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.i116, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %43, ptr noundef nonnull @.str.33, i32 noundef %47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp41 = icmp eq i32 %23, 1
  br i1 %cmp41, label %if.end37.out_crit_edge, label %if.end43

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end43:                                         ; preds = %if.end37
  %48 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rep, align 4
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %5, align 4
  %add.ptr.i.i117 = getelementptr i8, ptr %51, i32 4
  %52 = ptrtoint ptr %add.ptr.i.i117 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i.i117, align 4
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %6, align 4
  %add.ptr.i.i118 = getelementptr i8, ptr %55, i32 4
  %56 = ptrtoint ptr %add.ptr.i.i118 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i.i118, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %49, ptr noundef nonnull @.str.34, i32 noundef %53, i32 noundef %57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp50 = icmp eq i32 %23, 2
  br i1 %cmp50, label %if.end43.out_crit_edge, label %if.end52

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end52:                                         ; preds = %if.end43
  %58 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %8, align 4
  %add.ptr.i.i119 = getelementptr i8, ptr %59, i32 4
  %60 = ptrtoint ptr %add.ptr.i.i119 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i.i119, align 4
  %shr.i = lshr i32 %61, 24
  %and.i = lshr i32 %61, 12
  %shr.i120 = and i32 %and.i, 4095
  %and.i121 = and i32 %61, 4095
  %62 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %9, align 4
  %add.ptr.i.i122 = getelementptr i8, ptr %63, i32 4
  %64 = ptrtoint ptr %add.ptr.i.i122 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i.i122, align 4
  %call61 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %port_str, ptr noundef nonnull @.str.35, i32 noundef %shr.i, i32 noundef %shr.i120, i32 noundef %and.i121, i32 noundef %65)
  %66 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rep, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %67, ptr noundef nonnull @.str.36, ptr noundef nonnull %port_str)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp65 = icmp eq i32 %23, 3
  br i1 %cmp65, label %if.end52.out_crit_edge, label %if.end67

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end67:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rep, align 4
  %70 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %10, align 4
  %add.ptr.i.i123 = getelementptr i8, ptr %71, i32 4
  %72 = ptrtoint ptr %add.ptr.i.i123 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i.i123, align 4
  %74 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %7, align 4
  %add.ptr.i.i124 = getelementptr i8, ptr %75, i32 4
  %76 = ptrtoint ptr %add.ptr.i.i124 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i.i124, align 4
  %arrayidx73 = getelementptr [4 x ptr], ptr @tipc_nl_compat_name_table_dump.scope_str, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx73, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %69, ptr noundef nonnull @.str.37, i32 noundef %73, ptr noundef %79)
  br label %out

out:                                              ; preds = %if.end67, %if.end52.out_crit_edge, %if.end43.out_crit_edge, %if.end37.out_crit_edge
  %80 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rep, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %81, ptr noundef nonnull @.str.28)
  br label %cleanup

cleanup:                                          ; preds = %out, %land.lhs.true32.cleanup_crit_edge, %land.lhs.true25.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call2.i112, %if.end8.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true25.cleanup_crit_edge ], [ 0, %land.lhs.true32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %publ) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nt) #10
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %port_str) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_sk_dump(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_nl_compat_sk_dump(ptr noundef %msg, ptr nocapture noundef readonly %attrs) #4 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  %dump.i = alloca %struct.tipc_nl_compat_cmd_dump, align 4
  %sock = alloca [13 x ptr], align 4
  %con = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %sock) #10
  %0 = call ptr @memset(ptr %sock, i32 255, i32 52)
  %arrayidx = getelementptr ptr, ptr %attrs, i32 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup53_crit_edge, label %if.end

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 2
  %conv.i.i = zext i16 %4 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %sock, i32 noundef 12, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool2.not = icmp eq i32 %call2.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup53_crit_edge

if.end.cleanup53_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

if.end4:                                          ; preds = %if.end
  %arrayidx5 = getelementptr inbounds [13 x ptr], ptr %sock, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx5, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i72 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i72, align 4
  %rep = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %9 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rep, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %10, ptr noundef nonnull @.str.38, i32 noundef %8)
  %arrayidx8 = getelementptr inbounds [13 x ptr], ptr %sock, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.else39, label %if.then10

if.then10:                                        ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %con) #10
  %13 = getelementptr inbounds [6 x ptr], ptr %con, i32 0, i32 4
  %14 = getelementptr inbounds [6 x ptr], ptr %con, i32 0, i32 5
  %add.ptr.i.i73 = getelementptr i8, ptr %12, i32 4
  %15 = call ptr @memset(ptr %con, i32 255, i32 24)
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %12, align 2
  %conv.i.i74 = zext i16 %17 to i32
  %sub.i.i75 = add nsw i32 %conv.i.i74, -4
  %call2.i76 = call i32 @__nla_parse(ptr noundef nonnull %con, i32 noundef 5, ptr noundef %add.ptr.i.i73, i32 noundef %sub.i.i75, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i76)
  %tobool14.not = icmp eq i32 %call2.i76, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup53.critedge

if.end16:                                         ; preds = %if.then10
  %18 = getelementptr inbounds [6 x ptr], ptr %con, i32 0, i32 3
  %19 = getelementptr inbounds [6 x ptr], ptr %con, i32 0, i32 2
  %20 = getelementptr inbounds [6 x ptr], ptr %con, i32 0, i32 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %19, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i77 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i77, align 4
  %25 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rep, align 4
  %shr.i = lshr i32 %24, 24
  %and.i = lshr i32 %24, 12
  %shr.i78 = and i32 %and.i, 4095
  %and.i79 = and i32 %24, 4095
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %18, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i80 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i80, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %26, ptr noundef nonnull @.str.39, i32 noundef %shr.i, i32 noundef %shr.i78, i32 noundef %and.i79, i32 noundef %30)
  %31 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %20, align 4
  %tobool27.not = icmp eq ptr %32, null
  %33 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rep, align 4
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %13, align 4
  %add.ptr.i.i81 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i81, align 4
  %39 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %14, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i82 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i82, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %34, ptr noundef nonnull @.str.40, i32 noundef %38, i32 noundef %42)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %con) #10
  br label %if.end50

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %34, ptr noundef nonnull @.str.28)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %con) #10
  br label %if.end50

if.else39:                                        ; preds = %if.end4
  %arrayidx40 = getelementptr inbounds [13 x ptr], ptr %sock, i32 0, i32 4
  %43 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx40, align 4
  %tobool41.not = icmp eq ptr %44, null
  br i1 %tobool41.not, label %if.else39.if.end50_crit_edge, label %if.then42

if.else39.if.end50_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then42:                                        ; preds = %if.else39
  %45 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rep, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %46, ptr noundef nonnull @.str.41)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dump.i) #10
  %47 = ptrtoint ptr %dump.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -1 to ptr), ptr %dump.i, align 4, !annotation !110
  %48 = getelementptr inbounds %struct.tipc_nl_compat_cmd_dump, ptr %dump.i, i32 0, i32 1
  %49 = getelementptr inbounds %struct.tipc_nl_compat_cmd_dump, ptr %dump.i, i32 0, i32 2
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 3856, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.then42.tipc_nl_compat_publ_dump.exit.thread_crit_edge, label %if.end.i

if.then42.tipc_nl_compat_publ_dump.exit.thread_crit_edge: ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_nl_compat_publ_dump.exit.thread

if.end.i:                                         ; preds = %if.then42
  %call1.i = call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @tipc_genl_family, i32 noundef 2, i8 noundef zeroext 7) #10
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.tipc_nl_compat_publ_dump.exit.thread.sink.split_crit_edge, label %if.end4.i

if.end.i.tipc_nl_compat_publ_dump.exit.thread.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_nl_compat_publ_dump.exit.thread.sink.split

if.end4.i:                                        ; preds = %if.end.i
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %50 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool6.not32.i = icmp eq ptr %51, null
  %tobool6.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool6.not32.i
  br i1 %tobool6.not.i, label %if.end4.i.tipc_nl_compat_publ_dump.exit.thread.sink.split_crit_edge, label %if.end8.i

if.end4.i.tipc_nl_compat_publ_dump.exit.thread.sink.split_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_nl_compat_publ_dump.exit.thread.sink.split

if.end8.i:                                        ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #10
  %52 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %8, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not.i, label %tipc_nl_compat_publ_dump.exit, label %if.end8.i.tipc_nl_compat_publ_dump.exit.thread.sink.split_crit_edge

if.end8.i.tipc_nl_compat_publ_dump.exit.thread.sink.split_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_nl_compat_publ_dump.exit.thread.sink.split

tipc_nl_compat_publ_dump.exit.thread.sink.split:  ; preds = %if.end8.i.tipc_nl_compat_publ_dump.exit.thread.sink.split_crit_edge, %if.end4.i.tipc_nl_compat_publ_dump.exit.thread.sink.split_crit_edge, %if.end.i.tipc_nl_compat_publ_dump.exit.thread.sink.split_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #10
  br label %tipc_nl_compat_publ_dump.exit.thread

tipc_nl_compat_publ_dump.exit.thread:             ; preds = %tipc_nl_compat_publ_dump.exit.thread.sink.split, %if.then42.tipc_nl_compat_publ_dump.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.then42.tipc_nl_compat_publ_dump.exit.thread_crit_edge ], [ -90, %tipc_nl_compat_publ_dump.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dump.i) #10
  br label %cleanup53

tipc_nl_compat_publ_dump.exit:                    ; preds = %if.end8.i
  %53 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i83 = trunc i32 %sub.ptr.sub.i.i to i16
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i.i83, ptr %51, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call1.i, i32 -20
  %56 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %57 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  %58 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @tipc_nl_publ_dump, ptr %48, align 4
  %59 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @__tipc_nl_compat_publ_dump, ptr %49, align 4
  %call14.i = call fastcc i32 @__tipc_nl_compat_dumpit(ptr noundef nonnull %dump.i, ptr noundef %msg, ptr noundef nonnull %call.i.i.i) #10
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dump.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool46.not = icmp eq i32 %call14.i, 0
  br i1 %tobool46.not, label %tipc_nl_compat_publ_dump.exit.if.end50_crit_edge, label %tipc_nl_compat_publ_dump.exit.cleanup53_crit_edge

tipc_nl_compat_publ_dump.exit.cleanup53_crit_edge: ; preds = %tipc_nl_compat_publ_dump.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

tipc_nl_compat_publ_dump.exit.if.end50_crit_edge: ; preds = %tipc_nl_compat_publ_dump.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.end50:                                         ; preds = %tipc_nl_compat_publ_dump.exit.if.end50_crit_edge, %if.else39.if.end50_crit_edge, %if.else, %if.then28
  %60 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rep, align 4
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %61, ptr noundef nonnull @.str.28)
  br label %cleanup53

cleanup53.critedge:                               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %con) #10
  br label %cleanup53

cleanup53:                                        ; preds = %cleanup53.critedge, %if.end50, %tipc_nl_compat_publ_dump.exit.cleanup53_crit_edge, %tipc_nl_compat_publ_dump.exit.thread, %if.end.cleanup53_crit_edge, %entry.cleanup53_crit_edge
  %retval.1 = phi i32 [ 0, %if.end50 ], [ -22, %entry.cleanup53_crit_edge ], [ %call2.i, %if.end.cleanup53_crit_edge ], [ %call2.i76, %cleanup53.critedge ], [ %call14.i, %tipc_nl_compat_publ_dump.exit.cleanup53_crit_edge ], [ %retval.0.i.ph, %tipc_nl_compat_publ_dump.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %sock) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_media_dump(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_nl_compat_media_dump(ptr nocapture noundef readonly %msg, ptr nocapture noundef readonly %attrs) #4 align 64 {
entry:
  %media = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %media) #10
  %0 = ptrtoint ptr %media to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %media, align 4, !annotation !110
  %1 = getelementptr inbounds [3 x ptr], ptr %media, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !110
  %3 = getelementptr inbounds [3 x ptr], ptr %media, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !110
  %arrayidx = getelementptr ptr, ptr %attrs, i32 5
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  %conv.i.i = zext i16 %8 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %media, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool2.not = icmp eq i32 %call2.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rep = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %9 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rep, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 2
  %sub.i = add i16 %14, -4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i, align 8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 7
  %17 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end4.tipc_skb_tailroom.exit.i_crit_edge

if.end4.tipc_skb_tailroom.exit.i_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_skb_tailroom.exit.i

cond.false.i.i.i:                                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %19 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %tipc_skb_tailroom.exit.i

tipc_skb_tailroom.exit.i:                         ; preds = %cond.false.i.i.i, %if.end4.tipc_skb_tailroom.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %if.end4.tipc_skb_tailroom.exit.i_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 6
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  %sub.i.i13 = sub i32 32772, %22
  %23 = call i32 @llvm.smin.i32(i32 %cond.i.i.i, i32 %sub.i.i13) #10
  %conv.i14 = zext i16 %sub.i to i32
  %add2.i = add nuw nsw i32 %conv.i14, 7
  %and.i = and i32 %add2.i, 131068
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %and.i)
  %cmp.i = icmp ult i32 %23, %and.i
  br i1 %cmp.i, label %tipc_skb_tailroom.exit.i.cleanup_crit_edge, label %if.end.i

tipc_skb_tailroom.exit.i.cleanup_crit_edge:       ; preds = %tipc_skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %tipc_skb_tailroom.exit.i
  %call8.i = call ptr @skb_put(ptr noundef %10, i32 noundef %and.i) #10
  %tlv_type.i = getelementptr inbounds %struct.tlv_desc, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %tlv_type.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 18, ptr %tlv_type.i, align 2
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %14, ptr %16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i)
  %tobool.not.i = icmp eq i16 %sub.i, 0
  %tobool13.not.i = icmp eq ptr %add.ptr.i, null
  %or.cond.i = or i1 %tobool13.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.i.cleanup_crit_edge, label %if.then14.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i15 = getelementptr i8, ptr %16, i32 4
  %26 = call ptr @memcpy(ptr %add.ptr.i15, ptr %add.ptr.i, i32 %conv.i14)
  br label %cleanup

cleanup:                                          ; preds = %if.then14.i, %if.end.i.cleanup_crit_edge, %tipc_skb_tailroom.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -90, %tipc_skb_tailroom.exit.i.cleanup_crit_edge ], [ 0, %if.then14.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %media) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_node_dump(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_nl_compat_node_dump(ptr nocapture noundef readonly %msg, ptr nocapture noundef readonly %attrs) #4 align 64 {
entry:
  %node = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %node) #10
  %0 = getelementptr inbounds [7 x ptr], ptr %node, i32 0, i32 1
  %1 = getelementptr inbounds [7 x ptr], ptr %node, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %attrs, i32 6
  %2 = call ptr @memset(ptr %node, i32 255, i32 28)
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  %conv.i.i = zext i16 %6 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %node, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool2.not = icmp eq i32 %call2.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i14, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %tobool.i = icmp ne ptr %12, null
  %lnot.ext.i = zext i1 %tobool.i to i32
  %rep = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %13 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rep, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i, align 8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 7
  %17 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end4.tipc_skb_tailroom.exit.i_crit_edge

if.end4.tipc_skb_tailroom.exit.i_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_skb_tailroom.exit.i

cond.false.i.i.i:                                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 17
  %19 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %tipc_skb_tailroom.exit.i

tipc_skb_tailroom.exit.i:                         ; preds = %cond.false.i.i.i, %if.end4.tipc_skb_tailroom.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %if.end4.tipc_skb_tailroom.exit.i_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  %sub.i.i15 = sub i32 32772, %22
  %23 = call i32 @llvm.smin.i32(i32 %cond.i.i.i, i32 %sub.i.i15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %23)
  %cmp.i = icmp ult i32 %23, 12
  br i1 %cmp.i, label %tipc_skb_tailroom.exit.i.cleanup_crit_edge, label %if.end.i

tipc_skb_tailroom.exit.i.cleanup_crit_edge:       ; preds = %tipc_skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %tipc_skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i = call ptr @skb_put(ptr noundef %14, i32 noundef 12) #10
  %tlv_type.i = getelementptr inbounds %struct.tlv_desc, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %tlv_type.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 21, ptr %tlv_type.i, align 2
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 12, ptr %16, align 2
  %add.ptr.i = getelementptr i8, ptr %16, i32 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %10, ptr %add.ptr.i, align 1
  %node_info.sroa.5.0.add.ptr.i.sroa_idx = getelementptr i8, ptr %16, i32 8
  %27 = ptrtoint ptr %node_info.sroa.5.0.add.ptr.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %lnot.ext.i, ptr %node_info.sroa.5.0.add.ptr.i.sroa_idx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %tipc_skb_tailroom.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -90, %tipc_skb_tailroom.exit.i.cleanup_crit_edge ], [ 0, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %node) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tipc_nl_net_set(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_nl_compat_net_set(ptr nocapture noundef readnone %cmd, ptr noundef %skb, ptr nocapture noundef readonly %msg) #4 align 64 {
entry:
  %tmp.i28 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 7
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not31 = icmp eq ptr %5, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not31
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %msg, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %7, label %if.end.if.end18_crit_edge [
    i16 -32767, label %if.then3
    i16 -32757, label %if.then12
  ]

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.then3.if.end18_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.if.end18_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then12:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i28) #10
  %10 = ptrtoint ptr %tmp.i28 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %tmp.i28, align 4
  %call.i29 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i28) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool14.not = icmp eq i32 %call.i29, 0
  br i1 %tobool14.not, label %if.then12.if.end18_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end18:                                         ; preds = %if.then12.if.end18_crit_edge, %if.then3.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %5, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then12.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.then3.cleanup_crit_edge ], [ -90, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_net_dump(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_nl_compat_net_dump(ptr nocapture noundef readonly %msg, ptr nocapture noundef readonly %attrs) #4 align 64 {
entry:
  %net = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %net) #10
  %0 = getelementptr inbounds [6 x ptr], ptr %net, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %attrs, i32 7
  %1 = call ptr @memset(ptr %net, i32 255, i32 24)
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %net, i32 noundef 5, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool2.not = icmp eq i32 %call2.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %add.ptr.i.i12 = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i12, align 4
  %rep = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %10 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rep, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end4.tipc_skb_tailroom.exit.i_crit_edge

if.end4.tipc_skb_tailroom.exit.i_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_skb_tailroom.exit.i

cond.false.i.i.i:                                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %16 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %tipc_skb_tailroom.exit.i

tipc_skb_tailroom.exit.i:                         ; preds = %cond.false.i.i.i, %if.end4.tipc_skb_tailroom.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %if.end4.tipc_skb_tailroom.exit.i_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i, align 4
  %sub.i.i13 = sub i32 32772, %19
  %20 = call i32 @llvm.smin.i32(i32 %cond.i.i.i, i32 %sub.i.i13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %20)
  %cmp.i = icmp ult i32 %20, 8
  br i1 %cmp.i, label %tipc_skb_tailroom.exit.i.cleanup_crit_edge, label %if.end.i

tipc_skb_tailroom.exit.i.cleanup_crit_edge:       ; preds = %tipc_skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %tipc_skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i = call ptr @skb_put(ptr noundef %11, i32 noundef 8) #10
  %tlv_type.i = getelementptr inbounds %struct.tlv_desc, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %tlv_type.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %tlv_type.i, align 2
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 8, ptr %13, align 2
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %9, ptr %add.ptr.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %tipc_skb_tailroom.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -90, %tipc_skb_tailroom.exit.i.cleanup_crit_edge ], [ 0, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %net) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__tipc_nl_compat_dumpit(ptr nocapture noundef readonly %cmd, ptr noundef %msg, ptr noundef %arg) unnamed_addr #4 align 64 {
entry:
  %info = alloca %struct.genl_dumpit_info, align 4
  %cb = alloca %struct.netlink_callback, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %info) #10
  %0 = call ptr @memset(ptr %info, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %cb) #10
  %1 = getelementptr inbounds i8, ptr %cb, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 88)
  %data = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %5 = ptrtoint ptr %nlh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %nlh, align 4
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arg, ptr %cb, align 4
  %data1 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %7 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %info, ptr %data1, align 4
  %call.i.i = call ptr @__alloc_skb(i32 noundef 3856, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup55_crit_edge, label %if.end

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup55

if.end:                                           ; preds = %entry
  %dst_sk = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 8
  %8 = ptrtoint ptr %dst_sk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dst_sk, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %10, align 4
  %net = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 5
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  %call2 = call i32 @__tipc_dump_start(ptr noundef nonnull %cb, ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %cleanup55

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.genl_family, ptr @tipc_genl_family, i32 0, i32 4) to i32))
  %14 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @tipc_genl_family, i32 0, i32 4), align 4
  %add = add i32 %14, 1
  %15 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #10
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %if.end5.err_out_crit_edge, label %if.end7.i.i, !prof !109

if.end5.err_out_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end7.i.i:                                      ; preds = %if.end5
  %17 = extractvalue { i32, i1 } %15, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #16
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.err_out_crit_edge, label %if.end9

if.end7.i.i.err_out_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end9:                                          ; preds = %if.end7.i.i
  %attrs = getelementptr inbounds %struct.genl_dumpit_info, ptr %info, i32 0, i32 2
  %18 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i.i, ptr %attrs, align 4
  %19 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nlh, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %sub.i = add i32 %22, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp = icmp sgt i32 %sub.i, 0
  br i1 %cmp, label %if.then12, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %22)
  %cmp.i.i = icmp ult i32 %22, 20
  br i1 %cmp.i.i, label %if.then12.err_out.sink.split_crit_edge, label %nlmsg_parse_deprecated.exit

if.then12.err_out.sink.split_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out.sink.split

nlmsg_parse_deprecated.exit:                      ; preds = %if.then12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.genl_family, ptr @tipc_genl_family, i32 0, i32 10) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.genl_family, ptr @tipc_genl_family, i32 0, i32 10), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.genl_family, ptr @tipc_genl_family, i32 0, i32 4) to i32))
  %24 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @tipc_genl_family, i32 0, i32 4), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 20
  %sub1.i.i.i = add i32 %22, -20
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %call8.i.i, i32 noundef %24, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef %23, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool15.not = icmp eq i32 %call5.i.i, 0
  br i1 %tobool15.not, label %nlmsg_parse_deprecated.exit.if.end18_crit_edge, label %nlmsg_parse_deprecated.exit.err_out_crit_edge

nlmsg_parse_deprecated.exit.err_out_crit_edge:    ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

nlmsg_parse_deprecated.exit.if.end18_crit_edge:   ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end18:                                         ; preds = %nlmsg_parse_deprecated.exit.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %dumpit = getelementptr inbounds %struct.tipc_nl_compat_cmd_dump, ptr %cmd, i32 0, i32 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %format = getelementptr inbounds %struct.tipc_nl_compat_cmd_dump, ptr %cmd, i32 0, i32 2
  %rep = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %len36 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end18
  %25 = ptrtoint ptr %dumpit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dumpit, align 4
  %call19 = call i32 %26(ptr noundef nonnull %call.i.i, ptr noundef nonnull %cb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call19)
  %cmp.i121 = icmp sgt i32 %call19, 15
  br i1 %cmp.i121, label %land.lhs.true.i.preheader, label %do.body.do.cond_crit_edge

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

land.lhs.true.i.preheader:                        ; preds = %do.body
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.preheader
  %nlmsg.0123 = phi ptr [ %add.ptr.i, %for.inc.land.lhs.true.i_crit_edge ], [ %28, %land.lhs.true.i.preheader ]
  %rem.0122 = phi i32 [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ], [ %call19, %land.lhs.true.i.preheader ]
  %29 = ptrtoint ptr %nlmsg.0123 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nlmsg.0123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %30)
  %cmp1.i = icmp ult i32 %30, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %rem.0122)
  %cmp3.i.not = icmp ugt i32 %30, %rem.0122
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp3.i.not
  br i1 %or.cond, label %land.lhs.true.i.do.cond_crit_edge, label %for.body

land.lhs.true.i.do.cond_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

for.body:                                         ; preds = %land.lhs.true.i
  %31 = ptrtoint ptr %nlmsg.0123 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nlmsg.0123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %32)
  %cmp.i.i91 = icmp ult i32 %32, 20
  br i1 %cmp.i.i91, label %for.body.err_out.sink.split_crit_edge, label %nlmsg_parse_deprecated.exit98

for.body.err_out.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out.sink.split

nlmsg_parse_deprecated.exit98:                    ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.genl_family, ptr @tipc_genl_family, i32 0, i32 10) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.genl_family, ptr @tipc_genl_family, i32 0, i32 10), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.genl_family, ptr @tipc_genl_family, i32 0, i32 4) to i32))
  %34 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @tipc_genl_family, i32 0, i32 4), align 4
  %add.ptr.i.i.i93 = getelementptr i8, ptr %nlmsg.0123, i32 20
  %sub1.i.i.i94 = add i32 %32, -20
  %call5.i.i95 = call i32 @__nla_parse(ptr noundef nonnull %call8.i.i, i32 noundef %34, ptr noundef %add.ptr.i.i.i93, i32 noundef %sub1.i.i.i94, ptr noundef %33, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i95)
  %tobool24.not = icmp eq i32 %call5.i.i95, 0
  br i1 %tobool24.not, label %if.end26, label %nlmsg_parse_deprecated.exit98.err_out_crit_edge

nlmsg_parse_deprecated.exit98.err_out_crit_edge:  ; preds = %nlmsg_parse_deprecated.exit98
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end26:                                         ; preds = %nlmsg_parse_deprecated.exit98
  %35 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %format, align 4
  %call27 = call i32 %36(ptr noundef %msg, ptr noundef nonnull %call8.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.err_out_crit_edge

if.end26.err_out_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end30:                                         ; preds = %if.end26
  %37 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rep, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end30.tipc_skb_tailroom.exit_crit_edge

if.end30.tipc_skb_tailroom.exit_crit_edge:        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_skb_tailroom.exit

cond.false.i.i:                                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 17
  %41 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 16
  %43 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %tipc_skb_tailroom.exit

tipc_skb_tailroom.exit:                           ; preds = %cond.false.i.i, %if.end30.tipc_skb_tailroom.exit_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end30.tipc_skb_tailroom.exit_crit_edge ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 6
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i, align 4
  %sub.i99 = sub i32 32772, %46
  %47 = call i32 @llvm.smin.i32(i32 %cond.i.i, i32 %sub.i99) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp32 = icmp slt i32 %47, 2
  br i1 %cmp32, label %tipc_skb_tailroom.exit.err_out_crit_edge, label %for.inc

tipc_skb_tailroom.exit.err_out_crit_edge:         ; preds = %tipc_skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

for.inc:                                          ; preds = %tipc_skb_tailroom.exit
  %48 = ptrtoint ptr %nlmsg.0123 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nlmsg.0123, align 4
  %sub.i100 = add i32 %49, 3
  %and.i = and i32 %sub.i100, -4
  %sub1.i = sub i32 %rem.0122, %and.i
  %add.ptr.i = getelementptr i8, ptr %nlmsg.0123, i32 %and.i
  %cmp.i = icmp sgt i32 %sub1.i, 15
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.do.cond_crit_edge

for.inc.do.cond_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

do.cond:                                          ; preds = %for.inc.do.cond_crit_edge, %land.lhs.true.i.do.cond_crit_edge, %do.body.do.cond_crit_edge
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i, align 4
  %52 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %tail.i, align 8
  %53 = ptrtoint ptr %len36 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %len36, align 4
  %tobool37.not = icmp eq i32 %call19, 0
  br i1 %tobool37.not, label %do.cond.err_out_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.cond.err_out_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

err_out.sink.split:                               ; preds = %for.body.err_out.sink.split_crit_edge, %if.then12.err_out.sink.split_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #10
  br label %err_out

err_out:                                          ; preds = %err_out.sink.split, %do.cond.err_out_crit_edge, %tipc_skb_tailroom.exit.err_out_crit_edge, %if.end26.err_out_crit_edge, %nlmsg_parse_deprecated.exit98.err_out_crit_edge, %nlmsg_parse_deprecated.exit.err_out_crit_edge, %if.end7.i.i.err_out_crit_edge, %if.end5.err_out_crit_edge
  %retval.0.i.i106 = phi ptr [ %call8.i.i, %nlmsg_parse_deprecated.exit.err_out_crit_edge ], [ null, %if.end7.i.i.err_out_crit_edge ], [ null, %if.end5.err_out_crit_edge ], [ %call8.i.i, %err_out.sink.split ], [ %call8.i.i, %nlmsg_parse_deprecated.exit98.err_out_crit_edge ], [ %call8.i.i, %if.end26.err_out_crit_edge ], [ %call8.i.i, %tipc_skb_tailroom.exit.err_out_crit_edge ], [ %call8.i.i, %do.cond.err_out_crit_edge ]
  %err.4 = phi i32 [ %call5.i.i, %nlmsg_parse_deprecated.exit.err_out_crit_edge ], [ -12, %if.end7.i.i.err_out_crit_edge ], [ -12, %if.end5.err_out_crit_edge ], [ -22, %err_out.sink.split ], [ -90, %tipc_skb_tailroom.exit.err_out_crit_edge ], [ %call27, %if.end26.err_out_crit_edge ], [ %call5.i.i95, %nlmsg_parse_deprecated.exit98.err_out_crit_edge ], [ 0, %do.cond.err_out_crit_edge ]
  call void @kfree(ptr noundef %retval.0.i.i106) #10
  %call38 = call i32 @tipc_dump_done(ptr noundef nonnull %cb) #10
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %err.4)
  %cmp39 = icmp eq i32 %err.4, -90
  br i1 %cmp39, label %if.then40, label %err_out.cleanup55_crit_edge

err_out.cleanup55_crit_edge:                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup55

if.then40:                                        ; preds = %err_out
  %rep41 = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %54 = ptrtoint ptr %rep41 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rep41, align 4
  %len42 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %len42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len42, align 4
  %58 = add i32 %57, -32771
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp43 = icmp ult i32 %58, 2
  br i1 %cmp43, label %if.then44, label %if.then40.cleanup55_crit_edge

if.then40.cleanup55_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup55

if.then44:                                        ; preds = %if.then40
  %tail.i102 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 16
  %59 = ptrtoint ptr %tail.i102 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tail.i102, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp47.not = icmp eq i8 %62, 0
  br i1 %cmp47.not, label %if.then44.cleanup55_crit_edge, label %if.then49

if.then44.cleanup55_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup55

if.then49:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr50 = getelementptr i8, ptr %60, i32 -14
  %63 = call ptr @memcpy(ptr %add.ptr50, ptr @.str.6, i32 13)
  br label %cleanup55

cleanup55:                                        ; preds = %if.then49, %if.then44.cleanup55_crit_edge, %if.then40.cleanup55_crit_edge, %err_out.cleanup55_crit_edge, %if.then4, %entry.cleanup55_crit_edge
  %retval.0 = phi i32 [ -12, %if.then4 ], [ -12, %entry.cleanup55_crit_edge ], [ 0, %if.then44.cleanup55_crit_edge ], [ 0, %if.then49 ], [ 0, %if.then40.cleanup55_crit_edge ], [ %err.4, %err_out.cleanup55_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %cb) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %info) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tipc_dump_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_dump_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_tlv_sprintf(ptr noundef %skb, ptr noundef %fmt, ...) unnamed_addr #4 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !110
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %1 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %entry.tipc_skb_tailroom.exit_crit_edge

entry.tipc_skb_tailroom.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_skb_tailroom.exit

cond.false.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %3 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %tipc_skb_tailroom.exit

tipc_skb_tailroom.exit:                           ; preds = %cond.false.i.i, %entry.tipc_skb_tailroom.exit_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %entry.tipc_skb_tailroom.exit_crit_edge ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 32772, %8
  %9 = tail call i32 @llvm.smin.i32(i32 %cond.i.i, i32 %sub.i) #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %conv.i = zext i16 %13 to i32
  %add.ptr = getelementptr i8, ptr %11, i32 4
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %conv.i
  call void @llvm.va_start(ptr nonnull %args)
  %14 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %14)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call4 = call i32 @vscnprintf(ptr noundef %add.ptr3, i32 noundef %9, ptr noundef %fmt, [1 x i32] %.fca.0.insert) #10
  call void @llvm.va_end(ptr nonnull %args)
  %15 = trunc i32 %call4 to i16
  %conv6 = add i16 %13, %15
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv6, ptr %11, align 2
  %call7 = call ptr @skb_put(ptr noundef %skb, i32 noundef %call4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__fill_bc_link_stat(ptr nocapture noundef readonly %msg, ptr nocapture noundef readonly %prop, ptr nocapture noundef readonly %stats) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rep = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %0 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rep, align 4
  %arrayidx = getelementptr ptr, ptr %prop, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  tail call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %5)
  %6 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rep, align 4
  %arrayidx3 = getelementptr ptr, ptr %stats, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %add.ptr.i.i73 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i73 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i73, align 4
  %arrayidx5 = getelementptr ptr, ptr %stats, i32 2
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5, align 4
  %add.ptr.i.i74 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i74 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i74, align 4
  %arrayidx7 = getelementptr ptr, ptr %stats, i32 3
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i75 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i75, align 4
  %arrayidx9 = getelementptr ptr, ptr %stats, i32 4
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx9, align 4
  %add.ptr.i.i76 = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i76 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i76, align 4
  %arrayidx11 = getelementptr ptr, ptr %stats, i32 5
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx11, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i77 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i77, align 4
  tail call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %11, i32 noundef %15, i32 noundef %19, i32 noundef %23, i32 noundef %27)
  %28 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rep, align 4
  %arrayidx15 = getelementptr ptr, ptr %stats, i32 6
  %30 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx15, align 4
  %add.ptr.i.i78 = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i78 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i78, align 4
  %arrayidx17 = getelementptr ptr, ptr %stats, i32 7
  %34 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx17, align 4
  %add.ptr.i.i79 = getelementptr i8, ptr %35, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i79 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i79, align 4
  %arrayidx19 = getelementptr ptr, ptr %stats, i32 8
  %38 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx19, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %39, i32 4
  %40 = ptrtoint ptr %add.ptr.i.i80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i80, align 4
  %arrayidx21 = getelementptr ptr, ptr %stats, i32 9
  %42 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx21, align 4
  %add.ptr.i.i81 = getelementptr i8, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i81 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i81, align 4
  %arrayidx23 = getelementptr ptr, ptr %stats, i32 10
  %46 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx23, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %47, i32 4
  %48 = ptrtoint ptr %add.ptr.i.i82 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i.i82, align 4
  tail call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %29, ptr noundef nonnull @.str.14, i32 noundef %33, i32 noundef %37, i32 noundef %41, i32 noundef %45, i32 noundef %49)
  %50 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rep, align 4
  %arrayidx27 = getelementptr ptr, ptr %stats, i32 23
  %52 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx27, align 4
  %add.ptr.i.i83 = getelementptr i8, ptr %53, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i83, align 4
  %arrayidx29 = getelementptr ptr, ptr %stats, i32 24
  %56 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx29, align 4
  %add.ptr.i.i84 = getelementptr i8, ptr %57, i32 4
  %58 = ptrtoint ptr %add.ptr.i.i84 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i.i84, align 4
  %arrayidx31 = getelementptr ptr, ptr %stats, i32 30
  %60 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx31, align 4
  %add.ptr.i.i85 = getelementptr i8, ptr %61, i32 4
  %62 = ptrtoint ptr %add.ptr.i.i85 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.i85, align 4
  tail call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %51, ptr noundef nonnull @.str.22, i32 noundef %55, i32 noundef %59, i32 noundef %63)
  %64 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rep, align 4
  %arrayidx35 = getelementptr ptr, ptr %stats, i32 27
  %66 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx35, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %67, i32 4
  %68 = ptrtoint ptr %add.ptr.i.i86 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i.i86, align 4
  %arrayidx37 = getelementptr ptr, ptr %stats, i32 28
  %70 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx37, align 4
  %add.ptr.i.i87 = getelementptr i8, ptr %71, i32 4
  %72 = ptrtoint ptr %add.ptr.i.i87 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i.i87, align 4
  %arrayidx39 = getelementptr ptr, ptr %stats, i32 29
  %74 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx39, align 4
  %add.ptr.i.i88 = getelementptr i8, ptr %75, i32 4
  %76 = ptrtoint ptr %add.ptr.i.i88 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i.i88, align 4
  tail call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %65, ptr noundef nonnull @.str.23, i32 noundef %69, i32 noundef %73, i32 noundef %77)
  %78 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rep, align 4
  %arrayidx43 = getelementptr ptr, ptr %stats, i32 31
  %80 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx43, align 4
  %add.ptr.i.i89 = getelementptr i8, ptr %81, i32 4
  %82 = ptrtoint ptr %add.ptr.i.i89 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i.i89, align 4
  %arrayidx45 = getelementptr ptr, ptr %stats, i32 32
  %84 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx45, align 4
  %add.ptr.i.i90 = getelementptr i8, ptr %85, i32 4
  %86 = ptrtoint ptr %add.ptr.i.i90 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr.i.i90, align 4
  %arrayidx47 = getelementptr ptr, ptr %stats, i32 33
  %88 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx47, align 4
  %add.ptr.i.i91 = getelementptr i8, ptr %89, i32 4
  %90 = ptrtoint ptr %add.ptr.i.i91 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i.i91, align 4
  tail call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %79, ptr noundef nonnull @.str.20, i32 noundef %83, i32 noundef %87, i32 noundef %91)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_media_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tipc_nl_media_set(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_bearer_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tipc_nl_bearer_set(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_publ_dump(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__tipc_nl_compat_publ_dump(ptr nocapture noundef readonly %msg, ptr nocapture noundef readonly %attrs) #4 align 64 {
entry:
  %publ = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %publ) #10
  %0 = getelementptr inbounds [8 x ptr], ptr %publ, i32 0, i32 1
  %1 = getelementptr inbounds [8 x ptr], ptr %publ, i32 0, i32 2
  %2 = getelementptr inbounds [8 x ptr], ptr %publ, i32 0, i32 3
  %arrayidx = getelementptr ptr, ptr %attrs, i32 3
  %3 = call ptr @memset(ptr %publ, i32 255, i32 32)
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %publ, i32 noundef 7, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool2.not = icmp eq i32 %call2.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i27, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i28, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %2, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp = icmp eq i32 %15, %19
  %rep = getelementptr inbounds %struct.tipc_nl_compat_msg, ptr %msg, i32 0, i32 6
  %20 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rep, align 4
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %21, ptr noundef nonnull @.str.42, i32 noundef %11, i32 noundef %15)
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @tipc_tlv_sprintf(ptr noundef %21, ptr noundef nonnull @.str.43, i32 noundef %11, i32 noundef %15, i32 noundef %19)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then11 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %publ) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/tipc/netlink_compat.c", i32 1368, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tipc_netlink_compat_start._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tipc_netlink_compat_start._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @tipc_genl_compat_family, !7, !"tipc_genl_compat_family", i1 false, i1 false}
!7 = !{!"../net/tipc/netlink_compat.c", i32 1351, i32 27}
!8 = !{ptr @tipc_genl_compat_ops, !9, !"tipc_genl_compat_ops", i1 false, i1 false}
!9 = !{!"../net/tipc/netlink_compat.c", i32 1343, i32 36}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/tipc/netlink_compat.c", i32 1312, i32 30}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/tipc/netlink_compat.c", i32 1319, i32 30}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/tipc/netlink_compat.c", i32 1328, i32 30}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/tipc/netlink_compat.c", i32 269, i32 6}
!18 = !{ptr @__nlmsg_parse.__msg, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../include/net/netlink.h", i32 729, i32 3}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/tipc/netlink_compat.c", i32 593, i32 29}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/tipc/netlink_compat.c", i32 602, i32 30}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/tipc/netlink_compat.c", i32 604, i32 30}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/tipc/netlink_compat.c", i32 606, i32 30}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/tipc/netlink_compat.c", i32 608, i32 29}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/tipc/netlink_compat.c", i32 612, i32 29}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/tipc/netlink_compat.c", i32 617, i32 5}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/tipc/netlink_compat.c", i32 626, i32 5}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/tipc/netlink_compat.c", i32 635, i32 5}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/tipc/netlink_compat.c", i32 641, i32 5}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/tipc/netlink_compat.c", i32 651, i32 29}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/tipc/netlink_compat.c", i32 660, i32 5}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/tipc/netlink_compat.c", i32 668, i32 5}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/tipc/netlink_compat.c", i32 676, i32 5}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/tipc/netlink_compat.c", i32 508, i32 29}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/tipc/netlink_compat.c", i32 527, i32 29}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/tipc/netlink_compat.c", i32 532, i32 29}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/tipc/netlink_compat.c", i32 876, i32 3}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/tipc/netlink_compat.c", i32 877, i32 3}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/tipc/netlink_compat.c", i32 878, i32 3}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/tipc/netlink_compat.c", i32 879, i32 3}
!62 = !{ptr @tipc_nl_compat_name_table_dump_header.header, !63, !"header", i1 false, i1 false}
!63 = !{!"../net/tipc/netlink_compat.c", i32 875, i32 28}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/tipc/netlink_compat.c", i32 892, i32 29}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/tipc/netlink_compat.c", i32 905, i32 43}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/tipc/netlink_compat.c", i32 905, i32 47}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/tipc/netlink_compat.c", i32 905, i32 56}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/tipc/netlink_compat.c", i32 906, i32 8}
!74 = !{ptr @tipc_nl_compat_name_table_dump.scope_str, !75, !"scope_str", i1 false, i1 false}
!75 = !{!"../net/tipc/netlink_compat.c", i32 905, i32 28}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/tipc/netlink_compat.c", i32 942, i32 29}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/tipc/netlink_compat.c", i32 948, i32 29}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/tipc/netlink_compat.c", i32 956, i32 20}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/tipc/netlink_compat.c", i32 958, i32 29}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/tipc/netlink_compat.c", i32 963, i32 29}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/tipc/netlink_compat.c", i32 1058, i32 29}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/tipc/netlink_compat.c", i32 1072, i32 30}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/tipc/netlink_compat.c", i32 1079, i32 31}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/tipc/netlink_compat.c", i32 1085, i32 30}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/tipc/netlink_compat.c", i32 992, i32 30}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/tipc/netlink_compat.c", i32 994, i32 30}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/tipc/netlink_compat.c", i32 1189, i32 29}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"branch_weights", i32 1, i32 2000}
!110 = !{!"auto-init"}
