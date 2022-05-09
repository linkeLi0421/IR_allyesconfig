; ModuleID = '/llk/IR_all_yes/net/tipc/link.c_pt.bc'
source_filename = "../net/tipc/link.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tipc_link = type { i32, [68 x i8], ptr, i16, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, i32, [16 x i8], i32, i8, %struct.tipc_mon_state, i16, i16, ptr, %struct.sk_buff_head, i16, i16, %struct.sk_buff_head, %struct.sk_buff_head, [5 x %struct.anon.142], i16, i16, i32, %struct.sk_buff_head, ptr, ptr, %struct.sk_buff_head, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, i8, i8, %struct.tipc_stats }
%struct.tipc_mon_state = type { i16, i16, i16, i8 }
%struct.anon.142 = type { i16, i16, ptr }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.tipc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32] }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tipc_net = type { [16 x i8], i32, i32, i32, [33 x i8], i32, i32, i8, %struct.spinlock, [512 x %struct.hlist_head], %struct.list_head, i32, i32, [3 x ptr], i32, [4 x ptr], %struct.spinlock, ptr, ptr, %struct.rhashtable, %struct.spinlock, ptr, ptr, %struct.atomic_t, i16, %struct.packet_type, ptr, %struct.work_struct, %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tipc_gap_ack_blks = type { i16, %union.anon.143, i8, [0 x %struct.tipc_gap_ack] }
%union.anon.143 = type { i8 }
%struct.tipc_gap_ack = type { i16, i16 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.tipc_msg = type { [15 x i32] }
%struct.tipc_nl_msg = type { ptr, i32, i32 }
%struct.nla_map = type { i32, i32 }
%struct.nla_map.154 = type { i32, i32 }
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

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bclink removed!\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zero ackers!\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s:%s-%s:unknown\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%s\00", [26 x i8] zeroinitializer }, align 32
@tipc_bclink_name = external dso_local constant [0 x i8], align 1
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bclink created!\00", [16 x i8] zeroinitializer }, align 32
@tipc_link_fsm_evt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013tipc: Unknown FSM state %x in %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tipc_link_fsm_evt\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/tipc/link.c\00", [16 x i8] zeroinitializer }, align 32
@tipc_link_fsm_evt._entry_ptr = internal global ptr @tipc_link_fsm_evt._entry, section ".printk_index", align 4
@tipc_link_fsm_evt._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.9, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013tipc: Illegal FSM event %x in state %x on link %s\0A\00", [43 x i8] zeroinitializer }, align 32
@tipc_link_fsm_evt._entry_ptr.12 = internal global ptr @tipc_link_fsm_evt._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@tipc_link_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.9, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014tipc: Too large msg, purging xmit list %d %d %d %d %d!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tipc_link_xmit\00", [17 x i8] zeroinitializer }, align 32
@tipc_link_xmit._entry_ptr = internal global ptr @tipc_link_xmit._entry, section ".printk_index", align 4
@tipc_link_xmit._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.9, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014tipc: %s<%s>, link overflow\00", [34 x i8] zeroinitializer }, align 32
@tipc_link_xmit._entry_ptr.18 = internal global ptr @tipc_link_xmit._entry.16, section ".printk_index", align 4
@tipc_link_create_dummy_tnl_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.9, i32 1954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014tipc: %sunable to create tunnel packet\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tipc_link_create_dummy_tnl_msg\00", [33 x i8] zeroinitializer }, align 32
@tipc_link_create_dummy_tnl_msg._entry_ptr = internal global ptr @tipc_link_create_dummy_tnl_msg._entry, section ".printk_index", align 4
@tipc_link_tnl_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.9, i32 2002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014tipc: %sunable to create dummy SYNCH_MSG\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tipc_link_tnl_prepare\00", [42 x i8] zeroinitializer }, align 32
@tipc_link_tnl_prepare._entry_ptr = internal global ptr @tipc_link_tnl_prepare._entry, section ".printk_index", align 4
@tipc_link_tnl_prepare._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.22, ptr @.str.9, i32 2022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tipc_link_tnl_prepare._entry_ptr.24 = internal global ptr @tipc_link_tnl_prepare._entry.23, section ".printk_index", align 4
@tipc_link_tnl_prepare._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.9, i32 2062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014tipc: %sunable to frag msg: rc %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tipc_link_tnl_prepare._entry_ptr.27 = internal global ptr @tipc_link_tnl_prepare._entry.25, section ".printk_index", align 4
@tipc_link_tnl_prepare._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@tipc_link_tnl_prepare._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.9, i32 2075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014tipc: %stoo large msg <%d, %d>: %d!\0A\00", [57 x i8] zeroinitializer }, align 32
@tipc_link_tnl_prepare._entry_ptr.31 = internal global ptr @tipc_link_tnl_prepare._entry.29, section ".printk_index", align 4
@tipc_link_tnl_prepare._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.9, i32 2082, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014tipc: %sunable to send packet\0A\00", [63 x i8] zeroinitializer }, align 32
@tipc_link_tnl_prepare._entry_ptr.34 = internal global ptr @tipc_link_tnl_prepare._entry.32, section ".printk_index", align 4
@tipc_link_tnl_prepare._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.22, ptr @.str.9, i32 2110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014tipc: Link failover deferdq not empty: %d!\0A\00", [50 x i8] zeroinitializer }, align 32
@tipc_link_tnl_prepare._entry_ptr.37 = internal global ptr @tipc_link_tnl_prepare._entry.35, section ".printk_index", align 4
@tipc_link_failover_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.38, ptr @.str.9, i32 2146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tipc_link_failover_prepare\00", [37 x i8] zeroinitializer }, align 32
@tipc_link_failover_prepare._entry_ptr = internal global ptr @tipc_link_failover_prepare._entry, section ".printk_index", align 4
@tipc_nl_prop_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@tipc_genl_family = external dso_local global %struct.genl_family, align 4
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"link data: (null)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"link data: %x\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %x\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %u\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" | %u %u %u\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" | %u %u %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"transmq: \00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"backlogq: <%u %u %u %u %u>, \00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"deferdq: \00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inputq: \00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wakeup: \00", [23 x i8] zeroinitializer }, align 32
@__tracepoint_tipc_link_reset = external dso_local global %struct.tracepoint, align 4
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/tipc/trace.h\00", [47 x i8] zeroinitializer }, align 32
@trace_tipc_link_reset.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tipc_net_id = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__tracepoint_tipc_link_fsm = external dso_local global %struct.tracepoint, align 4
@trace_tipc_link_fsm.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_tipc_link_timeout = external dso_local global %struct.tracepoint, align 4
@trace_tipc_link_timeout.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_tipc_link_too_silent = external dso_local global %struct.tracepoint, align 4
@trace_tipc_link_too_silent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Resetting link \00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wakeup scheduled!\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_tipc_link_conges = external dso_local global %struct.tracepoint, align 4
@trace_tipc_link_conges.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tipc_link_advance_transmq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tipc_link_advance_transmq = private unnamed_addr constant [26 x i8] c"tipc_link_advance_transmq\00", align 1
@tipc_link_advance_transmq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @__func__.tipc_link_advance_transmq, ptr @.str.9, i32 1594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014tipc: Ignoring bc Gap ACKs, no memory\0A\00", [55 x i8] zeroinitializer }, align 32
@tipc_link_advance_transmq._entry_ptr = internal global ptr @tipc_link_advance_transmq._entry, section ".printk_index", align 4
@tipc_link_advance_transmq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Corrupted Gap ACK: %d %d %d %d %d\0A\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_tipc_link_retrans = external dso_local global %struct.tracepoint, align 4
@trace_tipc_link_retrans.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@link_retransmit_failure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.9, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014tipc: Retransmission failure on link <%s>\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"link_retransmit_failure\00", [40 x i8] zeroinitializer }, align 32
@link_retransmit_failure._entry_ptr = internal global ptr @link_retransmit_failure._entry, section ".printk_index", align 4
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"State of link \00", [17 x i8] zeroinitializer }, align 32
@link_retransmit_failure._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.63, ptr @.str.9, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016tipc: Failed msg: usr %u, typ %u, len %u, err %u\0A\00", [44 x i8] zeroinitializer }, align 32
@link_retransmit_failure._entry_ptr.67 = internal global ptr @link_retransmit_failure._entry.65, section ".printk_index", align 4
@link_retransmit_failure._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.63, ptr @.str.9, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016tipc: sqno %u, prev: %x, dest: %x\0A\00", [59 x i8] zeroinitializer }, align 32
@link_retransmit_failure._entry_ptr.70 = internal global ptr @link_retransmit_failure._entry.68, section ".printk_index", align 4
@link_retransmit_failure._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.63, ptr @.str.9, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016tipc: retr_stamp %d, retr_cnt %d\0A\00", [60 x i8] zeroinitializer }, align 32
@link_retransmit_failure._entry_ptr.73 = internal global ptr @link_retransmit_failure._entry.71, section ".printk_index", align 4
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"retrans failure!\00", [47 x i8] zeroinitializer }, align 32
@link_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.9, i32 2577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016tipc: %s Link <%s> state %x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link_print\00", [21 x i8] zeroinitializer }, align 32
@link_print._entry_ptr = internal global ptr @link_print._entry, section ".printk_index", align 4
@link_print._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.9, i32 2580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016tipc: XMTQ: %u [%u-%u], BKLGQ: %u, SNDNX: %u, RCVNX: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@link_print._entry_ptr.79 = internal global ptr @link_print._entry.77, section ".printk_index", align 4
@__tracepoint_tipc_list_dump = external dso_local global %struct.tracepoint, align 4
@trace_tipc_list_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_tipc_link_dump = external dso_local global %struct.tracepoint, align 4
@trace_tipc_link_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_link_tnl_rcv._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tipc_link_tnl_rcv = private unnamed_addr constant [18 x i8] c"tipc_link_tnl_rcv\00", align 1
@tipc_link_tnl_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @__func__.tipc_link_tnl_rcv, ptr @.str.9, i32 1385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014tipc: Unable to extract msg, defq: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@tipc_link_tnl_rcv._entry_ptr = internal global ptr @tipc_link_tnl_rcv._entry, section ".printk_index", align 4
@tipc_link_tnl_rcv._rs.81 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tipc_link_tnl_rcv._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @__func__.tipc_link_tnl_rcv, ptr @.str.9, i32 1402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014tipc: Unable to reassemble tunnel msg\0A\00", [55 x i8] zeroinitializer }, align 32
@tipc_link_tnl_rcv._entry_ptr.84 = internal global ptr @tipc_link_tnl_rcv._entry.82, section ".printk_index", align 4
@sysctl_tipc_key_exchange_enabled = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@tipc_data_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.9, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014tipc: Dropping received illegal msg type\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tipc_data_input\00", [16 x i8] zeroinitializer }, align 32
@tipc_data_input._entry_ptr = internal global ptr @tipc_data_input._entry, section ".printk_index", align 4
@tipc_link_input._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tipc_link_input = private unnamed_addr constant [16 x i8] c"tipc_link_input\00", align 1
@tipc_link_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @__func__.tipc_link_input, ptr @.str.9, i32 1343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014tipc: Unable to build fragment list\0A\00", [57 x i8] zeroinitializer }, align 32
@tipc_link_input._entry_ptr = internal global ptr @tipc_link_input._entry, section ".printk_index", align 4
@tipc_max_domain_size = external dso_local local_unnamed_addr constant i32, align 4
@__tipc_build_gap_ack_blks._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.__tipc_build_gap_ack_blks = private unnamed_addr constant [26 x i8] c"__tipc_build_gap_ack_blks\00", align 1
@__tipc_build_gap_ack_blks._entry = internal constant %struct.pi_entry { ptr @.str.88, ptr @__func__.__tipc_build_gap_ack_blks, ptr @.str.9, i32 1489, ptr null, ptr null }, align 1
@.str.88 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016tipc: Gacks on %s: %d, ql: %d!\0A\00", [62 x i8] zeroinitializer }, align 32
@__tipc_build_gap_ack_blks._entry_ptr = internal global ptr @__tipc_build_gap_ack_blks._entry, section ".printk_index", align 4
@__tipc_build_gap_ack_blks._entry.89 = internal constant %struct.pi_entry { ptr @.str.90, ptr @__func__.__tipc_build_gap_ack_blks, ptr @.str.9, i32 1493, ptr null, ptr null }, align 1
@.str.90 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014tipc: Unexpected skb in deferdq!\0A\00", [60 x i8] zeroinitializer }, align 32
@__tipc_build_gap_ack_blks._entry_ptr.91 = internal global ptr @__tipc_build_gap_ack_blks._entry.89, section ".printk_index", align 4
@__tracepoint_tipc_proto_build = external dso_local global %struct.tracepoint, align 4
@trace_tipc_proto_build.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Link tunneling error, \00", [41 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PROTO invalid (1)!\00", [45 x i8] zeroinitializer }, align 32
@__tracepoint_tipc_proto_rcv = external dso_local global %struct.tracepoint, align 4
@trace_tipc_proto_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_tipc_skb_dump = external dso_local global %struct.tracepoint, align 4
@trace_tipc_skb_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_tipc_link_bc_ack = external dso_local global %struct.tracepoint, align 4
@trace_tipc_link_bc_ack.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 14, i64 224, i64 256, i64 8192, i64 851968, i64 15728640, i64 201326592]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 10415374, i64 281681166]
@__sancov_gen_cov_switch_values.96 = internal global [8 x i64] [i64 6, i64 32, i64 10415374, i64 16388366, i64 247573278, i64 281681166, i64 4195421166, i64 4195421918]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 10415374, i64 16388366, i64 247573278, i64 281681166]
@__sancov_gen_cov_switch_values.98 = internal global [7 x i64] [i64 5, i64 32, i64 10415374, i64 16388366, i64 247573278, i64 281681166, i64 4195421918]
@__sancov_gen_cov_switch_values.99 = internal global [9 x i64] [i64 7, i64 32, i64 10415374, i64 16388366, i64 203213806, i64 247573278, i64 281681166, i64 4195421166, i64 4195421918]
@__sancov_gen_cov_switch_values.100 = internal global [8 x i64] [i64 6, i64 32, i64 10415374, i64 16388366, i64 203213806, i64 203214558, i64 247573278, i64 281681166]
@__sancov_gen_cov_switch_values.101 = internal global [8 x i64] [i64 6, i64 32, i64 10415374, i64 16388366, i64 203213806, i64 203214558, i64 247573278, i64 281681166]
@__sancov_gen_cov_switch_values.102 = internal global [6 x i64] [i64 4, i64 32, i64 14, i64 224, i64 256, i64 201326592]
@__sancov_gen_cov_switch_values.103 = internal global [9 x i64] [i64 7, i64 32, i64 14, i64 224, i64 256, i64 8192, i64 851968, i64 15728640, i64 201326592]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 12]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 12]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.109 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 8, i64 9, i64 10, i64 11, i64 12, i64 14]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 12]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 12]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 407, i32 46 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 411, i32 47 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 522, i32 22 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 528, i32 37 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 586, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 599, i32 38 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 604, i32 42 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 775, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 780, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 852, i32 45 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1059, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1070, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1954, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2001, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2022, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2061, i32 6 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2073, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2082, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2109, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2145, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2924, i32 27 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2928, i32 26 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2929, i32 34 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2930, i32 34 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2948, i32 34 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2972, i32 34 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2977, i32 35 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2982, i32 11 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2991, i32 35 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2995, i32 35 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2999, i32 35 }
@___asan_gen_.265 = private unnamed_addr constant [20 x i8] c"../net/tipc/trace.h\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 273, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 108, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 45, i32 7 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 695, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 723, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1984, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 234, i32 35 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 921, i32 43 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1594, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1617, i32 5 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1239, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1240, i32 16 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1241, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1243, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1245, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1249, i32 42 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2577, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2578, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1384, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1402, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1309, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1343, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1487, i32 5 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 1493, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 233, i32 34 }
@___asan_gen_.400 = private constant [19 x i8] c"../net/tipc/link.c\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 2232, i32 35 }
@___asan_gen_.402 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.403 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 991, i32 3 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__tipc_build_gap_ack_blks._entry, ptr @__tipc_build_gap_ack_blks._entry.89, ptr @__tipc_build_gap_ack_blks._entry_ptr, ptr @__tipc_build_gap_ack_blks._entry_ptr.91, ptr @link_print._entry, ptr @link_print._entry.77, ptr @link_print._entry_ptr, ptr @link_print._entry_ptr.79, ptr @link_retransmit_failure._entry, ptr @link_retransmit_failure._entry.65, ptr @link_retransmit_failure._entry.68, ptr @link_retransmit_failure._entry.71, ptr @link_retransmit_failure._entry_ptr, ptr @link_retransmit_failure._entry_ptr.67, ptr @link_retransmit_failure._entry_ptr.70, ptr @link_retransmit_failure._entry_ptr.73, ptr @tipc_data_input._entry, ptr @tipc_data_input._entry_ptr, ptr @tipc_link_advance_transmq._entry, ptr @tipc_link_advance_transmq._entry_ptr, ptr @tipc_link_create_dummy_tnl_msg._entry, ptr @tipc_link_create_dummy_tnl_msg._entry_ptr, ptr @tipc_link_failover_prepare._entry, ptr @tipc_link_failover_prepare._entry_ptr, ptr @tipc_link_fsm_evt._entry, ptr @tipc_link_fsm_evt._entry.10, ptr @tipc_link_fsm_evt._entry_ptr, ptr @tipc_link_fsm_evt._entry_ptr.12, ptr @tipc_link_input._entry, ptr @tipc_link_input._entry_ptr, ptr @tipc_link_tnl_prepare._entry, ptr @tipc_link_tnl_prepare._entry.23, ptr @tipc_link_tnl_prepare._entry.25, ptr @tipc_link_tnl_prepare._entry.29, ptr @tipc_link_tnl_prepare._entry.32, ptr @tipc_link_tnl_prepare._entry.35, ptr @tipc_link_tnl_prepare._entry_ptr, ptr @tipc_link_tnl_prepare._entry_ptr.24, ptr @tipc_link_tnl_prepare._entry_ptr.27, ptr @tipc_link_tnl_prepare._entry_ptr.31, ptr @tipc_link_tnl_prepare._entry_ptr.34, ptr @tipc_link_tnl_prepare._entry_ptr.37, ptr @tipc_link_tnl_rcv._entry, ptr @tipc_link_tnl_rcv._entry.82, ptr @tipc_link_tnl_rcv._entry_ptr, ptr @tipc_link_tnl_rcv._entry_ptr.84, ptr @tipc_link_xmit._entry, ptr @tipc_link_xmit._entry.16, ptr @tipc_link_xmit._entry_ptr, ptr @tipc_link_xmit._entry_ptr.18, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.26, ptr @tipc_link_tnl_prepare._rs, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @skb_queue_head_init.__key, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @tipc_link_advance_transmq._rs, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @tipc_link_tnl_rcv._rs, ptr @.str.80, ptr @tipc_link_tnl_rcv._rs.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @tipc_link_input._rs, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_fsm_evt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_fsm_evt._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_xmit._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_create_dummy_tnl_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_tnl_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_tnl_prepare._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_tnl_prepare._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_tnl_prepare._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_tnl_prepare._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_tnl_prepare._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_tnl_prepare._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_failover_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_advance_transmq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_advance_transmq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_retransmit_failure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_retransmit_failure._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_retransmit_failure._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_retransmit_failure._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_print._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_tnl_rcv._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_tnl_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_tnl_rcv._rs.81 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_tnl_rcv._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_data_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_input._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_link_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tipc_link_is_up(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  %and.i = and i32 %1, 201326606
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool = icmp ne i32 %and.i, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tipc_link_peer_is_down(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 851968, i32 %1)
  %cmp = icmp eq i32 %1, 851968
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tipc_link_is_reset(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 15729120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tipc_link_is_establishing(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %1)
  %cmp = icmp eq i32 %1, 224
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tipc_link_is_synching(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %1)
  %cmp = icmp eq i32 %1, 201326592
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tipc_link_is_failingover(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15728640, i32 %1)
  %cmp = icmp eq i32 %1, 15728640
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tipc_link_is_blocked(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 16588800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tipc_link_set_active(ptr nocapture noundef writeonly %l, i1 noundef zeroext %active) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %active to i8
  %active1 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 14
  %0 = ptrtoint ptr %active1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %active1, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tipc_link_id(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_bearer_id = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 7
  %0 = ptrtoint ptr %peer_bearer_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %peer_bearer_id, align 4
  %shl = shl i32 %1, 16
  %bearer_id = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 8
  %2 = ptrtoint ptr %bearer_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bearer_id, align 4
  %or = or i32 %shl, %3
  ret i32 %or
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tipc_link_min_win(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %min_win = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 37
  %0 = ptrtoint ptr %min_win to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %min_win, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tipc_link_max_win(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %max_win = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 39
  %0 = ptrtoint ptr %max_win to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_win, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tipc_link_prio(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %priority = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 17
  %0 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priority, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tipc_link_tolerance(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tolerance = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 9
  %0 = ptrtoint ptr %tolerance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tolerance, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @tipc_link_inputq(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %inputq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 33
  %0 = ptrtoint ptr %inputq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inputq, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @tipc_link_plane(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %net_plane = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 18
  %0 = ptrtoint ptr %net_plane to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %net_plane, align 4
  ret i8 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @tipc_link_net(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 2
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tipc_link_update_caps(ptr nocapture noundef writeonly %l, i16 noundef zeroext %capabilities) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_caps = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 12
  %0 = ptrtoint ptr %peer_caps to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %capabilities, ptr %peer_caps, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_link_add_bc_peer(ptr nocapture noundef %snd_l, ptr noundef %uc_l, ptr noundef %xmitq) local_unnamed_addr #2 align 64 {
entry:
  %list.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_rcvlink = getelementptr inbounds %struct.tipc_link, ptr %uc_l, i32 0, i32 48
  %0 = ptrtoint ptr %bc_rcvlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_rcvlink, align 4
  %ackers = getelementptr inbounds %struct.tipc_link, ptr %snd_l, i32 0, i32 44
  %2 = ptrtoint ptr %ackers to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ackers, align 4
  %inc = add i16 %3, 1
  store i16 %inc, ptr %ackers, align 4
  %snd_nxt = getelementptr inbounds %struct.tipc_link, ptr %snd_l, i32 0, i32 29
  %4 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %snd_nxt, align 4
  %sub = add i16 %5, -1
  %acked = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 45
  %6 = ptrtoint ptr %acked to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %sub, ptr %acked, align 2
  %state = getelementptr inbounds %struct.tipc_link, ptr %snd_l, i32 0, i32 11
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 14, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list.i) #18
  %8 = getelementptr inbounds i8, ptr %list.i, i32 12
  %9 = call ptr @memset(ptr %8, i32 255, i32 44)
  %10 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.90, ptr %list.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list.i, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %list.i, i32 0, i32 1
  %12 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %qlen.i.i, align 4
  %13 = ptrtoint ptr %bc_rcvlink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bc_rcvlink, align 4
  %call.i = call fastcc zeroext i1 @tipc_link_build_bc_proto_msg(ptr noundef %14, i1 noundef zeroext false, i16 noundef zeroext 0, ptr noundef nonnull %list.i) #18
  br i1 %call.i, label %if.end.i, label %entry.tipc_link_build_bc_init_msg.exit_crit_edge

entry.tipc_link_build_bc_init_msg.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %tipc_link_build_bc_init_msg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list.i, align 4
  %cmp.i.i = icmp eq ptr %16, %list.i
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %16
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i.i, align 4
  %or.i.i.i = or i32 %20, 16384
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %call3.i = call i32 @tipc_link_xmit(ptr noundef %uc_l, ptr noundef nonnull %list.i, ptr noundef %xmitq) #18
  br label %tipc_link_build_bc_init_msg.exit

tipc_link_build_bc_init_msg.exit:                 ; preds = %if.end.i, %entry.tipc_link_build_bc_init_msg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list.i) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_link_remove_bc_peer(ptr noundef %snd_l, ptr noundef %rcv_l, ptr noundef %xmitq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %snd_nxt = getelementptr inbounds %struct.tipc_link, ptr %snd_l, i32 0, i32 29
  %0 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %snd_nxt, align 4
  %sub = add i16 %1, -1
  %ackers = getelementptr inbounds %struct.tipc_link, ptr %snd_l, i32 0, i32 44
  %2 = ptrtoint ptr %ackers to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ackers, align 4
  %dec = add i16 %3, -1
  store i16 %dec, ptr %ackers, align 4
  %bc_peer_is_up = getelementptr inbounds %struct.tipc_link, ptr %rcv_l, i32 0, i32 51
  %4 = ptrtoint ptr %bc_peer_is_up to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %bc_peer_is_up, align 1
  %state = getelementptr inbounds %struct.tipc_link, ptr %rcv_l, i32 0, i32 11
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 14, ptr %state, align 4
  %call = tail call i32 @tipc_link_bc_ack_rcv(ptr noundef %rcv_l, i16 noundef zeroext %sub, i16 noundef zeroext 0, ptr noundef null, ptr noundef %xmitq, ptr noundef null)
  tail call fastcc void @trace_tipc_link_reset(ptr noundef %rcv_l, ptr noundef nonnull @.str)
  tail call void @tipc_link_reset(ptr noundef %rcv_l)
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 256, ptr %state, align 4
  %7 = ptrtoint ptr %ackers to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ackers, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @trace_tipc_link_reset(ptr noundef %snd_l, ptr noundef nonnull @.str.1)
  tail call void @tipc_link_reset(ptr noundef %snd_l)
  %state4 = getelementptr inbounds %struct.tipc_link, ptr %snd_l, i32 0, i32 11
  %9 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 256, ptr %state4, align 4
  %10 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xmitq, align 4
  %cmp.i.i2.i = icmp eq ptr %11, %xmitq
  %tobool.not.i13.i = icmp eq ptr %11, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %if.then.if.end_crit_edge, label %while.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

while.body.lr.ph.i:                               ; preds = %if.then
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
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
  tail call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #18
  %21 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xmitq, align 4
  %cmp.i.i.i = icmp eq ptr %22, %xmitq
  %tobool.not.i1.i = icmp eq ptr %22, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_link_bc_ack_rcv(ptr noundef %r, i16 noundef zeroext %acked, i16 noundef zeroext %gap, ptr noundef %ga, ptr noundef %xmitq, ptr noundef %retrq) local_unnamed_addr #2 align 64 {
entry:
  %unused = alloca i8, align 1
  %rc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_sndlink = getelementptr inbounds %struct.tipc_link, ptr %r, i32 0, i32 49
  %0 = ptrtoint ptr %bc_sndlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_sndlink, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unused) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #18
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rc, align 4
  %state.i = getelementptr inbounds %struct.tipc_link, ptr %r, i32 0, i32 11
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  %and.i = and i32 %4, 201326606
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bc_peer_is_up = getelementptr inbounds %struct.tipc_link, ptr %r, i32 0, i32 51
  %5 = ptrtoint ptr %bc_peer_is_up to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bc_peer_is_up, align 1, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %gap)
  %tobool2.not = icmp eq i16 %gap, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %recv_nacks = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 52, i32 7
  %7 = ptrtoint ptr %recv_nacks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %recv_nacks, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %recv_nacks, align 4
  %recv_nacks5 = getelementptr inbounds %struct.tipc_link, ptr %r, i32 0, i32 52, i32 7
  %9 = ptrtoint ptr %recv_nacks5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %recv_nacks5, align 4
  %inc6 = add i32 %10, 1
  store i32 %inc6, ptr %recv_nacks5, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %acked8 = getelementptr inbounds %struct.tipc_link, ptr %r, i32 0, i32 45
  %11 = ptrtoint ptr %acked8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %acked8, align 2
  %13 = xor i16 %12, -1
  %14 = add i16 %13, %acked
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %14)
  %tobool.not.i = icmp sgt i16 %14, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %acked)
  %cmp.i = icmp eq i16 %12, %acked
  %tobool10.not = or i1 %cmp.i, %tobool.not.i
  br i1 %tobool10.not, label %lor.lhs.false11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end7
  %15 = and i1 %tobool2.not, %cmp.i
  %tobool17.not = icmp eq ptr %ga, null
  %or.cond = and i1 %tobool17.not, %15
  br i1 %or.cond, label %lor.lhs.false11.cleanup_crit_edge, label %if.end19

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false11
  %transmq = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 26
  tail call fastcc void @trace_tipc_link_bc_ack(ptr noundef %r, i16 noundef zeroext %acked, i16 noundef zeroext %gap, ptr noundef %transmq)
  %call20 = call fastcc i32 @tipc_link_advance_transmq(ptr noundef %1, ptr noundef %r, i16 noundef zeroext %acked, i16 noundef zeroext %gap, ptr noundef %ga, ptr noundef %retrq, ptr noundef nonnull %unused, ptr noundef nonnull %rc)
  tail call fastcc void @tipc_link_advance_backlog(ptr noundef %1, ptr noundef %xmitq)
  %wakeupq = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 35
  %16 = ptrtoint ptr %wakeupq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wakeupq, align 4
  %cmp.i49.not = icmp eq ptr %17, %wakeupq
  br i1 %cmp.i49.not, label %if.end19.if.end27_crit_edge, label %if.then26, !prof !242

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

if.then26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @link_prepare_wakeup(ptr noundef %1)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end19.if.end27_crit_edge
  %18 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %lor.lhs.false11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.end27 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false11.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unused) #18
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_link_reset(ptr noundef %l, ptr noundef %header) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_reset, i32 0, i32 1), ptr blockaddress(@trace_tipc_link_reset, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !244
  %call42 = tail call i32 @__traceiter_tipc_link_reset(ptr noundef null, ptr noundef %l, i16 noundef zeroext -1, ptr noundef %header) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !245
  %13 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !242

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !246
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_reset, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_reset, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_link_reset.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_tipc_link_reset.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 273, ptr noundef nonnull @.str.51) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !247
  %31 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_link_reset(ptr noundef %l) local_unnamed_addr #2 align 64 {
entry:
  %list = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list) #18
  %0 = getelementptr inbounds i8, ptr %list, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i, align 4
  %in_session = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 13
  %5 = ptrtoint ptr %in_session to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %in_session, align 2
  %peer_session = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 3
  %6 = ptrtoint ptr %peer_session to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %peer_session, align 4
  %dec = add i16 %7, -1
  store i16 %dec, ptr %peer_session, align 4
  %session = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 4
  %8 = ptrtoint ptr %session to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %session, align 2
  %inc = add i16 %9, 1
  store i16 %inc, ptr %session, align 2
  %advertised_mtu = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 25
  %10 = ptrtoint ptr %advertised_mtu to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %advertised_mtu, align 2
  %mtu = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 24
  %12 = ptrtoint ptr %mtu to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %mtu, align 4
  %wakeupq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 35
  %lock = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 35, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock) #18
  %13 = ptrtoint ptr %wakeupq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wakeupq, align 4
  %cmp.i.not.i = icmp eq ptr %14, %wakeupq
  br i1 %cmp.i.not.i, label %entry.skb_queue_splice_init.exit_crit_edge, label %if.then.i

entry.skb_queue_splice_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_queue_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 35, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.83, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list, ptr %prev5.i.i, align 4
  store volatile ptr %14, ptr %list, align 8
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %16, ptr %18, align 8
  %prev35.i.i = getelementptr inbounds %struct.anon.83, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev35.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %18, ptr %prev35.i.i, align 4
  %qlen.i54 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 35, i32 1
  %22 = ptrtoint ptr %qlen.i54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i54, align 4
  %24 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %25, %23
  store i32 %add.i, ptr %qlen.i, align 4
  %26 = ptrtoint ptr %wakeupq to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %wakeupq, ptr %wakeupq, align 4
  store ptr %wakeupq, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i54, align 4
  br label %skb_queue_splice_init.exit

skb_queue_splice_init.exit:                       ; preds = %if.then.i, %entry.skb_queue_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #18
  %inputq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 33
  %27 = ptrtoint ptr %inputq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %inputq, align 4
  %lock4 = getelementptr inbounds %struct.sk_buff_head, ptr %28, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock4) #18
  %29 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %list, align 4
  %cmp.i.not.i55 = icmp eq ptr %30, %list
  br i1 %cmp.i.not.i55, label %skb_queue_splice_init.exit.skb_queue_splice_init.exit63_crit_edge, label %if.then.i62

skb_queue_splice_init.exit.skb_queue_splice_init.exit63_crit_edge: ; preds = %skb_queue_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_queue_splice_init.exit63

if.then.i62:                                      ; preds = %skb_queue_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  %31 = ptrtoint ptr %inputq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %inputq, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i, align 4
  %prev5.i.i57 = getelementptr inbounds %struct.anon.83, ptr %30, i32 0, i32 1
  %37 = ptrtoint ptr %prev5.i.i57 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %32, ptr %prev5.i.i57, align 4
  store volatile ptr %30, ptr %32, align 8
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %34, ptr %36, align 8
  %prev35.i.i58 = getelementptr inbounds %struct.anon.83, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev35.i.i58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %36, ptr %prev35.i.i58, align 4
  %40 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %qlen.i, align 4
  %qlen1.i60 = getelementptr inbounds %struct.sk_buff_head, ptr %32, i32 0, i32 1
  %42 = ptrtoint ptr %qlen1.i60 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qlen1.i60, align 4
  %add.i61 = add i32 %43, %41
  store i32 %add.i61, ptr %qlen1.i60, align 4
  %44 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list, ptr %list, align 4
  store ptr %list, ptr %prev.i, align 4
  store i32 0, ptr %qlen.i, align 4
  br label %skb_queue_splice_init.exit63

skb_queue_splice_init.exit63:                     ; preds = %if.then.i62, %skb_queue_splice_init.exit.skb_queue_splice_init.exit63_crit_edge
  %45 = ptrtoint ptr %inputq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %inputq, align 4
  %lock7 = getelementptr inbounds %struct.sk_buff_head, ptr %46, i32 0, i32 2
  call void @_raw_spin_unlock_bh(ptr noundef %lock7) #18
  %transmq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26
  %47 = ptrtoint ptr %transmq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %transmq, align 4
  %cmp.i.i2.i = icmp eq ptr %48, %transmq
  %tobool.not.i13.i = icmp eq ptr %48, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %skb_queue_splice_init.exit63.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

skb_queue_splice_init.exit63.__skb_queue_purge.exit_crit_edge: ; preds = %skb_queue_splice_init.exit63
  call void @__sanitizer_cov_trace_pc() #20
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %skb_queue_splice_init.exit63
  %qlen.i.i.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %49 = phi ptr [ %48, %while.body.lr.ph.i ], [ %59, %while.body.i.while.body.i_crit_edge ]
  %50 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.83, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %49, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.83, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %55, ptr %prev17.i.i.i, align 4
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %53, ptr %55, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %49, i32 noundef 0) #18
  %58 = ptrtoint ptr %transmq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %transmq, align 4
  %cmp.i.i.i = icmp eq ptr %59, %transmq
  %tobool.not.i1.i = icmp eq ptr %59, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %skb_queue_splice_init.exit63.__skb_queue_purge.exit_crit_edge
  %deferdq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32
  %60 = ptrtoint ptr %deferdq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %deferdq, align 4
  %cmp.i.i2.i64 = icmp eq ptr %61, %deferdq
  %tobool.not.i13.i65 = icmp eq ptr %61, null
  %tobool.not.i4.i66 = or i1 %cmp.i.i2.i64, %tobool.not.i13.i65
  br i1 %tobool.not.i4.i66, label %__skb_queue_purge.exit.__skb_queue_purge.exit76_crit_edge, label %while.body.lr.ph.i68

__skb_queue_purge.exit.__skb_queue_purge.exit76_crit_edge: ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %__skb_queue_purge.exit76

while.body.lr.ph.i68:                             ; preds = %__skb_queue_purge.exit
  %qlen.i.i.i67 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32, i32 1
  br label %while.body.i75

while.body.i75:                                   ; preds = %while.body.i75.while.body.i75_crit_edge, %while.body.lr.ph.i68
  %62 = phi ptr [ %61, %while.body.lr.ph.i68 ], [ %72, %while.body.i75.while.body.i75_crit_edge ]
  %63 = ptrtoint ptr %qlen.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %qlen.i.i.i67, align 4
  %sub.i.i.i69 = add i32 %64, -1
  store volatile i32 %sub.i.i.i69, ptr %qlen.i.i.i67, align 4
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %62, align 8
  %prev9.i.i.i70 = getelementptr inbounds %struct.anon.83, ptr %62, i32 0, i32 1
  %67 = ptrtoint ptr %prev9.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev9.i.i.i70, align 4
  store ptr null, ptr %prev9.i.i.i70, align 4
  store ptr null, ptr %62, align 8
  %prev17.i.i.i71 = getelementptr inbounds %struct.anon.83, ptr %66, i32 0, i32 1
  %69 = ptrtoint ptr %prev17.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %68, ptr %prev17.i.i.i71, align 4
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %66, ptr %68, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %62, i32 noundef 0) #18
  %71 = ptrtoint ptr %deferdq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %deferdq, align 4
  %cmp.i.i.i72 = icmp eq ptr %72, %deferdq
  %tobool.not.i1.i73 = icmp eq ptr %72, null
  %tobool.not.i.i74 = or i1 %cmp.i.i.i72, %tobool.not.i1.i73
  br i1 %tobool.not.i.i74, label %while.body.i75.__skb_queue_purge.exit76_crit_edge, label %while.body.i75.while.body.i75_crit_edge

while.body.i75.while.body.i75_crit_edge:          ; preds = %while.body.i75
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i75

while.body.i75.__skb_queue_purge.exit76_crit_edge: ; preds = %while.body.i75
  call void @__sanitizer_cov_trace_pc() #20
  br label %__skb_queue_purge.exit76

__skb_queue_purge.exit76:                         ; preds = %while.body.i75.__skb_queue_purge.exit76_crit_edge, %__skb_queue_purge.exit.__skb_queue_purge.exit76_crit_edge
  %backlogq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 27
  %73 = ptrtoint ptr %backlogq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %backlogq, align 4
  %cmp.i.i2.i77 = icmp eq ptr %74, %backlogq
  %tobool.not.i13.i78 = icmp eq ptr %74, null
  %tobool.not.i4.i79 = or i1 %cmp.i.i2.i77, %tobool.not.i13.i78
  br i1 %tobool.not.i4.i79, label %__skb_queue_purge.exit76.__skb_queue_purge.exit89_crit_edge, label %while.body.lr.ph.i81

__skb_queue_purge.exit76.__skb_queue_purge.exit89_crit_edge: ; preds = %__skb_queue_purge.exit76
  call void @__sanitizer_cov_trace_pc() #20
  br label %__skb_queue_purge.exit89

while.body.lr.ph.i81:                             ; preds = %__skb_queue_purge.exit76
  %qlen.i.i.i80 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 27, i32 1
  br label %while.body.i88

while.body.i88:                                   ; preds = %while.body.i88.while.body.i88_crit_edge, %while.body.lr.ph.i81
  %75 = phi ptr [ %74, %while.body.lr.ph.i81 ], [ %85, %while.body.i88.while.body.i88_crit_edge ]
  %76 = ptrtoint ptr %qlen.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %qlen.i.i.i80, align 4
  %sub.i.i.i82 = add i32 %77, -1
  store volatile i32 %sub.i.i.i82, ptr %qlen.i.i.i80, align 4
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %75, align 8
  %prev9.i.i.i83 = getelementptr inbounds %struct.anon.83, ptr %75, i32 0, i32 1
  %80 = ptrtoint ptr %prev9.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev9.i.i.i83, align 4
  store ptr null, ptr %prev9.i.i.i83, align 4
  store ptr null, ptr %75, align 8
  %prev17.i.i.i84 = getelementptr inbounds %struct.anon.83, ptr %79, i32 0, i32 1
  %82 = ptrtoint ptr %prev17.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %81, ptr %prev17.i.i.i84, align 4
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %79, ptr %81, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %75, i32 noundef 0) #18
  %84 = ptrtoint ptr %backlogq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %backlogq, align 4
  %cmp.i.i.i85 = icmp eq ptr %85, %backlogq
  %tobool.not.i1.i86 = icmp eq ptr %85, null
  %tobool.not.i.i87 = or i1 %cmp.i.i.i85, %tobool.not.i1.i86
  br i1 %tobool.not.i.i87, label %while.body.i88.__skb_queue_purge.exit89_crit_edge, label %while.body.i88.while.body.i88_crit_edge

while.body.i88.while.body.i88_crit_edge:          ; preds = %while.body.i88
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i88

while.body.i88.__skb_queue_purge.exit89_crit_edge: ; preds = %while.body.i88
  call void @__sanitizer_cov_trace_pc() #20
  br label %__skb_queue_purge.exit89

__skb_queue_purge.exit89:                         ; preds = %while.body.i88.__skb_queue_purge.exit89_crit_edge, %__skb_queue_purge.exit76.__skb_queue_purge.exit89_crit_edge
  %failover_deferdq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 23
  %86 = ptrtoint ptr %failover_deferdq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %failover_deferdq, align 4
  %cmp.i.i2.i90 = icmp eq ptr %87, %failover_deferdq
  %tobool.not.i13.i91 = icmp eq ptr %87, null
  %tobool.not.i4.i92 = or i1 %cmp.i.i2.i90, %tobool.not.i13.i91
  br i1 %tobool.not.i4.i92, label %__skb_queue_purge.exit89.__skb_queue_purge.exit102_crit_edge, label %while.body.lr.ph.i94

__skb_queue_purge.exit89.__skb_queue_purge.exit102_crit_edge: ; preds = %__skb_queue_purge.exit89
  call void @__sanitizer_cov_trace_pc() #20
  br label %__skb_queue_purge.exit102

while.body.lr.ph.i94:                             ; preds = %__skb_queue_purge.exit89
  %qlen.i.i.i93 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 23, i32 1
  br label %while.body.i101

while.body.i101:                                  ; preds = %while.body.i101.while.body.i101_crit_edge, %while.body.lr.ph.i94
  %88 = phi ptr [ %87, %while.body.lr.ph.i94 ], [ %98, %while.body.i101.while.body.i101_crit_edge ]
  %89 = ptrtoint ptr %qlen.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %qlen.i.i.i93, align 4
  %sub.i.i.i95 = add i32 %90, -1
  store volatile i32 %sub.i.i.i95, ptr %qlen.i.i.i93, align 4
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %88, align 8
  %prev9.i.i.i96 = getelementptr inbounds %struct.anon.83, ptr %88, i32 0, i32 1
  %93 = ptrtoint ptr %prev9.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev9.i.i.i96, align 4
  store ptr null, ptr %prev9.i.i.i96, align 4
  store ptr null, ptr %88, align 8
  %prev17.i.i.i97 = getelementptr inbounds %struct.anon.83, ptr %92, i32 0, i32 1
  %95 = ptrtoint ptr %prev17.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %94, ptr %prev17.i.i.i97, align 4
  %96 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %92, ptr %94, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %88, i32 noundef 0) #18
  %97 = ptrtoint ptr %failover_deferdq to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %failover_deferdq, align 4
  %cmp.i.i.i98 = icmp eq ptr %98, %failover_deferdq
  %tobool.not.i1.i99 = icmp eq ptr %98, null
  %tobool.not.i.i100 = or i1 %cmp.i.i.i98, %tobool.not.i1.i99
  br i1 %tobool.not.i.i100, label %while.body.i101.__skb_queue_purge.exit102_crit_edge, label %while.body.i101.while.body.i101_crit_edge

while.body.i101.while.body.i101_crit_edge:        ; preds = %while.body.i101
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i101

while.body.i101.__skb_queue_purge.exit102_crit_edge: ; preds = %while.body.i101
  call void @__sanitizer_cov_trace_pc() #20
  br label %__skb_queue_purge.exit102

__skb_queue_purge.exit102:                        ; preds = %while.body.i101.__skb_queue_purge.exit102_crit_edge, %__skb_queue_purge.exit89.__skb_queue_purge.exit102_crit_edge
  %arrayidx = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 0
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 0, ptr %arrayidx, align 4
  %target_bskb = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 0, i32 2
  %100 = ptrtoint ptr %target_bskb to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %target_bskb, align 4
  %arrayidx.1 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 1
  %101 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %arrayidx.1, align 4
  %target_bskb.1 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 1, i32 2
  %102 = ptrtoint ptr %target_bskb.1 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %target_bskb.1, align 4
  %arrayidx.2 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 2
  %103 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 0, ptr %arrayidx.2, align 4
  %target_bskb.2 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 2, i32 2
  %104 = ptrtoint ptr %target_bskb.2 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %target_bskb.2, align 4
  %arrayidx.3 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 3
  %105 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %arrayidx.3, align 4
  %target_bskb.3 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 3, i32 2
  %106 = ptrtoint ptr %target_bskb.3 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %target_bskb.3, align 4
  %arrayidx.4 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 4
  %107 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %arrayidx.4, align 4
  %target_bskb.4 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 4, i32 2
  %108 = ptrtoint ptr %target_bskb.4 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %target_bskb.4, align 4
  %reasm_buf = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 42
  %109 = ptrtoint ptr %reasm_buf to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reasm_buf, align 4
  call void @kfree_skb_reason(ptr noundef %110, i32 noundef 0) #18
  %reasm_tnlmsg = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 43
  %111 = ptrtoint ptr %reasm_tnlmsg to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %reasm_tnlmsg, align 4
  call void @kfree_skb_reason(ptr noundef %112, i32 noundef 0) #18
  %failover_reasm_skb = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 22
  %113 = ptrtoint ptr %failover_reasm_skb to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %failover_reasm_skb, align 4
  call void @kfree_skb_reason(ptr noundef %114, i32 noundef 0) #18
  %115 = ptrtoint ptr %reasm_buf to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %reasm_buf, align 4
  %116 = ptrtoint ptr %reasm_tnlmsg to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %reasm_tnlmsg, align 4
  %117 = ptrtoint ptr %failover_reasm_skb to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %failover_reasm_skb, align 4
  %rcv_unacked = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 31
  %118 = ptrtoint ptr %rcv_unacked to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %rcv_unacked, align 4
  %snd_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 29
  %119 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 1, ptr %snd_nxt, align 4
  %rcv_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %120 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 1, ptr %rcv_nxt, align 2
  %snd_nxt_state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 5
  %121 = ptrtoint ptr %snd_nxt_state to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 1, ptr %snd_nxt_state, align 4
  %rcv_nxt_state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 6
  %122 = ptrtoint ptr %rcv_nxt_state to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 1, ptr %rcv_nxt_state, align 2
  %acked = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 45
  %123 = ptrtoint ptr %acked to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 0, ptr %acked, align 2
  %last_gap = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 46
  %124 = ptrtoint ptr %last_gap to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 0, ptr %last_gap, align 4
  %last_ga = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 47
  %125 = ptrtoint ptr %last_ga to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %last_ga, align 4
  call void @kfree(ptr noundef %126) #18
  %127 = ptrtoint ptr %last_ga to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %last_ga, align 4
  %silent_intv_cnt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 15
  %128 = ptrtoint ptr %silent_intv_cnt to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %silent_intv_cnt, align 4
  %rst_cnt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 20
  %129 = ptrtoint ptr %rst_cnt to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %rst_cnt, align 2
  %bc_peer_is_up = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 51
  %130 = ptrtoint ptr %bc_peer_is_up to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %bc_peer_is_up, align 1
  %mon_state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 19
  %131 = ptrtoint ptr %mon_state to i32
  call void @__asan_storeN_noabort(i32 %131, i32 8)
  store i64 0, ptr %mon_state, align 2
  %stats.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52
  %132 = call ptr @memset(ptr %stats.i, i32 0, i32 132)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list) #18
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__skb_queue_purge(ptr noundef %list) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.i.i2 = icmp eq ptr %1, %list
  %tobool.not.i13 = icmp eq ptr %1, null
  %tobool.not.i4 = or i1 %cmp.i.i2, %tobool.not.i13
  br i1 %tobool.not.i4, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %12, %while.body.while.body_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.83, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.83, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #18
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %12, %list
  %tobool.not.i1 = icmp eq ptr %12, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i1
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tipc_link_bc_peers(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ackers = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 44
  %0 = ptrtoint ptr %ackers to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ackers, align 4
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tipc_link_set_mtu(ptr nocapture noundef writeonly %l, i32 noundef %mtu) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %mtu to i16
  %mtu1 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 24
  %0 = ptrtoint ptr %mtu1 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %mtu1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tipc_link_mtu(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 24
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mtu, align 4
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tipc_link_mss(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 24
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mtu, align 4
  %conv = zext i16 %1 to i32
  %sub1 = add nsw i32 %conv, -72
  ret i32 %sub1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @tipc_link_rcv_nxt(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rcv_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %0 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rcv_nxt, align 2
  ret i16 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @tipc_link_acked(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %acked = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 45
  %0 = ptrtoint ptr %acked to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %acked, align 2
  ret i16 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @tipc_link_name(ptr noundef readnone %l) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 1
  ret ptr %name
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tipc_link_state(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_link_create(ptr noundef %net, ptr noundef %if_name, i32 noundef %bearer_id, i32 noundef %tolerance, i8 noundef zeroext %net_plane, i32 noundef %mtu, i32 noundef %priority, i32 noundef %min_win, i32 noundef %max_win, i32 noundef %session, i32 noundef %self, i32 noundef %peer, ptr noundef %peer_id, i16 noundef zeroext %peer_caps, ptr noundef %bc_sndlink, ptr noundef %bc_rcvlink, ptr noundef %inputq, ptr noundef %namedq, ptr nocapture noundef writeonly %link) local_unnamed_addr #2 align 64 {
entry:
  %peer_str = alloca [33 x i8], align 1
  %self_str = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %peer_str) #18
  %0 = call ptr @memset(ptr %peer_str, i32 0, i32 33)
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %self_str) #18
  %1 = call ptr @memset(ptr %self_str, i32 0, i32 33)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 668) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %link, align 4
  %conv = trunc i32 %session to i16
  %session1 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %session1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %session1, align 2
  %tobool2.not = icmp eq ptr %peer_id, null
  br i1 %tobool2.not, label %if.end.if.end23_crit_edge, label %if.then3

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

if.then3:                                         ; preds = %if.end
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #18
  %node_id_string.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %node_id_string.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %char0.i = load i8, ptr %node_id_string.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool.not.i = icmp eq i8 %char0.i, 0
  %.call.i = select i1 %tobool.not.i, ptr null, ptr %call.i
  %call5 = call ptr @tipc_nodeid2string(ptr noundef nonnull %self_str, ptr noundef %.call.i) #18
  %call7 = call i32 @strlen(ptr noundef nonnull %self_str) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call7)
  %cmp = icmp ugt i32 %call7, 16
  br i1 %cmp, label %if.then9, label %if.then3.if.end12_crit_edge

if.then3.if.end12_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %self_str, ptr noundef nonnull @.str.2, i32 noundef %self)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then3.if.end12_crit_edge
  %call14 = call ptr @tipc_nodeid2string(ptr noundef nonnull %peer_str, ptr noundef nonnull %peer_id) #18
  %call16 = call i32 @strlen(ptr noundef nonnull %peer_str) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call16)
  %cmp17 = icmp ugt i32 %call16, 16
  br i1 %cmp17, label %if.then19, label %if.end12.if.end23_crit_edge

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %call21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %peer_str, ptr noundef nonnull @.str.2, i32 noundef %peer)
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end12.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %name = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 1
  %call27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 68, ptr noundef nonnull @.str.3, ptr noundef nonnull %self_str, ptr noundef %if_name, ptr noundef nonnull %peer_str)
  %if_name28 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 16
  %call30 = call ptr @strcpy(ptr noundef %if_name28, ptr noundef %if_name) #22
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %peer, ptr %call7.i.i, align 8
  %peer_caps31 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %peer_caps31 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %peer_caps, ptr %peer_caps31, align 8
  %net32 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %net32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %net, ptr %net32, align 8
  %in_session = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 13
  %9 = ptrtoint ptr %in_session to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %in_session, align 2
  %bearer_id33 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %bearer_id33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bearer_id, ptr %bearer_id33, align 8
  %tolerance34 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %tolerance34 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %tolerance, ptr %tolerance34, align 4
  %tobool35.not = icmp eq ptr %bc_rcvlink, null
  br i1 %tobool35.not, label %if.end23.if.end38_crit_edge, label %if.then36

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

if.then36:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  %tolerance37 = getelementptr inbounds %struct.tipc_link, ptr %bc_rcvlink, i32 0, i32 9
  %12 = ptrtoint ptr %tolerance37 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %tolerance, ptr %tolerance37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end23.if.end38_crit_edge
  %net_plane39 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 18
  %13 = ptrtoint ptr %net_plane39 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %net_plane, ptr %net_plane39, align 4
  %conv40 = trunc i32 %mtu to i16
  %advertised_mtu = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 25
  %14 = ptrtoint ptr %advertised_mtu to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv40, ptr %advertised_mtu, align 2
  %mtu42 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 24
  %15 = ptrtoint ptr %mtu42 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv40, ptr %mtu42, align 8
  %priority43 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 17
  %16 = ptrtoint ptr %priority43 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %priority, ptr %priority43, align 8
  %17 = udiv i16 %conv40, 20
  %18 = udiv i16 -1, %17
  %conv2.i = trunc i32 %min_win to i16
  %min_win3.i = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 37
  %19 = ptrtoint ptr %min_win3.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv2.i, ptr %min_win3.i, align 2
  %conv4.i = trunc i32 %max_win to i16
  %ssthresh.i = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 38
  %20 = ptrtoint ptr %ssthresh.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv4.i, ptr %ssthresh.i, align 8
  %max_win6.i = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 39
  %21 = ptrtoint ptr %max_win6.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv4.i, ptr %max_win6.i, align 2
  %window.i = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 36
  %22 = ptrtoint ptr %window.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv2.i, ptr %window.i, align 4
  %conv8.i = shl i16 %conv2.i, 1
  %limit.i = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 28, i32 0, i32 1
  %23 = ptrtoint ptr %limit.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv8.i, ptr %limit.i, align 2
  %conv10.i = shl i16 %conv2.i, 2
  %limit13.i = getelementptr %struct.tipc_link, ptr %call7.i.i, i32 0, i32 28, i32 1, i32 1
  %24 = ptrtoint ptr %limit13.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv10.i, ptr %limit13.i, align 2
  %conv15.i = mul i16 %conv2.i, 6
  %limit18.i = getelementptr %struct.tipc_link, ptr %call7.i.i, i32 0, i32 28, i32 2, i32 1
  %25 = ptrtoint ptr %limit18.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv15.i, ptr %limit18.i, align 2
  %conv20.i = shl i16 %conv2.i, 3
  %limit23.i = getelementptr %struct.tipc_link, ptr %call7.i.i, i32 0, i32 28, i32 3, i32 1
  %26 = ptrtoint ptr %limit23.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv20.i, ptr %limit23.i, align 2
  %limit27.i = getelementptr %struct.tipc_link, ptr %call7.i.i, i32 0, i32 28, i32 4, i32 1
  %27 = ptrtoint ptr %limit27.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %18, ptr %limit27.i, align 2
  %ackers = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 44
  %28 = ptrtoint ptr %ackers to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %ackers, align 8
  %bc_sndlink44 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 49
  %29 = ptrtoint ptr %bc_sndlink44 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %bc_sndlink, ptr %bc_sndlink44, align 8
  %bc_rcvlink45 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 48
  %30 = ptrtoint ptr %bc_rcvlink45 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %bc_rcvlink, ptr %bc_rcvlink45, align 4
  %inputq46 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 33
  %31 = ptrtoint ptr %inputq46 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %inputq, ptr %inputq46, align 4
  %namedq47 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 34
  %32 = ptrtoint ptr %namedq47 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %namedq, ptr %namedq47, align 8
  %state = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 11
  %33 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8192, ptr %state, align 4
  %transmq = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 26
  %34 = ptrtoint ptr %transmq to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %transmq, ptr %transmq, align 4
  %prev.i = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 26, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %transmq, ptr %prev.i, align 8
  %qlen.i = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 26, i32 1
  %36 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %qlen.i, align 4
  %backlogq = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 27
  %37 = ptrtoint ptr %backlogq to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %backlogq, ptr %backlogq, align 4
  %prev.i86 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 27, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i86 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %backlogq, ptr %prev.i86, align 8
  %qlen.i87 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 27, i32 1
  %39 = ptrtoint ptr %qlen.i87 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %qlen.i87, align 4
  %deferdq = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 32
  %40 = ptrtoint ptr %deferdq to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %deferdq, ptr %deferdq, align 4
  %prev.i88 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 32, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i88 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %deferdq, ptr %prev.i88, align 8
  %qlen.i89 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 32, i32 1
  %42 = ptrtoint ptr %qlen.i89 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %qlen.i89, align 4
  %failover_deferdq = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 23
  %43 = ptrtoint ptr %failover_deferdq to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %failover_deferdq, ptr %failover_deferdq, align 8
  %prev.i90 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 23, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i90 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %failover_deferdq, ptr %prev.i90, align 4
  %qlen.i91 = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 23, i32 1
  %45 = ptrtoint ptr %qlen.i91 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %qlen.i91, align 8
  %wakeupq = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 35
  %lock.i = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 35, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #18
  %46 = ptrtoint ptr %wakeupq to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %wakeupq, ptr %wakeupq, align 4
  %prev.i.i = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 35, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %wakeupq, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.tipc_link, ptr %call7.i.i, i32 0, i32 35, i32 1
  %48 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %qlen.i.i, align 4
  %49 = ptrtoint ptr %inputq46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %inputq46, align 4
  %lock.i92 = getelementptr inbounds %struct.sk_buff_head, ptr %50, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i92, ptr noundef nonnull @.str.57, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #18
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %50, align 4
  %prev.i.i93 = getelementptr inbounds %struct.anon.90, ptr %50, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i93 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %prev.i.i93, align 4
  %qlen.i.i94 = getelementptr inbounds %struct.sk_buff_head, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %qlen.i.i94 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %qlen.i.i94, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %entry.cleanup_crit_edge
  %54 = xor i1 %tobool.not, true
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %self_str) #18
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %peer_str) #18
  ret i1 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_nodeid2string(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tipc_link_set_queue_limits(ptr nocapture noundef %l, i32 noundef %min_win, i32 noundef %max_win) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 24
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mtu, align 4
  %2 = udiv i16 %1, 20
  %3 = udiv i16 -1, %2
  %conv2 = trunc i32 %min_win to i16
  %min_win3 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 37
  %4 = ptrtoint ptr %min_win3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv2, ptr %min_win3, align 2
  %conv4 = trunc i32 %max_win to i16
  %ssthresh = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 38
  %5 = ptrtoint ptr %ssthresh to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv4, ptr %ssthresh, align 4
  %max_win6 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 39
  %6 = ptrtoint ptr %max_win6 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv4, ptr %max_win6, align 2
  %window = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 36
  %7 = ptrtoint ptr %window to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv2, ptr %window, align 4
  %conv8 = shl i16 %conv2, 1
  %limit = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 28, i32 0, i32 1
  %8 = ptrtoint ptr %limit to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv8, ptr %limit, align 2
  %conv10 = shl i16 %conv2, 2
  %limit13 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 1, i32 1
  %9 = ptrtoint ptr %limit13 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv10, ptr %limit13, align 2
  %conv15 = mul i16 %conv2, 6
  %limit18 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 2, i32 1
  %10 = ptrtoint ptr %limit18 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv15, ptr %limit18, align 2
  %conv20 = shl i16 %conv2, 3
  %limit23 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 3, i32 1
  %11 = ptrtoint ptr %limit23 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv20, ptr %limit23, align 2
  %limit27 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 4, i32 1
  %12 = ptrtoint ptr %limit27 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %3, ptr %limit27, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_link_bc_create(ptr noundef %net, i32 noundef %ownnode, i32 noundef %peer, ptr noundef %peer_id, i32 noundef %mtu, i32 noundef %min_win, i32 noundef %max_win, i16 noundef zeroext %peer_caps, ptr noundef %inputq, ptr noundef %namedq, ptr noundef %bc_sndlink, ptr nocapture noundef %link) local_unnamed_addr #2 align 64 {
entry:
  %peer_str = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @tipc_link_create(ptr noundef %net, ptr noundef nonnull @.str.4, i32 noundef 3, i32 noundef 0, i8 noundef zeroext 90, i32 noundef %mtu, i32 noundef 0, i32 noundef %min_win, i32 noundef %max_win, i32 noundef 0, i32 noundef %ownnode, i32 noundef %peer, ptr noundef null, i16 noundef zeroext %peer_caps, ptr noundef %bc_sndlink, ptr noundef null, ptr noundef %inputq, ptr noundef %namedq, ptr noundef %link)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %tobool.not = icmp eq ptr %peer_id, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %peer_str) #18
  %2 = call ptr @memset(ptr %peer_str, i32 0, i32 33)
  %call2 = call ptr @tipc_nodeid2string(ptr noundef nonnull %peer_str, ptr noundef nonnull %peer_id) #18
  %call4 = call i32 @strlen(ptr noundef nonnull %peer_str) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call4)
  %cmp = icmp ugt i32 %call4, 16
  br i1 %cmp, label %if.then5, label %if.then1.if.end8_crit_edge

if.then1.if.end8_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then5:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #20
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %peer_str, ptr noundef nonnull @.str.2, i32 noundef %peer)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then1.if.end8_crit_edge
  %name = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 1
  %call11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 68, ptr noundef nonnull @.str.5, ptr noundef nonnull @tipc_bclink_name, ptr noundef nonnull %peer_str)
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %peer_str) #18
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %name12 = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 1
  %call14 = tail call ptr @strcpy(ptr noundef %name12, ptr noundef nonnull @tipc_bclink_name) #22
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end8
  call fastcc void @trace_tipc_link_reset(ptr noundef %1, ptr noundef nonnull @.str.6)
  call void @tipc_link_reset(ptr noundef %1)
  %state = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 256, ptr %state, align 4
  %ackers = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %ackers to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %ackers, align 4
  %bc_rcvlink = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %bc_rcvlink to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %bc_rcvlink, align 4
  %bc_sndlink.i = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 49
  %6 = ptrtoint ptr %bc_sndlink.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bc_sndlink.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then17, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 14, ptr %state, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %9 = ptrtoint ptr %bc_rcvlink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bc_rcvlink, align 4
  %cmp.i = icmp eq ptr %10, %1
  br i1 %cmp.i, label %link_is_bc_rcvlink.exit, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

link_is_bc_rcvlink.exit:                          ; preds = %if.end19
  %11 = ptrtoint ptr %bc_sndlink.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bc_sndlink.i, align 4
  %tobool.not.i.i = icmp ne ptr %12, null
  %13 = and i16 %peer_caps, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool21.not = icmp eq i16 %13, 0
  %or.cond = and i1 %tobool21.not, %tobool.not.i.i
  br i1 %or.cond, label %if.then22, label %link_is_bc_rcvlink.exit.cleanup_crit_edge

link_is_bc_rcvlink.exit.cleanup_crit_edge:        ; preds = %link_is_bc_rcvlink.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then22:                                        ; preds = %link_is_bc_rcvlink.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void @tipc_bcast_toggle_rcast(ptr noundef %net, i1 noundef zeroext false) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %link_is_bc_rcvlink.exit.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_bcast_toggle_rcast(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_link_fsm_evt(ptr noundef %l, i32 noundef %evt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 8192, label %sw.bb
    i32 256, label %sw.bb7
    i32 851968, label %sw.bb16
    i32 15728640, label %sw.bb23
    i32 224, label %sw.bb30
    i32 14, label %sw.bb41
    i32 201326592, label %sw.bb55
  ]

sw.bb:                                            ; preds = %entry
  %3 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %evt, label %sw.bb.do.end78_crit_edge [
    i32 10415374, label %sw.bb2
    i32 281681166, label %sw.bb4
  ]

sw.bb.do.end78_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end78

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 851968, ptr %state, align 4
  br label %sw.epilog72

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %state, align 4
  br label %sw.epilog72

sw.bb7:                                           ; preds = %entry
  %6 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %evt, label %sw.bb7.do.end78_crit_edge [
    i32 10415374, label %sw.bb8
    i32 -99546130, label %sw.bb10
    i32 16388366, label %sw.bb7.sw.epilog72_crit_edge
    i32 281681166, label %sw.bb7.sw.epilog72_crit_edge129
    i32 247573278, label %sw.bb7.sw.epilog72_crit_edge130
    i32 -99545378, label %sw.bb7.sw.epilog72_crit_edge131
  ]

sw.bb7.sw.epilog72_crit_edge131:                  ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb7.sw.epilog72_crit_edge130:                  ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb7.sw.epilog72_crit_edge129:                  ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb7.sw.epilog72_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb7.do.end78_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end78

sw.bb8:                                           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 224, ptr %state, align 4
  br label %sw.epilog72

sw.bb10:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 15728640, ptr %state, align 4
  br label %sw.epilog72

sw.bb16:                                          ; preds = %entry
  %9 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %evt, label %sw.bb16.do.end78_crit_edge [
    i32 281681166, label %sw.bb17
    i32 10415374, label %sw.bb16.sw.epilog72_crit_edge
    i32 247573278, label %sw.bb16.sw.epilog72_crit_edge132
    i32 16388366, label %sw.bb16.sw.epilog72_crit_edge133
  ]

sw.bb16.sw.epilog72_crit_edge133:                 ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb16.sw.epilog72_crit_edge132:                 ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb16.sw.epilog72_crit_edge:                    ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb16.do.end78_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end78

sw.bb17:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 224, ptr %state, align 4
  br label %sw.epilog72

sw.bb23:                                          ; preds = %entry
  %11 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %evt, label %sw.bb23.do.end78_crit_edge [
    i32 -99545378, label %sw.bb24
    i32 10415374, label %sw.bb23.sw.epilog72_crit_edge
    i32 281681166, label %sw.bb23.sw.epilog72_crit_edge134
    i32 247573278, label %sw.bb23.sw.epilog72_crit_edge135
    i32 16388366, label %sw.bb23.sw.epilog72_crit_edge136
  ]

sw.bb23.sw.epilog72_crit_edge136:                 ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb23.sw.epilog72_crit_edge135:                 ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb23.sw.epilog72_crit_edge134:                 ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb23.sw.epilog72_crit_edge:                    ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb23.do.end78_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end78

sw.bb24:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 256, ptr %state, align 4
  br label %sw.epilog72

sw.bb30:                                          ; preds = %entry
  %13 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %evt, label %sw.bb30.do.end78_crit_edge [
    i32 247573278, label %sw.bb31
    i32 -99546130, label %sw.bb33
    i32 281681166, label %sw.bb35
    i32 16388366, label %sw.bb30.sw.epilog72_crit_edge
    i32 10415374, label %sw.bb30.sw.epilog72_crit_edge137
    i32 203213806, label %sw.bb30.sw.epilog72_crit_edge138
    i32 -99545378, label %sw.bb30.sw.epilog72_crit_edge139
  ]

sw.bb30.sw.epilog72_crit_edge139:                 ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb30.sw.epilog72_crit_edge138:                 ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb30.sw.epilog72_crit_edge137:                 ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb30.sw.epilog72_crit_edge:                    ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb30.do.end78_crit_edge:                       ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end78

sw.bb31:                                          ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 14, ptr %state, align 4
  br label %sw.epilog72

sw.bb33:                                          ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 15728640, ptr %state, align 4
  br label %sw.epilog72

sw.bb35:                                          ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 256, ptr %state, align 4
  br label %sw.epilog72

sw.bb41:                                          ; preds = %entry
  %17 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %evt, label %sw.bb41.do.end78_crit_edge [
    i32 10415374, label %sw.bb42
    i32 16388366, label %sw.bb44
    i32 281681166, label %sw.bb47
    i32 247573278, label %sw.bb41.sw.epilog72_crit_edge
    i32 203214558, label %sw.bb41.sw.epilog72_crit_edge140
    i32 203213806, label %sw.bb50
  ]

sw.bb41.sw.epilog72_crit_edge140:                 ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb41.sw.epilog72_crit_edge:                    ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb41.do.end78_crit_edge:                       ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end78

sw.bb42:                                          ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 851968, ptr %state, align 4
  br label %sw.epilog72

sw.bb44:                                          ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8192, ptr %state, align 4
  br label %sw.epilog72

sw.bb47:                                          ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 256, ptr %state, align 4
  br label %sw.epilog72

sw.bb50:                                          ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 201326592, ptr %state, align 4
  br label %sw.epilog72

sw.bb55:                                          ; preds = %entry
  %22 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %evt, label %sw.bb55.do.end78_crit_edge [
    i32 10415374, label %sw.bb56
    i32 16388366, label %sw.bb59
    i32 281681166, label %sw.bb62
    i32 247573278, label %sw.bb55.sw.epilog72_crit_edge
    i32 203213806, label %sw.bb55.sw.epilog72_crit_edge141
    i32 203214558, label %sw.bb65
  ]

sw.bb55.sw.epilog72_crit_edge141:                 ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb55.sw.epilog72_crit_edge:                    ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72

sw.bb55.do.end78_crit_edge:                       ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end78

sw.bb56:                                          ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 851968, ptr %state, align 4
  br label %sw.epilog72

sw.bb59:                                          ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #20
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8192, ptr %state, align 4
  br label %sw.epilog72

sw.bb62:                                          ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #20
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 256, ptr %state, align 4
  br label %sw.epilog72

sw.bb65:                                          ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 14, ptr %state, align 4
  br label %sw.epilog72

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %name = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %1, ptr noundef %name) #23
  br label %sw.epilog72

sw.epilog72:                                      ; preds = %do.end, %sw.bb65, %sw.bb62, %sw.bb59, %sw.bb56, %sw.bb55.sw.epilog72_crit_edge, %sw.bb55.sw.epilog72_crit_edge141, %sw.bb50, %sw.bb47, %sw.bb44, %sw.bb42, %sw.bb41.sw.epilog72_crit_edge, %sw.bb41.sw.epilog72_crit_edge140, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb30.sw.epilog72_crit_edge, %sw.bb30.sw.epilog72_crit_edge137, %sw.bb30.sw.epilog72_crit_edge138, %sw.bb30.sw.epilog72_crit_edge139, %sw.bb24, %sw.bb23.sw.epilog72_crit_edge, %sw.bb23.sw.epilog72_crit_edge134, %sw.bb23.sw.epilog72_crit_edge135, %sw.bb23.sw.epilog72_crit_edge136, %sw.bb17, %sw.bb16.sw.epilog72_crit_edge, %sw.bb16.sw.epilog72_crit_edge132, %sw.bb16.sw.epilog72_crit_edge133, %sw.bb10, %sw.bb8, %sw.bb7.sw.epilog72_crit_edge, %sw.bb7.sw.epilog72_crit_edge129, %sw.bb7.sw.epilog72_crit_edge130, %sw.bb7.sw.epilog72_crit_edge131, %sw.bb4, %sw.bb2
  %rc.0 = phi i32 [ 0, %do.end ], [ 0, %sw.bb65 ], [ 0, %sw.bb55.sw.epilog72_crit_edge ], [ 0, %sw.bb55.sw.epilog72_crit_edge141 ], [ 0, %sw.bb62 ], [ 2, %sw.bb59 ], [ 2, %sw.bb56 ], [ 0, %sw.bb50 ], [ 0, %sw.bb41.sw.epilog72_crit_edge ], [ 0, %sw.bb41.sw.epilog72_crit_edge140 ], [ 0, %sw.bb47 ], [ 2, %sw.bb44 ], [ 2, %sw.bb42 ], [ 0, %sw.bb30.sw.epilog72_crit_edge ], [ 0, %sw.bb30.sw.epilog72_crit_edge137 ], [ 0, %sw.bb30.sw.epilog72_crit_edge138 ], [ 0, %sw.bb30.sw.epilog72_crit_edge139 ], [ 0, %sw.bb35 ], [ 0, %sw.bb33 ], [ 0, %sw.bb31 ], [ 0, %sw.bb23.sw.epilog72_crit_edge ], [ 0, %sw.bb23.sw.epilog72_crit_edge134 ], [ 0, %sw.bb23.sw.epilog72_crit_edge135 ], [ 0, %sw.bb23.sw.epilog72_crit_edge136 ], [ 0, %sw.bb24 ], [ 0, %sw.bb16.sw.epilog72_crit_edge ], [ 0, %sw.bb16.sw.epilog72_crit_edge132 ], [ 0, %sw.bb16.sw.epilog72_crit_edge133 ], [ 0, %sw.bb17 ], [ 0, %sw.bb7.sw.epilog72_crit_edge ], [ 0, %sw.bb7.sw.epilog72_crit_edge129 ], [ 0, %sw.bb7.sw.epilog72_crit_edge130 ], [ 0, %sw.bb7.sw.epilog72_crit_edge131 ], [ 0, %sw.bb10 ], [ 0, %sw.bb8 ], [ 0, %sw.bb4 ], [ 0, %sw.bb2 ]
  %name73 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 1
  br label %cleanup

do.end78:                                         ; preds = %sw.bb55.do.end78_crit_edge, %sw.bb41.do.end78_crit_edge, %sw.bb30.do.end78_crit_edge, %sw.bb23.do.end78_crit_edge, %sw.bb16.do.end78_crit_edge, %sw.bb7.do.end78_crit_edge, %sw.bb.do.end78_crit_edge
  %name81 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 1
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %evt, i32 noundef %1, ptr noundef %name81) #23
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %sw.epilog72
  %name81.sink = phi ptr [ %name81, %do.end78 ], [ %name73, %sw.epilog72 ]
  %retval.0 = phi i32 [ 0, %do.end78 ], [ %rc.0, %sw.epilog72 ]
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state, align 4
  tail call fastcc void @trace_tipc_link_fsm(ptr noundef %name81.sink, i32 noundef %1, i32 noundef %28, i32 noundef %evt)
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_link_fsm(ptr noundef %name, i32 noundef %os, i32 noundef %ns, i32 noundef %evt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_fsm, i32 0, i32 1), ptr blockaddress(@trace_tipc_link_fsm, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !248
  %call42 = tail call i32 @__traceiter_tipc_link_fsm(ptr noundef null, ptr noundef %name, i32 noundef %os, i32 noundef %ns, i32 noundef %evt) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !249
  %13 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !242

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !246
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_fsm, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_fsm, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tipc_link_fsm.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_tipc_link_fsm.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 392, ptr noundef nonnull @.str.51) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !247
  %31 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tipc_link_too_silent(ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %silent_intv_cnt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 15
  %0 = ptrtoint ptr %silent_intv_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %silent_intv_cnt, align 4
  %add = add i32 %1, 2
  %abort_limit = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 10
  %2 = ptrtoint ptr %abort_limit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %abort_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ugt i32 %add, %3
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_link_timeout(ptr noundef %l, ptr noundef %xmitq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_sndlink = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 49
  %0 = ptrtoint ptr %bc_sndlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_sndlink, align 4
  %snd_nxt = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %snd_nxt, align 4
  %sub = add i16 %3, -1
  %bc_rcvlink = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 48
  %4 = ptrtoint ptr %bc_rcvlink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bc_rcvlink, align 4
  %acked = getelementptr inbounds %struct.tipc_link, ptr %5, i32 0, i32 45
  %6 = ptrtoint ptr %acked to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %acked, align 2
  tail call fastcc void @trace_tipc_link_timeout(ptr noundef %l)
  tail call fastcc void @trace_tipc_link_too_silent(ptr noundef %l)
  %state2 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %8 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state2, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %9, label %entry.cleanup_crit_edge [
    i32 14, label %entry.sw.bb_crit_edge
    i32 201326592, label %entry.sw.bb_crit_edge164
    i32 256, label %sw.bb65
    i32 224, label %entry.if.then91_crit_edge
  ]

entry.if.then91_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then91

entry.sw.bb_crit_edge164:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge164
  %mon_state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 19
  %transmq.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26
  %qlen.i.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26, i32 1
  %11 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen.i.i, align 4
  %accu_queue_sz.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 22
  %13 = ptrtoint ptr %accu_queue_sz.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %accu_queue_sz.i, align 4
  %add.i = add i32 %14, %12
  store i32 %add.i, ptr %accu_queue_sz.i, align 4
  %queue_sz_counts.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 23
  %15 = ptrtoint ptr %queue_sz_counts.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %queue_sz_counts.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %queue_sz_counts.i, align 4
  %17 = ptrtoint ptr %transmq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transmq.i, align 4
  %cmp.i.i = icmp eq ptr %18, %transmq.i
  %tobool.not95.i = icmp eq ptr %18, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not95.i
  br i1 %tobool.not.i, label %sw.bb.link_profile_stats.exit_crit_edge, label %if.end.i

sw.bb.link_profile_stats.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %link_profile_stats.exit

if.end.i:                                         ; preds = %sw.bb
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %23 = and i32 %22, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %23)
  %cmp.i = icmp eq i32 %23, 402653184
  br i1 %cmp.i, label %if.then7.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.end.i
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %25)
  %cmp9.not.i = icmp ult i32 %25, 536870912
  br i1 %cmp9.not.i, label %if.end11.i, label %if.then7.i.link_profile_stats.exit_crit_edge

if.then7.i.link_profile_stats.exit_crit_edge:     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %link_profile_stats.exit

if.end11.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #20
  %26 = lshr i32 %22, 19
  %shl.i.i.i.i = and i32 %26, 60
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 %shl.i.i.i.i
  %27 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end11.i, %if.end.i.if.end14.i_crit_edge
  %length.0.in.i = phi i32 [ %28, %if.end11.i ], [ %22, %if.end.i.if.end14.i_crit_edge ]
  %length.0.i = and i32 %length.0.in.i, 131071
  %msg_lengths_total.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 25
  %29 = ptrtoint ptr %msg_lengths_total.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_lengths_total.i, align 4
  %add16.i = add i32 %30, %length.0.i
  store i32 %add16.i, ptr %msg_lengths_total.i, align 4
  %msg_length_counts.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 24
  %31 = ptrtoint ptr %msg_length_counts.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_length_counts.i, align 4
  %inc18.i = add i32 %32, 1
  store i32 %inc18.i, ptr %msg_length_counts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %length.0.i)
  %cmp19.i = icmp ult i32 %length.0.i, 65
  br i1 %cmp19.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #20
  %msg_length_profile.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 26
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %length.0.i)
  %cmp23.i = icmp ult i32 %length.0.i, 257
  br i1 %cmp23.i, label %if.then24.i, label %if.else29.i

if.then24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx27.i = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 52, i32 26, i32 1
  br label %cleanup.sink.split.i

if.else29.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %length.0.i)
  %cmp30.i = icmp ult i32 %length.0.i, 1025
  br i1 %cmp30.i, label %if.then31.i, label %if.else36.i

if.then31.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx34.i = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 52, i32 26, i32 2
  br label %cleanup.sink.split.i

if.else36.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %length.0.i)
  %cmp37.i = icmp ult i32 %length.0.i, 4097
  br i1 %cmp37.i, label %if.then38.i, label %if.else43.i

if.then38.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx41.i = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 52, i32 26, i32 3
  br label %cleanup.sink.split.i

if.else43.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %length.0.i)
  %cmp44.i = icmp ult i32 %length.0.i, 16385
  br i1 %cmp44.i, label %if.then45.i, label %if.else50.i

if.then45.i:                                      ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx48.i = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 52, i32 26, i32 4
  br label %cleanup.sink.split.i

if.else50.i:                                      ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %length.0.i)
  %cmp51.i = icmp ult i32 %length.0.i, 32769
  br i1 %cmp51.i, label %if.then52.i, label %if.else57.i

if.then52.i:                                      ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx55.i = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 52, i32 26, i32 5
  br label %cleanup.sink.split.i

if.else57.i:                                      ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx60.i = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 52, i32 26, i32 6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else57.i, %if.then52.i, %if.then45.i, %if.then38.i, %if.then31.i, %if.then24.i, %if.then20.i
  %msg_length_profile.sink96.i = phi ptr [ %msg_length_profile.i, %if.then20.i ], [ %arrayidx34.i, %if.then31.i ], [ %arrayidx48.i, %if.then45.i ], [ %arrayidx60.i, %if.else57.i ], [ %arrayidx55.i, %if.then52.i ], [ %arrayidx41.i, %if.then38.i ], [ %arrayidx27.i, %if.then24.i ]
  %33 = ptrtoint ptr %msg_length_profile.sink96.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_length_profile.sink96.i, align 4
  %inc22.i = add i32 %34, 1
  store i32 %inc22.i, ptr %msg_length_profile.sink96.i, align 4
  br label %link_profile_stats.exit

link_profile_stats.exit:                          ; preds = %cleanup.sink.split.i, %if.then7.i.link_profile_stats.exit_crit_edge, %sw.bb.link_profile_stats.exit_crit_edge
  %net = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 2
  %35 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net, align 4
  %37 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %l, align 4
  %bearer_id = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 8
  %39 = ptrtoint ptr %bearer_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bearer_id, align 4
  tail call void @tipc_mon_get_state(ptr noundef %36, i32 noundef %38, ptr noundef %mon_state, i32 noundef %40) #18
  %reset = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 19, i32 3
  %41 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %reset, align 2
  %42 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %bf.cast.not = icmp eq i8 %42, 0
  br i1 %bf.cast.not, label %lor.lhs.false, label %link_profile_stats.exit.if.then_crit_edge

link_profile_stats.exit.if.then_crit_edge:        ; preds = %link_profile_stats.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false:                                    ; preds = %link_profile_stats.exit
  %silent_intv_cnt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 15
  %43 = ptrtoint ptr %silent_intv_cnt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %silent_intv_cnt, align 4
  %abort_limit = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 10
  %45 = ptrtoint ptr %abort_limit to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %abort_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp = icmp ugt i32 %44, %46
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %link_profile_stats.exit.if.then_crit_edge
  %47 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state2, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %48, label %do.end.i [
    i32 8192, label %sw.bb.i
    i32 256, label %if.then.sw.epilog72.i_crit_edge
    i32 851968, label %if.then.sw.epilog72.i_crit_edge165
    i32 15728640, label %if.then.sw.epilog72.i_crit_edge166
    i32 224, label %if.then.sw.epilog72.i_crit_edge167
    i32 14, label %sw.bb41.i
    i32 201326592, label %sw.bb55.i
  ]

if.then.sw.epilog72.i_crit_edge167:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72.i

if.then.sw.epilog72.i_crit_edge166:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72.i

if.then.sw.epilog72.i_crit_edge165:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72.i

if.then.sw.epilog72.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog72.i

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %name81.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 1
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 16388366, i32 noundef 8192, ptr noundef %name81.i) #23
  br label %tipc_link_fsm_evt.exit

sw.bb41.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %50 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 8192, ptr %state2, align 4
  br label %sw.epilog72.i

sw.bb55.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %51 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8192, ptr %state2, align 4
  br label %sw.epilog72.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %name.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %48, ptr noundef %name.i) #23
  br label %sw.epilog72.i

sw.epilog72.i:                                    ; preds = %do.end.i, %sw.bb55.i, %sw.bb41.i, %if.then.sw.epilog72.i_crit_edge, %if.then.sw.epilog72.i_crit_edge165, %if.then.sw.epilog72.i_crit_edge166, %if.then.sw.epilog72.i_crit_edge167
  %rc.0.i = phi i32 [ 0, %do.end.i ], [ 2, %sw.bb55.i ], [ 2, %sw.bb41.i ], [ 0, %if.then.sw.epilog72.i_crit_edge ], [ 0, %if.then.sw.epilog72.i_crit_edge165 ], [ 0, %if.then.sw.epilog72.i_crit_edge166 ], [ 0, %if.then.sw.epilog72.i_crit_edge167 ]
  %name73.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 1
  br label %tipc_link_fsm_evt.exit

tipc_link_fsm_evt.exit:                           ; preds = %sw.epilog72.i, %sw.bb.i
  %name81.sink.i = phi ptr [ %name81.i, %sw.bb.i ], [ %name73.i, %sw.epilog72.i ]
  %retval.0.i = phi i32 [ 0, %sw.bb.i ], [ %rc.0.i, %sw.epilog72.i ]
  %52 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %state2, align 4
  tail call fastcc void @trace_tipc_link_fsm(ptr noundef %name81.sink.i, i32 noundef %48, i32 noundef %53, i32 noundef 16388366) #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %sub)
  %cmp7 = icmp ne i16 %7, %sub
  %54 = ptrtoint ptr %bc_rcvlink to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bc_rcvlink, align 4
  %rcv_unacked = getelementptr inbounds %struct.tipc_link, ptr %55, i32 0, i32 31
  %56 = ptrtoint ptr %rcv_unacked to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rcv_unacked, align 4
  %conv10 = zext i1 %cmp7 to i32
  %or = or i32 %57, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool11 = icmp ne i32 %or, 0
  %rcv_unacked13 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 31
  %58 = ptrtoint ptr %rcv_unacked13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rcv_unacked13, align 4
  %conv15 = zext i1 %tobool11 to i32
  %or16 = or i32 %59, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or16)
  %tobool17 = icmp ne i32 %or16, 0
  %60 = ptrtoint ptr %transmq.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %transmq.i, align 4
  %cmp.i142 = icmp ne ptr %61, %transmq.i
  %or23139 = or i1 %cmp.i142, %tobool17
  %62 = lshr i8 %bf.load, 6
  %.lobit = and i8 %62, 1
  %63 = zext i8 %.lobit to i32
  %or34 = or i32 %44, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or34)
  %tobool35 = icmp ne i32 %or34, 0
  %tobool35.not = xor i1 %tobool35, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast42.not = icmp sgt i8 %bf.load, -1
  %or.cond = select i1 %tobool35.not, i1 %bf.cast42.not, i1 false
  br i1 %or.cond, label %if.end.if.end46_crit_edge, label %if.then44

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

if.then44:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %inc = add i32 %44, 1
  %64 = ptrtoint ptr %silent_intv_cnt to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %inc, ptr %silent_intv_cnt, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end.if.end46_crit_edge
  %snd_nxt56 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 29
  %65 = ptrtoint ptr %snd_nxt56 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %snd_nxt56, align 4
  %checkpoint = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 41
  %67 = ptrtoint ptr %checkpoint to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %checkpoint, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %66, i16 %68)
  %cmp59 = icmp eq i16 %66, %68
  br i1 %cmp59, label %sw.epilog.thread161, label %sw.epilog

sw.epilog.thread161:                              ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  %window.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 36
  %69 = ptrtoint ptr %window.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %window.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 601, i16 %70)
  %cmp44.i148 = icmp ugt i16 %70, 601
  %71 = lshr i16 %70, 1
  %cond51.i = select i1 %cmp44.i148, i16 %71, i16 300
  %ssthresh53.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 38
  %72 = ptrtoint ptr %ssthresh53.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %cond51.i, ptr %ssthresh53.i, align 4
  %min_win.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 37
  %73 = ptrtoint ptr %min_win.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %min_win.i, align 2
  %75 = ptrtoint ptr %window.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %window.i, align 4
  %76 = ptrtoint ptr %checkpoint to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %66, ptr %checkpoint, align 2
  br label %if.then91

sw.bb65:                                          ; preds = %entry
  %rst_cnt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 20
  %77 = ptrtoint ptr %rst_cnt to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %rst_cnt, align 2
  %inc66 = add i16 %78, 1
  store i16 %inc66, ptr %rst_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %78)
  %cmp68 = icmp ult i16 %78, 5
  %79 = and i16 %inc66, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool73.not = icmp eq i16 %79, 0
  %or78138 = or i1 %cmp68, %tobool73.not
  br i1 %or78138, label %sw.bb65.if.then91_crit_edge, label %sw.bb65.cleanup_crit_edge

sw.bb65.cleanup_crit_edge:                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb65.if.then91_crit_edge:                      ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then91

sw.epilog:                                        ; preds = %if.end46
  %deferdq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32
  %80 = ptrtoint ptr %deferdq to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %deferdq, align 4
  %cmp.i143 = icmp ne ptr %81, %deferdq
  %or53140 = or i1 %tobool35, %cmp.i143
  %82 = ptrtoint ptr %checkpoint to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %66, ptr %checkpoint, align 2
  %phi.sel = select i1 %or23139, i1 true, i1 %or53140
  br i1 %phi.sel, label %sw.epilog.if.then91_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.epilog.if.then91_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then91

if.then91:                                        ; preds = %sw.epilog.if.then91_crit_edge, %sw.bb65.if.then91_crit_edge, %sw.epilog.thread161, %entry.if.then91_crit_edge
  %probe.1.off0156 = phi i1 [ %or53140, %sw.epilog.if.then91_crit_edge ], [ false, %entry.if.then91_crit_edge ], [ false, %sw.bb65.if.then91_crit_edge ], [ true, %sw.epilog.thread161 ]
  %mtyp.0155 = phi i32 [ 0, %sw.epilog.if.then91_crit_edge ], [ 2, %entry.if.then91_crit_edge ], [ 1, %sw.bb65.if.then91_crit_edge ], [ 0, %sw.epilog.thread161 ]
  tail call fastcc void @tipc_link_build_proto_msg(ptr noundef %l, i32 noundef %mtyp.0155, i1 noundef zeroext %probe.1.off0156, i1 noundef zeroext false, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, ptr noundef %xmitq)
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %sw.epilog.cleanup_crit_edge, %sw.bb65.cleanup_crit_edge, %tipc_link_fsm_evt.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %tipc_link_fsm_evt.exit ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then91 ], [ 0, %sw.bb65.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_link_timeout(ptr noundef %l) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_timeout, i32 0, i32 1), ptr blockaddress(@trace_tipc_link_timeout, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !250
  %call42 = tail call i32 @__traceiter_tipc_link_timeout(ptr noundef null, ptr noundef %l, i16 noundef zeroext 0, ptr noundef nonnull @.str.13) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !251
  %13 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !242

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !246
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_timeout, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_timeout, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_link_timeout.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_tipc_link_timeout.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 272, ptr noundef nonnull @.str.51) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !247
  %31 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_link_too_silent(ptr noundef %l) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_too_silent, i32 0, i32 1), ptr blockaddress(@trace_tipc_link_too_silent, %do.body)) #18
          to label %if.end49 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end73_crit_edge, label %land.lhs.true

cpu_online.exit.if.end73_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end73

land.lhs.true:                                    ; preds = %cpu_online.exit
  %silent_intv_cnt.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 15
  %9 = ptrtoint ptr %silent_intv_cnt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %silent_intv_cnt.i, align 4
  %add.i5 = add i32 %10, 2
  %abort_limit.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 10
  %11 = ptrtoint ptr %abort_limit.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %abort_limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i5, i32 %12)
  %cmp.i = icmp ugt i32 %add.i5, %12
  br i1 %cmp.i, label %cleanup, label %land.lhs.true.if.end73_crit_edge

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end73

cleanup:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %13 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %16, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !252
  %call43 = tail call i32 @__traceiter_tipc_link_too_silent(ptr noundef null, ptr noundef %l, i16 noundef zeroext -1, ptr noundef nonnull @.str.13) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !253
  %17 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i2 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup, %entry
  %21 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i6 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i6 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %24)
  %cmp.not.i.i.i.i7 = icmp ugt i32 %25, %24
  br i1 %cmp.not.i.i.i.i7, label %if.end49.cpu_online.exit15_crit_edge, label %land.rhs.i.i.i.i9

if.end49.cpu_online.exit15_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit15

land.rhs.i.i.i.i9:                                ; preds = %if.end49
  %.b37.i.i.i.i8 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i8, label %land.rhs.i.i.i.i9.cpu_online.exit15_crit_edge, label %if.then.i.i.i.i10, !prof !242

land.rhs.i.i.i.i9.cpu_online.exit15_crit_edge:    ; preds = %land.rhs.i.i.i.i9
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit15

if.then.i.i.i.i10:                                ; preds = %land.rhs.i.i.i.i9
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit15

cpu_online.exit15:                                ; preds = %if.then.i.i.i.i10, %land.rhs.i.i.i.i9.cpu_online.exit15_crit_edge, %if.end49.cpu_online.exit15_crit_edge
  %div1.i.i.i11 = lshr i32 %24, 5
  %arrayidx.i.i.i12 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i11
  %26 = ptrtoint ptr %arrayidx.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i.i12, align 4
  %and.i.i.i13 = and i32 %24, 31
  %28 = shl nuw i32 1, %and.i.i.i13
  %29 = and i32 %27, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i14.not = icmp eq i32 %29, 0
  br i1 %tobool.i14.not, label %cpu_online.exit15.if.end73_crit_edge, label %land.lhs.true53

cpu_online.exit15.if.end73_crit_edge:             ; preds = %cpu_online.exit15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end73

land.lhs.true53:                                  ; preds = %cpu_online.exit15
  %silent_intv_cnt.i16 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 15
  %30 = ptrtoint ptr %silent_intv_cnt.i16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %silent_intv_cnt.i16, align 4
  %add.i17 = add i32 %31, 2
  %abort_limit.i18 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 10
  %32 = ptrtoint ptr %abort_limit.i18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %abort_limit.i18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i17, i32 %33)
  %cmp.i19 = icmp ugt i32 %add.i17, %33
  br i1 %cmp.i19, label %if.then55, label %land.lhs.true53.if.end73_crit_edge

land.lhs.true53.if.end73_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end73

if.then55:                                        ; preds = %land.lhs.true53
  %34 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %37, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !246
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_too_silent, i32 0, i32 7) to i32))
  %38 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_too_silent, i32 0, i32 7), align 4
  %call61 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true63, label %if.then55.do.end71_crit_edge

if.then55.do.end71_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end71

land.lhs.true63:                                  ; preds = %if.then55
  %call64 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true63.do.end71_crit_edge, label %land.lhs.true66

land.lhs.true63.do.end71_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end71

land.lhs.true66:                                  ; preds = %land.lhs.true63
  %.b1 = load i1, ptr @trace_tipc_link_too_silent.__warned, align 1
  br i1 %.b1, label %land.lhs.true66.do.end71_crit_edge, label %if.then68

land.lhs.true66.do.end71_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end71

if.then68:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_tipc_link_too_silent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 280, ptr noundef nonnull @.str.51) #18
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %land.lhs.true66.do.end71_crit_edge, %land.lhs.true63.do.end71_crit_edge, %if.then55.do.end71_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !247
  %39 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i20 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i20 to ptr
  %preempt_count.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i21, align 4
  %sub.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i21, align 4
  br label %if.end73

if.end73:                                         ; preds = %do.end71, %land.lhs.true53.if.end73_crit_edge, %cpu_online.exit15.if.end73_crit_edge, %land.lhs.true.if.end73_crit_edge, %cpu_online.exit.if.end73_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_mon_get_state(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @tipc_link_update_cwin(ptr noundef %l, i32 noundef %released, i1 noundef zeroext %retransmitted) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 27, i32 1
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  %transmq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26
  %qlen.i160 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26, i32 1
  %2 = ptrtoint ptr %qlen.i160 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i160, align 4
  %window = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 36
  %4 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %window, align 4
  br i1 %retransmitted, label %if.then, label %if.end, !prof !254

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp2(i16 601, i16 %5)
  %cmp = icmp ugt i16 %5, 601
  %6 = lshr i16 %5, 1
  %cond = select i1 %cmp, i16 %6, i16 300
  %ssthresh = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 38
  %7 = ptrtoint ptr %ssthresh to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %cond, ptr %ssthresh, align 4
  %8 = tail call i16 @llvm.umin.i16(i16 %cond, i16 %5)
  %9 = ptrtoint ptr %window to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %window, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %released)
  %tobool27.not = icmp eq i32 %released, 0
  br i1 %tobool27.not, label %if.then36, label %if.end55, !prof !254

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp2(i16 601, i16 %5)
  %cmp44 = icmp ugt i16 %5, 601
  %10 = lshr i16 %5, 1
  %cond51 = select i1 %cmp44, i16 %10, i16 300
  %ssthresh53 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 38
  %11 = ptrtoint ptr %ssthresh53 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %cond51, ptr %ssthresh53, align 4
  %min_win = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 37
  %12 = ptrtoint ptr %min_win to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %min_win, align 2
  %14 = ptrtoint ptr %window to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %window, align 4
  br label %cleanup

if.end55:                                         ; preds = %if.end
  %add = add i32 %3, %1
  %conv56 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv56)
  %cmp57 = icmp slt i32 %add, %conv56
  br i1 %cmp57, label %if.end55.cleanup_crit_edge, label %if.end60

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end60:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool61.not = icmp eq i32 %3, 0
  br i1 %tobool61.not, label %if.end60.if.end69_crit_edge, label %land.lhs.true

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

land.lhs.true:                                    ; preds = %if.end60
  %snd_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 29
  %15 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %snd_nxt, align 4
  %conv62 = zext i16 %16 to i32
  %17 = ptrtoint ptr %transmq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transmq, align 4
  %cmp.i = icmp eq ptr %18, %transmq
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %18
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %conv65 = and i32 %22, 65535
  %sub = sub nsw i32 %conv62, %conv65
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %3)
  %cmp66.not = icmp eq i32 %sub, %3
  br i1 %cmp66.not, label %land.lhs.true.if.end69_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.end69:                                         ; preds = %land.lhs.true.if.end69_crit_edge, %if.end60.if.end69_crit_edge
  %cong_acks = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 40
  %23 = ptrtoint ptr %cong_acks to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %cong_acks, align 4
  %25 = trunc i32 %released to i16
  %conv72 = add i16 %24, %25
  store i16 %conv72, ptr %cong_acks, align 4
  %ssthresh74 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 38
  %26 = ptrtoint ptr %ssthresh74 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ssthresh74, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %27)
  %cmp76.not = icmp ugt i16 %5, %27
  br i1 %cmp76.not, label %if.end95, label %if.then78

if.then78:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #20
  %conv81 = add i16 %5, %25
  %max_win = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 39
  %28 = ptrtoint ptr %max_win to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %max_win, align 2
  %30 = tail call i16 @llvm.umin.i16(i16 %conv81, i16 %29)
  %31 = ptrtoint ptr %window to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %window, align 4
  br label %cleanup

if.end95:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_cmp2(i16 %conv72, i16 %5)
  %cmp99 = icmp ult i16 %conv72, %5
  br i1 %cmp99, label %if.end95.cleanup_crit_edge, label %if.end102

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end102:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #20
  %inc = add i16 %5, 1
  %max_win103 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 39
  %32 = ptrtoint ptr %max_win103 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %max_win103, align 2
  %34 = tail call i16 @llvm.umin.i16(i16 %inc, i16 %33)
  %35 = ptrtoint ptr %window to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %window, align 4
  %36 = ptrtoint ptr %cong_acks to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %cong_acks, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.end95.cleanup_crit_edge, %if.then78, %land.lhs.true.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.then36, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_link_build_proto_msg(ptr noundef %l, i32 noundef %mtyp, i1 noundef zeroext %probe, i1 noundef zeroext %probe_reply, i16 noundef zeroext %rcvgap, i32 noundef %tolerance, i32 noundef %priority, ptr noundef %xmitq) unnamed_addr #2 align 64 {
entry:
  %dlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mon_state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 19
  %deferdq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32
  %bc_rcvlink = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 48
  %0 = ptrtoint ptr %bc_rcvlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_rcvlink, align 4
  %state.i = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  %and.i = and i32 %3, 201326606
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dlen) #18
  %4 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dlen, align 4
  %state.i186 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %5 = ptrtoint ptr %state.i186 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i186, align 4
  %and.i187 = and i32 %6, 16588800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i187)
  %tobool.i.not = icmp eq i32 %and.i187, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i.i = and i32 %6, 201326606
  %7 = or i32 %and.i.i, %mtyp
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %brmerge = or i1 %probe, %probe_reply
  br i1 %brmerge, label %land.lhs.true9, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

land.lhs.true9:                                   ; preds = %if.end6
  %9 = ptrtoint ptr %deferdq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %deferdq, align 4
  %cmp.i = icmp eq ptr %10, %deferdq
  br i1 %cmp.i, label %land.lhs.true9.if.end17_crit_edge, label %if.then12

land.lhs.true9.if.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #20
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %conv.i.i = trunc i32 %14 to i16
  %rcv_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %15 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rcv_nxt, align 2
  %sub = sub i16 %conv.i.i, %16
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %land.lhs.true9.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  %rcvgap.addr.0 = phi i16 [ %rcvgap, %land.lhs.true9.if.end17_crit_edge ], [ %sub, %if.then12 ], [ %rcvgap, %if.end6.if.end17_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_max_domain_size to i32))
  %17 = load i32, ptr @tipc_max_domain_size, align 4
  %add = add i32 %17, 516
  %18 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %l, align 4
  %net = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 2
  %20 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net, align 4
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %21) #18
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node_addr.i, align 4
  %call19 = tail call ptr @tipc_msg_create(i32 noundef 7, i32 noundef %mtyp, i32 noundef 40, i32 noundef %add, i32 noundef %19, i32 noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 19
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = lshr i32 %27, 19
  %shl.i.i = and i32 %28, 60
  %add.ptr.i = getelementptr i8, ptr %25, i32 %shl.i.i
  %session = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 4
  %29 = ptrtoint ptr %session to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %session, align 2
  %conv.i190 = zext i16 %30 to i32
  %shl.i.i191 = shl nuw i32 %conv.i190, 16
  %arrayidx.i.i = getelementptr [15 x i32], ptr %25, i32 0, i32 5
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  %and2.i.i = and i32 %32, 65535
  %or.i.i = or i32 %and2.i.i, %shl.i.i191
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %bearer_id = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 8
  %33 = ptrtoint ptr %bearer_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bearer_id, align 4
  %and.i.i192 = shl i32 %34, 9
  %shl.i.i193 = and i32 %and.i.i192, 3584
  %and2.i.i195 = and i32 %or.i.i, -3585
  %or.i.i196 = or i32 %shl.i.i193, %and2.i.i195
  store i32 %or.i.i196, ptr %arrayidx.i.i, align 4
  %net_plane = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 18
  %35 = ptrtoint ptr %net_plane to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %net_plane, align 4
  %37 = shl i8 %36, 1
  %38 = add i8 %37, 14
  %39 = and i8 %38, 14
  %shl.i.i197 = zext i8 %39 to i32
  %and2.i.i199 = and i32 %or.i.i196, -15
  %or.i.i200 = or i32 %and2.i.i199, %shl.i.i197
  store i32 %or.i.i200, ptr %arrayidx.i.i, align 4
  %snd_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 29
  %40 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %snd_nxt, align 4
  %conv.i201 = zext i16 %41 to i32
  %arrayidx.i.i202 = getelementptr [15 x i32], ptr %25, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx.i.i202 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i202, align 4
  %and2.i.i203 = and i32 %43, -65536
  %or.i.i204 = or i32 %and2.i.i203, %conv.i201
  store i32 %or.i.i204, ptr %arrayidx.i.i202, align 4
  %rcv_nxt25 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %44 = ptrtoint ptr %rcv_nxt25 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %rcv_nxt25, align 2
  %sub27 = add i16 %45, -1
  %conv.i205 = zext i16 %sub27 to i32
  %shl.i.i206 = shl nuw i32 %conv.i205, 16
  %arrayidx.i.i207 = getelementptr [15 x i32], ptr %25, i32 0, i32 2
  %46 = ptrtoint ptr %arrayidx.i.i207 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i207, align 4
  %and2.i.i208 = and i32 %47, 65535
  %or.i.i209 = or i32 %shl.i.i206, %and2.i.i208
  store i32 %or.i.i209, ptr %arrayidx.i.i207, align 4
  %rcv_nxt29 = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 30
  %48 = ptrtoint ptr %rcv_nxt29 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %rcv_nxt29, align 2
  %sub31 = add i16 %49, -1
  %conv.i210 = zext i16 %sub31 to i32
  %arrayidx.i.i211 = getelementptr [15 x i32], ptr %25, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx.i.i211 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i211, align 4
  %and2.i.i212 = and i32 %51, -65536
  %or.i.i213 = or i32 %and2.i.i212, %conv.i210
  store i32 %or.i.i213, ptr %arrayidx.i.i211, align 4
  %shl.i.i214 = select i1 %tobool.not, i32 16384, i32 0
  %and2.i.i216 = and i32 %or.i.i200, -16385
  %or.i.i217 = or i32 %and2.i.i216, %shl.i.i214
  store i32 %or.i.i217, ptr %arrayidx.i.i, align 4
  %bc_sndlink = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 49
  %52 = ptrtoint ptr %bc_sndlink to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bc_sndlink, align 4
  %snd_nxt34 = getelementptr inbounds %struct.tipc_link, ptr %53, i32 0, i32 29
  %54 = ptrtoint ptr %snd_nxt34 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %snd_nxt34, align 4
  %conv35 = zext i16 %55 to i32
  %sub36 = shl nuw i32 %conv35, 16
  %and.i.i218 = add i32 %sub36, -65536
  %or.i.i221 = or i32 %and.i.i218, %conv.i201
  store i32 %or.i.i221, ptr %arrayidx.i.i202, align 4
  %and.i.i222 = and i32 %tolerance, 65535
  %arrayidx.i.i223 = getelementptr [15 x i32], ptr %25, i32 0, i32 9
  %56 = ptrtoint ptr %arrayidx.i.i223 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i223, align 4
  %and2.i.i224 = and i32 %57, -65536
  %or.i.i225 = or i32 %and2.i.i224, %and.i.i222
  store i32 %or.i.i225, ptr %arrayidx.i.i223, align 4
  %and.i.i226 = shl i32 %priority, 4
  %shl.i.i227 = and i32 %and.i.i226, 496
  %and2.i.i229 = and i32 %or.i.i217, -4593
  %and.i.i231 = select i1 %tobool.not, i32 0, i32 4096
  %or.i.i230 = or i32 %and.i.i231, %shl.i.i227
  %or.i.i235 = or i32 %or.i.i230, %and2.i.i229
  store i32 %or.i.i235, ptr %arrayidx.i.i, align 4
  %and2.i.i237 = and i32 %or.i.i213, -536805377
  store i32 %and2.i.i237, ptr %arrayidx.i.i211, align 4
  %58 = load i16, ptr %snd_nxt, align 4
  %add41 = add i16 %58, 32767
  %conv.i238 = zext i16 %add41 to i32
  %or.i.i241 = or i32 %shl.i.i206, %conv.i238
  store i32 %or.i.i241, ptr %arrayidx.i.i207, align 4
  %59 = zext i32 %mtyp to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %mtyp, label %if.end22.if.end79_crit_edge [
    i32 0, label %if.then45
    i32 2, label %if.then78
  ]

if.end22.if.end79_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end79

if.then45:                                        ; preds = %if.end22
  %peer_caps = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 12
  %60 = ptrtoint ptr %peer_caps to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %peer_caps, align 4
  %62 = and i16 %61, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool47.not = icmp eq i16 %62, 0
  br i1 %tobool47.not, label %if.then45.if.end49_crit_edge, label %if.then48

if.then45.if.end49_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #20
  %snd_nxt_state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 5
  %63 = ptrtoint ptr %snd_nxt_state to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %snd_nxt_state, align 4
  %inc = add i16 %64, 1
  store i16 %inc, ptr %snd_nxt_state, align 4
  %conv.i242 = zext i16 %64 to i32
  %65 = ptrtoint ptr %arrayidx.i.i207 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i207, align 4
  %and2.i.i244 = and i32 %66, -65536
  %or.i.i245 = or i32 %and2.i.i244, %conv.i242
  store i32 %or.i.i245, ptr %arrayidx.i.i207, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then45.if.end49_crit_edge
  %conv50 = zext i16 %rcvgap.addr.0 to i32
  %and.i.i246 = shl nuw i32 %conv50, 16
  %shl.i.i247 = and i32 %and.i.i246, 536805376
  %67 = ptrtoint ptr %arrayidx.i.i211 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i211, align 4
  %and2.i.i249 = and i32 %68, -536805377
  %or.i.i250 = or i32 %and2.i.i249, %shl.i.i247
  store i32 %or.i.i250, ptr %arrayidx.i.i211, align 4
  %deferdq.i = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 32
  %69 = ptrtoint ptr %deferdq.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %deferdq.i, align 4
  %cmp.i.i = icmp eq ptr %70, %deferdq.i
  %snd_nxt.i = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 29
  %71 = ptrtoint ptr %snd_nxt.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %snd_nxt.i, align 4
  %73 = ptrtoint ptr %rcv_nxt29 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %rcv_nxt29, align 2
  %75 = sub i16 %74, %72
  %sub.i = sub i16 %72, %74
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool.not.inv.i = icmp slt i16 %75, 0
  %spec.select.i = select i1 %tobool.not.inv.i, i16 %sub.i, i16 0
  %tobool6.not21.i = icmp eq ptr %70, null
  %tobool6.not.i = or i1 %cmp.i.i, %tobool6.not21.i
  br i1 %tobool6.not.i, label %if.end49.link_bc_rcv_gap.exit_crit_edge, label %if.then7.i

if.end49.link_bc_rcv_gap.exit_crit_edge:          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %link_bc_rcv_gap.exit

if.then7.i:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 19
  %76 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [15 x i32], ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %conv.i.i.i = trunc i32 %79 to i16
  %sub12.i = sub i16 %conv.i.i.i, %74
  br label %link_bc_rcv_gap.exit

link_bc_rcv_gap.exit:                             ; preds = %if.then7.i, %if.end49.link_bc_rcv_gap.exit_crit_edge
  %gap.1.i = phi i16 [ %sub12.i, %if.then7.i ], [ %spec.select.i, %if.end49.link_bc_rcv_gap.exit_crit_edge ]
  %80 = and i16 %gap.1.i, 1023
  %and.i.i251 = zext i16 %80 to i32
  %arrayidx.i.i252 = getelementptr [15 x i32], ptr %25, i32 0, i32 8
  %81 = ptrtoint ptr %arrayidx.i.i252 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i252, align 4
  %and2.i.i253 = and i32 %82, -1024
  %or.i.i254 = or i32 %and2.i.i253, %and.i.i251
  store i32 %or.i.i254, ptr %arrayidx.i.i252, align 4
  %conv54 = zext i1 %probe to i32
  %83 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i.i, align 4
  %and2.i.i257 = and i32 %84, -2
  %or.i.i258 = or i32 %and2.i.i257, %conv54
  store i32 %or.i.i258, ptr %arrayidx.i.i, align 4
  %and.i.i259 = select i1 %brmerge, i32 524288, i32 0
  %85 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %25, align 4
  %and2.i.i261 = and i32 %86, -524289
  %or.i.i262 = or i32 %and2.i.i261, %and.i.i259
  store i32 %or.i.i262, ptr %25, align 4
  %87 = ptrtoint ptr %peer_caps to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %peer_caps, align 4
  %89 = and i16 %88, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool62.not = icmp eq i16 %89, 0
  br i1 %tobool62.not, label %link_bc_rcv_gap.exit.if.end65_crit_edge, label %if.then63

link_bc_rcv_gap.exit.if.end65_crit_edge:          ; preds = %link_bc_rcv_gap.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end65

if.then63:                                        ; preds = %link_bc_rcv_gap.exit
  %90 = ptrtoint ptr %bc_rcvlink to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bc_rcvlink, align 4
  %92 = lshr i32 %86, 19
  %shl.i.i.i = and i32 %92, 60
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %shl.i.i.i
  %net.i = getelementptr inbounds %struct.tipc_link, ptr %91, i32 0, i32 2
  %93 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %net.i, align 4
  %call.i.i = tail call fastcc ptr @tipc_net(ptr noundef %94) #18
  %bclock.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %bclock.i.i) #18
  %rcv_nxt.i263 = getelementptr inbounds %struct.tipc_link, ptr %91, i32 0, i32 30
  %95 = ptrtoint ptr %rcv_nxt.i263 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %rcv_nxt.i263, align 2
  %sub.i264 = add i16 %96, -1
  %conv.i.i265 = zext i16 %sub.i264 to i32
  %97 = ptrtoint ptr %arrayidx.i.i211 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i.i211, align 4
  %and2.i.i.i = and i32 %98, -65536
  %or.i.i.i = or i32 %and2.i.i.i, %conv.i.i265
  store i32 %or.i.i.i, ptr %arrayidx.i.i211, align 4
  %deferdq.i.i = getelementptr inbounds %struct.tipc_link, ptr %91, i32 0, i32 32
  %99 = ptrtoint ptr %deferdq.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %deferdq.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %100, %deferdq.i.i
  %snd_nxt.i.i = getelementptr inbounds %struct.tipc_link, ptr %91, i32 0, i32 29
  %101 = ptrtoint ptr %snd_nxt.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %snd_nxt.i.i, align 4
  %103 = load i16, ptr %rcv_nxt.i263, align 2
  %104 = sub i16 %103, %102
  %sub.i.i = sub i16 %102, %103
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool.not.inv.i.i = icmp slt i16 %104, 0
  %spec.select.i.i = select i1 %tobool.not.inv.i.i, i16 %sub.i.i, i16 0
  %tobool6.not21.i.i = icmp eq ptr %100, null
  %tobool6.not.i.i = or i1 %cmp.i.i.i, %tobool6.not21.i.i
  br i1 %tobool6.not.i.i, label %if.then63.link_bc_rcv_gap.exit.i_crit_edge, label %if.then7.i.i

if.then63.link_bc_rcv_gap.exit.i_crit_edge:       ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #20
  br label %link_bc_rcv_gap.exit.i

if.then7.i.i:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #20
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %100, i32 0, i32 19
  %105 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i.i = getelementptr [15 x i32], ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i.i.i.i.i.i, align 4
  %conv.i.i.i.i = trunc i32 %108 to i16
  %sub12.i.i = sub i16 %conv.i.i.i.i, %103
  br label %link_bc_rcv_gap.exit.i

link_bc_rcv_gap.exit.i:                           ; preds = %if.then7.i.i, %if.then63.link_bc_rcv_gap.exit.i_crit_edge
  %gap.1.i.i = phi i16 [ %sub12.i.i, %if.then7.i.i ], [ %spec.select.i.i, %if.then63.link_bc_rcv_gap.exit.i_crit_edge ]
  %109 = and i16 %gap.1.i.i, 1023
  %and.i.i.i = zext i16 %109 to i32
  %110 = ptrtoint ptr %arrayidx.i.i252 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i.i252, align 4
  %and2.i.i34.i = and i32 %111, -1024
  %or.i.i35.i = or i32 %and2.i.i34.i, %and.i.i.i
  store i32 %or.i.i35.i, ptr %arrayidx.i.i252, align 4
  %call4.i = tail call fastcc zeroext i8 @__tipc_build_gap_ack_blks(ptr noundef %add.ptr.i.i, ptr noundef %91, i8 noundef zeroext 0) #18
  %bgack_cnt.i = getelementptr inbounds %struct.tipc_gap_ack_blks, ptr %add.ptr.i.i, i32 0, i32 2
  %112 = ptrtoint ptr %bgack_cnt.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %call4.i, ptr %bgack_cnt.i, align 1
  %113 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %net.i, align 4
  %call.i36.i = tail call fastcc ptr @tipc_net(ptr noundef %114) #18
  %bclock.i37.i = getelementptr inbounds %struct.tipc_net, ptr %call.i36.i, i32 0, i32 16
  tail call void @_raw_spin_unlock_bh(ptr noundef %bclock.i37.i) #18
  %115 = ptrtoint ptr %arrayidx.i.i211 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.i.i211, align 4
  %117 = and i32 %116, 536805376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.not.i = icmp eq i32 %117, 0
  br i1 %tobool.not.i, label %link_bc_rcv_gap.exit.i.tipc_build_gap_ack_blks.exit_crit_edge, label %cond.true.i

link_bc_rcv_gap.exit.i.tipc_build_gap_ack_blks.exit_crit_edge: ; preds = %link_bc_rcv_gap.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tipc_build_gap_ack_blks.exit

cond.true.i:                                      ; preds = %link_bc_rcv_gap.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %118 = ptrtoint ptr %bgack_cnt.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %bgack_cnt.i, align 1
  %call8.i = tail call fastcc zeroext i8 @__tipc_build_gap_ack_blks(ptr noundef %add.ptr.i.i, ptr noundef %l, i8 noundef zeroext %119) #18
  br label %tipc_build_gap_ack_blks.exit

tipc_build_gap_ack_blks.exit:                     ; preds = %cond.true.i, %link_bc_rcv_gap.exit.i.tipc_build_gap_ack_blks.exit_crit_edge
  %cond.i = phi i8 [ %call8.i, %cond.true.i ], [ 0, %link_bc_rcv_gap.exit.i.tipc_build_gap_ack_blks.exit_crit_edge ]
  %120 = getelementptr inbounds %struct.tipc_gap_ack_blks, ptr %add.ptr.i.i, i32 0, i32 1
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %cond.i, ptr %120, align 2
  %122 = ptrtoint ptr %bgack_cnt.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %bgack_cnt.i, align 1
  %conv12.i = zext i8 %123 to i16
  %conv13.i = zext i8 %cond.i to i16
  %add.i = add nuw nsw i16 %conv12.i, %conv13.i
  %124 = shl nuw nsw i16 %add.i, 2
  %spec.select.i3940.i = add nuw nsw i16 %124, 4
  %125 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %spec.select.i3940.i, ptr %add.ptr.i.i, align 2
  %phi.cast185 = zext i16 %spec.select.i3940.i to i32
  br label %if.end65

if.end65:                                         ; preds = %tipc_build_gap_ack_blks.exit, %link_bc_rcv_gap.exit.if.end65_crit_edge
  %glen.0 = phi i32 [ %phi.cast185, %tipc_build_gap_ack_blks.exit ], [ 0, %link_bc_rcv_gap.exit.if.end65_crit_edge ]
  %126 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %net, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %glen.0
  %128 = ptrtoint ptr %bearer_id to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bearer_id, align 4
  call void @tipc_mon_prep(ptr noundef %127, ptr noundef %add.ptr, ptr noundef nonnull %dlen, ptr noundef %mon_state, i32 noundef %129) #18
  %add70 = add nuw nsw i32 %glen.0, 40
  %130 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %dlen, align 4
  %add71 = add i32 %131, %add70
  %132 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %25, align 4
  %and.i266 = and i32 %133, -131072
  %or.i = or i32 %and.i266, %add71
  store i32 %or.i, ptr %25, align 4
  %134 = load i32, ptr %dlen, align 4
  %add74 = add i32 %134, %add70
  call void @skb_trim(ptr noundef nonnull %call19, i32 noundef %add74) #18
  %sent_states = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 2
  %135 = ptrtoint ptr %sent_states to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sent_states, align 4
  %inc75 = add i32 %136, 1
  store i32 %inc75, ptr %sent_states, align 4
  %rcv_unacked = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 31
  %137 = ptrtoint ptr %rcv_unacked to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %rcv_unacked, align 4
  br label %if.end82

if.then78:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  %or.i.i268 = or i32 %and2.i.i237, 65536
  %138 = ptrtoint ptr %arrayidx.i.i211 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %or.i.i268, ptr %arrayidx.i.i211, align 4
  %peer_session = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 3
  %139 = ptrtoint ptr %peer_session to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %peer_session, align 4
  %conv.i269 = zext i16 %140 to i32
  %and2.i.i271 = and i32 %or.i.i268, -536805376
  %or.i.i272 = or i32 %and2.i.i271, %conv.i269
  store i32 %or.i.i272, ptr %arrayidx.i.i211, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end22.if.end79_crit_edge
  %advertised_mtu = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 25
  %141 = ptrtoint ptr %advertised_mtu to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %advertised_mtu, align 2
  %conv80 = zext i16 %142 to i32
  %143 = shl nuw nsw i32 %conv80, 14
  %and.i.i273 = and i32 %143, 1073676288
  %144 = ptrtoint ptr %arrayidx.i.i223 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.i.i223, align 4
  %and2.i.i275 = and i32 %145, 65535
  %or.i.i276 = or i32 %and.i.i273, %and2.i.i275
  store i32 %or.i.i276, ptr %arrayidx.i.i223, align 4
  %if_name = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 16
  %call81 = tail call ptr @strcpy(ptr noundef %add.ptr.i, ptr noundef %if_name) #22
  %146 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %25, align 4
  %and.i277 = and i32 %147, -131072
  %or.i278 = or i32 %and.i277, 56
  store i32 %or.i278, ptr %25, align 4
  tail call void @skb_trim(ptr noundef nonnull %call19, i32 noundef 56) #18
  br label %if.end82

if.end82:                                         ; preds = %if.end79, %if.end65
  %bc_rcvgap.0 = phi i16 [ %gap.1.i, %if.end65 ], [ 0, %if.end79 ]
  br i1 %probe, label %if.then84, label %if.end82.if.end87_crit_edge

if.end82.if.end87_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end87

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  %sent_probes = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 4
  %148 = ptrtoint ptr %sent_probes to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %sent_probes, align 4
  %inc86 = add i32 %149, 1
  store i32 %inc86, ptr %sent_probes, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end82.if.end87_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rcvgap.addr.0)
  %tobool88.not = icmp eq i16 %rcvgap.addr.0, 0
  br i1 %tobool88.not, label %if.end87.if.end92_crit_edge, label %if.then89

if.end87.if.end92_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end92

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #20
  %sent_nacks = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 6
  %150 = ptrtoint ptr %sent_nacks to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sent_nacks, align 4
  %inc91 = add i32 %151, 1
  store i32 %inc91, ptr %sent_nacks, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.end87.if.end92_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bc_rcvgap.0)
  %tobool93.not = icmp eq i16 %bc_rcvgap.0, 0
  br i1 %tobool93.not, label %if.end92.if.end98_crit_edge, label %if.then94

if.end92.if.end98_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end98

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #20
  %sent_nacks96 = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 52, i32 6
  %152 = ptrtoint ptr %sent_nacks96 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %sent_nacks96, align 4
  %inc97 = add i32 %153, 1
  store i32 %inc97, ptr %sent_nacks96, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %if.end92.if.end98_crit_edge
  %priority99 = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 15, i32 0, i32 6
  %154 = ptrtoint ptr %priority99 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 7, ptr %priority99, align 4
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %xmitq, i32 0, i32 1
  %155 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %prev.i.i, align 4
  %157 = ptrtoint ptr %call19 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %xmitq, ptr %call19, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %call19, i32 0, i32 1
  %158 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %156, ptr %prev10.i.i.i, align 4
  store volatile ptr %call19, ptr %prev.i.i, align 4
  %159 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %call19, ptr %156, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %160 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %161, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %name = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 1
  call fastcc void @trace_tipc_proto_build(ptr noundef nonnull %call19, ptr noundef %name)
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tipc_link_reset_stats(ptr nocapture noundef writeonly %l) local_unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52
  %0 = call ptr @memset(ptr %stats, i32 0, i32 132)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_link_xmit(ptr noundef %l, ptr noundef %list, ptr noundef %xmitq) local_unnamed_addr #2 align 64 {
entry:
  %skb = alloca ptr, align 4
  %new_bundle = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %backlogq1 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 27
  %transmq2 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #18
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !255
  %bc_rcvlink = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 48
  %1 = ptrtoint ptr %bc_rcvlink to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bc_rcvlink, align 4
  %rcv_nxt = getelementptr inbounds %struct.tipc_link, ptr %2, i32 0, i32 30
  %3 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rcv_nxt, align 2
  %sub = add i16 %4, -1
  %rcv_nxt4 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %5 = ptrtoint ptr %rcv_nxt4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rcv_nxt4, align 2
  %sub6 = add i16 %6, -1
  %snd_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 29
  %7 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %snd_nxt, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %9 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i, align 4
  %mtu.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 24
  %11 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mtu.i, align 4
  %conv.i = zext i16 %12 to i32
  %sub1.i = add nsw i32 %conv.i, -72
  %window = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 36
  %13 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %window, align 4
  %conv9 = zext i16 %14 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_bundle) #18
  %15 = ptrtoint ptr %new_bundle to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %new_bundle, align 1, !annotation !255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp slt i32 %10, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %list, align 4
  %cmp.i = icmp eq ptr %17, %list
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %17
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and.i.i = and i32 %21, 131071
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %conv.i)
  %cmp16 = icmp ugt i32 %and.i.i, %conv.i
  %shr.i.i = lshr i32 %21, 25
  %and.i.i189 = and i32 %shr.i.i, 15
  br i1 %cmp16, label %do.end, label %if.end25, !prof !254

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i190 = lshr i32 %23, 29
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %10, i32 noundef %and.i.i189, i32 noundef %shr.i.i190, i32 noundef %and.i.i, i32 noundef %conv.i) #23
  tail call fastcc void @__skb_queue_purge(ptr noundef %list)
  br label %cleanup

if.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i.i189)
  %cmp.i192 = icmp ult i32 %and.i.i189, 4
  br i1 %cmp.i192, label %land.rhs.i, label %if.end25.if.end.i_crit_edge, !prof !242

if.end25.if.end.i_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end25
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %26 = and i32 %25, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %land.rhs.i.msg_importance.exit_crit_edge, label %land.rhs.i.if.end.i_crit_edge, !prof !242

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.rhs.i.msg_importance.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %msg_importance.exit

if.end.i:                                         ; preds = %land.rhs.i.if.end.i_crit_edge, %if.end25.if.end.i_crit_edge
  %27 = zext i32 %and.i.i189 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %and.i.i189, label %msg_importance.exit.thread [
    i32 12, label %if.end.i.if.then7.i_crit_edge
    i32 6, label %if.end.i.if.then7.i_crit_edge278
  ]

if.end.i.if.then7.i_crit_edge278:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7.i

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i.if.then7.i_crit_edge, %if.end.i.if.then7.i_crit_edge278
  %arrayidx.i.i.i193 = getelementptr [15 x i32], ptr %19, i32 0, i32 9
  %28 = ptrtoint ptr %arrayidx.i.i.i193 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i193, align 4
  %and.i.i194 = and i32 %29, 7
  br label %msg_importance.exit

msg_importance.exit:                              ; preds = %if.then7.i, %land.rhs.i.msg_importance.exit_crit_edge
  %retval.0.i = phi i32 [ %and.i.i194, %if.then7.i ], [ %and.i.i189, %land.rhs.i.msg_importance.exit_crit_edge ]
  %arrayidx = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 %retval.0.i
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx, align 4
  %limit = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 %retval.0.i, i32 1
  %32 = ptrtoint ptr %limit to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %limit, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp31.not = icmp ult i16 %31, %33
  br i1 %cmp31.not, label %msg_importance.exit.if.end50_crit_edge, label %if.then39, !prof !242

msg_importance.exit.if.end50_crit_edge:           ; preds = %msg_importance.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end50

msg_importance.exit.thread:                       ; preds = %if.end.i
  %arrayidx226 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 4
  %34 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx226, align 4
  %limit227 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 4, i32 1
  %36 = ptrtoint ptr %limit227 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %limit227, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp31.not228 = icmp ult i16 %35, %37
  br i1 %cmp31.not228, label %msg_importance.exit.thread.if.end50_crit_edge, label %msg_importance.exit.thread.do.end45_crit_edge, !prof !242

msg_importance.exit.thread.do.end45_crit_edge:    ; preds = %msg_importance.exit.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end45

msg_importance.exit.thread.if.end50_crit_edge:    ; preds = %msg_importance.exit.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end50

if.then39:                                        ; preds = %msg_importance.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i)
  %cmp40 = icmp eq i32 %retval.0.i, 4
  br i1 %cmp40, label %if.then39.do.end45_crit_edge, label %if.end48

if.then39.do.end45_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end45

do.end45:                                         ; preds = %if.then39.do.end45_crit_edge, %msg_importance.exit.thread.do.end45_crit_edge
  %name = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 1
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.58, ptr noundef %name) #23
  br label %cleanup

if.end48:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #20
  %call49 = tail call fastcc i32 @link_schedule_user(ptr noundef %l, ptr noundef %19)
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %msg_importance.exit.thread.if.end50_crit_edge, %msg_importance.exit.if.end50_crit_edge
  %arrayidx232 = phi ptr [ %arrayidx, %if.end48 ], [ %arrayidx, %msg_importance.exit.if.end50_crit_edge ], [ %arrayidx226, %msg_importance.exit.thread.if.end50_crit_edge ]
  %retval.0.i230 = phi i32 [ %retval.0.i, %if.end48 ], [ %retval.0.i, %msg_importance.exit.if.end50_crit_edge ], [ 4, %msg_importance.exit.thread.if.end50_crit_edge ]
  %rc.0 = phi i32 [ %call49, %if.end48 ], [ 0, %msg_importance.exit.if.end50_crit_edge ], [ 0, %msg_importance.exit.thread.if.end50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp51 = icmp ugt i32 %10, 1
  br i1 %cmp51, label %if.then53, label %if.end50.if.end55_crit_edge

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  %sent_fragmented = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 14
  %38 = ptrtoint ptr %sent_fragmented to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sent_fragmented, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %sent_fragmented, align 4
  %sent_fragments = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 15
  %40 = ptrtoint ptr %sent_fragments to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sent_fragments, align 4
  %add = add i32 %41, %10
  store i32 %add, ptr %sent_fragments, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end50.if.end55_crit_edge
  %42 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %list, align 4
  %cmp.i.i238245 = icmp eq ptr %43, %list
  %tobool.not.i195240247257 = icmp eq ptr %43, null
  %tobool.not.i195240247 = or i1 %cmp.i.i238245, %tobool.not.i195240247257
  br i1 %tobool.not.i195240247, label %if.end55.while.end_crit_edge, label %while.body.lr.ph.lr.ph

if.end55.while.end_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %if.end55
  %qlen.i197 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26, i32 1
  %target_bskb = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 %retval.0.i230, i32 2
  %prev.i.i218 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 27, i32 0, i32 0, i32 1
  %qlen.i.i.i220 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 27, i32 1
  %prev2.i.i = getelementptr inbounds %struct.anon.90, ptr %list, i32 0, i32 1
  %sent_bundles = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 10
  %sent_bundled = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 9
  %conv.i200 = zext i16 %sub6 to i32
  %shl.i.i = shl nuw i32 %conv.i200, 16
  %conv.i204 = zext i16 %sub to i32
  %prev.i.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26, i32 0, i32 0, i32 1
  %prev.i.i209 = getelementptr inbounds %struct.sk_buff_list, ptr %xmitq, i32 0, i32 1
  %qlen.i.i.i211 = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %ackers = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 44
  %rcv_unacked = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 31
  %stats75 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end72.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %spec.store.select.i.i239249 = phi ptr [ %43, %while.body.lr.ph.lr.ph ], [ %103, %if.end72.while.body.lr.ph_crit_edge ]
  %seqno.0.ph248 = phi i16 [ %8, %while.body.lr.ph.lr.ph ], [ %inc77, %if.end72.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %spec.store.select.i.i241 = phi ptr [ %spec.store.select.i.i239249, %while.body.lr.ph ], [ %129, %while.cond.backedge.while.body_crit_edge ]
  %44 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %46 = ptrtoint ptr %spec.store.select.i.i241 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %spec.store.select.i.i241, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.83, ptr %spec.store.select.i.i241, i32 0, i32 1
  %48 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i241, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.83, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %49, ptr %prev17.i.i, align 4
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %47, ptr %49, align 8
  %52 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %spec.store.select.i.i241, ptr %skb, align 4
  %53 = ptrtoint ptr %qlen.i197 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %qlen.i197, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %conv9)
  %cmp59 = icmp ult i32 %54, %conv9
  br i1 %cmp59, label %if.then67, label %if.end78, !prof !242

if.then67:                                        ; preds = %while.body
  %data.i198 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i241, i32 0, i32 19
  %55 = ptrtoint ptr %data.i198 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i198, align 4
  %conv.i199 = zext i16 %seqno.0.ph248 to i32
  %arrayidx.i.i = getelementptr [15 x i32], ptr %56, i32 0, i32 2
  %or.i.i203 = or i32 %shl.i.i, %conv.i199
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or.i.i203, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i205 = getelementptr [15 x i32], ptr %56, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx.i.i205 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i205, align 4
  %and2.i.i206 = and i32 %59, -65536
  %or.i.i207 = or i32 %and2.i.i206, %conv.i204
  store i32 %or.i.i207, ptr %arrayidx.i.i205, align 4
  %60 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %skb, align 4
  %call69 = call ptr @skb_clone(ptr noundef %61, i32 noundef 2592) #18
  %tobool70.not = icmp eq ptr %call69, null
  %62 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skb, align 4
  br i1 %tobool70.not, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.then67
  call void @kfree_skb_reason(ptr noundef %63, i32 noundef 0) #18
  %64 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %list, align 4
  %cmp.i.i2.i = icmp eq ptr %65, %list
  %tobool.not.i13.i = icmp eq ptr %65, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %if.then71.cleanup_crit_edge, label %if.then71.while.body.i_crit_edge

if.then71.while.body.i_crit_edge:                 ; preds = %if.then71
  br label %while.body.i

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then71.while.body.i_crit_edge
  %66 = phi ptr [ %76, %while.body.i.while.body.i_crit_edge ], [ %65, %if.then71.while.body.i_crit_edge ]
  %67 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %qlen.i, align 4
  %sub.i.i.i = add i32 %68, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i, align 4
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %66, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.83, ptr %66, i32 0, i32 1
  %71 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %66, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.83, ptr %70, i32 0, i32 1
  %73 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %72, ptr %prev17.i.i.i, align 4
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %70, ptr %72, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %66, i32 noundef 0) #18
  %75 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %list, align 4
  %cmp.i.i.i = icmp eq ptr %76, %list
  %tobool.not.i1.i = icmp eq ptr %76, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end72:                                         ; preds = %if.then67
  %77 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i, align 4
  %79 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %transmq2, ptr %63, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %63, i32 0, i32 1
  %80 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %prev10.i.i.i, align 4
  store volatile ptr %63, ptr %prev.i.i, align 4
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %63, ptr %78, align 4
  %82 = ptrtoint ptr %qlen.i197 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %qlen.i197, align 4
  %add.i.i.i = add i32 %83, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i197, align 4
  %84 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %skb, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %add3.sink.in.i = load volatile i32, ptr @jiffies, align 128
  %add3.sink.i = add i32 %add3.sink.in.i, 1
  %86 = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 3, i32 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add3.sink.i, ptr %86, align 4
  %88 = ptrtoint ptr %prev.i.i209 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i.i209, align 4
  %90 = ptrtoint ptr %call69 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %xmitq, ptr %call69, align 8
  %prev10.i.i.i210 = getelementptr inbounds %struct.anon.83, ptr %call69, i32 0, i32 1
  %91 = ptrtoint ptr %prev10.i.i.i210 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %prev10.i.i.i210, align 4
  store volatile ptr %call69, ptr %prev.i.i209, align 4
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %call69, ptr %89, align 4
  %93 = ptrtoint ptr %qlen.i.i.i211 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %qlen.i.i.i211, align 4
  %add.i.i.i212 = add i32 %94, 1
  store volatile i32 %add.i.i.i212, ptr %qlen.i.i.i211, align 4
  %95 = ptrtoint ptr %ackers to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %ackers, align 4
  %97 = load ptr, ptr %skb, align 4
  %ackers74 = getelementptr inbounds %struct.sk_buff, ptr %97, i32 0, i32 3, i32 22
  %98 = ptrtoint ptr %ackers74 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %96, ptr %ackers74, align 2
  %99 = ptrtoint ptr %rcv_unacked to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %rcv_unacked, align 4
  %100 = ptrtoint ptr %stats75 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %stats75, align 4
  %inc76 = add i32 %101, 1
  store i32 %inc76, ptr %stats75, align 4
  %inc77 = add i16 %seqno.0.ph248, 1
  %102 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %list, align 4
  %cmp.i.i238 = icmp eq ptr %103, %list
  %tobool.not.i195240263 = icmp eq ptr %103, null
  %tobool.not.i195240 = or i1 %cmp.i.i238, %tobool.not.i195240263
  br i1 %tobool.not.i195240, label %if.end72.while.end_crit_edge, label %if.end72.while.body.lr.ph_crit_edge

if.end72.while.body.lr.ph_crit_edge:              ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.lr.ph

if.end72.while.end_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end78:                                         ; preds = %while.body
  %104 = ptrtoint ptr %target_bskb to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %target_bskb, align 4
  %106 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %l, align 4
  %call81 = call zeroext i1 @tipc_msg_try_bundle(ptr noundef %105, ptr noundef nonnull %skb, i32 noundef %sub1.i, i32 noundef %107, ptr noundef nonnull %new_bundle) #18
  br i1 %call81, label %if.then82, label %if.end103

if.then82:                                        ; preds = %if.end78
  %108 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %skb, align 4
  %tobool83.not = icmp eq ptr %109, null
  br i1 %tobool83.not, label %if.else, label %if.then84

if.then84:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #20
  %110 = ptrtoint ptr %target_bskb to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %109, ptr %target_bskb, align 4
  %111 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx232, align 4
  %inc91 = add i16 %112, 1
  store i16 %inc91, ptr %arrayidx232, align 4
  %113 = ptrtoint ptr %prev.i.i218 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %prev.i.i218, align 4
  %115 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %backlogq1, ptr %109, align 8
  %prev10.i.i.i214 = getelementptr inbounds %struct.anon.83, ptr %109, i32 0, i32 1
  %116 = ptrtoint ptr %prev10.i.i.i214 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %114, ptr %prev10.i.i.i214, align 4
  store volatile ptr %109, ptr %prev.i.i218, align 4
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %109, ptr %114, align 4
  %118 = ptrtoint ptr %qlen.i.i.i220 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %qlen.i.i.i220, align 4
  %add.i.i.i216 = add i32 %119, 1
  store volatile i32 %add.i.i.i216, ptr %qlen.i.i.i220, align 4
  br label %while.cond.backedge

if.else:                                          ; preds = %if.then82
  %120 = ptrtoint ptr %new_bundle to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %new_bundle, align 1, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool92.not = icmp eq i8 %121, 0
  br i1 %tobool92.not, label %if.else.if.end98_crit_edge, label %if.then93

if.else.if.end98_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end98

if.then93:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %122 = ptrtoint ptr %sent_bundles to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sent_bundles, align 4
  %inc95 = add i32 %123, 1
  store i32 %inc95, ptr %sent_bundles, align 4
  %124 = ptrtoint ptr %sent_bundled to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %sent_bundled, align 4
  %inc97 = add i32 %125, 1
  store i32 %inc97, ptr %sent_bundled, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %if.else.if.end98_crit_edge
  %126 = ptrtoint ptr %sent_bundled to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %sent_bundled, align 4
  %inc101 = add i32 %127, 1
  store i32 %inc101, ptr %sent_bundled, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then.i223, %if.end103.while.cond.backedge_crit_edge, %if.end98, %if.then84
  %128 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %129, %list
  %tobool.not.i195262 = icmp eq ptr %129, null
  %tobool.not.i195 = or i1 %cmp.i.i, %tobool.not.i195262
  br i1 %tobool.not.i195, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end103:                                        ; preds = %if.end78
  %130 = ptrtoint ptr %target_bskb to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %target_bskb, align 4
  %131 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %qlen.i, align 4
  %133 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx232, align 4
  %135 = trunc i32 %132 to i16
  %136 = add i16 %135, 1
  %conv114 = add i16 %136, %134
  store i16 %conv114, ptr %arrayidx232, align 4
  %137 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %skb, align 4
  %139 = ptrtoint ptr %prev.i.i218 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prev.i.i218, align 4
  %141 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %backlogq1, ptr %138, align 8
  %prev10.i.i.i219 = getelementptr inbounds %struct.anon.83, ptr %138, i32 0, i32 1
  %142 = ptrtoint ptr %prev10.i.i.i219 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %140, ptr %prev10.i.i.i219, align 4
  store volatile ptr %138, ptr %prev.i.i218, align 4
  %143 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %138, ptr %140, align 4
  %144 = ptrtoint ptr %qlen.i.i.i220 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %qlen.i.i.i220, align 4
  %add.i.i.i221 = add i32 %145, 1
  store volatile i32 %add.i.i.i221, ptr %qlen.i.i.i220, align 4
  %146 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %list, align 4
  %cmp.i.not.i = icmp eq ptr %147, %list
  br i1 %cmp.i.not.i, label %if.end103.while.cond.backedge_crit_edge, label %if.then.i223

if.end103.while.cond.backedge_crit_edge:          ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

if.then.i223:                                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #20
  %148 = ptrtoint ptr %prev.i.i218 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %prev.i.i218, align 4
  %150 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.83, ptr %147, i32 0, i32 1
  %152 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %149, ptr %prev5.i.i, align 4
  %153 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile ptr %147, ptr %149, align 8
  %154 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %backlogq1, ptr %151, align 8
  store volatile ptr %151, ptr %prev.i.i218, align 4
  %155 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %qlen.i, align 4
  %157 = ptrtoint ptr %qlen.i.i.i220 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %qlen.i.i.i220, align 4
  %add.i = add i32 %158, %156
  store i32 %add.i, ptr %qlen.i.i.i220, align 4
  %159 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %list, ptr %list, align 4
  store ptr %list, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.end72.while.end_crit_edge, %if.end55.while.end_crit_edge
  %seqno.0.ph.lcssa237 = phi i16 [ %8, %if.end55.while.end_crit_edge ], [ %seqno.0.ph248, %while.cond.backedge.while.end_crit_edge ], [ %inc77, %if.end72.while.end_crit_edge ]
  %160 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %seqno.0.ph.lcssa237, ptr %snd_nxt, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.i.cleanup_crit_edge, %if.then71.cleanup_crit_edge, %do.end45, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %do.end ], [ -105, %do.end45 ], [ %rc.0, %while.end ], [ 0, %entry.cleanup_crit_edge ], [ -105, %if.then71.cleanup_crit_edge ], [ -105, %while.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_bundle) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @link_schedule_user(ptr noundef %l, ptr nocapture noundef readonly %hdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 2
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %1) #18
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node_addr.i, align 4
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hdr, align 4
  %6 = and i32 %5, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %6)
  %cmp.i = icmp eq i32 %6, 402653184
  %7 = lshr i32 %5, 19
  %shl.i.i.i.i = and i32 %7, 60
  %m.addr.0.idx.i = select i1 %cmp.i, i32 %shl.i.i.i.i, i32 0
  %m.addr.0.i = getelementptr i8, ptr %hdr, i32 %m.addr.0.idx.i
  %arrayidx.i.i = getelementptr [15 x i32], ptr %m.addr.0.i, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %10 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %l, align 4
  %call2 = tail call ptr @tipc_msg_create(i32 noundef 14, i32 noundef 0, i32 noundef 40, i32 noundef 0, i32 noundef %3, i32 noundef %11, i32 noundef %9, i32 noundef 0, i32 noundef 0) #18
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %or.i.i = or i32 %15, 524288
  store i32 %or.i.i, ptr %13, align 4
  %16 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hdr, align 4
  %shr.i.i.i = lshr i32 %17, 25
  %and.i.i.i = and i32 %shr.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i.i.i)
  %cmp.i15 = icmp ult i32 %and.i.i.i, 4
  br i1 %cmp.i15, label %land.rhs.i, label %if.end.if.end.i_crit_edge, !prof !242

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %hdr, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %20 = and i32 %19, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %land.rhs.i.msg_importance.exit_crit_edge, label %land.rhs.i.if.end.i_crit_edge, !prof !242

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.rhs.i.msg_importance.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %msg_importance.exit

if.end.i:                                         ; preds = %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %21 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %and.i.i.i, label %if.end.i.msg_importance.exit_crit_edge [
    i32 12, label %if.end.i.if.then7.i_crit_edge
    i32 6, label %if.end.i.if.then7.i_crit_edge16
  ]

if.end.i.if.then7.i_crit_edge16:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7.i

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7.i

if.end.i.msg_importance.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %msg_importance.exit

if.then7.i:                                       ; preds = %if.end.i.if.then7.i_crit_edge, %if.end.i.if.then7.i_crit_edge16
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %hdr, i32 0, i32 9
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i = and i32 %23, 7
  br label %msg_importance.exit

msg_importance.exit:                              ; preds = %if.then7.i, %if.end.i.msg_importance.exit_crit_edge, %land.rhs.i.msg_importance.exit_crit_edge
  %retval.0.i = phi i32 [ %and.i.i, %if.then7.i ], [ %and.i.i.i, %land.rhs.i.msg_importance.exit_crit_edge ], [ 4, %if.end.i.msg_importance.exit_crit_edge ]
  %conv = trunc i32 %retval.0.i to i16
  %chain_imp = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 3, i32 20
  %24 = ptrtoint ptr %chain_imp to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %chain_imp, align 4
  %wakeupq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 35
  tail call void @skb_queue_tail(ptr noundef %wakeupq, ptr noundef nonnull %call2) #18
  %link_congs = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 18
  %25 = ptrtoint ptr %link_congs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %link_congs, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %link_congs, align 4
  tail call fastcc void @trace_tipc_link_conges(ptr noundef %l)
  br label %cleanup

cleanup:                                          ; preds = %msg_importance.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %msg_importance.exit ], [ -105, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_msg_try_bundle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @tipc_get_gap_ack_blks(ptr nocapture noundef writeonly %ga, ptr nocapture noundef readonly %l, ptr noundef %hdr, i1 noundef zeroext %uc) local_unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_caps = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 12
  %0 = ptrtoint ptr %peer_caps to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %peer_caps, align 4
  %2 = and i16 %1, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end32_crit_edge, label %if.then

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hdr, align 4
  %5 = lshr i32 %4, 19
  %shl.i.i = and i32 %5, 60
  %add.ptr.i = getelementptr i8, ptr %hdr, i32 %shl.i.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i, align 2
  %conv1 = zext i16 %7 to i32
  %8 = getelementptr inbounds %struct.tipc_gap_ack_blks, ptr %add.ptr.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 2
  %conv2 = zext i8 %10 to i32
  %bgack_cnt = getelementptr inbounds %struct.tipc_gap_ack_blks, ptr %add.ptr.i, i32 0, i32 2
  %11 = ptrtoint ptr %bgack_cnt to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bgack_cnt, align 1
  %conv3 = zext i8 %12 to i32
  %add = add nuw nsw i32 %conv3, %conv2
  %13 = shl nuw nsw i32 %add, 2
  %spec.select.i47 = add nuw nsw i32 %13, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i47, i32 %conv1)
  %cmp = icmp eq i32 %spec.select.i47, %conv1
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  br i1 %uc, label %land.lhs.true, label %land.lhs.true12.critedge

land.lhs.true:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end32_crit_edge, label %land.lhs.true.ok_crit_edge

land.lhs.true.ok_crit_edge:                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %ok

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

land.lhs.true12.critedge:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool15.not = icmp eq i8 %12, 0
  br i1 %tobool15.not, label %land.lhs.true12.critedge.if.end32_crit_edge, label %land.lhs.true12.critedge.ok_crit_edge

land.lhs.true12.critedge.ok_crit_edge:            ; preds = %land.lhs.true12.critedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %ok

land.lhs.true12.critedge.if.end32_crit_edge:      ; preds = %land.lhs.true12.critedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.else:                                          ; preds = %if.then
  br i1 %uc, label %land.lhs.true19, label %if.else.if.end32_crit_edge

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

land.lhs.true19:                                  ; preds = %if.else
  %14 = shl nuw nsw i32 %conv2, 2
  %spec.select.i4548 = add nuw nsw i32 %14, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i4548, i32 %conv1)
  %cmp23 = icmp ne i32 %spec.select.i4548, %conv1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool26.not = icmp eq i8 %10, 0
  %or.cond = select i1 %cmp23, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %land.lhs.true19.if.end32_crit_edge, label %if.then27

land.lhs.true19.if.end32_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.then27:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %bgack_cnt to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %bgack_cnt, align 1
  br label %ok

if.end32:                                         ; preds = %land.lhs.true19.if.end32_crit_edge, %if.else.if.end32_crit_edge, %land.lhs.true12.critedge.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %entry.if.end32_crit_edge
  %sz.0 = phi i16 [ %7, %land.lhs.true12.critedge.if.end32_crit_edge ], [ %7, %land.lhs.true19.if.end32_crit_edge ], [ %7, %if.else.if.end32_crit_edge ], [ 0, %entry.if.end32_crit_edge ], [ %7, %land.lhs.true.if.end32_crit_edge ]
  br label %ok

ok:                                               ; preds = %if.end32, %if.then27, %land.lhs.true12.critedge.ok_crit_edge, %land.lhs.true.ok_crit_edge
  %p.0 = phi ptr [ %add.ptr.i, %land.lhs.true.ok_crit_edge ], [ null, %if.end32 ], [ %add.ptr.i, %land.lhs.true12.critedge.ok_crit_edge ], [ %add.ptr.i, %if.then27 ]
  %sz.1 = phi i16 [ %7, %land.lhs.true.ok_crit_edge ], [ %sz.0, %if.end32 ], [ %7, %land.lhs.true12.critedge.ok_crit_edge ], [ %7, %if.then27 ]
  %16 = ptrtoint ptr %ga to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %p.0, ptr %ga, align 4
  ret i16 %sz.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_link_build_state_msg(ptr noundef %l, ptr noundef %xmitq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %l, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %bc_rcvlink.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 48
  %0 = ptrtoint ptr %bc_rcvlink.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_rcvlink.i, align 4
  %cmp.i = icmp eq ptr %1, %l
  br i1 %cmp.i, label %link_is_bc_rcvlink.exit, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

link_is_bc_rcvlink.exit:                          ; preds = %if.end
  %bc_sndlink.i.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 49
  %2 = ptrtoint ptr %bc_sndlink.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_sndlink.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.not, label %link_is_bc_rcvlink.exit.if.end7_crit_edge, label %if.then1

link_is_bc_rcvlink.exit.if.end7_crit_edge:        ; preds = %link_is_bc_rcvlink.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then1:                                         ; preds = %link_is_bc_rcvlink.exit
  %rcv_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %4 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rcv_nxt, align 2
  %conv = zext i16 %5 to i32
  %net = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 2
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %7) #18
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node_addr.i, align 4
  %xor = xor i32 %9, %conv
  %and = and i32 %xor, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp.not = icmp eq i32 %and, 15
  br i1 %cmp.not, label %if.end5, label %if.then1.return_crit_edge

if.then1.return_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end5:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #20
  %rcv_unacked = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 31
  %10 = ptrtoint ptr %rcv_unacked to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rcv_unacked, align 4
  %11 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rcv_nxt, align 2
  %snd_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 29
  %13 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %snd_nxt, align 4
  br label %return

if.end7:                                          ; preds = %link_is_bc_rcvlink.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %rcv_unacked8 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 31
  %14 = ptrtoint ptr %rcv_unacked8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rcv_unacked8, align 4
  %sent_acks = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 8
  %15 = ptrtoint ptr %sent_acks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sent_acks, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %sent_acks, align 4
  tail call fastcc void @tipc_link_build_proto_msg(ptr noundef nonnull %l, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, ptr noundef %xmitq)
  br label %return

return:                                           ; preds = %if.end7, %if.end5, %if.then1.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 4, %if.end5 ], [ 0, %if.end7 ], [ 0, %entry.return_crit_edge ], [ 0, %if.then1.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_link_build_reset_msg(ptr noundef %l, ptr noundef %xmitq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %1)
  %cmp = icmp eq i32 %1, 224
  %spec.select = select i1 %cmp, i32 2, i32 1
  tail call fastcc void @tipc_link_build_proto_msg(ptr noundef %l, i32 noundef %spec.select, i1 noundef zeroext false, i1 noundef zeroext false, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, ptr noundef %xmitq)
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %xmitq, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i = icmp eq ptr %3, %xmitq
  %tobool.not10 = icmp eq ptr %3, null
  %tobool.not = or i1 %cmp.i, %tobool.not10
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp2 = icmp eq i32 %5, 256
  br i1 %cmp2, label %if.then3, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %9, 8192
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_link_rcv(ptr noundef %l, ptr noundef %skb, ptr noundef %xmitq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %deferdq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %4)
  %cmp = icmp eq i32 %4, 234881024
  br i1 %cmp, label %if.then, label %if.end, !prof !254

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call3 = tail call fastcc i32 @tipc_link_proto_rcv(ptr noundef %l, ptr noundef %skb, ptr noundef %xmitq)
  br label %cleanup

if.end:                                           ; preds = %entry
  %silent_intv_cnt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 15
  %5 = ptrtoint ptr %silent_intv_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %silent_intv_cnt, align 4
  %rcv_nxt6 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %state.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  %and.i218 = and i32 %7, 201326606
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i218)
  %tobool9.not219 = icmp eq i32 %and.i218, 0
  br i1 %tobool9.not219, label %if.end.if.then18_crit_edge, label %if.end23.lr.ph, !prof !254

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then18

if.end23.lr.ph:                                   ; preds = %if.end
  %recv_pkts = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 1
  %inputq74 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 33
  %reasm_buf = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 42
  %rcv_unacked = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 31
  %qlen.i.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32, i32 1
  br label %if.end23

if.then18:                                        ; preds = %__tipc_skb_dequeue.exit.if.then18_crit_edge, %if.end.if.then18_crit_edge
  %skb.addr.0.lcssa = phi ptr [ %skb, %if.end.if.then18_crit_edge ], [ %35, %__tipc_skb_dequeue.exit.if.then18_crit_edge ]
  %released.0.lcssa = phi i32 [ 0, %if.end.if.then18_crit_edge ], [ %add38, %__tipc_skb_dequeue.exit.if.then18_crit_edge ]
  %rc.0.lcssa = phi i32 [ 0, %if.end.if.then18_crit_edge ], [ %rc.3, %__tipc_skb_dequeue.exit.if.then18_crit_edge ]
  %.lcssa = phi i32 [ %7, %if.end.if.then18_crit_edge ], [ %53, %__tipc_skb_dequeue.exit.if.then18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %.lcssa)
  %cmp19 = icmp eq i32 %.lcssa, 224
  %spec.select = select i1 %cmp19, i32 1, i32 %rc.0.lcssa
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0.lcssa, i32 noundef 0) #18
  br label %do.end

if.end23:                                         ; preds = %__tipc_skb_dequeue.exit.if.end23_crit_edge, %if.end23.lr.ph
  %rc.0222 = phi i32 [ 0, %if.end23.lr.ph ], [ %rc.3, %__tipc_skb_dequeue.exit.if.end23_crit_edge ]
  %released.0221 = phi i32 [ 0, %if.end23.lr.ph ], [ %add38, %__tipc_skb_dequeue.exit.if.end23_crit_edge ]
  %skb.addr.0220 = phi ptr [ %skb, %if.end23.lr.ph ], [ %35, %__tipc_skb_dequeue.exit.if.end23_crit_edge ]
  %.in228 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0220, i32 0, i32 19
  %8 = ptrtoint ptr %.in228 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.in228, align 4
  %.in = getelementptr [15 x i32], ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %.in, align 4
  %conv.i223 = trunc i32 %11 to i16
  %12 = ptrtoint ptr %rcv_nxt6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rcv_nxt6, align 2
  %add224 = add i16 %13, 8191
  %14 = xor i16 %13, -1
  %15 = add i16 %14, %conv.i223
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %tobool.not.i = icmp sgt i16 %15, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %conv.i223)
  %cmp.i = icmp eq i16 %13, %conv.i223
  %tobool25.not = or i1 %cmp.i, %tobool.not.i
  %16 = sub i16 %add224, %conv.i223
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %tobool27.not = icmp sgt i16 %16, -1
  %or.cond = select i1 %tobool25.not, i1 %tobool27.not, i1 false
  br i1 %or.cond, label %if.end35, label %if.then34, !prof !256

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  %duplicates = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 20
  %17 = ptrtoint ptr %duplicates to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %duplicates, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %duplicates, align 4
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0220, i32 noundef 0) #18
  br label %do.end

if.end35:                                         ; preds = %if.end23
  %shr.i.i183 = lshr i32 %11, 16
  %conv.i184 = trunc i32 %shr.i.i183 to i16
  %call37 = tail call fastcc i32 @tipc_link_advance_transmq(ptr noundef %l, ptr noundef %l, i16 noundef zeroext %conv.i184, i16 noundef zeroext 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %add38 = add i32 %call37, %released.0221
  br i1 %cmp.i, label %if.end57, label %if.then49, !prof !242

if.then49:                                        ; preds = %if.end35
  %conv.i223.le = trunc i32 %11 to i16
  %call50 = tail call zeroext i1 @__tipc_skb_queue_sorted(ptr noundef %deferdq, i16 noundef zeroext %conv.i223.le, ptr noundef %skb.addr.0220) #18
  br i1 %call50, label %if.then49.if.end55_crit_edge, label %if.then51

if.then49.if.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #20
  %duplicates53 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 20
  %19 = ptrtoint ptr %duplicates53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %duplicates53, align 4
  %inc54 = add i32 %20, 1
  store i32 %inc54, ptr %duplicates53, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.then49.if.end55_crit_edge
  %call56 = tail call fastcc i32 @tipc_link_build_nack_msg(ptr noundef %l, ptr noundef %xmitq)
  %or = or i32 %call56, %rc.0222
  br label %do.end

if.end57:                                         ; preds = %if.end35
  %21 = ptrtoint ptr %rcv_nxt6 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rcv_nxt6, align 2
  %inc59 = add i16 %22, 1
  store i16 %inc59, ptr %rcv_nxt6, align 2
  %23 = ptrtoint ptr %recv_pkts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %recv_pkts, align 4
  %inc61 = add i32 %24, 1
  store i32 %inc61, ptr %recv_pkts, align 4
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %9, align 4
  %27 = and i32 %26, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %27)
  %cmp63 = icmp eq i32 %27, 335544320
  %28 = ptrtoint ptr %inputq74 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %inputq74, align 4
  br i1 %cmp63, label %if.then71, label %if.else, !prof !254

if.then71:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  %call72 = tail call fastcc i32 @tipc_link_tnl_rcv(ptr noundef %l, ptr noundef %skb.addr.0220, ptr noundef %29)
  %or73 = or i32 %call72, %rc.0222
  br label %if.end81

if.else:                                          ; preds = %if.end57
  %call75 = tail call fastcc zeroext i1 @tipc_data_input(ptr noundef %l, ptr noundef %skb.addr.0220, ptr noundef %29)
  br i1 %call75, label %if.else.if.end81_crit_edge, label %if.then76

if.else.if.end81_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end81

if.then76:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %30 = ptrtoint ptr %inputq74 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %inputq74, align 4
  %call78 = tail call fastcc i32 @tipc_link_input(ptr noundef %l, ptr noundef %skb.addr.0220, ptr noundef %31, ptr noundef %reasm_buf)
  %or79 = or i32 %call78, %rc.0222
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %if.else.if.end81_crit_edge, %if.then71
  %rc.2 = phi i32 [ %or73, %if.then71 ], [ %rc.0222, %if.else.if.end81_crit_edge ], [ %or79, %if.then76 ]
  %32 = ptrtoint ptr %rcv_unacked to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rcv_unacked, align 4
  %inc82 = add i32 %33, 1
  store i32 %inc82, ptr %rcv_unacked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc82)
  %cmp83 = icmp ugt i32 %inc82, 15
  br i1 %cmp83, label %if.then91, label %if.end81.if.end94_crit_edge, !prof !254

if.end81.if.end94_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end94

if.then91:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #20
  %call92 = tail call i32 @tipc_link_build_state_msg(ptr noundef %l, ptr noundef %xmitq)
  %or93 = or i32 %call92, %rc.2
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.end81.if.end94_crit_edge
  %rc.3 = phi i32 [ %or93, %if.then91 ], [ %rc.2, %if.end81.if.end94_crit_edge ]
  %and = and i32 %rc.3, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool95.not = icmp eq i32 %and, 0
  br i1 %tobool95.not, label %do.cond, label %if.end94.do.end_crit_edge, !prof !242

if.end94.do.end_crit_edge:                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

do.cond:                                          ; preds = %if.end94
  %34 = ptrtoint ptr %deferdq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %deferdq, align 4
  %cmp.i.i = icmp eq ptr %35, %deferdq
  %tobool.not8.i = icmp eq ptr %35, null
  %tobool.not.i187 = or i1 %cmp.i.i, %tobool.not8.i
  br i1 %tobool.not.i187, label %do.cond.do.end_crit_edge, label %land.lhs.true.i

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true.i:                                  ; preds = %do.cond
  %36 = ptrtoint ptr %rcv_nxt6 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rcv_nxt6, align 2
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 19
  %38 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [15 x i32], ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %conv.i.i.i = trunc i32 %41 to i16
  %42 = xor i16 %37, -1
  %43 = add i16 %conv.i.i.i, %42
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %43)
  %tobool3.not.i = icmp sgt i16 %43, -1
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end_crit_edge, label %__tipc_skb_dequeue.exit

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

__tipc_skb_dequeue.exit:                          ; preds = %land.lhs.true.i
  %44 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %46 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %35, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.83, ptr %35, i32 0, i32 1
  %48 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %35, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.83, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %49, ptr %prev17.i.i, align 4
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %47, ptr %49, align 8
  %52 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %state.i, align 4
  %and.i = and i32 %53, 201326606
  %tobool9.not = icmp eq i32 %and.i, 0
  br i1 %tobool9.not, label %__tipc_skb_dequeue.exit.if.then18_crit_edge, label %__tipc_skb_dequeue.exit.if.end23_crit_edge, !prof !254

__tipc_skb_dequeue.exit.if.end23_crit_edge:       ; preds = %__tipc_skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

__tipc_skb_dequeue.exit.if.then18_crit_edge:      ; preds = %__tipc_skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then18

do.end:                                           ; preds = %land.lhs.true.i.do.end_crit_edge, %do.cond.do.end_crit_edge, %if.end94.do.end_crit_edge, %if.end55, %if.then34, %if.then18
  %released.1 = phi i32 [ %released.0.lcssa, %if.then18 ], [ %released.0221, %if.then34 ], [ %add38, %if.end55 ], [ %add38, %if.end94.do.end_crit_edge ], [ %add38, %land.lhs.true.i.do.end_crit_edge ], [ %add38, %do.cond.do.end_crit_edge ]
  %rc.4 = phi i32 [ %spec.select, %if.then18 ], [ %rc.0222, %if.then34 ], [ %or, %if.end55 ], [ %rc.3, %if.end94.do.end_crit_edge ], [ %rc.3, %land.lhs.true.i.do.end_crit_edge ], [ %rc.3, %do.cond.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %released.1)
  %tobool107.not = icmp eq i32 %released.1, 0
  br i1 %tobool107.not, label %do.end.cleanup_crit_edge, label %if.end55.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end55.i:                                       ; preds = %do.end
  %qlen.i.i188 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 27, i32 1
  %54 = ptrtoint ptr %qlen.i.i188 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qlen.i.i188, align 4
  %transmq.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26
  %qlen.i160.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26, i32 1
  %56 = ptrtoint ptr %qlen.i160.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qlen.i160.i, align 4
  %window.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 36
  %58 = ptrtoint ptr %window.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %window.i, align 4
  %add.i = add i32 %57, %55
  %conv56.i = zext i16 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv56.i)
  %cmp57.i = icmp slt i32 %add.i, %conv56.i
  br i1 %cmp57.i, label %if.end55.i.tipc_link_update_cwin.exit_crit_edge, label %if.end60.i

if.end55.i.tipc_link_update_cwin.exit_crit_edge:  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tipc_link_update_cwin.exit

if.end60.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool61.not.i = icmp eq i32 %57, 0
  br i1 %tobool61.not.i, label %if.end60.i.if.end69.i_crit_edge, label %land.lhs.true.i192

if.end60.i.if.end69.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69.i

land.lhs.true.i192:                               ; preds = %if.end60.i
  %snd_nxt.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 29
  %60 = ptrtoint ptr %snd_nxt.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %snd_nxt.i, align 4
  %conv62.i = zext i16 %61 to i32
  %62 = ptrtoint ptr %transmq.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %transmq.i, align 4
  %cmp.i.i189 = icmp eq ptr %63, %transmq.i
  %spec.store.select.i.i = select i1 %cmp.i.i189, ptr null, ptr %63
  %data.i.i.i190 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 19
  %64 = ptrtoint ptr %data.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i.i.i190, align 4
  %arrayidx.i.i.i.i.i191 = getelementptr [15 x i32], ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %arrayidx.i.i.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i.i.i.i191, align 4
  %conv65.i = and i32 %67, 65535
  %sub.i = sub nsw i32 %conv62.i, %conv65.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %57)
  %cmp66.not.i = icmp eq i32 %sub.i, %57
  br i1 %cmp66.not.i, label %land.lhs.true.i192.if.end69.i_crit_edge, label %land.lhs.true.i192.tipc_link_update_cwin.exit_crit_edge

land.lhs.true.i192.tipc_link_update_cwin.exit_crit_edge: ; preds = %land.lhs.true.i192
  call void @__sanitizer_cov_trace_pc() #20
  br label %tipc_link_update_cwin.exit

land.lhs.true.i192.if.end69.i_crit_edge:          ; preds = %land.lhs.true.i192
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69.i

if.end69.i:                                       ; preds = %land.lhs.true.i192.if.end69.i_crit_edge, %if.end60.i.if.end69.i_crit_edge
  %cong_acks.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 40
  %68 = ptrtoint ptr %cong_acks.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %cong_acks.i, align 4
  %70 = trunc i32 %released.1 to i16
  %conv72.i = add i16 %69, %70
  store i16 %conv72.i, ptr %cong_acks.i, align 4
  %ssthresh74.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 38
  %71 = ptrtoint ptr %ssthresh74.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ssthresh74.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %72)
  %cmp76.not.i = icmp ugt i16 %59, %72
  br i1 %cmp76.not.i, label %if.end95.i, label %if.then78.i

if.then78.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv81.i = add i16 %59, %70
  %max_win.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 39
  %73 = ptrtoint ptr %max_win.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %max_win.i, align 2
  %75 = tail call i16 @llvm.umin.i16(i16 %conv81.i, i16 %74) #18
  %76 = ptrtoint ptr %window.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %window.i, align 4
  br label %tipc_link_update_cwin.exit

if.end95.i:                                       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv72.i, i16 %59)
  %cmp99.i = icmp ult i16 %conv72.i, %59
  br i1 %cmp99.i, label %if.end95.i.tipc_link_update_cwin.exit_crit_edge, label %if.end102.i

if.end95.i.tipc_link_update_cwin.exit_crit_edge:  ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tipc_link_update_cwin.exit

if.end102.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc.i = add i16 %59, 1
  %max_win103.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 39
  %77 = ptrtoint ptr %max_win103.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %max_win103.i, align 2
  %79 = tail call i16 @llvm.umin.i16(i16 %inc.i, i16 %78) #18
  %80 = ptrtoint ptr %window.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %window.i, align 4
  %81 = ptrtoint ptr %cong_acks.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %cong_acks.i, align 4
  br label %tipc_link_update_cwin.exit

tipc_link_update_cwin.exit:                       ; preds = %if.end102.i, %if.end95.i.tipc_link_update_cwin.exit_crit_edge, %if.then78.i, %land.lhs.true.i192.tipc_link_update_cwin.exit_crit_edge, %if.end55.i.tipc_link_update_cwin.exit_crit_edge
  tail call fastcc void @tipc_link_advance_backlog(ptr noundef %l, ptr noundef %xmitq)
  %wakeupq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 35
  %82 = ptrtoint ptr %wakeupq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wakeupq, align 4
  %cmp.i193.not = icmp eq ptr %83, %wakeupq
  br i1 %cmp.i193.not, label %tipc_link_update_cwin.exit.cleanup_crit_edge, label %if.then119, !prof !242

tipc_link_update_cwin.exit.cleanup_crit_edge:     ; preds = %tipc_link_update_cwin.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then119:                                       ; preds = %tipc_link_update_cwin.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @link_prepare_wakeup(ptr noundef %l)
  br label %cleanup

cleanup:                                          ; preds = %if.then119, %tipc_link_update_cwin.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %rc.4, %tipc_link_update_cwin.exit.cleanup_crit_edge ], [ %rc.4, %if.then119 ], [ %rc.4, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_link_proto_rcv(ptr noundef %l, ptr noundef %skb, ptr noundef %xmitq) unnamed_addr #2 align 64 {
entry:
  %retransmitted = alloca i8, align 1
  %rc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool = icmp ne i32 %and.i.i, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retransmitted) #18
  %4 = ptrtoint ptr %retransmitted to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %retransmitted, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %and.i.i.i = and i32 %6, 131071
  %7 = lshr i32 %6, 19
  %shl.i.i = and i32 %7, 60
  %sub.i = sub nsw i32 %and.i.i.i, %shl.i.i
  %arrayidx.i.i.i326 = getelementptr [15 x i32], ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx.i.i.i326 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i326, align 4
  %conv.i = trunc i32 %9 to i16
  %arrayidx.i.i.i327 = getelementptr [15 x i32], ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %arrayidx.i.i.i327 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i327, align 4
  %and.i.i328 = and i32 %11, 65535
  %conv = trunc i32 %11 to i16
  %shr.i.i = lshr i32 %3, 4
  %and.i.i330 = and i32 %shr.i.i, 31
  %conv6 = trunc i32 %and.i.i330 to i16
  %arrayidx.i.i.i331 = getelementptr [15 x i32], ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i.i331 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i331, align 4
  %shr.i.i332 = lshr i32 %13, 16
  %14 = trunc i32 %shr.i.i332 to i16
  %conv8 = and i16 %14, 8191
  %arrayidx.i.i.i334 = getelementptr [15 x i32], ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx.i.i.i334 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i.i334, align 4
  %shr.i.i335 = lshr i32 %16, 16
  %conv.i336 = trunc i32 %shr.i.i335 to i16
  %rcv_nxt10 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %17 = ptrtoint ptr %rcv_nxt10 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rcv_nxt10, align 2
  %shr.i.i338 = lshr i32 %13, 29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #18
  %19 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rc, align 4
  %name = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 1
  tail call fastcc void @trace_tipc_proto_rcv(ptr noundef %skb, ptr noundef %name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub.i)
  %cmp = icmp ugt i32 %sub.i, 65535
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %exit

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i, align 4
  %and.i = and i32 %21, 16588800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %tobool15.not = icmp eq ptr %xmitq, null
  %or.cond = or i1 %tobool15.not, %tobool.i
  br i1 %or.cond, label %if.end.exit_crit_edge, label %if.end17

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %exit

if.end17:                                         ; preds = %if.end
  %net = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 2
  %22 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net, align 4
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %23) #18
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %node_addr.i, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp20 = icmp ugt i32 %25, %27
  br i1 %cmp20, label %if.then22, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i, align 4
  %30 = trunc i32 %29 to i8
  %31 = lshr i8 %30, 1
  %32 = and i8 %31, 7
  %conv.i340 = add nuw nsw i8 %32, 65
  %net_plane = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 18
  %33 = ptrtoint ptr %net_plane to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i340, ptr %net_plane, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end17.if.end24_crit_edge
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %34 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i, label %if.end24.skb_linearize.exit_crit_edge, label %cond.true.i

if.end24.skb_linearize.exit_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_linearize.exit

cond.true.i:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %35) #18
  br label %skb_linearize.exit

skb_linearize.exit:                               ; preds = %cond.true.i, %if.end24.skb_linearize.exit_crit_edge
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = lshr i32 %39, 19
  %shl.i.i342 = and i32 %40, 60
  %add.ptr.i = getelementptr i8, ptr %37, i32 %shl.i.i342
  %peer_session.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 3
  %41 = ptrtoint ptr %peer_session.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %peer_session.i, align 4
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %37, i32 0, i32 5
  %43 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %shr.i.i.i = lshr i32 %44, 16
  %conv.i.i = trunc i32 %shr.i.i.i to i16
  %45 = and i32 %39, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %45)
  %cmp.not.i = icmp eq i32 %45, 234881024
  br i1 %cmp.not.i, label %if.end.i, label %skb_linearize.exit.if.end30_crit_edge

skb_linearize.exit.if.end30_crit_edge:            ; preds = %skb_linearize.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.end.i:                                         ; preds = %skb_linearize.exit
  %arrayidx.i.i.i55.i = getelementptr [15 x i32], ptr %37, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx.i.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i.i55.i, align 4
  %shr.i.i56.i = lshr i32 %47, 29
  %48 = zext i32 %shr.i.i56.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %shr.i.i56.i, label %if.end.i.if.then29_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb7.i
    i32 0, label %sw.bb14.i
  ]

if.end.i.if.then29_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then29

sw.bb.i:                                          ; preds = %if.end.i
  %in_session.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 13
  %49 = ptrtoint ptr %in_session.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %in_session.i, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i = icmp eq i8 %50, 0
  %51 = sub i16 %42, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool6.i = icmp slt i16 %51, 0
  %or.cond412 = select i1 %tobool.not.i, i1 true, i1 %tobool6.i
  br i1 %or.cond412, label %sw.bb.i.if.end30_crit_edge, label %sw.bb.i.if.then29_crit_edge

sw.bb.i.if.then29_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then29

sw.bb.i.if.end30_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

sw.bb7.i:                                         ; preds = %if.end.i
  %in_session8.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 13
  %52 = ptrtoint ptr %in_session8.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %in_session8.i, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool9.not.i = icmp eq i8 %53, 0
  br i1 %tobool9.not.i, label %sw.bb7.i.if.end30_crit_edge, label %if.end11.i

sw.bb7.i.if.end30_crit_edge:                      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.end11.i:                                       ; preds = %sw.bb7.i
  %54 = xor i16 %42, -1
  %55 = add i16 %conv.i.i, %54
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %55)
  %tobool.not.i.i = icmp sgt i16 %55, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %conv.i.i)
  %cmp.i.i = icmp eq i16 %42, %conv.i.i
  %tobool13.not.i = or i1 %cmp.i.i, %tobool.not.i.i
  br i1 %tobool13.not.i, label %if.end11.i.if.end30_crit_edge, label %if.end11.i.if.then29_crit_edge

if.end11.i.if.then29_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then29

if.end11.i.if.end30_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

sw.bb14.i:                                        ; preds = %if.end.i
  %in_session15.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 13
  %56 = ptrtoint ptr %in_session15.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %in_session15.i, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool16.not.i = icmp ne i8 %57, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %conv.i.i)
  %cmp20.not.i = icmp eq i16 %42, %conv.i.i
  %or.cond.i = select i1 %tobool16.not.i, i1 %cmp20.not.i, i1 false
  br i1 %or.cond.i, label %if.end23.i, label %sw.bb14.i.if.then29_crit_edge

sw.bb14.i.if.then29_crit_edge:                    ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then29

if.end23.i:                                       ; preds = %sw.bb14.i
  %58 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %state.i, align 4
  %and.i.i343 = and i32 %59, 201326606
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i343)
  %tobool25.not.i = icmp eq i32 %and.i.i343, 0
  br i1 %tobool25.not.i, label %land.lhs.true.i, label %if.end23.i.if.end30.i_crit_edge

if.end23.i.if.end30.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30.i

land.lhs.true.i:                                  ; preds = %if.end23.i
  %arrayidx.i.i.i58.i = getelementptr [15 x i32], ptr %37, i32 0, i32 2
  %60 = ptrtoint ptr %arrayidx.i.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i.i58.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %61)
  %tobool28.not.i = icmp ult i32 %61, 65536
  br i1 %tobool28.not.i, label %land.lhs.true.i.if.end30.i_crit_edge, label %land.lhs.true.i.if.then29_crit_edge

land.lhs.true.i.if.then29_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then29

land.lhs.true.i.if.end30.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30.i

if.end30.i:                                       ; preds = %land.lhs.true.i.if.end30.i_crit_edge, %if.end23.i.if.end30.i_crit_edge
  %peer_caps.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 12
  %62 = ptrtoint ptr %peer_caps.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %peer_caps.i, align 4
  %64 = and i16 %63, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool32.not.i = icmp eq i16 %64, 0
  br i1 %tobool32.not.i, label %if.end30.i.if.end30_crit_edge, label %if.end34.i

if.end30.i.if.end30_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.end34.i:                                       ; preds = %if.end30.i
  %arrayidx.i.i.i61.i = getelementptr [15 x i32], ptr %37, i32 0, i32 2
  %65 = ptrtoint ptr %arrayidx.i.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i.i61.i, align 4
  %conv.i62.i = trunc i32 %66 to i16
  %rcv_nxt_state.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 6
  %67 = ptrtoint ptr %rcv_nxt_state.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %rcv_nxt_state.i, align 2
  %69 = xor i16 %68, -1
  %70 = add i16 %69, %conv.i62.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %70)
  %tobool.not.i63.i = icmp sgt i16 %70, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %conv.i62.i)
  %cmp.i64.i = icmp eq i16 %68, %conv.i62.i
  %tobool37.not.i = or i1 %cmp.i64.i, %tobool.not.i63.i
  br i1 %tobool37.not.i, label %if.end34.i.if.end30_crit_edge, label %if.end34.i.if.then29_crit_edge

if.end34.i.if.then29_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then29

if.end34.i.if.end30_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.then29:                                        ; preds = %if.end34.i.if.then29_crit_edge, %land.lhs.true.i.if.then29_crit_edge, %sw.bb14.i.if.then29_crit_edge, %if.end11.i.if.then29_crit_edge, %sw.bb.i.if.then29_crit_edge, %if.end.i.if.then29_crit_edge
  tail call fastcc void @trace_tipc_skb_dump(ptr noundef %skb)
  tail call fastcc void @trace_tipc_link_dump(ptr noundef %l, ptr noundef nonnull @.str.93)
  br label %exit

if.end30:                                         ; preds = %if.end34.i.if.end30_crit_edge, %if.end30.i.if.end30_crit_edge, %if.end11.i.if.end30_crit_edge, %sw.bb7.i.if.end30_crit_edge, %sw.bb.i.if.end30_crit_edge, %skb_linearize.exit.if.end30_crit_edge
  %71 = zext i32 %shr.i.i338 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %shr.i.i338, label %if.end30.exit_crit_edge [
    i32 1, label %if.end30.sw.bb_crit_edge
    i32 2, label %if.end30.sw.bb_crit_edge421
    i32 0, label %sw.bb114
  ]

if.end30.sw.bb_crit_edge421:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

if.end30.sw.bb_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

if.end30.exit_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %exit

sw.bb:                                            ; preds = %if.end30.sw.bb_crit_edge, %if.end30.sw.bb_crit_edge421
  %call33 = tail call ptr @strrchr(ptr noundef %name, i32 noundef 58)
  %add.ptr = getelementptr i8, ptr %call33, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %name to i32
  %sub.ptr.sub.neg = add i32 %sub.ptr.rhs.cast, 68
  %sub = sub i32 %sub.ptr.sub.neg, %sub.ptr.lhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub)
  %cmp36 = icmp ult i32 %sub, 17
  br i1 %cmp36, label %sw.bb.exit_crit_edge, label %if.end39

sw.bb.exit_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %exit

if.end39:                                         ; preds = %sw.bb
  %and.i.i.i344 = and i32 %39, 131071
  %sub.i346 = sub nsw i32 %and.i.i.i344, %shl.i.i342
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i346)
  %cmp41 = icmp ult i32 %sub.i346, 16
  br i1 %cmp41, label %if.end39.exit_crit_edge, label %if.end44

if.end39.exit_crit_edge:                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #20
  br label %exit

if.end44:                                         ; preds = %if.end39
  %call45 = tail call ptr @strncpy(ptr noundef %add.ptr, ptr noundef %add.ptr.i, i32 noundef 16)
  %72 = add i16 %conv, 32717
  call void @__sanitizer_cov_trace_const_cmp2(i16 32767, i16 %72)
  %73 = icmp ult i16 %72, 32767
  %74 = add i32 %11, 35535
  %75 = and i32 %74, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool47.not414 = icmp eq i32 %75, 0
  %tobool47.not = select i1 %73, i1 true, i1 %tobool47.not414
  br i1 %tobool47.not, label %if.end44.if.end52_crit_edge, label %if.then48

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #20
  %tolerance = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 9
  %76 = ptrtoint ptr %tolerance to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and.i.i328, ptr %tolerance, align 4
  %bc_rcvlink = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 48
  %77 = ptrtoint ptr %bc_rcvlink to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bc_rcvlink, align 4
  %tolerance51 = getelementptr inbounds %struct.tipc_link, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %tolerance51 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and.i.i328, ptr %tolerance51, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end44.if.end52_crit_edge
  %priority = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 17
  %80 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %priority, align 4
  %82 = trunc i32 %81 to i16
  %conv53 = add i16 %82, 1
  %83 = add nsw i16 %conv6, -2
  %84 = sub i16 %83, %82
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool.not.i.i350 = icmp slt i16 %84, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %conv53, i16 %conv6)
  %cmp.i.i351 = icmp ne i16 %conv53, %conv6
  %tobool55.not = and i1 %cmp.i.i351, %tobool.not.i.i350
  br i1 %tobool55.not, label %if.end52.if.end59_crit_edge, label %if.then56

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end59

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #20
  %85 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %and.i.i330, ptr %priority, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end52.if.end59_crit_edge
  %86 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %88 = and i32 %87, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool61.not = icmp eq i32 %88, 0
  br i1 %tobool61.not, label %if.end64, label %if.then62

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #20
  %call63 = tail call i32 @tipc_link_fsm_evt(ptr noundef %l, i32 noundef 16388366)
  %89 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call63, ptr %rc, align 4
  br label %exit

if.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i.i338)
  %cmp65 = icmp eq i32 %shr.i.i338, 2
  br i1 %cmp65, label %land.lhs.true, label %if.end95

land.lhs.true:                                    ; preds = %if.end64
  %arrayidx.i.i.i357 = getelementptr [15 x i32], ptr %37, i32 0, i32 1
  %90 = ptrtoint ptr %arrayidx.i.i.i357 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i.i.i357, align 4
  %92 = and i32 %91, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.i358.not = icmp eq i32 %92, 0
  br i1 %tobool.i358.not, label %land.lhs.true.lor.lhs.false90_crit_edge, label %land.lhs.true69

land.lhs.true.lor.lhs.false90_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false90

land.lhs.true69:                                  ; preds = %land.lhs.true
  %session = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 4
  %93 = ptrtoint ptr %session to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %session, align 2
  %conv.i360 = trunc i32 %91 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %94, i16 %conv.i360)
  %cmp73.not = icmp eq i16 %94, %conv.i360
  br i1 %cmp73.not, label %land.lhs.true69.lor.lhs.false90_crit_edge, label %if.then75

land.lhs.true69.lor.lhs.false90_crit_edge:        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false90

if.then75:                                        ; preds = %land.lhs.true69
  %95 = xor i16 %conv.i360, -1
  %96 = add i16 %94, %95
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %96)
  %tobool79.not = icmp sgt i16 %96, -1
  br i1 %tobool79.not, label %if.then75.exit_crit_edge, label %if.then80

if.then75.exit_crit_edge:                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #20
  br label %exit

if.then80:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #20
  %add83 = add i16 %conv.i360, 1
  %97 = ptrtoint ptr %session to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %add83, ptr %session, align 2
  br label %exit

lor.lhs.false90:                                  ; preds = %land.lhs.true69.lor.lhs.false90_crit_edge, %land.lhs.true.lor.lhs.false90_crit_edge
  %98 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state.i, align 4
  %and.i367 = and i32 %99, 201326606
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i367)
  %tobool92.not = icmp eq i32 %and.i367, 0
  br i1 %tobool92.not, label %if.end95.thread410, label %lor.lhs.false90.land.lhs.true98_crit_edge

lor.lhs.false90.land.lhs.true98_crit_edge:        ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true98

if.end95.thread410:                               ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #20
  %call94411 = tail call i32 @tipc_link_fsm_evt(ptr noundef %l, i32 noundef 10415374)
  %100 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %call94411, ptr %rc, align 4
  %101 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pr = load i32, ptr %state.i, align 4
  br label %land.lhs.true98

if.end95:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #20
  %call94 = tail call i32 @tipc_link_fsm_evt(ptr noundef %l, i32 noundef 10415374)
  %102 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %call94, ptr %rc, align 4
  br label %if.end102

land.lhs.true98:                                  ; preds = %if.end95.thread410, %lor.lhs.false90.land.lhs.true98_crit_edge
  %103 = phi i32 [ %.pr, %if.end95.thread410 ], [ %99, %lor.lhs.false90.land.lhs.true98_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %103)
  %cmp99 = icmp eq i32 %103, 224
  br i1 %cmp99, label %if.then101, label %land.lhs.true98.if.end102_crit_edge

land.lhs.true98.if.end102_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end102

if.then101:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #20
  %104 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %rc, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %land.lhs.true98.if.end102_crit_edge, %if.end95
  %105 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %shr.i.i369 = lshr i32 %106, 16
  %conv.i370 = trunc i32 %shr.i.i369 to i16
  %107 = ptrtoint ptr %peer_session.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv.i370, ptr %peer_session.i, align 4
  %in_session = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 13
  %108 = ptrtoint ptr %in_session to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %in_session, align 2
  %109 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %shr.i.i372 = lshr i32 %109, 9
  %and.i.i373 = and i32 %shr.i.i372, 7
  %peer_bearer_id = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 7
  %110 = ptrtoint ptr %peer_bearer_id to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %and.i.i373, ptr %peer_bearer_id, align 4
  %mtu = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 24
  %111 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %mtu, align 4
  %conv105 = zext i16 %112 to i32
  %arrayidx.i.i.i374 = getelementptr [15 x i32], ptr %37, i32 0, i32 9
  %113 = ptrtoint ptr %arrayidx.i.i.i374 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i.i.i374, align 4
  %115 = lshr i32 %114, 14
  %mul.i = and i32 %115, 262140
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %conv105)
  %cmp107 = icmp ult i32 %mul.i, %conv105
  br i1 %cmp107, label %if.then109, label %if.end102.exit_crit_edge

if.end102.exit_crit_edge:                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #20
  br label %exit

if.then109:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #20
  %conv111 = trunc i32 %mul.i to i16
  %116 = ptrtoint ptr %mtu to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv111, ptr %mtu, align 4
  br label %exit

sw.bb114:                                         ; preds = %if.end30
  %peer_caps.i377 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 12
  %117 = ptrtoint ptr %peer_caps.i377 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %peer_caps.i377, align 4
  %119 = and i16 %118, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool.not.i378 = icmp eq i16 %119, 0
  br i1 %tobool.not.i378, label %sw.bb114.if.end32.i_crit_edge, label %if.then.i

sw.bb114.if.end32.i_crit_edge:                    ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32.i

if.then.i:                                        ; preds = %sw.bb114
  %120 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %add.ptr.i, align 2
  %conv1.i = zext i16 %121 to i32
  %122 = getelementptr inbounds %struct.tipc_gap_ack_blks, ptr %add.ptr.i, i32 0, i32 1
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %122, align 2
  %conv2.i = zext i8 %124 to i32
  %bgack_cnt.i = getelementptr inbounds %struct.tipc_gap_ack_blks, ptr %add.ptr.i, i32 0, i32 2
  %125 = ptrtoint ptr %bgack_cnt.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %bgack_cnt.i, align 1
  %conv3.i = zext i8 %126 to i32
  %add.i = add nuw nsw i32 %conv3.i, %conv2.i
  %127 = shl nuw nsw i32 %add.i, 2
  %spec.select.i47.i = add nuw nsw i32 %127, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i47.i, i32 %conv1.i)
  %cmp.i379 = icmp eq i32 %spec.select.i47.i, %conv1.i
  br i1 %cmp.i379, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool10.not.i = icmp eq i8 %124, 0
  br i1 %tobool10.not.i, label %if.then6.i.if.end32.i_crit_edge, label %if.then6.i.tipc_get_gap_ack_blks.exit_crit_edge

if.then6.i.tipc_get_gap_ack_blks.exit_crit_edge:  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tipc_get_gap_ack_blks.exit

if.then6.i.if.end32.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32.i

if.else.i:                                        ; preds = %if.then.i
  %128 = shl nuw nsw i32 %conv2.i, 2
  %spec.select.i4548.i = add nuw nsw i32 %128, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i4548.i, i32 %conv1.i)
  %cmp23.i = icmp ne i32 %spec.select.i4548.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool26.not.i = icmp eq i8 %124, 0
  %or.cond.i381 = select i1 %cmp23.i, i1 true, i1 %tobool26.not.i
  br i1 %or.cond.i381, label %if.else.i.if.end32.i_crit_edge, label %if.then27.i

if.else.i.if.end32.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32.i

if.then27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %129 = ptrtoint ptr %bgack_cnt.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %bgack_cnt.i, align 1
  br label %tipc_get_gap_ack_blks.exit

if.end32.i:                                       ; preds = %if.else.i.if.end32.i_crit_edge, %if.then6.i.if.end32.i_crit_edge, %sw.bb114.if.end32.i_crit_edge
  %sz.0.i = phi i16 [ %121, %if.else.i.if.end32.i_crit_edge ], [ %121, %if.then6.i.if.end32.i_crit_edge ], [ 0, %sw.bb114.if.end32.i_crit_edge ]
  %.pre = zext i16 %sz.0.i to i32
  br label %tipc_get_gap_ack_blks.exit

tipc_get_gap_ack_blks.exit:                       ; preds = %if.end32.i, %if.then27.i, %if.then6.i.tipc_get_gap_ack_blks.exit_crit_edge
  %conv116.pre-phi = phi i32 [ %conv1.i, %if.then6.i.tipc_get_gap_ack_blks.exit_crit_edge ], [ %conv1.i, %if.then27.i ], [ %.pre, %if.end32.i ]
  %p.0.i = phi ptr [ %add.ptr.i, %if.then6.i.tipc_get_gap_ack_blks.exit_crit_edge ], [ %add.ptr.i, %if.then27.i ], [ null, %if.end32.i ]
  %sz.1.i = phi i16 [ %121, %if.then6.i.tipc_get_gap_ack_blks.exit_crit_edge ], [ %121, %if.then27.i ], [ %sz.0.i, %if.end32.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv116.pre-phi)
  %cmp117 = icmp ult i32 %sub.i, %conv116.pre-phi
  br i1 %cmp117, label %tipc_get_gap_ack_blks.exit.exit_crit_edge, label %if.end120

tipc_get_gap_ack_blks.exit.exit_crit_edge:        ; preds = %tipc_get_gap_ack_blks.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %exit

if.end120:                                        ; preds = %tipc_get_gap_ack_blks.exit
  %arrayidx.i.i.i382 = getelementptr [15 x i32], ptr %37, i32 0, i32 2
  %130 = ptrtoint ptr %arrayidx.i.i.i382 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx.i.i.i382, align 4
  %conv.i383 = trunc i32 %131 to i16
  %add123 = add i16 %conv.i383, 1
  %rcv_nxt_state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 6
  %132 = ptrtoint ptr %rcv_nxt_state to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %add123, ptr %rcv_nxt_state, align 2
  %133 = add i16 %conv, 32717
  call void @__sanitizer_cov_trace_const_cmp2(i16 32767, i16 %133)
  %134 = icmp ult i16 %133, 32767
  %135 = add i32 %11, 35535
  %136 = and i32 %135, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool126.not413 = icmp eq i32 %136, 0
  %tobool126.not = select i1 %134, i1 true, i1 %tobool126.not413
  br i1 %tobool126.not, label %if.end120.if.end133_crit_edge, label %if.then127

if.end120.if.end133_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end133

if.then127:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #20
  %tolerance129 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 9
  %137 = ptrtoint ptr %tolerance129 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %and.i.i328, ptr %tolerance129, align 4
  %bc_rcvlink131 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 48
  %138 = ptrtoint ptr %bc_rcvlink131 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bc_rcvlink131, align 4
  %tolerance132 = getelementptr inbounds %struct.tipc_link, ptr %139, i32 0, i32 9
  %140 = ptrtoint ptr %tolerance132 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %and.i.i328, ptr %tolerance132, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then127, %if.end120.if.end133_crit_edge
  %priority135 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 17
  %141 = ptrtoint ptr %priority135 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %priority135, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i330, i32 %142)
  %cmp136.not = icmp eq i32 %and.i.i330, %142
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv6)
  %.not.not = icmp eq i16 %conv6, 0
  %or.cond415 = or i1 %.not.not, %cmp136.not
  br i1 %or.cond415, label %if.end133.if.end145_crit_edge, label %if.then141

if.end133.if.end145_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end145

if.then141:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #20
  %143 = ptrtoint ptr %priority135 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %and.i.i330, ptr %priority135, align 4
  %call144 = tail call i32 @tipc_link_fsm_evt(ptr noundef %l, i32 noundef 16388366)
  %144 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %call144, ptr %rc, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then141, %if.end133.if.end145_crit_edge
  %silent_intv_cnt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 15
  %145 = ptrtoint ptr %silent_intv_cnt to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %silent_intv_cnt, align 4
  %recv_states = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 3
  %146 = ptrtoint ptr %recv_states to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %recv_states, align 4
  %inc = add i32 %147, 1
  store i32 %inc, ptr %recv_states, align 4
  %148 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i393 = and i32 %149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i393)
  %tobool147.not = icmp eq i32 %and.i.i393, 0
  br i1 %tobool147.not, label %if.end145.if.end151_crit_edge, label %if.then148

if.end145.if.end151_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end151

if.then148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #20
  %recv_probes = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 5
  %150 = ptrtoint ptr %recv_probes to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %recv_probes, align 4
  %inc150 = add i32 %151, 1
  store i32 %inc150, ptr %recv_probes, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then148, %if.end145.if.end151_crit_edge
  %152 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %state.i, align 4
  %and.i395 = and i32 %153, 201326606
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i395)
  %tobool153.not = icmp eq i32 %and.i395, 0
  br i1 %tobool153.not, label %if.then154, label %if.end160

if.then154:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %153)
  %cmp156 = icmp eq i32 %153, 224
  br i1 %cmp156, label %if.then158, label %if.then154.exit_crit_edge

if.then154.exit_crit_edge:                        ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #20
  br label %exit

if.then158:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #20
  %154 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1, ptr %rc, align 4
  br label %exit

if.end160:                                        ; preds = %if.end151
  %155 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %net, align 4
  %add.ptr162 = getelementptr i8, ptr %add.ptr.i, i32 %conv116.pre-phi
  %157 = trunc i32 %sub.i to i16
  %conv164 = sub i16 %157, %sz.1.i
  %158 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %l, align 4
  %mon_state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 19
  %bearer_id = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 8
  %160 = ptrtoint ptr %bearer_id to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %bearer_id, align 4
  tail call void @tipc_mon_rcv(ptr noundef %156, ptr noundef %add.ptr162, i16 noundef zeroext %conv164, i32 noundef %159, ptr noundef %mon_state, i32 noundef %161) #18
  br i1 %tobool, label %land.lhs.true170, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %if.end160
  %162 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %37, align 4
  %164 = and i32 %163, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool169.not = icmp eq i32 %164, 0
  %165 = sub i16 %18, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %165)
  %tobool172.not = icmp sgt i16 %165, -1
  %or.cond416 = select i1 %tobool169.not, i1 true, i1 %tobool172.not
  br i1 %or.cond416, label %lor.lhs.false167.if.end184_crit_edge, label %lor.lhs.false167.land.lhs.true173_crit_edge

lor.lhs.false167.land.lhs.true173_crit_edge:      ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true173

lor.lhs.false167.if.end184_crit_edge:             ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end184

land.lhs.true170:                                 ; preds = %if.end160
  %.old = sub i16 %18, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %.old)
  %tobool172.not.old = icmp sgt i16 %.old, -1
  br i1 %tobool172.not.old, label %land.lhs.true170.if.then190_crit_edge, label %land.lhs.true170.land.lhs.true173_crit_edge

land.lhs.true170.land.lhs.true173_crit_edge:      ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true173

land.lhs.true170.if.then190_crit_edge:            ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then190

land.lhs.true173:                                 ; preds = %land.lhs.true170.land.lhs.true173_crit_edge, %lor.lhs.false167.land.lhs.true173_crit_edge
  %166 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %167)
  %cmp.i400 = icmp eq i32 %167, 201326592
  br i1 %cmp.i400, label %land.lhs.true173.if.end184_crit_edge, label %land.lhs.true175

land.lhs.true173.if.end184_crit_edge:             ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end184

land.lhs.true175:                                 ; preds = %land.lhs.true173
  %deferdq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32
  %168 = ptrtoint ptr %deferdq to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %deferdq, align 4
  %cmp.i401.not = icmp eq ptr %169, %deferdq
  br i1 %cmp.i401.not, label %if.then178, label %land.lhs.true175.if.end184_crit_edge

land.lhs.true175.if.end184_crit_edge:             ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end184

if.then178:                                       ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #20
  %170 = ptrtoint ptr %rcv_nxt10 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %rcv_nxt10, align 2
  %sub182 = sub i16 %conv.i, %171
  br label %if.end184

if.end184:                                        ; preds = %if.then178, %land.lhs.true175.if.end184_crit_edge, %land.lhs.true173.if.end184_crit_edge, %lor.lhs.false167.if.end184_crit_edge
  %rcvgap.0 = phi i16 [ 0, %land.lhs.true173.if.end184_crit_edge ], [ %sub182, %if.then178 ], [ 0, %land.lhs.true175.if.end184_crit_edge ], [ 0, %lor.lhs.false167.if.end184_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rcvgap.0)
  %tobool186.not = icmp ne i16 %rcvgap.0, 0
  %brmerge = select i1 %tobool186.not, i1 true, i1 %tobool
  br i1 %brmerge, label %if.end184.if.then190_crit_edge, label %if.end184.if.end192_crit_edge

if.end184.if.end192_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end192

if.end184.if.then190_crit_edge:                   ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then190

if.then190:                                       ; preds = %if.end184.if.then190_crit_edge, %land.lhs.true170.if.then190_crit_edge
  %rcvgap.0420 = phi i16 [ %rcvgap.0, %if.end184.if.then190_crit_edge ], [ 0, %land.lhs.true170.if.then190_crit_edge ]
  tail call fastcc void @tipc_link_build_proto_msg(ptr noundef %l, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext %tobool, i16 noundef zeroext %rcvgap.0420, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %xmitq)
  br label %if.end192

if.end192:                                        ; preds = %if.then190, %if.end184.if.end192_crit_edge
  %call193 = call fastcc i32 @tipc_link_advance_transmq(ptr noundef %l, ptr noundef %l, i16 noundef zeroext %conv.i336, i16 noundef zeroext %conv8, ptr noundef %p.0.i, ptr noundef nonnull %xmitq, ptr noundef nonnull %retransmitted, ptr noundef nonnull %rc)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv8)
  %tobool194.not = icmp eq i16 %conv8, 0
  br i1 %tobool194.not, label %if.end192.if.end198_crit_edge, label %if.then195

if.end192.if.end198_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end198

if.then195:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #20
  %recv_nacks = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 7
  %172 = ptrtoint ptr %recv_nacks to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %recv_nacks, align 4
  %inc197 = add i32 %173, 1
  store i32 %inc197, ptr %recv_nacks, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.then195, %if.end192.if.end198_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool199.not = icmp eq i32 %call193, 0
  %174 = ptrtoint ptr %retransmitted to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %retransmitted, align 1, !range !241
  br i1 %tobool199.not, label %lor.lhs.false200, label %if.then207.critedge

lor.lhs.false200:                                 ; preds = %if.end198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool201.not = icmp eq i8 %175, 0
  br i1 %tobool201.not, label %lor.lhs.false200.if.end208_crit_edge, label %if.end208.critedge

lor.lhs.false200.if.end208_crit_edge:             ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end208

if.then207.critedge:                              ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool204.c325 = icmp ne i8 %175, 0
  tail call fastcc void @tipc_link_update_cwin(ptr noundef %l, i32 noundef %call193, i1 noundef zeroext %tobool204.c325)
  tail call fastcc void @tipc_link_advance_backlog(ptr noundef %l, ptr noundef nonnull %xmitq)
  br label %if.end208

if.end208.critedge:                               ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @tipc_link_update_cwin(ptr noundef %l, i32 noundef 0, i1 noundef zeroext true)
  br label %if.end208

if.end208:                                        ; preds = %if.end208.critedge, %if.then207.critedge, %lor.lhs.false200.if.end208_crit_edge
  %wakeupq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 35
  %176 = ptrtoint ptr %wakeupq to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %wakeupq, align 4
  %cmp.i403.not = icmp eq ptr %177, %wakeupq
  br i1 %cmp.i403.not, label %if.end208.exit_crit_edge, label %if.then214, !prof !242

if.end208.exit_crit_edge:                         ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #20
  br label %exit

if.then214:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @link_prepare_wakeup(ptr noundef %l)
  br label %exit

exit:                                             ; preds = %if.then214, %if.end208.exit_crit_edge, %if.then158, %if.then154.exit_crit_edge, %tipc_get_gap_ack_blks.exit.exit_crit_edge, %if.then109, %if.end102.exit_crit_edge, %if.then80, %if.then75.exit_crit_edge, %if.then62, %if.end39.exit_crit_edge, %sw.bb.exit_crit_edge, %if.end30.exit_crit_edge, %if.then29, %if.end.exit_crit_edge, %entry.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  %178 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %rc, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retransmitted) #18
  ret i32 %179
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_link_advance_transmq(ptr noundef %l, ptr noundef %r, i16 noundef zeroext %acked, i16 noundef zeroext %gap, ptr noundef %ga, ptr noundef %xmitq, ptr nocapture noundef writeonly %retransmitted, ptr nocapture noundef %rc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %last_ga1 = getelementptr inbounds %struct.tipc_link, ptr %r, i32 0, i32 47
  %0 = ptrtoint ptr %last_ga1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last_ga1, align 4
  %transmq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26
  %qlen.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  %bc_rcvlink = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 48
  %4 = ptrtoint ptr %bc_rcvlink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bc_rcvlink, align 4
  %rcv_nxt = getelementptr inbounds %struct.tipc_link, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rcv_nxt, align 2
  %sub = add i16 %7, -1
  %rcv_nxt3 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %8 = ptrtoint ptr %rcv_nxt3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rcv_nxt3, align 2
  %sub5 = add i16 %9, -1
  %acked7 = getelementptr inbounds %struct.tipc_link, ptr %r, i32 0, i32 45
  %10 = ptrtoint ptr %acked7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %acked7, align 2
  %last_gap = getelementptr inbounds %struct.tipc_link, ptr %r, i32 0, i32 46
  %12 = ptrtoint ptr %last_gap to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %last_gap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %14 = getelementptr inbounds %struct.tipc_gap_ack_blks, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 2
  %conv8 = zext i8 %16 to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i16 [ %conv8, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %bc_sndlink.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 49
  %17 = ptrtoint ptr %bc_sndlink.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bc_sndlink.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  %conv11 = zext i16 %acked to i32
  %add = add nuw nsw i32 %conv11, 1
  %conv12 = trunc i32 %add to i16
  %add15 = add i16 %gap, %acked
  tail call fastcc void @trace_tipc_link_retrans(ptr noundef %r, i16 noundef zeroext %conv12, i16 noundef zeroext %add15, ptr noundef %transmq)
  %tobool18.not = icmp eq ptr %ga, null
  %brmerge = select i1 %tobool18.not, i1 true, i1 %tobool.not.i
  br i1 %brmerge, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  %19 = getelementptr inbounds %struct.tipc_gap_ack_blks, ptr %ga, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 2
  %bgack_cnt = getelementptr inbounds %struct.tipc_gap_ack_blks, ptr %ga, i32 0, i32 2
  %22 = ptrtoint ptr %bgack_cnt to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bgack_cnt, align 1
  %idxprom = zext i8 %23 to i32
  %arrayidx = getelementptr %struct.tipc_gap_ack_blks, ptr %ga, i32 0, i32 3, i32 %idxprom
  br label %if.end46

if.else:                                          ; preds = %cond.end
  br i1 %tobool18.not, label %if.else.if.end46_crit_edge, label %if.then24

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

if.then24:                                        ; preds = %if.else
  %bgack_cnt25 = getelementptr inbounds %struct.tipc_gap_ack_blks, ptr %ga, i32 0, i32 2
  %24 = ptrtoint ptr %bgack_cnt25 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bgack_cnt25, align 1
  %conv26 = zext i8 %25 to i32
  %26 = shl nuw nsw i32 %conv26, 2
  %spec.select.i434 = add nuw nsw i32 %26, 4
  %call28 = tail call ptr @kmemdup(ptr noundef nonnull %ga, i32 noundef %spec.select.i434, i32 noundef 2592) #18
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.else38, label %if.then33, !prof !254

if.then33:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  %27 = getelementptr inbounds %struct.tipc_gap_ack_blks, ptr %call28, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %27, align 2
  %bgack_cnt34 = getelementptr inbounds %struct.tipc_gap_ack_blks, ptr %call28, i32 0, i32 2
  %29 = ptrtoint ptr %bgack_cnt34 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bgack_cnt34, align 1
  %gacks36 = getelementptr inbounds %struct.tipc_gap_ack_blks, ptr %call28, i32 0, i32 3
  br label %if.end46

if.else38:                                        ; preds = %if.then24
  %call39 = tail call i32 @___ratelimit(ptr noundef nonnull @tipc_link_advance_transmq._rs, ptr noundef nonnull @__func__.tipc_link_advance_transmq) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.else38.if.end46_crit_edge, label %do.end

if.else38.if.end46_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

do.end:                                           ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #20
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #23
  br label %if.end46

if.end46:                                         ; preds = %do.end, %if.else38.if.end46_crit_edge, %if.then33, %if.else.if.end46_crit_edge, %if.then
  %gacks.0 = phi ptr [ %arrayidx, %if.then ], [ %gacks36, %if.then33 ], [ null, %do.end ], [ null, %if.else38.if.end46_crit_edge ], [ null, %if.else.if.end46_crit_edge ]
  %gack_cnt.0.shrunk = phi i8 [ %21, %if.then ], [ %30, %if.then33 ], [ 0, %do.end ], [ 0, %if.else38.if.end46_crit_edge ], [ 0, %if.else.if.end46_crit_edge ]
  %this_ga.0 = phi ptr [ null, %if.then ], [ %call28, %if.then33 ], [ null, %do.end ], [ null, %if.else38.if.end46_crit_edge ], [ null, %if.else.if.end46_crit_edge ]
  %31 = ptrtoint ptr %transmq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %transmq, align 4
  %cmp.not488 = icmp eq ptr %32, %transmq
  br i1 %cmp.not488, label %if.end46.if.else275_crit_edge, label %for.body.lr.ph

if.end46.if.else275_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else275

for.body.lr.ph:                                   ; preds = %if.end46
  %33 = zext i8 %gack_cnt.0.shrunk to i16
  %tolerance.i = getelementptr inbounds %struct.tipc_link, ptr %r, i32 0, i32 9
  %conv.i417 = zext i16 %sub5 to i32
  %shl.i.i = shl nuw i32 %conv.i417, 16
  %conv.i418 = zext i16 %sub to i32
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %xmitq, i32 0, i32 1
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %retransmitted201 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 13
  %retransmitted206 = getelementptr inbounds %struct.tipc_link, ptr %r, i32 0, i32 52, i32 13
  %bgack_cnt67 = getelementptr inbounds %struct.tipc_gap_ack_blks, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bc_has_acked.0.off0502 = phi i1 [ false, %for.body.lr.ph ], [ %bc_has_acked.2.off0, %for.inc.for.body_crit_edge ]
  %si.0500 = phi i16 [ %cond, %for.body.lr.ph ], [ %si.3, %for.inc.for.body_crit_edge ]
  %offset.0498 = phi i16 [ %13, %for.body.lr.ph ], [ %offset.3, %for.inc.for.body_crit_edge ]
  %start.0496 = phi i16 [ %11, %for.body.lr.ph ], [ %start.3, %for.inc.for.body_crit_edge ]
  %end.0494 = phi i16 [ %11, %for.body.lr.ph ], [ %end.3, %for.inc.for.body_crit_edge ]
  %n.0493 = phi i16 [ 0, %for.body.lr.ph ], [ %n.1439, %for.inc.for.body_crit_edge ]
  %ngap.0492 = phi i16 [ %gap, %for.body.lr.ph ], [ %ngap.1442, %for.inc.for.body_crit_edge ]
  %nacked.0491 = phi i16 [ %acked, %for.body.lr.ph ], [ %nacked.1445, %for.inc.for.body_crit_edge ]
  %skb.0489 = phi ptr [ %32, %for.body.lr.ph ], [ %tmp.0505, %for.inc.for.body_crit_edge ]
  %34 = ptrtoint ptr %skb.0489 to i32
  call void @__asan_load4_noabort(i32 %34)
  %tmp.0505 = load ptr, ptr %skb.0489, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0489, i32 0, i32 19
  %35 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %conv.i.i = trunc i32 %38 to i16
  %39 = xor i16 %nacked.0491, -1
  %40 = add i16 %39, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %40)
  %tobool53.not465 = icmp sgt i16 %40, -1
  br i1 %tobool53.not465, label %if.else164.preheader, label %for.body.if.then54_crit_edge

for.body.if.then54_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then54

if.else164.preheader:                             ; preds = %for.body
  %41 = zext i16 %n.0493 to i32
  %umax = call i16 @llvm.umax.i16(i16 %n.0493, i16 %33)
  %wide.trip.count = zext i16 %umax to i32
  br label %if.else164

if.then54.loopexit:                               ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #20
  %42 = trunc i32 %indvars.iv.next to i16
  br label %if.then54

if.then54:                                        ; preds = %if.then54.loopexit, %for.body.if.then54_crit_edge
  %nacked.1.lcssa = phi i16 [ %nacked.0491, %for.body.if.then54_crit_edge ], [ %148, %if.then54.loopexit ]
  %ngap.1.lcssa = phi i16 [ %ngap.0492, %for.body.if.then54_crit_edge ], [ %150, %if.then54.loopexit ]
  %n.1.lcssa = phi i16 [ %n.0493, %for.body.if.then54_crit_edge ], [ %42, %if.then54.loopexit ]
  br i1 %tobool.not.i, label %if.end57, label %if.then54.release_crit_edge

if.then54.release_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #20
  br label %release

if.end57:                                         ; preds = %if.then54
  %43 = ptrtoint ptr %acked7 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %acked7, align 2
  %45 = sub i16 %44, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %45)
  %tobool60.not = icmp sgt i16 %45, -1
  br i1 %tobool60.not, label %if.end57.for.inc_crit_edge, label %while.cond.preheader

if.end57.for.inc_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

while.cond.preheader:                             ; preds = %if.end57
  %46 = sub i16 %end.0494, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %46)
  %tobool64.not471 = icmp sgt i16 %46, -1
  %brmerge399472 = select i1 %tobool64.not471, i1 true, i1 %tobool.not
  br i1 %brmerge399472, label %while.cond.preheader.while.end_crit_edge, label %lor.lhs.false.preheader

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

lor.lhs.false.preheader:                          ; preds = %while.cond.preheader
  %47 = zext i16 %si.0500 to i32
  %48 = ptrtoint ptr %bgack_cnt67 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bgack_cnt67, align 1
  %50 = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %50)
  %cmp69.not591 = icmp ult i32 %47, %50
  br i1 %cmp69.not591, label %lor.lhs.false.preheader.if.end72_crit_edge, label %lor.lhs.false.preheader.while.end.loopexit.split.loop.exit558_crit_edge

lor.lhs.false.preheader.while.end.loopexit.split.loop.exit558_crit_edge: ; preds = %lor.lhs.false.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.loopexit.split.loop.exit558

lor.lhs.false.preheader.if.end72_crit_edge:       ; preds = %lor.lhs.false.preheader
  br label %if.end72

lor.lhs.false:                                    ; preds = %if.end147
  %51 = ptrtoint ptr %bgack_cnt67 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bgack_cnt67, align 1
  %53 = zext i8 %52 to i32
  %cmp69.not = icmp ult i32 %indvars.iv.next532, %53
  br i1 %cmp69.not, label %lor.lhs.false.if.end72_crit_edge, label %lor.lhs.false.while.end.loopexit.split.loop.exit558_crit_edge

lor.lhs.false.while.end.loopexit.split.loop.exit558_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.loopexit.split.loop.exit558

lor.lhs.false.if.end72_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end72

if.end72:                                         ; preds = %lor.lhs.false.if.end72_crit_edge, %lor.lhs.false.preheader.if.end72_crit_edge
  %54 = phi i32 [ %53, %lor.lhs.false.if.end72_crit_edge ], [ %50, %lor.lhs.false.preheader.if.end72_crit_edge ]
  %55 = phi i8 [ %52, %lor.lhs.false.if.end72_crit_edge ], [ %49, %lor.lhs.false.preheader.if.end72_crit_edge ]
  %end.1473595 = phi i16 [ %57, %lor.lhs.false.if.end72_crit_edge ], [ %end.0494, %lor.lhs.false.preheader.if.end72_crit_edge ]
  %offset.1475594 = phi i16 [ %59, %lor.lhs.false.if.end72_crit_edge ], [ %offset.0498, %lor.lhs.false.preheader.if.end72_crit_edge ]
  %si.1476593 = phi i16 [ %inc, %lor.lhs.false.if.end72_crit_edge ], [ %si.0500, %lor.lhs.false.preheader.if.end72_crit_edge ]
  %indvars.iv531592 = phi i32 [ %indvars.iv.next532, %lor.lhs.false.if.end72_crit_edge ], [ %47, %lor.lhs.false.preheader.if.end72_crit_edge ]
  %add75 = add i16 %end.1473595, 1
  %add76 = add i16 %add75, %offset.1475594
  %arrayidx80 = getelementptr %struct.tipc_gap_ack_blks, ptr %1, i32 0, i32 3, i32 %indvars.iv531592
  %56 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx80, align 2
  %gap85 = getelementptr %struct.tipc_gap_ack_blks, ptr %1, i32 0, i32 3, i32 %indvars.iv531592, i32 1
  %58 = ptrtoint ptr %gap85 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %gap85, align 2
  %indvars.iv.next532 = add nuw nsw i32 %indvars.iv531592, 1
  %inc = add nuw i16 %si.1476593, 1
  %60 = sub i16 %57, %add76
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %60)
  %tobool87.not = icmp sgt i16 %60, -1
  br i1 %tobool87.not, label %lor.lhs.false88, label %if.end72.land.rhs_crit_edge

if.end72.land.rhs_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

lor.lhs.false88:                                  ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool89.not = icmp eq i16 %59, 0
  br i1 %tobool89.not, label %land.lhs.true90, label %lor.rhs

land.lhs.true90:                                  ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.next532, i32 %54)
  %cmp94 = icmp ult i32 %indvars.iv.next532, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %indvars.iv531592)
  %cmp97 = icmp ugt i32 %indvars.iv531592, 127
  %or.cond = or i1 %cmp97, %cmp94
  br i1 %or.cond, label %land.lhs.true90.land.rhs_crit_edge, label %land.lhs.true90.if.end147_crit_edge

land.lhs.true90.if.end147_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end147

land.lhs.true90.land.rhs_crit_edge:               ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

lor.rhs:                                          ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %indvars.iv531592)
  %cmp97.old = icmp ugt i32 %indvars.iv531592, 127
  br i1 %cmp97.old, label %lor.rhs.land.rhs_crit_edge, label %lor.rhs.if.end147_crit_edge

lor.rhs.if.end147_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end147

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %land.lhs.true90.land.rhs_crit_edge, %if.end72.land.rhs_crit_edge
  %.b398 = load i1, ptr @tipc_link_advance_transmq.__already_done, align 1
  br i1 %.b398, label %land.rhs.if.end147_crit_edge, label %if.then115, !prof !242

land.rhs.if.end147_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end147

if.then115:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @tipc_link_advance_transmq.__already_done, align 1
  %conv128 = zext i16 %add76 to i32
  %conv129 = zext i16 %57 to i32
  %conv130 = zext i16 %59 to i32
  %conv133 = zext i8 %55 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1623, i32 noundef 9, ptr noundef nonnull @.str.61, i32 noundef %conv128, i32 noundef %conv129, i32 noundef %conv130, i32 noundef %indvars.iv.next532, i32 noundef %conv133) #18
  br label %if.end147

if.end147:                                        ; preds = %if.then115, %land.rhs.if.end147_crit_edge, %lor.rhs.if.end147_crit_edge, %land.lhs.true90.if.end147_crit_edge
  %61 = sub i16 %57, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %61)
  %tobool64.not = icmp sgt i16 %61, -1
  br i1 %tobool64.not, label %if.end147.while.end_crit_edge, label %lor.lhs.false

if.end147.while.end_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end.loopexit.split.loop.exit558:            ; preds = %lor.lhs.false.while.end.loopexit.split.loop.exit558_crit_edge, %lor.lhs.false.preheader.while.end.loopexit.split.loop.exit558_crit_edge
  %indvars.iv531.lcssa = phi i32 [ %47, %lor.lhs.false.preheader.while.end.loopexit.split.loop.exit558_crit_edge ], [ %indvars.iv.next532, %lor.lhs.false.while.end.loopexit.split.loop.exit558_crit_edge ]
  %offset.1475.lcssa = phi i16 [ %offset.0498, %lor.lhs.false.preheader.while.end.loopexit.split.loop.exit558_crit_edge ], [ %59, %lor.lhs.false.while.end.loopexit.split.loop.exit558_crit_edge ]
  %start.1474.lcssa = phi i16 [ %start.0496, %lor.lhs.false.preheader.while.end.loopexit.split.loop.exit558_crit_edge ], [ %add76, %lor.lhs.false.while.end.loopexit.split.loop.exit558_crit_edge ]
  %end.1473.lcssa = phi i16 [ %end.0494, %lor.lhs.false.preheader.while.end.loopexit.split.loop.exit558_crit_edge ], [ %57, %lor.lhs.false.while.end.loopexit.split.loop.exit558_crit_edge ]
  %62 = trunc i32 %indvars.iv531.lcssa to i16
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit.split.loop.exit558, %if.end147.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %end.1.lcssa = phi i16 [ %end.0494, %while.cond.preheader.while.end_crit_edge ], [ %end.1473.lcssa, %while.end.loopexit.split.loop.exit558 ], [ %57, %if.end147.while.end_crit_edge ]
  %start.1.lcssa = phi i16 [ %start.0496, %while.cond.preheader.while.end_crit_edge ], [ %start.1474.lcssa, %while.end.loopexit.split.loop.exit558 ], [ %add76, %if.end147.while.end_crit_edge ]
  %offset.1.lcssa = phi i16 [ %offset.0498, %while.cond.preheader.while.end_crit_edge ], [ %offset.1475.lcssa, %while.end.loopexit.split.loop.exit558 ], [ %59, %if.end147.while.end_crit_edge ]
  %si.1.lcssa = phi i16 [ %si.0500, %while.cond.preheader.while.end_crit_edge ], [ %62, %while.end.loopexit.split.loop.exit558 ], [ %inc, %if.end147.while.end_crit_edge ]
  %63 = xor i16 %start.1.lcssa, -1
  %64 = add i16 %63, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool.not.i.i = icmp slt i16 %64, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %start.1.lcssa, i16 %conv.i.i)
  %cmp.i.i = icmp ne i16 %start.1.lcssa, %conv.i.i
  %65 = xor i16 %end.1.lcssa, -1
  %66 = add i16 %65, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %66)
  %tobool156.not435 = icmp sgt i16 %66, -1
  %not.tobool.not.i404 = and i1 %cmp.i.i, %tobool.not.i.i
  %tobool156.not = select i1 %not.tobool.not.i404, i1 true, i1 %tobool156.not435
  br i1 %tobool156.not, label %if.end158, label %while.end.for.inc_crit_edge

while.end.for.inc_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end158:                                        ; preds = %while.end
  %ackers = getelementptr inbounds %struct.sk_buff, ptr %skb.0489, i32 0, i32 3, i32 22
  %67 = ptrtoint ptr %ackers to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %ackers, align 2
  %dec = add i16 %68, -1
  store i16 %dec, ptr %ackers, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %tobool160.not = icmp eq i16 %dec, 0
  br i1 %tobool160.not, label %if.end158.release_crit_edge, label %if.end158.for.inc_crit_edge

if.end158.for.inc_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end158.release_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #20
  br label %release

release:                                          ; preds = %if.end158.release_crit_edge, %if.then54.release_crit_edge
  %end.2 = phi i16 [ %end.0494, %if.then54.release_crit_edge ], [ %end.1.lcssa, %if.end158.release_crit_edge ]
  %start.2 = phi i16 [ %start.0496, %if.then54.release_crit_edge ], [ %start.1.lcssa, %if.end158.release_crit_edge ]
  %offset.2 = phi i16 [ %offset.0498, %if.then54.release_crit_edge ], [ %offset.1.lcssa, %if.end158.release_crit_edge ]
  %si.2 = phi i16 [ %si.0500, %if.then54.release_crit_edge ], [ %si.1.lcssa, %if.end158.release_crit_edge ]
  %bc_has_acked.1.off0 = phi i1 [ %bc_has_acked.0.off0502, %if.then54.release_crit_edge ], [ true, %if.end158.release_crit_edge ]
  %69 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %70, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %71 = ptrtoint ptr %skb.0489 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %skb.0489, align 8
  %prev9.i = getelementptr inbounds %struct.anon.83, ptr %skb.0489, i32 0, i32 1
  %73 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.0489, align 8
  %prev17.i = getelementptr inbounds %struct.anon.83, ptr %72, i32 0, i32 1
  %75 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %74, ptr %prev17.i, align 4
  %76 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %72, ptr %74, align 8
  tail call void @kfree_skb_reason(ptr noundef %skb.0489, i32 noundef 0) #18
  br label %for.inc

if.else164:                                       ; preds = %if.end223.if.else164_crit_edge, %if.else164.preheader
  %indvars.iv = phi i32 [ %41, %if.else164.preheader ], [ %indvars.iv.next, %if.end223.if.else164_crit_edge ]
  %ngap.1467 = phi i16 [ %ngap.0492, %if.else164.preheader ], [ %150, %if.end223.if.else164_crit_edge ]
  %nacked.1466 = phi i16 [ %nacked.0491, %if.else164.preheader ], [ %148, %if.end223.if.else164_crit_edge ]
  %add167 = add i16 %ngap.1467, %nacked.1466
  %77 = xor i16 %add167, -1
  %78 = add i16 %77, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %78)
  %tobool170.not = icmp sgt i16 %78, -1
  br i1 %tobool170.not, label %if.else217, label %if.then171

if.then171:                                       ; preds = %if.else164
  %79 = trunc i32 %indvars.iv to i16
  %conv172 = and i32 %38, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv172)
  %cmp175 = icmp eq i32 %add, %conv172
  br i1 %cmp175, label %land.rhs177, label %if.then171.if.end188_crit_edge

if.then171.if.end188_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end188

land.rhs177:                                      ; preds = %if.then171
  %80 = ptrtoint ptr %transmq to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %transmq, align 4
  %cmp.i77.i = icmp eq ptr %81, %transmq
  %tobool.not91.i = icmp eq ptr %81, null
  %tobool.not.i408 = or i1 %cmp.i77.i, %tobool.not91.i
  br i1 %tobool.not.i408, label %land.rhs177.if.end188_crit_edge, label %if.end.i

land.rhs177.if.end188_crit_edge:                  ; preds = %land.rhs177
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end188

if.end.i:                                         ; preds = %land.rhs177
  %retr_cnt.i = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 3, i32 24
  %82 = ptrtoint ptr %retr_cnt.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %retr_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool1.not.i = icmp eq i16 %83, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end188_crit_edge, label %if.end3.i

if.end.i.if.end188_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end188

if.end3.i:                                        ; preds = %if.end.i
  %retr_stamp.i = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 3, i32 8
  %84 = ptrtoint ptr %retr_stamp.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %retr_stamp.i, align 8
  %86 = ptrtoint ptr %tolerance.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tolerance.i, align 4
  %mul.i = mul i32 %87, 10
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i) #18
  %add.i = add i32 %call2.i.i, %85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %sub.i410 = sub i32 %add.i, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i410)
  %cmp.i = icmp slt i32 %sub.i410, 0
  br i1 %cmp.i, label %if.end8.i, label %if.end3.i.if.end188_crit_edge

if.end3.i.if.end188_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end188

if.end8.i:                                        ; preds = %if.end3.i
  %data.i.i411 = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 19
  %89 = ptrtoint ptr %data.i.i411 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i.i411, align 4
  %91 = ptrtoint ptr %bc_sndlink.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bc_sndlink.i, align 4
  %tobool.not.i.i412 = icmp eq ptr %92, null
  br i1 %tobool.not.i.i412, label %land.lhs.true.i, label %if.end8.i.do.end.i_crit_edge

if.end8.i.do.end.i_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end8.i
  %93 = ptrtoint ptr %acked7 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %acked7, align 2
  %arrayidx.i.i.i.i413 = getelementptr [15 x i32], ptr %90, i32 0, i32 2
  %95 = ptrtoint ptr %arrayidx.i.i.i.i413 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i.i.i.i413, align 4
  %conv.i.i414 = trunc i32 %96 to i16
  %97 = xor i16 %conv.i.i414, -1
  %98 = add i16 %94, %97
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %98)
  %tobool.not.i78.i = icmp sgt i16 %98, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %94, i16 %conv.i.i414)
  %cmp.i79.i = icmp eq i16 %94, %conv.i.i414
  %tobool13.not.i = or i1 %cmp.i79.i, %tobool.not.i78.i
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end188_crit_edge, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

land.lhs.true.i.if.end188_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end188

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %if.end8.i.do.end.i_crit_edge
  %retr_cnt.i.le = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 3, i32 24
  %retr_stamp.i.le = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 3, i32 8
  %name.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 1
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name.i) #23
  tail call fastcc void @link_print(ptr noundef %l) #18
  %99 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %90, align 4
  %shr.i.i.i = lshr i32 %100, 25
  %and.i.i.i = and i32 %shr.i.i.i, 15
  %arrayidx.i.i.i80.i = getelementptr [15 x i32], ptr %90, i32 0, i32 1
  %101 = ptrtoint ptr %arrayidx.i.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i.i.i80.i, align 4
  %shr.i.i81.i = lshr i32 %102, 29
  %and.i.i82.i = and i32 %100, 131071
  %shr.i.i84.i = lshr i32 %102, 25
  %and.i.i85.i = and i32 %shr.i.i84.i, 15
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %and.i.i.i, i32 noundef %shr.i.i81.i, i32 noundef %and.i.i82.i, i32 noundef %and.i.i85.i) #23
  %arrayidx.i.i.i86.i = getelementptr [15 x i32], ptr %90, i32 0, i32 2
  %103 = ptrtoint ptr %arrayidx.i.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i.i.i86.i, align 4
  %conv.i = and i32 %104, 65535
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %90, i32 0, i32 3
  %105 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i88.i = getelementptr [15 x i32], ptr %90, i32 0, i32 7
  %107 = ptrtoint ptr %arrayidx.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i.i88.i, align 4
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %conv.i, i32 noundef %106, i32 noundef %108) #23
  %109 = ptrtoint ptr %retr_stamp.i.le to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %retr_stamp.i.le, align 8
  %call41.i = tail call i32 @jiffies_to_msecs(i32 noundef %110) #18
  %111 = ptrtoint ptr %retr_cnt.i.le to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %retr_cnt.i.le, align 8
  %conv45.i = zext i16 %112 to i32
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %call41.i, i32 noundef %conv45.i) #23
  tail call fastcc void @trace_tipc_list_dump(ptr noundef %transmq) #18
  tail call fastcc void @trace_tipc_link_dump(ptr noundef %l, ptr noundef nonnull @.str.74) #18
  tail call fastcc void @trace_tipc_link_dump(ptr noundef %r, ptr noundef nonnull @.str.74) #18
  %113 = ptrtoint ptr %bc_sndlink.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bc_sndlink.i, align 4
  %tobool.not.i90.i = icmp eq ptr %114, null
  br i1 %tobool.not.i90.i, label %if.then49.i, label %if.else.i

if.then49.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %state.i = getelementptr inbounds %struct.tipc_link, ptr %r, i32 0, i32 11
  %115 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 256, ptr %state.i, align 4
  br label %for.end.thread

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %call50.i = tail call i32 @tipc_link_fsm_evt(ptr noundef %l, i32 noundef 16388366) #18
  br label %for.end.thread

if.end188:                                        ; preds = %land.lhs.true.i.if.end188_crit_edge, %if.end3.i.if.end188_crit_edge, %if.end.i.if.end188_crit_edge, %land.rhs177.if.end188_crit_edge, %if.then171.if.end188_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %116 = load volatile i32, ptr @jiffies, align 128
  %nxt_retr = getelementptr inbounds %struct.sk_buff, ptr %skb.0489, i32 0, i32 3, i32 4
  %117 = ptrtoint ptr %nxt_retr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nxt_retr, align 4
  %sub191 = sub i32 %116, %118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub191)
  %cmp192 = icmp slt i32 %sub191, 0
  br i1 %cmp192, label %if.end188.for.inc_crit_edge, label %if.end195

if.end188.for.inc_crit_edge:                      ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end195:                                        ; preds = %if.end188
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %add3.sink.in.i = load volatile i32, ptr @jiffies, align 128
  %add3.sink.i = add i32 %add3.sink.in.i, 1
  %119 = ptrtoint ptr %nxt_retr to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add3.sink.i, ptr %nxt_retr, align 4
  %120 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0489, i32 0, i32 18
  %122 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %121 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %123 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i = tail call ptr @__pskb_copy_fclone(ptr noundef %skb.0489, i32 noundef %sub.ptr.sub.i.i, i32 noundef 2592, i1 noundef zeroext false) #18
  %tobool197.not = icmp eq ptr %call.i.i, null
  br i1 %tobool197.not, label %if.end195.for.inc_crit_edge, label %if.end199

if.end195.for.inc_crit_edge:                      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end199:                                        ; preds = %if.end195
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %124 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx.i.i, align 4
  %and2.i.i = and i32 %127, 65535
  %or.i.i = or i32 %and2.i.i, %shl.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i419 = getelementptr [15 x i32], ptr %125, i32 0, i32 1
  %128 = ptrtoint ptr %arrayidx.i.i419 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i.i419, align 4
  %and2.i.i420 = and i32 %129, -65536
  %or.i.i421 = or i32 %and2.i.i420, %conv.i418
  store i32 %or.i.i421, ptr %arrayidx.i.i419, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %130 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 7, ptr %priority, align 4
  %131 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %prev.i.i, align 4
  %133 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %xmitq, ptr %call.i.i, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %call.i.i, i32 0, i32 1
  %134 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %132, ptr %prev10.i.i.i, align 4
  store volatile ptr %call.i.i, ptr %prev.i.i, align 4
  %135 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %call.i.i, ptr %132, align 4
  %136 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %137, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %138 = ptrtoint ptr %retransmitted201 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %retransmitted201, align 4
  %inc202 = add i32 %139, 1
  store i32 %inc202, ptr %retransmitted201, align 4
  br i1 %tobool.not.i, label %if.then204, label %if.end199.if.end208_crit_edge

if.end199.if.end208_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end208

if.then204:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #20
  %140 = ptrtoint ptr %retransmitted206 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %retransmitted206, align 4
  %inc207 = add i32 %141, 1
  store i32 %inc207, ptr %retransmitted206, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.then204, %if.end199.if.end208_crit_edge
  %142 = ptrtoint ptr %retransmitted to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %retransmitted, align 1
  %retr_cnt = getelementptr inbounds %struct.sk_buff, ptr %skb.0489, i32 0, i32 3, i32 24
  %143 = ptrtoint ptr %retr_cnt to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %retr_cnt, align 8
  %inc211 = add i16 %144, 1
  store i16 %inc211, ptr %retr_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %144)
  %tobool212.not = icmp eq i16 %144, 0
  br i1 %tobool212.not, label %if.then213, label %if.end208.for.inc_crit_edge

if.end208.for.inc_crit_edge:                      ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then213:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %145 = load volatile i32, ptr @jiffies, align 128
  %retr_stamp = getelementptr inbounds %struct.sk_buff, ptr %skb.0489, i32 0, i32 3, i32 8
  %146 = ptrtoint ptr %retr_stamp to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %retr_stamp, align 8
  br label %for.inc

if.else217:                                       ; preds = %if.else164
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %wide.trip.count)
  %exitcond.not = icmp eq i32 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.else217.for.end_crit_edge, label %if.end223

if.else217.for.end_crit_edge:                     ; preds = %if.else217
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end223:                                        ; preds = %if.else217
  %arrayidx225 = getelementptr %struct.tipc_gap_ack, ptr %gacks.0, i32 %indvars.iv
  %147 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %arrayidx225, align 2
  %gap229 = getelementptr %struct.tipc_gap_ack, ptr %gacks.0, i32 %indvars.iv, i32 1
  %149 = ptrtoint ptr %gap229 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %gap229, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %151 = xor i16 %148, -1
  %152 = add i16 %151, %conv.i.i
  %tobool53.not = icmp sgt i16 %152, -1
  br i1 %tobool53.not, label %if.end223.if.else164_crit_edge, label %if.then54.loopexit

if.end223.if.else164_crit_edge:                   ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else164

for.inc:                                          ; preds = %if.then213, %if.end208.for.inc_crit_edge, %if.end195.for.inc_crit_edge, %if.end188.for.inc_crit_edge, %release, %if.end158.for.inc_crit_edge, %while.end.for.inc_crit_edge, %if.end57.for.inc_crit_edge
  %nacked.1445 = phi i16 [ %nacked.1.lcssa, %release ], [ %nacked.1.lcssa, %while.end.for.inc_crit_edge ], [ %nacked.1.lcssa, %if.end158.for.inc_crit_edge ], [ %nacked.1.lcssa, %if.end57.for.inc_crit_edge ], [ %nacked.1466, %if.end188.for.inc_crit_edge ], [ %nacked.1466, %if.end208.for.inc_crit_edge ], [ %nacked.1466, %if.then213 ], [ %nacked.1466, %if.end195.for.inc_crit_edge ]
  %ngap.1442 = phi i16 [ %ngap.1.lcssa, %release ], [ %ngap.1.lcssa, %while.end.for.inc_crit_edge ], [ %ngap.1.lcssa, %if.end158.for.inc_crit_edge ], [ %ngap.1.lcssa, %if.end57.for.inc_crit_edge ], [ %ngap.1467, %if.end188.for.inc_crit_edge ], [ %ngap.1467, %if.end208.for.inc_crit_edge ], [ %ngap.1467, %if.then213 ], [ %ngap.1467, %if.end195.for.inc_crit_edge ]
  %n.1439 = phi i16 [ %n.1.lcssa, %release ], [ %n.1.lcssa, %while.end.for.inc_crit_edge ], [ %n.1.lcssa, %if.end158.for.inc_crit_edge ], [ %n.1.lcssa, %if.end57.for.inc_crit_edge ], [ %79, %if.end188.for.inc_crit_edge ], [ %79, %if.end208.for.inc_crit_edge ], [ %79, %if.then213 ], [ %79, %if.end195.for.inc_crit_edge ]
  %end.3 = phi i16 [ %end.2, %release ], [ %end.1.lcssa, %while.end.for.inc_crit_edge ], [ %end.1.lcssa, %if.end158.for.inc_crit_edge ], [ %end.0494, %if.end57.for.inc_crit_edge ], [ %end.0494, %if.end188.for.inc_crit_edge ], [ %end.0494, %if.end208.for.inc_crit_edge ], [ %end.0494, %if.then213 ], [ %end.0494, %if.end195.for.inc_crit_edge ]
  %start.3 = phi i16 [ %start.2, %release ], [ %start.1.lcssa, %while.end.for.inc_crit_edge ], [ %start.1.lcssa, %if.end158.for.inc_crit_edge ], [ %start.0496, %if.end57.for.inc_crit_edge ], [ %start.0496, %if.end188.for.inc_crit_edge ], [ %start.0496, %if.end208.for.inc_crit_edge ], [ %start.0496, %if.then213 ], [ %start.0496, %if.end195.for.inc_crit_edge ]
  %offset.3 = phi i16 [ %offset.2, %release ], [ %offset.1.lcssa, %while.end.for.inc_crit_edge ], [ %offset.1.lcssa, %if.end158.for.inc_crit_edge ], [ %offset.0498, %if.end57.for.inc_crit_edge ], [ %offset.0498, %if.end188.for.inc_crit_edge ], [ %offset.0498, %if.end208.for.inc_crit_edge ], [ %offset.0498, %if.then213 ], [ %offset.0498, %if.end195.for.inc_crit_edge ]
  %si.3 = phi i16 [ %si.2, %release ], [ %si.1.lcssa, %while.end.for.inc_crit_edge ], [ %si.1.lcssa, %if.end158.for.inc_crit_edge ], [ %si.0500, %if.end57.for.inc_crit_edge ], [ %si.0500, %if.end188.for.inc_crit_edge ], [ %si.0500, %if.end208.for.inc_crit_edge ], [ %si.0500, %if.then213 ], [ %si.0500, %if.end195.for.inc_crit_edge ]
  %bc_has_acked.2.off0 = phi i1 [ %bc_has_acked.1.off0, %release ], [ %bc_has_acked.0.off0502, %while.end.for.inc_crit_edge ], [ true, %if.end158.for.inc_crit_edge ], [ %bc_has_acked.0.off0502, %if.end57.for.inc_crit_edge ], [ %bc_has_acked.0.off0502, %if.end188.for.inc_crit_edge ], [ %bc_has_acked.0.off0502, %if.end208.for.inc_crit_edge ], [ %bc_has_acked.0.off0502, %if.then213 ], [ %bc_has_acked.0.off0502, %if.end195.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %tmp.0505, %transmq
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else217.for.end_crit_edge
  %end.0464 = phi i16 [ %end.0494, %if.else217.for.end_crit_edge ], [ %end.3, %for.inc.for.end_crit_edge ]
  %start.0460 = phi i16 [ %start.0496, %if.else217.for.end_crit_edge ], [ %start.3, %for.inc.for.end_crit_edge ]
  %offset.0456 = phi i16 [ %offset.0498, %if.else217.for.end_crit_edge ], [ %offset.3, %for.inc.for.end_crit_edge ]
  %si.0452 = phi i16 [ %si.0500, %if.else217.for.end_crit_edge ], [ %si.3, %for.inc.for.end_crit_edge ]
  %bc_has_acked.0.off0448 = phi i1 [ %bc_has_acked.0.off0502, %if.else217.for.end_crit_edge ], [ %bc_has_acked.2.off0, %for.inc.for.end_crit_edge ]
  br i1 %bc_has_acked.0.off0448, label %if.then235, label %for.end.if.else275_crit_edge

for.end.if.else275_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else275

for.end.thread:                                   ; preds = %if.else.i, %if.then49.i
  %call50.sink.i = phi i32 [ %call50.i, %if.else.i ], [ 2, %if.then49.i ]
  %153 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %rc, align 4
  %or51.i = or i32 %154, %call50.sink.i
  store i32 %or51.i, ptr %rc, align 4
  tail call void @kfree(ptr noundef %this_ga.0) #18
  br i1 %bc_has_acked.0.off0502, label %for.end.thread.if.else240_crit_edge, label %for.end.thread.if.else275_crit_edge

for.end.thread.if.else275_crit_edge:              ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else275

for.end.thread.if.else240_crit_edge:              ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else240

if.then235:                                       ; preds = %for.end
  %tobool236.not = icmp eq ptr %this_ga.0, null
  br i1 %tobool236.not, label %if.then235.if.else240_crit_edge, label %if.then237

if.then235.if.else240_crit_edge:                  ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else240

if.then237:                                       ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree(ptr noundef %1) #18
  %155 = ptrtoint ptr %last_ga1 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %this_ga.0, ptr %last_ga1, align 4
  br label %if.end273

if.else240:                                       ; preds = %if.then235.if.else240_crit_edge, %for.end.thread.if.else240_crit_edge
  %end.0463 = phi i16 [ %end.0494, %for.end.thread.if.else240_crit_edge ], [ %end.0464, %if.then235.if.else240_crit_edge ]
  %start.0459 = phi i16 [ %start.0496, %for.end.thread.if.else240_crit_edge ], [ %start.0460, %if.then235.if.else240_crit_edge ]
  %offset.0455 = phi i16 [ %offset.0498, %for.end.thread.if.else240_crit_edge ], [ %offset.0456, %if.then235.if.else240_crit_edge ]
  %si.0451 = phi i16 [ %si.0500, %for.end.thread.if.else240_crit_edge ], [ %si.0452, %if.then235.if.else240_crit_edge ]
  br i1 %tobool.not, label %if.else240.if.end273_crit_edge, label %if.then242

if.else240.if.end273_crit_edge:                   ; preds = %if.else240
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end273

if.then242:                                       ; preds = %if.else240
  %156 = xor i16 %start.0459, -1
  %157 = add i16 %156, %acked
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %157)
  %tobool.not.i422 = icmp sgt i16 %157, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %start.0459, i16 %acked)
  %cmp.i423 = icmp eq i16 %start.0459, %acked
  %tobool244.not = or i1 %cmp.i423, %tobool.not.i422
  br i1 %tobool244.not, label %if.else252, label %if.then245

if.then245:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #20
  %dec246 = add i16 %si.0451, -1
  %158 = xor i16 %acked, -1
  %sub250 = add i16 %start.0459, %158
  br label %if.end257

if.else252:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #20
  %159 = xor i16 %end.0463, -1
  %160 = add i16 %159, %acked
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %160)
  %tobool.not.i424 = icmp sgt i16 %160, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %end.0463, i16 %acked)
  %cmp.i425 = icmp eq i16 %end.0463, %acked
  %tobool254.not = or i1 %cmp.i425, %tobool.not.i424
  %spec.select = select i1 %tobool254.not, i16 %acked, i16 %end.0463
  br label %if.end257

if.end257:                                        ; preds = %if.else252, %if.then245
  %offset.4 = phi i16 [ %sub250, %if.then245 ], [ %offset.0455, %if.else252 ]
  %si.4 = phi i16 [ %dec246, %if.then245 ], [ %si.0451, %if.else252 ]
  %acked.addr.0 = phi i16 [ %acked, %if.then245 ], [ %spec.select, %if.else252 ]
  %bgack_cnt259 = getelementptr inbounds %struct.tipc_gap_ack_blks, ptr %1, i32 0, i32 2
  %161 = ptrtoint ptr %bgack_cnt259 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %bgack_cnt259, align 1
  %163 = zext i8 %162 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %si.4, i16 %163)
  %cmp261 = icmp ult i16 %si.4, %163
  br i1 %cmp261, label %if.then263, label %if.else266

if.then263:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #20
  %conv264 = trunc i16 %si.4 to i8
  %164 = getelementptr inbounds %struct.tipc_gap_ack_blks, ptr %1, i32 0, i32 1
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv264, ptr %164, align 2
  br label %if.end273

if.else266:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree(ptr noundef nonnull %1) #18
  %166 = ptrtoint ptr %last_ga1 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %last_ga1, align 4
  br label %if.end273

if.end273:                                        ; preds = %if.else266, %if.then263, %if.else240.if.end273_crit_edge, %if.then237
  %.sink = phi i16 [ 0, %if.else266 ], [ %offset.4, %if.then263 ], [ %gap, %if.then237 ], [ 0, %if.else240.if.end273_crit_edge ]
  %acked.addr.1 = phi i16 [ %acked.addr.0, %if.else266 ], [ %acked.addr.0, %if.then263 ], [ %acked, %if.then237 ], [ %acked, %if.else240.if.end273_crit_edge ]
  %167 = ptrtoint ptr %last_gap to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %.sink, ptr %last_gap, align 4
  %168 = ptrtoint ptr %acked7 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %acked.addr.1, ptr %acked7, align 2
  br label %if.end276

if.else275:                                       ; preds = %for.end.thread.if.else275_crit_edge, %for.end.if.else275_crit_edge, %if.end46.if.else275_crit_edge
  %this_ga.1431 = phi ptr [ null, %for.end.thread.if.else275_crit_edge ], [ %this_ga.0, %for.end.if.else275_crit_edge ], [ %this_ga.0, %if.end46.if.else275_crit_edge ]
  tail call void @kfree(ptr noundef %this_ga.1431) #18
  br label %if.end276

if.end276:                                        ; preds = %if.else275, %if.end273
  %169 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %qlen.i, align 4
  %sub279 = sub i32 %3, %170
  ret i32 %sub279
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__tipc_skb_queue_sorted(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_link_build_nack_msg(ptr noundef %l, ptr noundef %xmitq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %deferred_recv = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 19
  %0 = ptrtoint ptr %deferred_recv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %deferred_recv, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %deferred_recv, align 4
  %deferdq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32
  %qlen.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  %bc_rcvlink.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 48
  %4 = ptrtoint ptr %bc_rcvlink.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bc_rcvlink.i, align 4
  %cmp.i = icmp eq ptr %5, %l
  br i1 %cmp.i, label %link_is_bc_rcvlink.exit, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

link_is_bc_rcvlink.exit:                          ; preds = %entry
  %bc_sndlink.i.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 49
  %6 = ptrtoint ptr %bc_sndlink.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bc_sndlink.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.not, label %link_is_bc_rcvlink.exit.if.end5_crit_edge, label %if.then

link_is_bc_rcvlink.exit.if.end5_crit_edge:        ; preds = %link_is_bc_rcvlink.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then:                                          ; preds = %link_is_bc_rcvlink.exit
  call void @__sanitizer_cov_trace_pc() #20
  %net = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 2
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %9) #18
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %node_addr.i, align 4
  %12 = xor i32 %11, %inc
  %13 = and i32 %12, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  %. = select i1 %cmp, i32 4, i32 0
  br label %cleanup

if.end5:                                          ; preds = %link_is_bc_rcvlink.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp6 = icmp ugt i32 %3, 2
  br i1 %cmp6, label %land.lhs.true, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end5
  %sub = add i32 %3, 13
  %rem = and i32 %sub, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.then7, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %deferdq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %deferdq, align 4
  %cmp.i25 = icmp eq ptr %15, %deferdq
  %spec.store.select.i = select i1 %cmp.i25, ptr null, ptr %15
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %conv.i.i = trunc i32 %19 to i16
  %rcv_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %20 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rcv_nxt, align 2
  %sub11 = sub i16 %conv.i.i, %21
  tail call fastcc void @tipc_link_build_proto_msg(ptr noundef %l, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i16 noundef zeroext %sub11, i32 noundef 0, i32 noundef 0, ptr noundef %xmitq)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %land.lhs.true.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ 0, %if.then7 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_link_tnl_rcv(ptr noundef %l, ptr noundef %skb, ptr noundef %inputq) unnamed_addr #2 align 64 {
entry:
  %skb.addr = alloca ptr, align 4
  %iskb = alloca ptr, align 4
  %ipos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skb.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %skb, ptr %skb.addr, align 4
  %failover_reasm_skb = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 22
  %reasm_tnlmsg1 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 43
  %failover_deferdq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 23
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iskb) #18
  %3 = ptrtoint ptr %iskb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %iskb, align 4, !annotation !255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ipos) #18
  %4 = ptrtoint ptr %ipos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ipos, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %6)
  %cmp = icmp ult i32 %6, 536870912
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i.i131 = getelementptr [15 x i32], ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i.i131, align 4
  %and.i.i = and i32 %8, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then7, label %if.else, !prof !242

if.then7:                                         ; preds = %if.end
  %call8 = call zeroext i1 @tipc_msg_extract(ptr noundef %skb, ptr noundef nonnull %iskb, ptr noundef nonnull %ipos) #18
  br i1 %call8, label %if.end24, label %if.then17, !prof !242

if.then17:                                        ; preds = %if.then7
  %call18 = call i32 @___ratelimit(ptr noundef nonnull @tipc_link_tnl_rcv._rs, ptr noundef nonnull @__func__.tipc_link_tnl_rcv) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.cleanup_crit_edge, label %do.end

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #20
  %qlen.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 23, i32 1
  %9 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i, align 4
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %10) #23
  br label %cleanup

if.end24:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb.addr, align 4
  call void @kfree_skb_reason(ptr noundef %12, i32 noundef 0) #18
  br label %if.end54

if.else:                                          ; preds = %if.end
  %shr.i.i133 = lshr i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i.i133)
  %cmp26 = icmp eq i32 %shr.i.i133, 1
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %and2.i.i = and i32 %6, 536870911
  br label %if.end35

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i133, i32 %and.i.i)
  %cmp31 = icmp ult i32 %shr.i.i133, %and.i.i
  %and2.i.i139 = and i32 %6, 536870911
  br i1 %cmp31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #20
  %or.i.i = or i32 %and2.i.i139, 536870912
  br label %if.end35

if.else33:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #20
  %or.i.i142 = or i32 %and2.i.i139, 1073741824
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then32, %if.then27
  %or.i.i.sink = phi i32 [ %or.i.i, %if.then32 ], [ %or.i.i142, %if.else33 ], [ %and2.i.i, %if.then27 ]
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i.sink, ptr %arrayidx.i.i.i, align 4
  %call36 = call i32 @tipc_buf_append(ptr noundef %reasm_tnlmsg1, ptr noundef nonnull %skb.addr) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.end53

if.then38:                                        ; preds = %if.end35
  %14 = ptrtoint ptr %reasm_tnlmsg1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reasm_tnlmsg1, align 4
  %tobool39.not = icmp eq ptr %15, null
  br i1 %tobool39.not, label %lor.lhs.false, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then38
  %bc_rcvlink.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 48
  %16 = ptrtoint ptr %bc_rcvlink.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bc_rcvlink.i, align 4
  %cmp.i = icmp eq ptr %17, %l
  br i1 %cmp.i, label %link_is_bc_rcvlink.exit, label %lor.lhs.false.if.end42_crit_edge

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

link_is_bc_rcvlink.exit:                          ; preds = %lor.lhs.false
  %bc_sndlink.i.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 49
  %18 = ptrtoint ptr %bc_sndlink.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bc_sndlink.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.not, label %link_is_bc_rcvlink.exit.if.end42_crit_edge, label %link_is_bc_rcvlink.exit.cleanup_crit_edge

link_is_bc_rcvlink.exit.cleanup_crit_edge:        ; preds = %link_is_bc_rcvlink.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

link_is_bc_rcvlink.exit.if.end42_crit_edge:       ; preds = %link_is_bc_rcvlink.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

if.end42:                                         ; preds = %link_is_bc_rcvlink.exit.if.end42_crit_edge, %lor.lhs.false.if.end42_crit_edge
  %call43 = call i32 @___ratelimit(ptr noundef nonnull @tipc_link_tnl_rcv._rs.81, ptr noundef nonnull @__func__.tipc_link_tnl_rcv) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end42.if.end51_crit_edge, label %do.end48

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #23
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %if.end42.if.end51_crit_edge
  %call52 = call i32 @tipc_link_fsm_evt(ptr noundef %l, i32 noundef 16388366)
  br label %cleanup

if.end53:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb.addr, align 4
  %22 = ptrtoint ptr %iskb to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %iskb, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end24
  %drop_point = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 21
  %qlen.i.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 23, i32 1
  br label %do.body55

do.body55:                                        ; preds = %__tipc_skb_dequeue.exit, %if.end54
  %23 = ptrtoint ptr %iskb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iskb, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %conv.i.i = trunc i32 %28 to i16
  %29 = ptrtoint ptr %drop_point to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %drop_point, align 4
  %31 = xor i16 %30, -1
  %32 = add i16 %31, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %32)
  %tobool.not.i = icmp sgt i16 %32, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %conv.i.i)
  %cmp.i143 = icmp eq i16 %30, %conv.i.i
  %tobool58.not = or i1 %cmp.i143, %tobool.not.i
  br i1 %tobool58.not, label %if.end66, label %if.then65, !prof !242

if.then65:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree_skb_reason(ptr noundef %24, i32 noundef 0) #18
  br label %do.cond94

if.end66:                                         ; preds = %do.body55
  br i1 %cmp.i143, label %if.end79, label %if.then77, !prof !242

if.then77:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #20
  %call78 = call zeroext i1 @__tipc_skb_queue_sorted(ptr noundef %failover_deferdq, i16 noundef zeroext %conv.i.i, ptr noundef %24) #18
  br label %do.cond94

if.end79:                                         ; preds = %if.end66
  %inc = add i16 %conv.i.i, 1
  %33 = ptrtoint ptr %drop_point to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %inc, ptr %drop_point, align 4
  %call81 = call fastcc zeroext i1 @tipc_data_input(ptr noundef %l, ptr noundef %24, ptr noundef %inputq)
  br i1 %call81, label %if.end79.do.cond94_crit_edge, label %if.end84

if.end79.do.cond94_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond94

if.end84:                                         ; preds = %if.end79
  %34 = ptrtoint ptr %iskb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iskb, align 4
  %call83 = call fastcc i32 @tipc_link_input(ptr noundef %l, ptr noundef %35, ptr noundef %inputq, ptr noundef %failover_reasm_skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool85.not = icmp eq i32 %call83, 0
  br i1 %tobool85.not, label %if.end84.do.cond94_crit_edge, label %if.end84.cleanup_crit_edge, !prof !242

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end84.do.cond94_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond94

do.cond94:                                        ; preds = %if.end84.do.cond94_crit_edge, %if.end79.do.cond94_crit_edge, %if.then77, %if.then65
  %36 = ptrtoint ptr %failover_deferdq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %failover_deferdq, align 4
  %cmp.i.i = icmp eq ptr %37, %failover_deferdq
  %tobool.not8.i = icmp eq ptr %37, null
  %tobool.not.i144 = or i1 %cmp.i.i, %tobool.not8.i
  br i1 %tobool.not.i144, label %do.cond94.cleanup_crit_edge, label %land.lhs.true.i

do.cond94.cleanup_crit_edge:                      ; preds = %do.cond94
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true.i:                                  ; preds = %do.cond94
  %38 = ptrtoint ptr %drop_point to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %drop_point, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 19
  %40 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [15 x i32], ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %conv.i.i.i = trunc i32 %43 to i16
  %44 = xor i16 %39, -1
  %45 = add i16 %conv.i.i.i, %44
  %tobool3.not.i = icmp sgt i16 %45, -1
  br i1 %tobool3.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %__tipc_skb_dequeue.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

__tipc_skb_dequeue.exit:                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %46 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %48 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %37, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.83, ptr %37, i32 0, i32 1
  %50 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %37, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.83, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %51, ptr %prev17.i.i, align 4
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %49, ptr %51, align 8
  %54 = ptrtoint ptr %iskb to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %37, ptr %iskb, align 4
  br label %do.body55

cleanup:                                          ; preds = %land.lhs.true.i.cleanup_crit_edge, %do.cond94.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.end51, %link_is_bc_rcvlink.exit.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %do.end, %if.then17.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call52, %if.end51 ], [ 0, %do.end ], [ 0, %if.then17.cleanup_crit_edge ], [ 0, %link_is_bc_rcvlink.exit.cleanup_crit_edge ], [ 0, %if.then38.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %do.cond94.cleanup_crit_edge ], [ %call83, %if.end84.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ipos) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iskb) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tipc_data_input(ptr nocapture noundef readonly %l, ptr noundef %skb, ptr noundef %inputq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_rcvlink = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 48
  %0 = ptrtoint ptr %bc_rcvlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_rcvlink, align 4
  %inputq1 = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %inputq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inputq1, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %shr.i.i = lshr i32 %7, 25
  %and.i.i = and i32 %shr.i.i, 15
  %8 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %and.i.i, label %entry.do.end_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge35
    i32 2, label %entry.sw.bb_crit_edge36
    i32 3, label %entry.sw.bb_crit_edge37
    i32 8, label %entry.sw.bb8_crit_edge
    i32 9, label %sw.bb9
    i32 11, label %sw.bb10
    i32 6, label %entry.cleanup_crit_edge
    i32 10, label %entry.cleanup_crit_edge38
    i32 12, label %entry.cleanup_crit_edge39
    i32 5, label %entry.cleanup_crit_edge40
    i32 14, label %sw.bb13
  ]

entry.cleanup_crit_edge40:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.cleanup_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.cleanup_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb8

entry.sw.bb_crit_edge37:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge36:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge35, %entry.sw.bb_crit_edge36, %entry.sw.bb_crit_edge37
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp slt i32 %10, 0
  %shr.i.i.i.mask = and i32 %10, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.i.i.i.mask)
  %cond = icmp eq i32 %shr.i.i.i.mask, 536870912
  %or.cond = or i1 %tobool.not, %cond
  br i1 %or.cond, label %if.then, label %sw.bb.sw.bb8_crit_edge, !prof !257

sw.bb.sw.bb8_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb8

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @skb_queue_tail(ptr noundef %3, ptr noundef %skb) #18
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge
  tail call void @skb_queue_tail(ptr noundef %inputq, ptr noundef %skb) #18
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @skb_queue_tail(ptr noundef %3, ptr noundef %skb) #18
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %state = getelementptr inbounds %struct.tipc_link, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 14, ptr %state, align 4
  %namedq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 34
  %12 = ptrtoint ptr %namedq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %namedq, align 4
  tail call void @skb_queue_tail(ptr noundef %13, ptr noundef %skb) #18
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_tipc_key_exchange_enabled to i32))
  %14 = load i32, ptr @sysctl_tipc_key_exchange_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not = icmp eq i32 %14, 0
  br i1 %tobool14.not, label %sw.bb13.do.end_crit_edge, label %land.lhs.true

sw.bb13.do.end_crit_edge:                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true:                                    ; preds = %sw.bb13
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %15, align 2
  %17 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not = icmp eq i8 %17, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end_crit_edge, label %if.then16

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %net = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 2
  %18 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net, align 4
  tail call void @tipc_crypto_msg_rcv(ptr noundef %19, ptr noundef %skb) #18
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %sw.bb13.do.end_crit_edge, %entry.do.end_crit_edge
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #23
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then16, %sw.bb10, %sw.bb9, %sw.bb8, %if.then, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge38, %entry.cleanup_crit_edge39, %entry.cleanup_crit_edge40
  %retval.0 = phi i1 [ true, %do.end ], [ true, %if.then16 ], [ true, %sw.bb10 ], [ true, %sw.bb9 ], [ true, %sw.bb8 ], [ true, %if.then ], [ false, %entry.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge38 ], [ false, %entry.cleanup_crit_edge39 ], [ false, %entry.cleanup_crit_edge40 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_link_input(ptr noundef %l, ptr noundef %skb, ptr noundef %inputq, ptr noundef %reasm_skb) unnamed_addr #2 align 64 {
entry:
  %skb.addr = alloca ptr, align 4
  %iskb = alloca ptr, align 4
  %tmpq = alloca %struct.sk_buff_head, align 4
  %pos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skb.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %skb, ptr %skb.addr, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iskb) #18
  %3 = ptrtoint ptr %iskb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %iskb, align 4, !annotation !255
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tmpq) #18
  %4 = call ptr @memset(ptr %tmpq, i32 255, i32 56)
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  %shr.i.i = lshr i32 %6, 25
  %and.i.i = and i32 %shr.i.i, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #18
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %pos, align 4
  %8 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %and.i.i, label %entry.if.end34_crit_edge [
    i32 6, label %if.then
    i32 12, label %if.then8
    i32 5, label %if.then30
  ]

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %tmpq, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #18
  %9 = ptrtoint ptr %tmpq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tmpq, ptr %tmpq, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.90, ptr %tmpq, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tmpq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %tmpq, i32 0, i32 1
  %11 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qlen.i.i, align 4
  %recv_bundles = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 12
  %12 = ptrtoint ptr %recv_bundles to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %recv_bundles, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %recv_bundles, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %2, i32 0, i32 9
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i55 = lshr i32 %15, 16
  %recv_bundled = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 11
  %16 = ptrtoint ptr %recv_bundled to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %recv_bundled, align 4
  %add = add i32 %17, %shr.i.i55
  store i32 %add, ptr %recv_bundled, align 4
  %18 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb.addr, align 4
  %call464 = call zeroext i1 @tipc_msg_extract(ptr noundef %19, ptr noundef nonnull %iskb, ptr noundef nonnull %pos) #18
  br i1 %call464, label %if.then.while.body_crit_edge, label %if.then.while.end_crit_edge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then.while.body_crit_edge
  %20 = ptrtoint ptr %iskb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iskb, align 4
  %call5 = call fastcc zeroext i1 @tipc_data_input(ptr noundef %l, ptr noundef %21, ptr noundef nonnull %tmpq)
  %22 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb.addr, align 4
  %call4 = call zeroext i1 @tipc_msg_extract(ptr noundef %23, ptr noundef nonnull %iskb, ptr noundef nonnull %pos) #18
  br i1 %call4, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then.while.end_crit_edge
  %lock.i56 = getelementptr inbounds %struct.sk_buff_head, ptr %inputq, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock.i56) #18
  %24 = ptrtoint ptr %tmpq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tmpq, align 4
  %cmp.i.not.i.i = icmp eq ptr %25, %tmpq
  br i1 %cmp.i.not.i.i, label %while.end.tipc_skb_queue_splice_tail.exit_crit_edge, label %if.then.i.i

while.end.tipc_skb_queue_splice_tail.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %tipc_skb_queue_splice_tail.exit

if.then.i.i:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i57 = getelementptr inbounds %struct.anon.90, ptr %inputq, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i57, align 4
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %prev5.i.i.i = getelementptr inbounds %struct.anon.83, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %prev5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %27, ptr %prev5.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %25, ptr %27, align 8
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %inputq, ptr %29, align 8
  store volatile ptr %29, ptr %prev.i.i57, align 4
  %33 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qlen.i.i, align 4
  %qlen1.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %inputq, i32 0, i32 1
  %35 = ptrtoint ptr %qlen1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qlen1.i.i, align 4
  %add.i.i = add i32 %36, %34
  store i32 %add.i.i, ptr %qlen1.i.i, align 4
  br label %tipc_skb_queue_splice_tail.exit

tipc_skb_queue_splice_tail.exit:                  ; preds = %if.then.i.i, %while.end.tipc_skb_queue_splice_tail.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i56) #18
  br label %cleanup

if.then8:                                         ; preds = %entry
  %recv_fragments = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 17
  %37 = ptrtoint ptr %recv_fragments to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %recv_fragments, align 4
  %inc10 = add i32 %38, 1
  store i32 %inc10, ptr %recv_fragments, align 4
  %call11 = call i32 @tipc_buf_append(ptr noundef %reasm_skb, ptr noundef nonnull %skb.addr) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.else16, label %if.then12

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #20
  %recv_fragmented = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 16
  %39 = ptrtoint ptr %recv_fragmented to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %recv_fragmented, align 4
  %inc14 = add i32 %40, 1
  store i32 %inc14, ptr %recv_fragmented, align 4
  %41 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %skb.addr, align 4
  %call15 = call fastcc zeroext i1 @tipc_data_input(ptr noundef %l, ptr noundef %42, ptr noundef %inputq)
  br label %cleanup

if.else16:                                        ; preds = %if.then8
  %43 = ptrtoint ptr %reasm_skb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reasm_skb, align 4
  %tobool17.not = icmp eq ptr %44, null
  br i1 %tobool17.not, label %land.lhs.true, label %if.else16.cleanup_crit_edge

if.else16.cleanup_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else16
  %bc_rcvlink.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 48
  %45 = ptrtoint ptr %bc_rcvlink.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bc_rcvlink.i, align 4
  %cmp.i = icmp eq ptr %46, %l
  br i1 %cmp.i, label %link_is_bc_rcvlink.exit, label %land.lhs.true.if.then19_crit_edge

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then19

link_is_bc_rcvlink.exit:                          ; preds = %land.lhs.true
  %bc_sndlink.i.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 49
  %47 = ptrtoint ptr %bc_sndlink.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bc_sndlink.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.not, label %link_is_bc_rcvlink.exit.if.then19_crit_edge, label %link_is_bc_rcvlink.exit.cleanup_crit_edge

link_is_bc_rcvlink.exit.cleanup_crit_edge:        ; preds = %link_is_bc_rcvlink.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

link_is_bc_rcvlink.exit.if.then19_crit_edge:      ; preds = %link_is_bc_rcvlink.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then19

if.then19:                                        ; preds = %link_is_bc_rcvlink.exit.if.then19_crit_edge, %land.lhs.true.if.then19_crit_edge
  %call20 = call i32 @___ratelimit(ptr noundef nonnull @tipc_link_input._rs, ptr noundef nonnull @__func__.tipc_link_input) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end_crit_edge, label %do.end

if.then19.if.end_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #20
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #23
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then19.if.end_crit_edge
  %call24 = call i32 @tipc_link_fsm_evt(ptr noundef %l, i32 noundef 16388366)
  br label %cleanup

if.then30:                                        ; preds = %entry
  %net = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 2
  %49 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net, align 4
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %50) #18
  %bclock.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %bclock.i) #18
  %bc_rcvlink = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 48
  %51 = ptrtoint ptr %bc_rcvlink to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bc_rcvlink, align 4
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %2, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %shr.i.i.i = lshr i32 %54, 29
  %arrayidx.i.i.i.i.i = getelementptr [15 x i32], ptr %2, i32 0, i32 4
  %55 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %shr.i.i.i.i = lshr i32 %56, 16
  %57 = trunc i32 %shr.i.i.i.i to i16
  %conv.i59 = add i16 %57, 1
  %state.i.i = getelementptr inbounds %struct.tipc_link, ptr %52, i32 0, i32 11
  %58 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %state.i.i, align 4
  %and.i.i60 = and i32 %59, 201326606
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i60)
  %tobool.not.i = icmp eq i32 %and.i.i60, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then30.tipc_link_bc_init_rcv.exit_crit_edge

if.then30.tipc_link_bc_init_rcv.exit_crit_edge:   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #20
  br label %tipc_link_bc_init_rcv.exit

if.end.i:                                         ; preds = %if.then30
  %60 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %2, align 4
  %62 = and i32 %61, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772160, i32 %62)
  %cmp.i61 = icmp eq i32 %62, 167772160
  br i1 %cmp.i61, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %rcv_nxt.i = getelementptr inbounds %struct.tipc_link, ptr %52, i32 0, i32 30
  %63 = ptrtoint ptr %rcv_nxt.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i59, ptr %rcv_nxt.i, align 2
  %64 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 14, ptr %state.i.i, align 4
  br label %tipc_link_bc_init_rcv.exit

if.end6.i:                                        ; preds = %if.end.i
  %peer_caps.i = getelementptr inbounds %struct.tipc_link, ptr %52, i32 0, i32 12
  %65 = ptrtoint ptr %peer_caps.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %peer_caps.i, align 4
  %67 = and i16 %66, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool8.not.i = icmp eq i16 %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %62)
  %cmp.not.i.i.i = icmp eq i32 %62, 234881024
  %or.cond38.i = select i1 %tobool8.not.i, i1 %cmp.not.i.i.i, i1 false
  br i1 %or.cond38.i, label %msg_peer_link_is_up.exit.i.i, label %if.end6.i.tipc_link_bc_init_rcv.exit_crit_edge, !prof !258

if.end6.i.tipc_link_bc_init_rcv.exit_crit_edge:   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tipc_link_bc_init_rcv.exit

msg_peer_link_is_up.exit.i.i:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %54)
  %cmp3.i.i.i = icmp ult i32 %54, 536870912
  br i1 %cmp3.i.i.i, label %msg_peer_link_is_up.exit.i.i.tipc_link_bc_init_rcv.exit_crit_edge, label %msg_peer_node_is_up.exit.i

msg_peer_link_is_up.exit.i.i.tipc_link_bc_init_rcv.exit_crit_edge: ; preds = %msg_peer_link_is_up.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tipc_link_bc_init_rcv.exit

msg_peer_node_is_up.exit.i:                       ; preds = %msg_peer_link_is_up.exit.i.i
  %arrayidx.i.i.i.i32.i = getelementptr [15 x i32], ptr %2, i32 0, i32 5
  %68 = ptrtoint ptr %arrayidx.i.i.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i.i.i32.i, align 4
  %70 = and i32 %69, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.i.not.i = icmp eq i32 %70, 0
  %call.off.i = add nsw i32 %shr.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  %or.cond.i = select i1 %tobool.i.not.i, i1 %switch.i, i1 false
  br i1 %or.cond.i, label %if.then18.i, label %msg_peer_node_is_up.exit.i.tipc_link_bc_init_rcv.exit_crit_edge

msg_peer_node_is_up.exit.i.tipc_link_bc_init_rcv.exit_crit_edge: ; preds = %msg_peer_node_is_up.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tipc_link_bc_init_rcv.exit

if.then18.i:                                      ; preds = %msg_peer_node_is_up.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %rcv_nxt19.i = getelementptr inbounds %struct.tipc_link, ptr %52, i32 0, i32 30
  %71 = ptrtoint ptr %rcv_nxt19.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i59, ptr %rcv_nxt19.i, align 2
  br label %tipc_link_bc_init_rcv.exit

tipc_link_bc_init_rcv.exit:                       ; preds = %if.then18.i, %msg_peer_node_is_up.exit.i.tipc_link_bc_init_rcv.exit_crit_edge, %msg_peer_link_is_up.exit.i.i.tipc_link_bc_init_rcv.exit_crit_edge, %if.end6.i.tipc_link_bc_init_rcv.exit_crit_edge, %if.then5.i, %if.then30.tipc_link_bc_init_rcv.exit_crit_edge
  %72 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %net, align 4
  %call.i62 = tail call fastcc ptr @tipc_net(ptr noundef %73) #18
  %bclock.i63 = getelementptr inbounds %struct.tipc_net, ptr %call.i62, i32 0, i32 16
  tail call void @_raw_spin_unlock_bh(ptr noundef %bclock.i63) #18
  br label %if.end34

if.end34:                                         ; preds = %tipc_link_bc_init_rcv.exit, %entry.if.end34_crit_edge
  %74 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %skb.addr, align 4
  tail call void @kfree_skb_reason(ptr noundef %75, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end, %link_is_bc_rcvlink.exit.cleanup_crit_edge, %if.else16.cleanup_crit_edge, %if.then12, %tipc_skb_queue_splice_tail.exit
  %retval.0 = phi i32 [ 0, %tipc_skb_queue_splice_tail.exit ], [ %call24, %if.end ], [ 0, %if.end34 ], [ 0, %if.else16.cleanup_crit_edge ], [ 0, %link_is_bc_rcvlink.exit.cleanup_crit_edge ], [ 0, %if.then12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tmpq) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iskb) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_link_advance_backlog(ptr noundef %l, ptr noundef %xmitq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %transmq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26
  %snd_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 29
  %0 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %snd_nxt, align 4
  %window = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 36
  %2 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %window, align 4
  %qlen.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26, i32 1
  %conv6 = zext i16 %3 to i32
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv6)
  %cmp78 = icmp ult i32 %5, %conv6
  br i1 %cmp78, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rcv_nxt2 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %6 = ptrtoint ptr %rcv_nxt2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rcv_nxt2, align 2
  %sub4 = add i16 %7, -1
  %bc_rcvlink = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 48
  %8 = ptrtoint ptr %bc_rcvlink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bc_rcvlink, align 4
  %rcv_nxt = getelementptr inbounds %struct.tipc_link, ptr %9, i32 0, i32 30
  %10 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rcv_nxt, align 2
  %sub = add i16 %11, -1
  %backlogq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 27
  %qlen.i.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 27, i32 1
  %prev.i.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26, i32 0, i32 0, i32 1
  %prev.i.i64 = getelementptr inbounds %struct.sk_buff_list, ptr %xmitq, i32 0, i32 1
  %qlen.i.i.i66 = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %ackers = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 44
  %conv.i68 = zext i16 %sub4 to i32
  %shl.i.i = shl nuw i32 %conv.i68, 16
  %conv.i72 = zext i16 %sub to i32
  %rcv_unacked = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 31
  %stats = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52
  br label %while.body

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %while.body.lr.ph
  %seqno.079 = phi i16 [ %1, %while.body.lr.ph ], [ %inc31, %if.end27.while.body_crit_edge ]
  %12 = ptrtoint ptr %backlogq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %backlogq, align 4
  %cmp.i = icmp eq ptr %13, %backlogq
  %tobool.not76 = icmp eq ptr %13, null
  %tobool.not = or i1 %cmp.i, %tobool.not76
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end:                                           ; preds = %while.body
  %call9 = tail call ptr @skb_clone(ptr noundef nonnull %13, i32 noundef 2592) #18
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end.while.end_crit_edge, label %if.end12

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end12:                                         ; preds = %if.end
  %14 = ptrtoint ptr %backlogq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %backlogq, align 4
  %cmp.i.i = icmp eq ptr %15, %backlogq
  %tobool.not.i77 = icmp eq ptr %15, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i77
  br i1 %tobool.not.i, label %if.end12.__skb_dequeue.exit_crit_edge, label %if.then.i

if.end12.__skb_dequeue.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.83, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %15, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.83, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %prev17.i.i, align 4
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %19, ptr %21, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %if.end12.__skb_dequeue.exit_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 19
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %shr.i.i.i = lshr i32 %27, 25
  %and.i.i.i = and i32 %shr.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i.i.i)
  %cmp.i62 = icmp ult i32 %and.i.i.i, 4
  br i1 %cmp.i62, label %land.rhs.i, label %__skb_dequeue.exit.if.end.i_crit_edge, !prof !242

__skb_dequeue.exit.if.end.i_crit_edge:            ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.rhs.i:                                       ; preds = %__skb_dequeue.exit
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %30 = and i32 %29, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i63 = icmp eq i32 %30, 0
  br i1 %tobool.not.i63, label %land.rhs.i.msg_importance.exit_crit_edge, label %land.rhs.i.if.end.i_crit_edge, !prof !242

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.rhs.i.msg_importance.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %msg_importance.exit

if.end.i:                                         ; preds = %land.rhs.i.if.end.i_crit_edge, %__skb_dequeue.exit.if.end.i_crit_edge
  %31 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %and.i.i.i, label %if.end.i.msg_importance.exit_crit_edge [
    i32 12, label %if.end.i.if.then7.i_crit_edge
    i32 6, label %if.end.i.if.then7.i_crit_edge82
  ]

if.end.i.if.then7.i_crit_edge82:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7.i

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7.i

if.end.i.msg_importance.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %msg_importance.exit

if.then7.i:                                       ; preds = %if.end.i.if.then7.i_crit_edge, %if.end.i.if.then7.i_crit_edge82
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %25, i32 0, i32 9
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i = and i32 %33, 7
  br label %msg_importance.exit

msg_importance.exit:                              ; preds = %if.then7.i, %if.end.i.msg_importance.exit_crit_edge, %land.rhs.i.msg_importance.exit_crit_edge
  %retval.0.i = phi i32 [ %and.i.i, %if.then7.i ], [ %and.i.i.i, %land.rhs.i.msg_importance.exit_crit_edge ], [ 4, %if.end.i.msg_importance.exit_crit_edge ]
  %arrayidx = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 %retval.0.i
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx, align 4
  %dec = add i16 %35, -1
  store i16 %dec, ptr %arrayidx, align 4
  %target_bskb = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 %retval.0.i, i32 2
  %36 = ptrtoint ptr %target_bskb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %target_bskb, align 4
  %cmp19 = icmp eq ptr %13, %37
  br i1 %cmp19, label %if.then23, label %msg_importance.exit.if.end27_crit_edge, !prof !254

msg_importance.exit.if.end27_crit_edge:           ; preds = %msg_importance.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

if.then23:                                        ; preds = %msg_importance.exit
  call void @__sanitizer_cov_trace_pc() #20
  %38 = ptrtoint ptr %target_bskb to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %target_bskb, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %msg_importance.exit.if.end27_crit_edge
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %transmq, ptr %13, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %13, i32 0, i32 1
  %42 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %prev10.i.i.i, align 4
  store volatile ptr %13, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %13, ptr %40, align 4
  %44 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %45, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %add3.sink.in.i = load volatile i32, ptr @jiffies, align 128
  %add3.sink.i = add i32 %add3.sink.in.i, 1
  %46 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add3.sink.i, ptr %46, align 4
  %48 = ptrtoint ptr %prev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i64, align 4
  %50 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %xmitq, ptr %call9, align 8
  %prev10.i.i.i65 = getelementptr inbounds %struct.anon.83, ptr %call9, i32 0, i32 1
  %51 = ptrtoint ptr %prev10.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %prev10.i.i.i65, align 4
  store volatile ptr %call9, ptr %prev.i.i64, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %call9, ptr %49, align 4
  %53 = ptrtoint ptr %qlen.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %qlen.i.i.i66, align 4
  %add.i.i.i67 = add i32 %54, 1
  store volatile i32 %add.i.i.i67, ptr %qlen.i.i.i66, align 4
  %55 = ptrtoint ptr %ackers to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %ackers, align 4
  %ackers30 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 22
  %57 = ptrtoint ptr %ackers30 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %ackers30, align 2
  %conv.i = zext i16 %seqno.079 to i32
  %arrayidx.i.i = getelementptr [15 x i32], ptr %25, i32 0, i32 2
  %or.i.i71 = or i32 %shl.i.i, %conv.i
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or.i.i71, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i73 = getelementptr [15 x i32], ptr %25, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx.i.i73 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i73, align 4
  %and2.i.i74 = and i32 %60, -65536
  %or.i.i75 = or i32 %and2.i.i74, %conv.i72
  store i32 %or.i.i75, ptr %arrayidx.i.i73, align 4
  %61 = ptrtoint ptr %rcv_unacked to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %rcv_unacked, align 4
  %62 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %stats, align 4
  %inc = add i32 %63, 1
  store i32 %inc, ptr %stats, align 4
  %inc31 = add i16 %seqno.079, 1
  %64 = load i32, ptr %qlen.i, align 4
  %cmp = icmp ult i32 %64, %conv6
  br i1 %cmp, label %if.end27.while.body_crit_edge, label %if.end27.while.end_crit_edge

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %if.end27.while.end_crit_edge, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %seqno.0.lcssa = phi i16 [ %1, %entry.while.end_crit_edge ], [ %seqno.079, %if.end.while.end_crit_edge ], [ %seqno.079, %while.body.while.end_crit_edge ], [ %inc31, %if.end27.while.end_crit_edge ]
  %65 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %seqno.0.lcssa, ptr %snd_nxt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @link_prepare_wakeup(ptr noundef %l) unnamed_addr #2 align 64 {
entry:
  %tmpq = alloca %struct.sk_buff_head, align 4
  %avail = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %inputq2 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 33
  %0 = ptrtoint ptr %inputq2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inputq2, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tmpq) #18
  %2 = getelementptr inbounds i8, ptr %tmpq, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %avail) #18
  %4 = ptrtoint ptr %tmpq to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tmpq, ptr %tmpq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %tmpq, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tmpq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %tmpq, i32 0, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i, align 4
  %arrayidx = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 0
  %limit = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 0, i32 1
  %7 = ptrtoint ptr %limit to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %limit, align 2
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 4
  %conv5 = zext i16 %10 to i32
  %sub = sub nsw i32 %conv, %conv5
  %11 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %avail, align 4
  %arrayidx.1 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 1
  %limit.1 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 1, i32 1
  %12 = ptrtoint ptr %limit.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %limit.1, align 2
  %conv.1 = zext i16 %13 to i32
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.1, align 4
  %conv5.1 = zext i16 %15 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv5.1
  %arrayidx6.1 = getelementptr inbounds [5 x i32], ptr %avail, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.1, ptr %arrayidx6.1, align 4
  %arrayidx.2 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 2
  %limit.2 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 2, i32 1
  %17 = ptrtoint ptr %limit.2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %limit.2, align 2
  %conv.2 = zext i16 %18 to i32
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.2, align 4
  %conv5.2 = zext i16 %20 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv5.2
  %arrayidx6.2 = getelementptr inbounds [5 x i32], ptr %avail, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub.2, ptr %arrayidx6.2, align 4
  %arrayidx.3 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 3
  %limit.3 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 3, i32 1
  %22 = ptrtoint ptr %limit.3 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %limit.3, align 2
  %conv.3 = zext i16 %23 to i32
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.3, align 4
  %conv5.3 = zext i16 %25 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv5.3
  %arrayidx6.3 = getelementptr inbounds [5 x i32], ptr %avail, i32 0, i32 3
  %26 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.3, ptr %arrayidx6.3, align 4
  %arrayidx.4 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 4
  %limit.4 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 4, i32 1
  %27 = ptrtoint ptr %limit.4 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %limit.4, align 2
  %conv.4 = zext i16 %28 to i32
  %29 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.4, align 4
  %conv5.4 = zext i16 %30 to i32
  %sub.4 = sub nsw i32 %conv.4, %conv5.4
  %arrayidx6.4 = getelementptr inbounds [5 x i32], ptr %avail, i32 0, i32 4
  %31 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.4, ptr %arrayidx6.4, align 4
  %wakeupq1 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 35
  %32 = ptrtoint ptr %wakeupq1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wakeupq1, align 4
  %cmp9.not45 = icmp eq ptr %33, %wakeupq1
  br i1 %cmp9.not45, label %entry.for.end20_crit_edge, label %for.body11.lr.ph

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end20

for.body11.lr.ph:                                 ; preds = %entry
  %qlen.i40 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 35, i32 1
  br label %for.body11

for.body11:                                       ; preds = %for.inc18.for.body11_crit_edge, %for.body11.lr.ph
  %skb.046 = phi ptr [ %33, %for.body11.lr.ph ], [ %tmp.047, %for.inc18.for.body11_crit_edge ]
  %34 = ptrtoint ptr %skb.046 to i32
  call void @__asan_load4_noabort(i32 %34)
  %tmp.047 = load ptr, ptr %skb.046, align 8
  %chain_imp = getelementptr inbounds %struct.sk_buff, ptr %skb.046, i32 0, i32 3, i32 20
  %35 = ptrtoint ptr %chain_imp to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %chain_imp, align 4
  %conv13 = zext i16 %36 to i32
  %arrayidx14 = getelementptr [5 x i32], ptr %avail, i32 0, i32 %conv13
  %37 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp15 = icmp slt i32 %38, 1
  br i1 %cmp15, label %for.body11.for.inc18_crit_edge, label %if.end

for.body11.for.inc18_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc18

if.end:                                           ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #20
  %dec = add nsw i32 %38, -1
  %39 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %dec, ptr %arrayidx14, align 4
  %40 = ptrtoint ptr %qlen.i40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %qlen.i40, align 4
  %sub.i = add i32 %41, -1
  store volatile i32 %sub.i, ptr %qlen.i40, align 4
  %42 = ptrtoint ptr %skb.046 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skb.046, align 8
  %prev9.i = getelementptr inbounds %struct.anon.83, ptr %skb.046, i32 0, i32 1
  %44 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.046, align 8
  %prev17.i = getelementptr inbounds %struct.anon.83, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %45, ptr %prev17.i, align 4
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %43, ptr %45, align 8
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i, align 4
  store volatile ptr %tmpq, ptr %skb.046, align 8
  store volatile ptr %49, ptr %prev9.i, align 4
  store volatile ptr %skb.046, ptr %prev.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %skb.046, ptr %49, align 4
  %51 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %52, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %if.end, %for.body11.for.inc18_crit_edge
  %cmp9.not = icmp eq ptr %tmp.047, %wakeupq1
  br i1 %cmp9.not, label %for.inc18.for.end20_crit_edge, label %for.inc18.for.body11_crit_edge

for.inc18.for.body11_crit_edge:                   ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body11

for.inc18.for.end20_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end20

for.end20:                                        ; preds = %for.inc18.for.end20_crit_edge, %entry.for.end20_crit_edge
  %lock = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock) #18
  %53 = ptrtoint ptr %tmpq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tmpq, align 4
  %cmp.i.not.i = icmp eq ptr %54, %tmpq
  br i1 %cmp.i.not.i, label %for.end20.skb_queue_splice_tail.exit_crit_edge, label %if.then.i

for.end20.skb_queue_splice_tail.exit_crit_edge:   ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_queue_splice_tail.exit

if.then.i:                                        ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i41 = getelementptr inbounds %struct.anon.90, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i41, align 4
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.83, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %56, ptr %prev5.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %54, ptr %56, align 8
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %1, ptr %58, align 8
  store volatile ptr %58, ptr %prev.i41, align 4
  %62 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %qlen.i, align 4
  %qlen1.i = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %qlen1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %qlen1.i, align 4
  %add.i = add i32 %65, %63
  store i32 %add.i, ptr %qlen1.i, align 4
  br label %skb_queue_splice_tail.exit

skb_queue_splice_tail.exit:                       ; preds = %if.then.i, %for.end20.skb_queue_splice_tail.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %avail) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tmpq) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_link_create_dummy_tnl_msg(ptr noundef %l, ptr noundef %xmitq) local_unnamed_addr #2 align 64 {
entry:
  %tnlq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 2
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %1) #18
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node_addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tnlq) #18
  %4 = getelementptr inbounds i8, ptr %tnlq, i32 12
  %5 = call ptr @memset(ptr %4, i32 255, i32 44)
  %6 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %l, align 4
  %8 = ptrtoint ptr %tnlq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tnlq, ptr %tnlq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %tnlq, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tnlq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %tnlq, i32 0, i32 1
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i, align 4
  %call1 = call ptr @tipc_msg_create(i32 noundef 10, i32 noundef 1, i32 noundef 40, i32 noundef 32, i32 noundef %7, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.92) #23
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %and2.i.i = and i32 %14, 65535
  %or.i.i = or i32 %and2.i.i, 65536
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %peer_bearer_id = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 7
  %15 = ptrtoint ptr %peer_bearer_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %peer_bearer_id, align 4
  %and.i.i = shl i32 %16, 9
  %shl.i.i = and i32 %and.i.i, 3584
  %arrayidx.i.i21 = getelementptr [15 x i32], ptr %12, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx.i.i21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i21, align 4
  %and2.i.i22 = and i32 %18, -3585
  %or.i.i23 = or i32 %and2.i.i22, %shl.i.i
  store i32 %or.i.i23, ptr %arrayidx.i.i21, align 4
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %12, align 4
  %21 = lshr i32 %20, 19
  %shl.i.i24 = and i32 %21, 60
  %add.ptr.i = getelementptr i8, ptr %12, i32 %shl.i.i24
  call void @tipc_msg_init(i32 noundef %3, ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 3, i32 noundef 32, i32 noundef %7) #18
  %arrayidx.i.i25 = getelementptr [15 x i32], ptr %add.ptr.i, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.i.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i25, align 4
  %and2.i.i26 = and i32 %23, -503316481
  %or.i.i27 = or i32 %and2.i.i26, 67108864
  store i32 %or.i.i27, ptr %arrayidx.i.i25, align 4
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i, align 4
  %26 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %tnlq, ptr %call1, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %call1, i32 0, i32 1
  %27 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %prev10.i.i.i, align 4
  store volatile ptr %call1, ptr %prev.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call1, ptr %25, align 4
  %29 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  %call5 = call i32 @tipc_link_xmit(ptr noundef %l, ptr noundef nonnull %tnlq, ptr noundef %xmitq)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tnlq) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_msg_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_msg_init(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_link_tnl_prepare(ptr noundef %l, ptr noundef %tnl, i32 noundef %mtyp, ptr noundef %xmitq) local_unnamed_addr #2 align 64 {
entry:
  %tnlhdr = alloca %struct.tipc_msg, align 4
  %tmpxq = alloca %struct.sk_buff_head, align 4
  %tnlq = alloca %struct.sk_buff_head, align 4
  %frags = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %failover_deferdq = getelementptr inbounds %struct.tipc_link, ptr %tnl, i32 0, i32 23
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %tnlhdr) #18
  %0 = call ptr @memset(ptr %tnlhdr, i32 255, i32 60)
  %transmq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tmpxq) #18
  %1 = getelementptr inbounds i8, ptr %tmpxq, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tnlq) #18
  %3 = getelementptr inbounds i8, ptr %tnlq, i32 12
  %4 = call ptr @memset(ptr %3, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %frags) #18
  %5 = getelementptr inbounds i8, ptr %frags, i32 12
  %6 = call ptr @memset(ptr %5, i32 255, i32 44)
  %snd_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 29
  %7 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %snd_nxt, align 4
  %tobool.not = icmp eq ptr %tnl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %tnlq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tnlq, ptr %tnlq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %tnlq, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tnlq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %tnlq, i32 0, i32 1
  %11 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mtyp)
  %cmp = icmp eq i32 %mtyp, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %peer_caps = getelementptr inbounds %struct.tipc_link, ptr %tnl, i32 0, i32 12
  %12 = ptrtoint ptr %peer_caps to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %peer_caps, align 4
  %14 = and i16 %13, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool1.not = icmp eq i16 %14, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end14_crit_edge, label %if.then2

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.then2:                                         ; preds = %land.lhs.true
  %15 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %l, align 4
  %net = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 2
  %17 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net, align 4
  %call.i = call fastcc ptr @tipc_net(ptr noundef %18) #18
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %node_addr.i, align 4
  %call3 = call ptr @tipc_msg_create(i32 noundef 10, i32 noundef 0, i32 noundef 40, i32 noundef 0, i32 noundef %16, i32 noundef %20, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.92) #23
  br label %cleanup

if.end7:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %23 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %snd_nxt, align 4
  %qlen.i248 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 27, i32 1
  %25 = ptrtoint ptr %qlen.i248 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qlen.i248, align 4
  %27 = trunc i32 %26 to i16
  %28 = add i16 %24, -1
  %conv12 = add i16 %28, %27
  %conv.i = zext i16 %conv12 to i32
  %shl.i.i = shl nuw i32 %conv.i, 16
  %arrayidx.i.i = getelementptr [15 x i32], ptr %22, i32 0, i32 9
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  %and2.i.i = and i32 %30, 65535
  %or.i.i = or i32 %shl.i.i, %and2.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %peer_bearer_id = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 7
  %31 = ptrtoint ptr %peer_bearer_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %peer_bearer_id, align 4
  %and.i.i = shl i32 %32, 9
  %shl.i.i249 = and i32 %and.i.i, 3584
  %arrayidx.i.i250 = getelementptr [15 x i32], ptr %22, i32 0, i32 5
  %33 = ptrtoint ptr %arrayidx.i.i250 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i250, align 4
  %and2.i.i251 = and i32 %34, -3585
  %or.i.i252 = or i32 %and2.i.i251, %shl.i.i249
  store i32 %or.i.i252, ptr %arrayidx.i.i250, align 4
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i, align 4
  %37 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %tnlq, ptr %call3, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %call3, i32 0, i32 1
  %38 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %prev10.i.i.i, align 4
  store volatile ptr %call3, ptr %prev.i, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call3, ptr %36, align 4
  %40 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  %call13 = call i32 @tipc_link_xmit(ptr noundef nonnull %tnl, ptr noundef nonnull %tnlq, ptr noundef %xmitq)
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %42 = ptrtoint ptr %tmpxq to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %tmpxq, ptr %tmpxq, align 4
  %prev.i253 = getelementptr inbounds %struct.anon.90, ptr %tmpxq, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i253 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %tmpxq, ptr %prev.i253, align 4
  %qlen.i254 = getelementptr inbounds %struct.sk_buff_head, ptr %tmpxq, i32 0, i32 1
  %44 = ptrtoint ptr %qlen.i254 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %qlen.i254, align 4
  %45 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %frags, ptr %frags, align 4
  %prev.i255 = getelementptr inbounds %struct.anon.90, ptr %frags, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i255 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %frags, ptr %prev.i255, align 4
  %qlen.i256 = getelementptr inbounds %struct.sk_buff_head, ptr %frags, i32 0, i32 1
  %47 = ptrtoint ptr %qlen.i256 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %qlen.i256, align 4
  %48 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %l, align 4
  %net16 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 2
  %50 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net16, align 4
  %call.i257 = call fastcc ptr @tipc_net(ptr noundef %51) #18
  %node_addr.i258 = getelementptr inbounds %struct.tipc_net, ptr %call.i257, i32 0, i32 1
  %52 = ptrtoint ptr %node_addr.i258 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %node_addr.i258, align 4
  %call18 = call ptr @tipc_msg_create(i32 noundef 0, i32 noundef 3, i32 noundef 32, i32 noundef 0, i32 noundef %49, i32 noundef %53, i32 noundef 0, i32 noundef 0, i32 noundef 2) #18
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.92) #23
  br label %cleanup

if.end26:                                         ; preds = %if.end14
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i, align 4
  %56 = ptrtoint ptr %call18 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %tnlq, ptr %call18, align 8
  %prev10.i.i.i260 = getelementptr inbounds %struct.anon.83, ptr %call18, i32 0, i32 1
  %57 = ptrtoint ptr %prev10.i.i.i260 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %prev10.i.i.i260, align 4
  store volatile ptr %call18, ptr %prev.i, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %call18, ptr %55, align 4
  %59 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %qlen.i, align 4
  %add.i.i.i262 = add i32 %60, 1
  store volatile i32 %add.i.i.i262, ptr %qlen.i, align 4
  %call27 = call i32 @tipc_link_xmit(ptr noundef %l, ptr noundef nonnull %tnlq, ptr noundef nonnull %tmpxq)
  %61 = ptrtoint ptr %tmpxq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tmpxq, align 4
  %cmp.i.i2.i = icmp eq ptr %62, %tmpxq
  %tobool.not.i13.i = icmp eq ptr %62, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %if.end26.__skb_queue_purge.exit_crit_edge, label %if.end26.while.body.i_crit_edge

if.end26.while.body.i_crit_edge:                  ; preds = %if.end26
  br label %while.body.i

if.end26.__skb_queue_purge.exit_crit_edge:        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %__skb_queue_purge.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end26.while.body.i_crit_edge
  %63 = phi ptr [ %73, %while.body.i.while.body.i_crit_edge ], [ %62, %if.end26.while.body.i_crit_edge ]
  %64 = ptrtoint ptr %qlen.i254 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %qlen.i254, align 4
  %sub.i.i.i = add i32 %65, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i254, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.83, ptr %63, i32 0, i32 1
  %68 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %63, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.83, ptr %67, i32 0, i32 1
  %70 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %69, ptr %prev17.i.i.i, align 4
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %67, ptr %69, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %63, i32 noundef 0) #18
  %72 = ptrtoint ptr %tmpxq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tmpxq, align 4
  %cmp.i.i.i = icmp eq ptr %73, %tmpxq
  %tobool.not.i1.i = icmp eq ptr %73, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %if.end26.__skb_queue_purge.exit_crit_edge
  %74 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %net16, align 4
  %call.i264 = call fastcc ptr @tipc_net(ptr noundef %75) #18
  %node_addr.i265 = getelementptr inbounds %struct.tipc_net, ptr %call.i264, i32 0, i32 1
  %76 = ptrtoint ptr %node_addr.i265 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %node_addr.i265, align 4
  %78 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %l, align 4
  call void @tipc_msg_init(i32 noundef %77, ptr noundef nonnull %tnlhdr, i32 noundef 10, i32 noundef %mtyp, i32 noundef 40, i32 noundef %79) #18
  br i1 %cmp, label %if.then33, label %if.else

if.then33:                                        ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #20
  %80 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %snd_nxt, align 4
  %conv35 = zext i16 %81 to i32
  %82 = ptrtoint ptr %transmq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %transmq, align 4
  %cmp.i = icmp eq ptr %83, %transmq
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %83
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 19
  %84 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %conv39 = and i32 %87, 65535
  %sub40 = sub nsw i32 %conv35, %conv39
  br label %if.end45

if.else:                                          ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #20
  %qlen.i266 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26, i32 1
  %88 = ptrtoint ptr %qlen.i266 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %qlen.i266, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then33
  %pktcnt.0.in = phi i32 [ %sub40, %if.then33 ], [ %89, %if.else ]
  %backlogq46 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 27
  %qlen.i267 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 27, i32 1
  %90 = ptrtoint ptr %qlen.i267 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %qlen.i267, align 4
  %add49 = add i32 %91, %pktcnt.0.in
  %conv50 = trunc i32 %add49 to i16
  %conv.i268 = shl i32 %add49, 16
  %arrayidx.i.i270 = getelementptr inbounds [15 x i32], ptr %tnlhdr, i32 0, i32 9
  %92 = ptrtoint ptr %arrayidx.i.i270 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i.i270, align 4
  %and2.i.i271 = and i32 %93, 65535
  %or.i.i272 = or i32 %and2.i.i271, %conv.i268
  store i32 %or.i.i272, ptr %arrayidx.i.i270, align 4
  %peer_bearer_id51 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 7
  %94 = ptrtoint ptr %peer_bearer_id51 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %peer_bearer_id51, align 4
  %and.i.i273 = shl i32 %95, 9
  %shl.i.i274 = and i32 %and.i.i273, 3584
  %arrayidx.i.i275 = getelementptr inbounds [15 x i32], ptr %tnlhdr, i32 0, i32 5
  %96 = ptrtoint ptr %arrayidx.i.i275 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i.i275, align 4
  %and2.i.i276 = and i32 %97, -3585
  %or.i.i277 = or i32 %and2.i.i276, %shl.i.i274
  store i32 %or.i.i277, ptr %arrayidx.i.i275, align 4
  %mtu = getelementptr inbounds %struct.tipc_link, ptr %tnl, i32 0, i32 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mtyp)
  %cmp69 = icmp eq i32 %mtyp, 1
  %peer_caps72 = getelementptr inbounds %struct.tipc_link, ptr %tnl, i32 0, i32 12
  br label %tnl52

tnl52:                                            ; preds = %for.end.tnl52_crit_edge, %if.end45
  %pktcnt.1 = phi i16 [ %conv50, %if.end45 ], [ %pktcnt.2.lcssa, %for.end.tnl52_crit_edge ]
  %seqno.0 = phi i16 [ %8, %if.end45 ], [ %seqno.1.lcssa, %for.end.tnl52_crit_edge ]
  %pktcnt_need_update.0.off0 = phi i1 [ false, %if.end45 ], [ %pktcnt_need_update.1.off0.lcssa, %for.end.tnl52_crit_edge ]
  %queue.0 = phi ptr [ %transmq, %if.end45 ], [ %backlogq46, %for.end.tnl52_crit_edge ]
  %98 = ptrtoint ptr %queue.0 to i32
  call void @__asan_load4_noabort(i32 %98)
  %skb.0323 = load ptr, ptr %queue.0, align 4
  %cmp53.not324 = icmp eq ptr %skb.0323, %queue.0
  br i1 %cmp53.not324, label %tnl52.for.end_crit_edge, label %for.body.lr.ph

tnl52.for.end_crit_edge:                          ; preds = %tnl52
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %tnl52
  %cmp57 = icmp eq ptr %queue.0, %backlogq46
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %skb.0328 = phi ptr [ %skb.0323, %for.body.lr.ph ], [ %skb.0, %for.inc.for.body_crit_edge ]
  %pktcnt_need_update.1.off0327 = phi i1 [ %pktcnt_need_update.0.off0, %for.body.lr.ph ], [ %pktcnt_need_update.2.off0, %for.inc.for.body_crit_edge ]
  %seqno.1326 = phi i16 [ %seqno.0, %for.body.lr.ph ], [ %seqno.2, %for.inc.for.body_crit_edge ]
  %pktcnt.2325 = phi i16 [ %pktcnt.1, %for.body.lr.ph ], [ %pktcnt.3, %for.inc.for.body_crit_edge ]
  %data.i278 = getelementptr inbounds %struct.sk_buff, ptr %skb.0328, i32 0, i32 19
  %99 = ptrtoint ptr %data.i278 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i278, align 4
  br i1 %cmp57, label %if.then59, label %for.body.if.end60_crit_edge

for.body.if.end60_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end60

if.then59:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %inc = add i16 %seqno.1326, 1
  %conv.i279 = zext i16 %seqno.1326 to i32
  %arrayidx.i.i280 = getelementptr [15 x i32], ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %arrayidx.i.i280 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i.i280, align 4
  %and2.i.i281 = and i32 %102, -65536
  %or.i.i282 = or i32 %and2.i.i281, %conv.i279
  store i32 %or.i.i282, ptr %arrayidx.i.i280, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %for.body.if.end60_crit_edge
  %seqno.2 = phi i16 [ %inc, %if.then59 ], [ %seqno.1326, %for.body.if.end60_crit_edge ]
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %100, align 4
  %conv63 = and i32 %104, 65535
  %105 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %mtu, align 4
  %conv64 = zext i16 %106 to i32
  %sub65 = add nsw i32 %conv64, -40
  call void @__sanitizer_cov_trace_cmp4(i32 %conv63, i32 %sub65)
  %cmp66 = icmp sgt i32 %conv63, %sub65
  br i1 %cmp66, label %if.then68, label %if.end106

if.then68:                                        ; preds = %if.end60
  br i1 %cmp69, label %land.lhs.true71, label %if.then68.if.end93_crit_edge

if.then68.if.end93_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end93

land.lhs.true71:                                  ; preds = %if.then68
  %107 = ptrtoint ptr %peer_caps72 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %peer_caps72, align 4
  %109 = and i16 %108, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool75.not = icmp eq i16 %109, 0
  br i1 %tobool75.not, label %land.lhs.true71.if.end93_crit_edge, label %if.then76

land.lhs.true71.if.end93_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end93

if.then76:                                        ; preds = %land.lhs.true71
  %call79 = call i32 @tipc_msg_fragment(ptr noundef %skb.0328, ptr noundef nonnull %tnlhdr, i32 noundef %conv64, ptr noundef nonnull %frags) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end87, label %do.end84

do.end84:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #20
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.92, i32 noundef %call79) #23
  br label %cleanup

if.end87:                                         ; preds = %if.then76
  %110 = ptrtoint ptr %qlen.i256 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %qlen.i256, align 4
  %112 = trunc i32 %111 to i16
  %113 = add i16 %pktcnt.2325, -1
  %conv92 = add i16 %113, %112
  %114 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %frags, align 4
  %cmp.i.not.i = icmp eq ptr %115, %frags
  br i1 %cmp.i.not.i, label %if.end87.for.inc_crit_edge, label %if.then.i

if.end87.for.inc_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then.i:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #20
  %116 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prev.i, align 4
  %118 = ptrtoint ptr %prev.i255 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prev.i255, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.83, ptr %115, i32 0, i32 1
  %120 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %117, ptr %prev5.i.i, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %115, ptr %117, align 8
  %122 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %tnlq, ptr %119, align 8
  store volatile ptr %119, ptr %prev.i, align 4
  %123 = ptrtoint ptr %qlen.i256 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %qlen.i256, align 4
  %125 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %126, %124
  store i32 %add.i, ptr %qlen.i, align 4
  %127 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %frags, ptr %frags, align 4
  store ptr %frags, ptr %prev.i255, align 4
  store i32 0, ptr %qlen.i256, align 4
  br label %for.inc

if.end93:                                         ; preds = %land.lhs.true71.if.end93_crit_edge, %if.then68.if.end93_crit_edge
  %call94 = call i32 @___ratelimit(ptr noundef nonnull @tipc_link_tnl_prepare._rs, ptr noundef nonnull @.str.22) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end93.cleanup_crit_edge, label %do.end99

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end99:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #20
  %128 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %100, align 4
  %shr.i.i = lshr i32 %129, 25
  %and.i.i287 = and i32 %shr.i.i, 15
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %100, i32 0, i32 1
  %130 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i288 = lshr i32 %131, 29
  %and.i.i289 = and i32 %129, 131071
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.92, i32 noundef %and.i.i287, i32 noundef %shr.i.i288, i32 noundef %and.i.i289) #23
  br label %cleanup

if.end106:                                        ; preds = %if.end60
  %add108 = add nuw nsw i32 %conv63, 40
  %132 = ptrtoint ptr %tnlhdr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tnlhdr, align 4
  %and.i = and i32 %133, -131072
  %or.i = or i32 %and.i, %add108
  store i32 %or.i, ptr %tnlhdr, align 4
  %call111 = call ptr @tipc_buf_acquire(i32 noundef %add108, i32 noundef 2592) #18
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %do.end116, label %if.end119

do.end116:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #20
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.92) #23
  br label %cleanup

if.end119:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #20
  %data.i290 = getelementptr inbounds %struct.sk_buff, ptr %call111, i32 0, i32 19
  %134 = ptrtoint ptr %data.i290 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data.i290, align 4
  %136 = call ptr @memcpy(ptr %135, ptr %tnlhdr, i32 40)
  %137 = load ptr, ptr %data.i290, align 4
  %add.ptr.i = getelementptr i8, ptr %137, i32 40
  %138 = call ptr @memcpy(ptr %add.ptr.i, ptr %100, i32 %conv63)
  %139 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prev.i, align 4
  %141 = ptrtoint ptr %call111 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %tnlq, ptr %call111, align 8
  %prev10.i.i.i293 = getelementptr inbounds %struct.anon.83, ptr %call111, i32 0, i32 1
  %142 = ptrtoint ptr %prev10.i.i.i293 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %140, ptr %prev10.i.i.i293, align 4
  store volatile ptr %call111, ptr %prev.i, align 4
  %143 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %call111, ptr %140, align 4
  %144 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %qlen.i, align 4
  %add.i.i.i295 = add i32 %145, 1
  store volatile i32 %add.i.i.i295, ptr %qlen.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end119, %if.then.i, %if.end87.for.inc_crit_edge
  %pktcnt.3 = phi i16 [ %pktcnt.2325, %if.end119 ], [ %conv92, %if.end87.for.inc_crit_edge ], [ %conv92, %if.then.i ]
  %pktcnt_need_update.2.off0 = phi i1 [ %pktcnt_need_update.1.off0327, %if.end119 ], [ true, %if.end87.for.inc_crit_edge ], [ true, %if.then.i ]
  %146 = ptrtoint ptr %skb.0328 to i32
  call void @__asan_load4_noabort(i32 %146)
  %skb.0 = load ptr, ptr %skb.0328, align 4
  %cmp53.not = icmp eq ptr %skb.0, %queue.0
  br i1 %cmp53.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %tnl52.for.end_crit_edge
  %pktcnt.2.lcssa = phi i16 [ %pktcnt.1, %tnl52.for.end_crit_edge ], [ %pktcnt.3, %for.inc.for.end_crit_edge ]
  %seqno.1.lcssa = phi i16 [ %seqno.0, %tnl52.for.end_crit_edge ], [ %seqno.2, %for.inc.for.end_crit_edge ]
  %pktcnt_need_update.1.off0.lcssa = phi i1 [ %pktcnt_need_update.0.off0, %tnl52.for.end_crit_edge ], [ %pktcnt_need_update.2.off0, %for.inc.for.end_crit_edge ]
  %cmp123.not = icmp eq ptr %queue.0, %backlogq46
  br i1 %cmp123.not, label %if.end127, label %for.end.tnl52_crit_edge

for.end.tnl52_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %tnl52

if.end127:                                        ; preds = %for.end
  br i1 %pktcnt_need_update.1.off0.lcssa, label %for.cond131.preheader, label %if.end127.if.end139_crit_edge

if.end127.if.end139_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end139

for.cond131.preheader:                            ; preds = %if.end127
  %147 = ptrtoint ptr %tnlq to i32
  call void @__asan_load4_noabort(i32 %147)
  %skb.1331 = load ptr, ptr %tnlq, align 4
  %cmp132.not332 = icmp eq ptr %skb.1331, %tnlq
  br i1 %cmp132.not332, label %for.cond131.preheader.if.end139_crit_edge, label %for.body134.lr.ph

for.cond131.preheader.if.end139_crit_edge:        ; preds = %for.cond131.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end139

for.body134.lr.ph:                                ; preds = %for.cond131.preheader
  %conv.i297 = zext i16 %pktcnt.2.lcssa to i32
  %shl.i.i298 = shl nuw i32 %conv.i297, 16
  br label %for.body134

for.body134:                                      ; preds = %for.body134.for.body134_crit_edge, %for.body134.lr.ph
  %skb.1333 = phi ptr [ %skb.1331, %for.body134.lr.ph ], [ %skb.1, %for.body134.for.body134_crit_edge ]
  %data.i296 = getelementptr inbounds %struct.sk_buff, ptr %skb.1333, i32 0, i32 19
  %148 = ptrtoint ptr %data.i296 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data.i296, align 4
  %arrayidx.i.i299 = getelementptr [15 x i32], ptr %149, i32 0, i32 9
  %150 = ptrtoint ptr %arrayidx.i.i299 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx.i.i299, align 4
  %and2.i.i300 = and i32 %151, 65535
  %or.i.i301 = or i32 %and2.i.i300, %shl.i.i298
  store i32 %or.i.i301, ptr %arrayidx.i.i299, align 4
  %152 = ptrtoint ptr %skb.1333 to i32
  call void @__asan_load4_noabort(i32 %152)
  %skb.1 = load ptr, ptr %skb.1333, align 4
  %cmp132.not = icmp eq ptr %skb.1, %tnlq
  br i1 %cmp132.not, label %for.body134.if.end139_crit_edge, label %for.body134.for.body134_crit_edge

for.body134.for.body134_crit_edge:                ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body134

for.body134.if.end139_crit_edge:                  ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end139

if.end139:                                        ; preds = %for.body134.if.end139_crit_edge, %for.cond131.preheader.if.end139_crit_edge, %if.end127.if.end139_crit_edge
  %call140 = call i32 @tipc_link_xmit(ptr noundef nonnull %tnl, ptr noundef nonnull %tnlq, ptr noundef %xmitq)
  br i1 %cmp69, label %if.then143, label %if.end139.cleanup_crit_edge

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then143:                                       ; preds = %if.end139
  %rcv_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %153 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %rcv_nxt, align 2
  %drop_point = getelementptr inbounds %struct.tipc_link, ptr %tnl, i32 0, i32 21
  %155 = ptrtoint ptr %drop_point to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %drop_point, align 4
  %reasm_buf = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 42
  %156 = ptrtoint ptr %reasm_buf to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %reasm_buf, align 4
  %failover_reasm_skb = getelementptr inbounds %struct.tipc_link, ptr %tnl, i32 0, i32 22
  %158 = ptrtoint ptr %failover_reasm_skb to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %157, ptr %failover_reasm_skb, align 4
  store ptr null, ptr %reasm_buf, align 4
  %159 = ptrtoint ptr %failover_deferdq to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %failover_deferdq, align 4
  %cmp.i302.not = icmp eq ptr %160, %failover_deferdq
  br i1 %cmp.i302.not, label %if.then143.if.end157_crit_edge, label %do.end153, !prof !242

if.then143.if.end157_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end157

do.end153:                                        ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #20
  %qlen.i304 = getelementptr inbounds %struct.tipc_link, ptr %tnl, i32 0, i32 23, i32 1
  %161 = ptrtoint ptr %qlen.i304 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %qlen.i304, align 4
  %call156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %162) #23
  call fastcc void @__skb_queue_purge(ptr noundef %failover_deferdq)
  br label %if.end157

if.end157:                                        ; preds = %do.end153, %if.then143.if.end157_crit_edge
  %deferdq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32
  %163 = ptrtoint ptr %deferdq to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %deferdq, align 4
  %cmp.i.not.i305 = icmp eq ptr %164, %deferdq
  br i1 %cmp.i.not.i305, label %if.end157.cleanup_crit_edge, label %if.then.i311

if.end157.cleanup_crit_edge:                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i311:                                     ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #20
  %165 = ptrtoint ptr %failover_deferdq to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %failover_deferdq, align 4
  %prev2.i.i306 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32, i32 0, i32 0, i32 1
  %167 = ptrtoint ptr %prev2.i.i306 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %prev2.i.i306, align 4
  %prev5.i.i307 = getelementptr inbounds %struct.anon.83, ptr %164, i32 0, i32 1
  %169 = ptrtoint ptr %prev5.i.i307 to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile ptr %failover_deferdq, ptr %prev5.i.i307, align 4
  store volatile ptr %164, ptr %failover_deferdq, align 8
  %170 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %166, ptr %168, align 8
  %prev35.i.i = getelementptr inbounds %struct.anon.83, ptr %166, i32 0, i32 1
  %171 = ptrtoint ptr %prev35.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %168, ptr %prev35.i.i, align 4
  %qlen.i308 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32, i32 1
  %172 = ptrtoint ptr %qlen.i308 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %qlen.i308, align 4
  %qlen1.i309 = getelementptr inbounds %struct.tipc_link, ptr %tnl, i32 0, i32 23, i32 1
  %174 = ptrtoint ptr %qlen1.i309 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %qlen1.i309, align 4
  %add.i310 = add i32 %175, %173
  store i32 %add.i310, ptr %qlen1.i309, align 4
  %176 = ptrtoint ptr %deferdq to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %deferdq, ptr %deferdq, align 4
  store ptr %deferdq, ptr %prev2.i.i306, align 4
  store i32 0, ptr %qlen.i308, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i311, %if.end157.cleanup_crit_edge, %if.end139.cleanup_crit_edge, %do.end116, %do.end99, %if.end93.cleanup_crit_edge, %do.end84, %do.end23, %if.end7, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %frags) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tnlq) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tmpxq) #18
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %tnlhdr) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_msg_fragment(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_buf_acquire(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_link_failover_prepare(ptr nocapture noundef readnone %l, ptr noundef %tnl, ptr noundef %xmitq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %failover_deferdq = getelementptr inbounds %struct.tipc_link, ptr %tnl, i32 0, i32 23
  tail call void @tipc_link_create_dummy_tnl_msg(ptr noundef %tnl, ptr noundef %xmitq)
  %drop_point = getelementptr inbounds %struct.tipc_link, ptr %tnl, i32 0, i32 21
  %0 = ptrtoint ptr %drop_point to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %drop_point, align 4
  %failover_reasm_skb = getelementptr inbounds %struct.tipc_link, ptr %tnl, i32 0, i32 22
  %1 = ptrtoint ptr %failover_reasm_skb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %failover_reasm_skb, align 4
  %2 = ptrtoint ptr %failover_deferdq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %failover_deferdq, align 4
  %cmp.i.not = icmp eq ptr %3, %failover_deferdq
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !242

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %qlen.i = getelementptr inbounds %struct.tipc_link, ptr %tnl, i32 0, i32 23, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %5) #23
  tail call fastcc void @__skb_queue_purge(ptr noundef %failover_deferdq)
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tipc_link_validate_msg(ptr nocapture noundef readonly %l, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_session = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 3
  %0 = ptrtoint ptr %peer_session to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %peer_session, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %hdr, i32 0, i32 5
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i = lshr i32 %3, 16
  %conv.i = trunc i32 %shr.i.i to i16
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hdr, align 4
  %6 = and i32 %5, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %6)
  %cmp.not = icmp eq i32 %6, 234881024
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i.i55 = getelementptr [15 x i32], ptr %hdr, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i.i55, align 4
  %shr.i.i56 = lshr i32 %8, 29
  %9 = zext i32 %shr.i.i56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %shr.i.i56, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 0, label %sw.bb14
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %in_session = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 13
  %10 = ptrtoint ptr %in_session to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %in_session, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  %12 = sub i16 %1, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool6 = icmp slt i16 %12, 0
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %in_session8 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 13
  %13 = ptrtoint ptr %in_session8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %in_session8, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  br i1 %tobool9.not, label %sw.bb7.cleanup_crit_edge, label %if.end11

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #20
  %15 = xor i16 %1, -1
  %16 = add i16 %conv.i, %15
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %tobool.not.i = icmp sgt i16 %16, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %conv.i)
  %cmp.i = icmp eq i16 %1, %conv.i
  %tobool13.not = or i1 %cmp.i, %tobool.not.i
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  %in_session15 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 13
  %17 = ptrtoint ptr %in_session15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %in_session15, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool16.not = icmp ne i8 %18, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %conv.i)
  %cmp20.not = icmp eq i16 %1, %conv.i
  %or.cond = select i1 %tobool16.not, i1 %cmp20.not, i1 false
  br i1 %or.cond, label %if.end23, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end23:                                         ; preds = %sw.bb14
  %state.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i, align 4
  %and.i = and i32 %20, 201326606
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not = icmp eq i32 %and.i, 0
  br i1 %tobool25.not, label %land.lhs.true, label %if.end23.if.end30_crit_edge

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end23
  %arrayidx.i.i.i58 = getelementptr [15 x i32], ptr %hdr, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %22)
  %tobool28.not = icmp ult i32 %22, 65536
  br i1 %tobool28.not, label %land.lhs.true.if.end30_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %if.end23.if.end30_crit_edge
  %peer_caps = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 12
  %23 = ptrtoint ptr %peer_caps to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %peer_caps, align 4
  %25 = and i16 %24, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool32.not = icmp eq i16 %25, 0
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i.i.i61 = getelementptr [15 x i32], ptr %hdr, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i61, align 4
  %conv.i62 = trunc i32 %27 to i16
  %rcv_nxt_state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 6
  %28 = ptrtoint ptr %rcv_nxt_state to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rcv_nxt_state, align 2
  %30 = xor i16 %29, -1
  %31 = add i16 %30, %conv.i62
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %31)
  %tobool.not.i63 = icmp sgt i16 %31, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %conv.i62)
  %cmp.i64 = icmp eq i16 %29, %conv.i62
  %tobool37.not = or i1 %cmp.i64, %tobool.not.i63
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end30.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %if.end11, %sw.bb7.cleanup_crit_edge, %if.end4, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool37.not, %if.end34 ], [ %tobool13.not, %if.end11 ], [ %tobool6, %if.end4 ], [ true, %entry.cleanup_crit_edge ], [ true, %sw.bb.cleanup_crit_edge ], [ true, %sw.bb7.cleanup_crit_edge ], [ false, %sw.bb14.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ true, %if.end30.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tipc_link_bc_init_rcv(ptr nocapture noundef %l, ptr nocapture noundef readonly %hdr) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %hdr, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i = lshr i32 %1, 29
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %hdr, i32 0, i32 4
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %shr.i.i.i = lshr i32 %3, 16
  %4 = trunc i32 %shr.i.i.i to i16
  %conv = add i16 %4, 1
  %state.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 4
  %and.i = and i32 %6, 201326606
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hdr, align 4
  %9 = and i32 %8, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772160, i32 %9)
  %cmp = icmp eq i32 %9, 167772160
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %rcv_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %10 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %rcv_nxt, align 2
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 14, ptr %state.i, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %peer_caps = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 12
  %12 = ptrtoint ptr %peer_caps to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %peer_caps, align 4
  %14 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool8.not = icmp eq i16 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %9)
  %cmp.not.i.i = icmp eq i32 %9, 234881024
  %or.cond38 = select i1 %tobool8.not, i1 %cmp.not.i.i, i1 false
  br i1 %or.cond38, label %msg_peer_link_is_up.exit.i, label %if.end6.cleanup_crit_edge, !prof !258

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

msg_peer_link_is_up.exit.i:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %1)
  %cmp3.i.i = icmp ult i32 %1, 536870912
  br i1 %cmp3.i.i, label %msg_peer_link_is_up.exit.i.cleanup_crit_edge, label %msg_peer_node_is_up.exit

msg_peer_link_is_up.exit.i.cleanup_crit_edge:     ; preds = %msg_peer_link_is_up.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

msg_peer_node_is_up.exit:                         ; preds = %msg_peer_link_is_up.exit.i
  %arrayidx.i.i.i.i32 = getelementptr [15 x i32], ptr %hdr, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i.i.i32, align 4
  %17 = and i32 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  %call.off = add nsw i32 %shr.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off)
  %switch = icmp ult i32 %call.off, 2
  %or.cond = select i1 %tobool.i.not, i1 %switch, i1 false
  br i1 %or.cond, label %if.then18, label %msg_peer_node_is_up.exit.cleanup_crit_edge

msg_peer_node_is_up.exit.cleanup_crit_edge:       ; preds = %msg_peer_node_is_up.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then18:                                        ; preds = %msg_peer_node_is_up.exit
  call void @__sanitizer_cov_trace_pc() #20
  %rcv_nxt19 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %18 = ptrtoint ptr %rcv_nxt19 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %rcv_nxt19, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %msg_peer_node_is_up.exit.cleanup_crit_edge, %msg_peer_link_is_up.exit.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_link_bc_sync_rcv(ptr noundef %l, ptr nocapture noundef readonly %hdr, ptr noundef %xmitq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %hdr, i32 0, i32 4
  %0 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %shr.i.i.i = lshr i32 %1, 16
  %add.i = add nuw nsw i32 %shr.i.i.i, 1
  %conv = trunc i32 %add.i to i16
  %state.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  %and.i = and i32 %3, 201326606
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hdr, align 4
  %6 = and i32 %5, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %6)
  %cmp.not.i.i = icmp eq i32 %6, 234881024
  br i1 %cmp.not.i.i, label %msg_peer_link_is_up.exit.i, label %if.end.if.end4_crit_edge, !prof !254

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

msg_peer_link_is_up.exit.i:                       ; preds = %if.end
  %arrayidx.i.i.i.i.i = getelementptr [15 x i32], ptr %hdr, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %8)
  %cmp3.i.i = icmp ult i32 %8, 536870912
  br i1 %cmp3.i.i, label %msg_peer_link_is_up.exit.i.if.end4_crit_edge, label %msg_peer_node_is_up.exit

msg_peer_link_is_up.exit.i.if.end4_crit_edge:     ; preds = %msg_peer_link_is_up.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

msg_peer_node_is_up.exit:                         ; preds = %msg_peer_link_is_up.exit.i
  %arrayidx.i.i.i.i83 = getelementptr [15 x i32], ptr %hdr, i32 0, i32 5
  %9 = ptrtoint ptr %arrayidx.i.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i.i83, align 4
  %11 = and i32 %10, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %msg_peer_node_is_up.exit.cleanup_crit_edge, label %msg_peer_node_is_up.exit.if.end4_crit_edge

msg_peer_node_is_up.exit.if.end4_crit_edge:       ; preds = %msg_peer_node_is_up.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

msg_peer_node_is_up.exit.cleanup_crit_edge:       ; preds = %msg_peer_node_is_up.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %msg_peer_node_is_up.exit.if.end4_crit_edge, %msg_peer_link_is_up.exit.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %hdr, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %13)
  %tobool6.not = icmp ult i32 %13, 65536
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  %bc_peer_is_up = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 51
  %14 = ptrtoint ptr %bc_peer_is_up to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %bc_peer_is_up, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %bc_peer_is_up9 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 51
  %15 = ptrtoint ptr %bc_peer_is_up9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bc_peer_is_up9, align 1, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not = icmp eq i8 %16, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %rcv_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %17 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rcv_nxt, align 2
  %window = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 36
  %19 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %window, align 4
  %add = sub i16 %18, %conv
  %21 = add i16 %add, %20
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %21)
  %tobool17.not = icmp sgt i16 %21, -1
  br i1 %tobool17.not, label %if.end19, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %snd_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 29
  %22 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %snd_nxt, align 4
  %deferdq.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32
  %23 = ptrtoint ptr %deferdq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %deferdq.i, align 4
  %cmp.i.i = icmp eq ptr %24, %deferdq.i
  %sub.i = sub i16 %conv, %18
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add)
  %tobool.not.inv.i = icmp slt i16 %add, 0
  %spec.select.i = select i1 %tobool.not.inv.i, i16 %sub.i, i16 0
  %tobool6.not21.i = icmp eq ptr %24, null
  %tobool6.not.i = or i1 %cmp.i.i, %tobool6.not21.i
  br i1 %tobool6.not.i, label %if.end19.link_bc_rcv_gap.exit_crit_edge, label %if.then7.i

if.end19.link_bc_rcv_gap.exit_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %link_bc_rcv_gap.exit

if.then7.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx.i.i.i.i.i84 = getelementptr [15 x i32], ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx.i.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i.i.i.i84, align 4
  %conv.i.i.i = trunc i32 %28 to i16
  %sub12.i = sub i16 %conv.i.i.i, %18
  br label %link_bc_rcv_gap.exit

link_bc_rcv_gap.exit:                             ; preds = %if.then7.i, %if.end19.link_bc_rcv_gap.exit_crit_edge
  %gap.1.i = phi i16 [ %sub12.i, %if.then7.i ], [ %spec.select.i, %if.end19.link_bc_rcv_gap.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %gap.1.i)
  %tobool21.not = icmp eq i16 %gap.1.i, 0
  %spec.select = select i1 %tobool21.not, i32 0, i32 4
  %peer_caps = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 12
  %29 = ptrtoint ptr %peer_caps to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %peer_caps, align 4
  %31 = and i16 %30, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool25.not = icmp eq i16 %31, 0
  br i1 %tobool25.not, label %if.end27, label %link_bc_rcv_gap.exit.cleanup_crit_edge

link_bc_rcv_gap.exit.cleanup_crit_edge:           ; preds = %link_bc_rcv_gap.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end27:                                         ; preds = %link_bc_rcv_gap.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %add)
  %tobool30.not = icmp sgt i16 %add, -1
  %nack_state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 50
  br i1 %tobool30.not, label %if.end27.cleanup.sink.split_crit_edge, label %if.end32

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end32:                                         ; preds = %if.end27
  %32 = ptrtoint ptr %nack_state to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nack_state, align 4
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.113)
  switch i8 %33, label %if.end32.if.end52_crit_edge [
    i8 2, label %if.end32.cleanup.sink.split_crit_edge
    i8 0, label %if.then43
  ]

if.end32.cleanup.sink.split_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end32.if.end52_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

if.then43:                                        ; preds = %if.end32
  %35 = ptrtoint ptr %nack_state to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %nack_state, align 4
  %conv45 = and i32 %add.i, 65535
  %conv47 = zext i16 %18 to i32
  %sub = sub nsw i32 %conv45, %conv47
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp48 = icmp slt i32 %sub, 16
  br i1 %cmp48, label %if.then43.cleanup_crit_edge, label %if.then43.if.end52_crit_edge

if.then43.if.end52_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end52:                                         ; preds = %if.then43.if.end52_crit_edge, %if.end32.if.end52_crit_edge
  %call53 = tail call fastcc zeroext i1 @tipc_link_build_bc_proto_msg(ptr noundef %l, i1 noundef zeroext true, i16 noundef zeroext %conv, ptr noundef %xmitq)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end52, %if.end32.cleanup.sink.split_crit_edge, %if.end27.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 2, %if.end52 ], [ 0, %if.end27.cleanup.sink.split_crit_edge ], [ 1, %if.end32.cleanup.sink.split_crit_edge ]
  %36 = ptrtoint ptr %nack_state to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink, ptr %nack_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then43.cleanup_crit_edge, %link_bc_rcv_gap.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %msg_peer_node_is_up.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %msg_peer_node_is_up.exit.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ %spec.select, %link_bc_rcv_gap.exit.cleanup_crit_edge ], [ 0, %if.then43.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tipc_link_build_bc_proto_msg(ptr noundef readonly %l, i1 noundef zeroext %bcast, i16 noundef zeroext %peers_snd_nxt, ptr noundef %xmitq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %deferdq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32
  %0 = ptrtoint ptr %deferdq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %deferdq, align 4
  %cmp.i = icmp eq ptr %1, %deferdq
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %1
  %rcv_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %2 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rcv_nxt, align 2
  %4 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %l, align 4
  %net = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 2
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %7) #18
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node_addr.i, align 4
  %call6 = tail call ptr @tipc_msg_create(i32 noundef 5, i32 noundef 0, i32 noundef 40, i32 noundef 0, i32 noundef %5, i32 noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i16 %3, -1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %bc_sndlink = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 49
  %12 = ptrtoint ptr %bc_sndlink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bc_sndlink, align 4
  %snd_nxt = getelementptr inbounds %struct.tipc_link, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %snd_nxt, align 4
  %conv8 = zext i16 %15 to i32
  %sub9 = shl nuw i32 %conv8, 16
  %and.i.i = add i32 %sub9, -65536
  %arrayidx.i.i = getelementptr [15 x i32], ptr %11, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %and2.i.i = and i32 %17, 65535
  %or.i.i = or i32 %and.i.i, %and2.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %conv.i = zext i16 %sub to i32
  %arrayidx.i.i37 = getelementptr [15 x i32], ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.i.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i37, align 4
  %and2.i.i38 = and i32 %19, -65536
  %or.i.i39 = or i32 %and2.i.i38, %conv.i
  store i32 %or.i.i39, ptr %arrayidx.i.i37, align 4
  %and.i.i40 = shl nuw i32 %conv.i, 16
  %arrayidx.i.i41 = getelementptr [15 x i32], ptr %11, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx.i.i41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i41, align 4
  %and2.i.i42 = and i32 %21, 65535
  %or.i.i43 = or i32 %and2.i.i42, %and.i.i40
  store i32 %or.i.i43, ptr %arrayidx.i.i41, align 4
  %tobool11.not = icmp eq ptr %spec.store.select.i, null
  br i1 %tobool11.not, label %if.end.if.end17_crit_edge, label %if.then12

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %conv.i.i = trunc i32 %25 to i16
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end.if.end17_crit_edge
  %gap_to.0.in = phi i16 [ %conv.i.i, %if.then12 ], [ %peers_snd_nxt, %if.end.if.end17_crit_edge ]
  %gap_to.0 = add i16 %gap_to.0.in, -1
  %conv18 = zext i16 %gap_to.0 to i32
  %or.i.i47 = or i32 %and.i.i40, %conv18
  %26 = ptrtoint ptr %arrayidx.i.i41 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i.i47, ptr %arrayidx.i.i41, align 4
  %and.i.i48 = select i1 %bcast, i32 1048576, i32 0
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %11, align 4
  %and2.i.i49 = and i32 %28, -1048577
  %or.i.i50 = or i32 %and2.i.i49, %and.i.i48
  store i32 %or.i.i50, ptr %11, align 4
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %xmitq, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %xmitq, ptr %call6, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %call6, i32 0, i32 1
  %32 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %prev10.i.i.i, align 4
  store volatile ptr %call6, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call6, ptr %30, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %34 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %36 = xor i1 %tobool.not, true
  ret i1 %36
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_link_bc_ack(ptr noundef %r, i16 noundef zeroext %f, i16 noundef zeroext %t, ptr noundef %tq) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_bc_ack, i32 0, i32 1), ptr blockaddress(@trace_tipc_link_bc_ack, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !259
  %call42 = tail call i32 @__traceiter_tipc_link_bc_ack(ptr noundef null, ptr noundef %r, i16 noundef zeroext %f, i16 noundef zeroext %t, ptr noundef %tq) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !260
  %13 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !242

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !246
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_bc_ack, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_bc_ack, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tipc_link_bc_ack.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_tipc_link_bc_ack.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 325, ptr noundef nonnull @.str.51) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !247
  %31 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_link_bc_nack_rcv(ptr noundef %l, ptr noundef %skb, ptr noundef %xmitq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv.i = trunc i32 %5 to i16
  %add = add i16 %conv.i, 1
  %arrayidx.i.i.i53 = getelementptr [15 x i32], ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i53, align 4
  %8 = trunc i32 %7 to i16
  %conv9.neg = xor i16 %8, -1
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  %state.i.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %9 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i.i, align 4
  %and.i.i54 = and i32 %10, 201326606
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i54)
  %tobool.i.not = icmp eq i32 %and.i.i54, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bc_peer_is_up = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 51
  %11 = ptrtoint ptr %bc_peer_is_up to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bc_peer_is_up, align 1, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp ne i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %5)
  %cmp.not = icmp ult i32 %5, 536870912
  %or.cond = select i1 %tobool.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end13, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %net = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 2
  %13 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net, align 4
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %14) #18
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %node_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %16)
  %cmp15 = icmp eq i32 %3, %16
  br i1 %cmp15, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  %conv20 = sub i16 %8, %conv.i
  %call21 = tail call i32 @tipc_link_bc_ack_rcv(ptr noundef %l, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv20, ptr noundef null, ptr noundef %xmitq, ptr noundef %xmitq)
  %recv_nacks = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 52, i32 7
  %17 = ptrtoint ptr %recv_nacks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %recv_nacks, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %recv_nacks, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %rcv_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %19 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rcv_nxt, align 2
  %21 = add i16 %20, %conv9.neg
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %21)
  %tobool24.not = icmp sgt i16 %21, -1
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %land.lhs.true

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end22
  %22 = sub i16 -2, %conv.i
  %23 = add i16 %22, %20
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %tobool.not.i = icmp sgt i16 %23, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %add, i16 %20)
  %cmp.i = icmp eq i16 %add, %20
  %tobool27.not = or i1 %cmp.i, %tobool.not.i
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %nack_state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 50
  %24 = ptrtoint ptr %nack_state to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %nack_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %land.lhs.true.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then17, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.then17 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_parse_link_prop(ptr noundef %prop, ptr noundef %props) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %prop, i32 4
  %0 = ptrtoint ptr %prop to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prop, align 2
  %conv.i.i = zext i16 %1 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = tail call i32 @__nla_parse(ptr noundef %props, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_prop_policy, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup35_crit_edge

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup35

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %props, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %add.ptr.i.i52 = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i52 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %5)
  %cmp = icmp ugt i32 %5, 31
  br i1 %cmp, label %if.then2.cleanup35_crit_edge, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then2.cleanup35_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup35

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %arrayidx8 = getelementptr ptr, ptr %props, i32 2
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %if.end7.if.end20_crit_edge, label %if.then10

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then10:                                        ; preds = %if.end7
  %add.ptr.i.i53 = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i53 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i53, align 4
  %10 = add i32 %9, -30001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -29951, i32 %10)
  %11 = icmp ult i32 %10, -29951
  br i1 %11, label %if.then10.cleanup35_crit_edge, label %if.then10.if.end20_crit_edge

if.then10.if.end20_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then10.cleanup35_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup35

if.end20:                                         ; preds = %if.then10.if.end20_crit_edge, %if.end7.if.end20_crit_edge
  %arrayidx21 = getelementptr ptr, ptr %props, i32 3
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %13, null
  br i1 %tobool22.not, label %if.end20.cleanup35_crit_edge, label %if.then23

if.end20.cleanup35_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup35

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i.i54 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i54 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i54, align 4
  %16 = add i32 %15, -8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8142, i32 %16)
  %17 = icmp ult i32 %16, -8142
  %spec.select = select i1 %17, i32 -22, i32 0
  br label %cleanup35

cleanup35:                                        ; preds = %if.then23, %if.end20.cleanup35_crit_edge, %if.then10.cleanup35_crit_edge, %if.then2.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.5 = phi i32 [ -22, %if.then2.cleanup35_crit_edge ], [ %call2.i, %entry.cleanup35_crit_edge ], [ -22, %if.then10.cleanup35_crit_edge ], [ 0, %if.end20.cleanup35_crit_edge ], [ %spec.select, %if.then23 ]
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__tipc_nl_add_link(ptr noundef %net, ptr noundef readonly %msg, ptr noundef %link, i32 noundef %nlflags) local_unnamed_addr #2 align 64 {
entry:
  %tmp.i154 = alloca i32, align 4
  %tmp.i152 = alloca i32, align 4
  %tmp.i150 = alloca i32, align 4
  %tmp.i148 = alloca i32, align 4
  %tmp.i140 = alloca i32, align 4
  %tmp.i138 = alloca i32, align 4
  %tmp.i136 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #18
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_addr.i, align 4
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 4
  %portid = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %portid, align 4
  %seq = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seq, align 4
  %call1 = tail call ptr @genlmsg_put(ptr noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef nonnull @tipc_genl_family, i32 noundef %nlflags, i8 noundef zeroext 8) #18
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msg, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %9, i32 noundef 4, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool4.not166 = icmp eq ptr %11, null
  %tobool4.not = select i1 %cmp.i, i1 true, i1 %tobool4.not166
  br i1 %tobool4.not, label %if.end.if.then.i_crit_edge, label %if.end6

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg, align 4
  %name = getelementptr inbounds %struct.tipc_link, ptr %link, i32 0, i32 1
  %call.i133 = tail call i32 @strlen(ptr noundef %name) #24
  %add.i = add i32 %call.i133, 1
  %call1.i134 = tail call i32 @nla_put(ptr noundef %13, i32 noundef 1, i32 noundef %add.i, ptr noundef %name) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i134)
  %tobool9.not = icmp eq i32 %call1.i134, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.if.then.i.i_crit_edge

if.end6.if.then.i.i_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end11:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %msg, align 4
  %and.i = and i32 %1, -4096
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #18
  %16 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i, ptr %tmp.i, align 4
  %call.i135 = call i32 @nla_put(ptr noundef %15, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool15.not = icmp eq i32 %call.i135, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.if.then.i.i_crit_edge

if.end11.if.then.i.i_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end17:                                         ; preds = %if.end11
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msg, align 4
  %mtu = getelementptr inbounds %struct.tipc_link, ptr %link, i32 0, i32 24
  %19 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mtu, align 4
  %conv = zext i16 %20 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i136) #18
  %21 = ptrtoint ptr %tmp.i136 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %tmp.i136, align 4
  %call.i137 = call i32 @nla_put(ptr noundef %18, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i136) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i136) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool20.not = icmp eq i32 %call.i137, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.if.then.i.i_crit_edge

if.end17.if.then.i.i_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end22:                                         ; preds = %if.end17
  %22 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %msg, align 4
  %stats = getelementptr inbounds %struct.tipc_link, ptr %link, i32 0, i32 52
  %recv_pkts = getelementptr inbounds %struct.tipc_link, ptr %link, i32 0, i32 52, i32 1
  %24 = ptrtoint ptr %recv_pkts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %recv_pkts, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i138) #18
  %26 = ptrtoint ptr %tmp.i138 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %tmp.i138, align 4
  %call.i139 = call i32 @nla_put(ptr noundef %23, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i138) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i138) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool25.not = icmp eq i32 %call.i139, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.if.then.i.i_crit_edge

if.end22.if.then.i.i_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end27:                                         ; preds = %if.end22
  %27 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %msg, align 4
  %29 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stats, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i140) #18
  %31 = ptrtoint ptr %tmp.i140 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tmp.i140, align 4
  %call.i141 = call i32 @nla_put(ptr noundef %28, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i140) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i140) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool31.not = icmp eq i32 %call.i141, 0
  br i1 %tobool31.not, label %if.end33, label %if.end27.if.then.i.i_crit_edge

if.end27.if.then.i.i_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end33:                                         ; preds = %if.end27
  %state.i.i = getelementptr inbounds %struct.tipc_link, ptr %link, i32 0, i32 11
  %32 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %33, 201326606
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not, label %if.end33.if.end41_crit_edge, label %if.then35

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

if.then35:                                        ; preds = %if.end33
  %34 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %msg, align 4
  %call.i142 = call i32 @nla_put(ptr noundef %35, i32 noundef 5, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool38.not = icmp eq i32 %call.i142, 0
  br i1 %tobool38.not, label %if.then35.if.end41_crit_edge, label %if.then35.if.then.i.i_crit_edge

if.then35.if.then.i.i_crit_edge:                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.then35.if.end41_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

if.end41:                                         ; preds = %if.then35.if.end41_crit_edge, %if.end33.if.end41_crit_edge
  %active = getelementptr inbounds %struct.tipc_link, ptr %link, i32 0, i32 14
  %36 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %active, align 1, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool42.not = icmp eq i8 %37, 0
  br i1 %tobool42.not, label %if.end41.if.end49_crit_edge, label %if.then43

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49

if.then43:                                        ; preds = %if.end41
  %38 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %msg, align 4
  %call.i143 = call i32 @nla_put(ptr noundef %39, i32 noundef 6, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %tobool46.not = icmp eq i32 %call.i143, 0
  br i1 %tobool46.not, label %if.then43.if.end49_crit_edge, label %if.then43.if.then.i.i_crit_edge

if.then43.if.then.i.i_crit_edge:                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49

if.end49:                                         ; preds = %if.then43.if.end49_crit_edge, %if.end41.if.end49_crit_edge
  %40 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %msg, align 4
  %tail.i.i144 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i.i144 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i144, align 8
  %call1.i145 = call i32 @nla_put(ptr noundef %41, i32 noundef 7, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i145)
  %cmp.i146 = icmp slt i32 %call1.i145, 0
  %tobool52.not167 = icmp eq ptr %43, null
  %tobool52.not = select i1 %cmp.i146, i1 true, i1 %tobool52.not167
  br i1 %tobool52.not, label %if.end49.if.then.i.i_crit_edge, label %if.end54

if.end49.if.then.i.i_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end54:                                         ; preds = %if.end49
  %44 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %msg, align 4
  %priority = getelementptr inbounds %struct.tipc_link, ptr %link, i32 0, i32 17
  %46 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %priority, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i148) #18
  %48 = ptrtoint ptr %tmp.i148 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tmp.i148, align 4
  %call.i149 = call i32 @nla_put(ptr noundef %45, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i148) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i148) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool57.not = icmp eq i32 %call.i149, 0
  br i1 %tobool57.not, label %if.end59, label %if.end54.prop_msg_full_crit_edge

if.end54.prop_msg_full_crit_edge:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #20
  br label %prop_msg_full

if.end59:                                         ; preds = %if.end54
  %49 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %msg, align 4
  %tolerance = getelementptr inbounds %struct.tipc_link, ptr %link, i32 0, i32 9
  %51 = ptrtoint ptr %tolerance to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tolerance, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i150) #18
  %53 = ptrtoint ptr %tmp.i150 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %tmp.i150, align 4
  %call.i151 = call i32 @nla_put(ptr noundef %50, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i150) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i150) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool62.not = icmp eq i32 %call.i151, 0
  br i1 %tobool62.not, label %if.end64, label %if.end59.prop_msg_full_crit_edge

if.end59.prop_msg_full_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #20
  br label %prop_msg_full

if.end64:                                         ; preds = %if.end59
  %54 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %msg, align 4
  %window = getelementptr inbounds %struct.tipc_link, ptr %link, i32 0, i32 36
  %56 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %window, align 4
  %conv66 = zext i16 %57 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i152) #18
  %58 = ptrtoint ptr %tmp.i152 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv66, ptr %tmp.i152, align 4
  %call.i153 = call i32 @nla_put(ptr noundef %55, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i152) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i152) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool68.not = icmp eq i32 %call.i153, 0
  br i1 %tobool68.not, label %if.end70, label %if.end64.prop_msg_full_crit_edge

if.end64.prop_msg_full_crit_edge:                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #20
  br label %prop_msg_full

if.end70:                                         ; preds = %if.end64
  %59 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %msg, align 4
  %61 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %priority, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i154) #18
  %63 = ptrtoint ptr %tmp.i154 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %tmp.i154, align 4
  %call.i155 = call i32 @nla_put(ptr noundef %60, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i154) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i154) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool74.not = icmp eq i32 %call.i155, 0
  br i1 %tobool74.not, label %if.end76, label %if.end70.prop_msg_full_crit_edge

if.end70.prop_msg_full_crit_edge:                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #20
  br label %prop_msg_full

if.end76:                                         ; preds = %if.end70
  %64 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %msg, align 4
  %tail.i.i156 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 16
  %66 = ptrtoint ptr %tail.i.i156 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tail.i.i156, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %68 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i, ptr %43, align 2
  %69 = load ptr, ptr %msg, align 4
  %call81 = call fastcc i32 @__tipc_nl_add_stats(ptr noundef %69, ptr noundef %stats)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end76.if.then.i.i_crit_edge

if.end76.if.then.i.i_crit_edge:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end84:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #20
  %70 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %msg, align 4
  %tail.i.i157 = getelementptr inbounds %struct.sk_buff, ptr %71, i32 0, i32 16
  %72 = ptrtoint ptr %tail.i.i157 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tail.i.i157, align 8
  %sub.ptr.lhs.cast.i158 = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast.i159 = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i160 = sub i32 %sub.ptr.lhs.cast.i158, %sub.ptr.rhs.cast.i159
  %conv.i161 = trunc i32 %sub.ptr.sub.i160 to i16
  %74 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i161, ptr %11, align 2
  %75 = load ptr, ptr %msg, align 4
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 16
  %76 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %78 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

prop_msg_full:                                    ; preds = %if.end70.prop_msg_full_crit_edge, %if.end64.prop_msg_full_crit_edge, %if.end59.prop_msg_full_crit_edge, %if.end54.prop_msg_full_crit_edge
  %79 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %msg, align 4
  call fastcc void @nla_nest_cancel(ptr noundef %80, ptr noundef nonnull %43)
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %prop_msg_full, %if.end76.if.then.i.i_crit_edge, %if.end49.if.then.i.i_crit_edge, %if.then43.if.then.i.i_crit_edge, %if.then35.if.then.i.i_crit_edge, %if.end27.if.then.i.i_crit_edge, %if.end22.if.then.i.i_crit_edge, %if.end17.if.then.i.i_crit_edge, %if.end11.if.then.i.i_crit_edge, %if.end6.if.then.i.i_crit_edge
  %81 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %msg, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %82, i32 0, i32 19
  %83 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %84, %11
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !254

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.94, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %85 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i162 = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i163 = ptrtoint ptr %86 to i32
  %sub.ptr.sub.i.i164 = sub i32 %sub.ptr.lhs.cast.i.i162, %sub.ptr.rhs.cast.i.i163
  call void @skb_trim(ptr noundef %82, i32 noundef %sub.ptr.sub.i.i164) #18
  br label %if.then.i

if.then.i:                                        ; preds = %nla_nest_cancel.exit, %if.end.if.then.i_crit_edge
  %87 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %msg, align 4
  %add.ptr1.i165 = getelementptr i8, ptr %call1, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i165, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 19
  %89 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %90, %add.ptr1.i165
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !254

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.94, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %91 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i165 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %92 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %88, i32 noundef %sub.ptr.sub.i.i.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end84, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end84 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__tipc_nl_add_stats(ptr noundef %skb, ptr noundef readonly %s) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %map = alloca [33 x %struct.nla_map], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %map) #18
  %0 = getelementptr inbounds i8, ptr %map, i32 260
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !255
  %2 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %map, align 4
  %val = getelementptr inbounds %struct.nla_map, ptr %map, i32 0, i32 1
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %val, align 4
  %arrayinit.element = getelementptr inbounds %struct.nla_map, ptr %map, i32 1
  %4 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %arrayinit.element, align 4
  %val2 = getelementptr inbounds %struct.nla_map, ptr %map, i32 1, i32 1
  %recv_fragments = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 17
  %5 = ptrtoint ptr %recv_fragments to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %recv_fragments, align 4
  %7 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %val2, align 4
  %arrayinit.element3 = getelementptr inbounds %struct.nla_map, ptr %map, i32 2
  %8 = ptrtoint ptr %arrayinit.element3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %arrayinit.element3, align 4
  %val5 = getelementptr inbounds %struct.nla_map, ptr %map, i32 2, i32 1
  %recv_fragmented = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 16
  %9 = ptrtoint ptr %recv_fragmented to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %recv_fragmented, align 4
  %11 = ptrtoint ptr %val5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val5, align 4
  %arrayinit.element6 = getelementptr inbounds %struct.nla_map, ptr %map, i32 3
  %12 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %arrayinit.element6, align 4
  %val8 = getelementptr inbounds %struct.nla_map, ptr %map, i32 3, i32 1
  %recv_bundles = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 12
  %13 = ptrtoint ptr %recv_bundles to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %recv_bundles, align 4
  %15 = ptrtoint ptr %val8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %val8, align 4
  %arrayinit.element9 = getelementptr inbounds %struct.nla_map, ptr %map, i32 4
  %16 = ptrtoint ptr %arrayinit.element9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %arrayinit.element9, align 4
  %val11 = getelementptr inbounds %struct.nla_map, ptr %map, i32 4, i32 1
  %recv_bundled = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 11
  %17 = ptrtoint ptr %recv_bundled to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %recv_bundled, align 4
  %19 = ptrtoint ptr %val11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val11, align 4
  %arrayinit.element12 = getelementptr inbounds %struct.nla_map, ptr %map, i32 5
  %20 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 6, ptr %arrayinit.element12, align 4
  %val14 = getelementptr inbounds %struct.nla_map, ptr %map, i32 5, i32 1
  %21 = ptrtoint ptr %val14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %val14, align 4
  %arrayinit.element15 = getelementptr inbounds %struct.nla_map, ptr %map, i32 6
  %22 = ptrtoint ptr %arrayinit.element15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 7, ptr %arrayinit.element15, align 4
  %val17 = getelementptr inbounds %struct.nla_map, ptr %map, i32 6, i32 1
  %sent_fragments = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 15
  %23 = ptrtoint ptr %sent_fragments to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sent_fragments, align 4
  %25 = ptrtoint ptr %val17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %val17, align 4
  %arrayinit.element18 = getelementptr inbounds %struct.nla_map, ptr %map, i32 7
  %26 = ptrtoint ptr %arrayinit.element18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %arrayinit.element18, align 4
  %val20 = getelementptr inbounds %struct.nla_map, ptr %map, i32 7, i32 1
  %sent_fragmented = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 14
  %27 = ptrtoint ptr %sent_fragmented to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sent_fragmented, align 4
  %29 = ptrtoint ptr %val20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %val20, align 4
  %arrayinit.element21 = getelementptr inbounds %struct.nla_map, ptr %map, i32 8
  %30 = ptrtoint ptr %arrayinit.element21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 9, ptr %arrayinit.element21, align 4
  %val23 = getelementptr inbounds %struct.nla_map, ptr %map, i32 8, i32 1
  %sent_bundles = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 10
  %31 = ptrtoint ptr %sent_bundles to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sent_bundles, align 4
  %33 = ptrtoint ptr %val23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %val23, align 4
  %arrayinit.element24 = getelementptr inbounds %struct.nla_map, ptr %map, i32 9
  %34 = ptrtoint ptr %arrayinit.element24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 10, ptr %arrayinit.element24, align 4
  %val26 = getelementptr inbounds %struct.nla_map, ptr %map, i32 9, i32 1
  %sent_bundled = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 9
  %35 = ptrtoint ptr %sent_bundled to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sent_bundled, align 4
  %37 = ptrtoint ptr %val26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %val26, align 4
  %arrayinit.element27 = getelementptr inbounds %struct.nla_map, ptr %map, i32 10
  %38 = ptrtoint ptr %arrayinit.element27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 11, ptr %arrayinit.element27, align 4
  %val29 = getelementptr inbounds %struct.nla_map, ptr %map, i32 10, i32 1
  %msg_length_counts = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 24
  %39 = ptrtoint ptr %msg_length_counts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_length_counts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not = icmp eq i32 %40, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %40
  %41 = ptrtoint ptr %val29 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.select, ptr %val29, align 4
  %arrayinit.element31 = getelementptr inbounds %struct.nla_map, ptr %map, i32 11
  %42 = ptrtoint ptr %arrayinit.element31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 12, ptr %arrayinit.element31, align 4
  %val33 = getelementptr inbounds %struct.nla_map, ptr %map, i32 11, i32 1
  %43 = ptrtoint ptr %val33 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %val33, align 4
  %arrayinit.element35 = getelementptr inbounds %struct.nla_map, ptr %map, i32 12
  %44 = ptrtoint ptr %arrayinit.element35 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 13, ptr %arrayinit.element35, align 4
  %val37 = getelementptr inbounds %struct.nla_map, ptr %map, i32 12, i32 1
  %msg_lengths_total = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 25
  %45 = ptrtoint ptr %msg_lengths_total to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_lengths_total, align 4
  %47 = ptrtoint ptr %val37 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %val37, align 4
  %arrayinit.element38 = getelementptr inbounds %struct.nla_map, ptr %map, i32 13
  %48 = ptrtoint ptr %arrayinit.element38 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 14, ptr %arrayinit.element38, align 4
  %val40 = getelementptr inbounds %struct.nla_map, ptr %map, i32 13, i32 1
  %msg_length_profile = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 26
  %49 = ptrtoint ptr %msg_length_profile to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_length_profile, align 4
  %51 = ptrtoint ptr %val40 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %val40, align 4
  %arrayinit.element41 = getelementptr inbounds %struct.nla_map, ptr %map, i32 14
  %52 = ptrtoint ptr %arrayinit.element41 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 15, ptr %arrayinit.element41, align 4
  %val43 = getelementptr inbounds %struct.nla_map, ptr %map, i32 14, i32 1
  %arrayidx45 = getelementptr %struct.tipc_stats, ptr %s, i32 0, i32 26, i32 1
  %53 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx45, align 4
  %55 = ptrtoint ptr %val43 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %val43, align 4
  %arrayinit.element46 = getelementptr inbounds %struct.nla_map, ptr %map, i32 15
  %56 = ptrtoint ptr %arrayinit.element46 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 16, ptr %arrayinit.element46, align 4
  %val48 = getelementptr inbounds %struct.nla_map, ptr %map, i32 15, i32 1
  %arrayidx50 = getelementptr %struct.tipc_stats, ptr %s, i32 0, i32 26, i32 2
  %57 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx50, align 4
  %59 = ptrtoint ptr %val48 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %val48, align 4
  %arrayinit.element51 = getelementptr inbounds %struct.nla_map, ptr %map, i32 16
  %60 = ptrtoint ptr %arrayinit.element51 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 17, ptr %arrayinit.element51, align 4
  %val53 = getelementptr inbounds %struct.nla_map, ptr %map, i32 16, i32 1
  %arrayidx55 = getelementptr %struct.tipc_stats, ptr %s, i32 0, i32 26, i32 3
  %61 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx55, align 4
  %63 = ptrtoint ptr %val53 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %val53, align 4
  %arrayinit.element56 = getelementptr inbounds %struct.nla_map, ptr %map, i32 17
  %64 = ptrtoint ptr %arrayinit.element56 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 18, ptr %arrayinit.element56, align 4
  %val58 = getelementptr inbounds %struct.nla_map, ptr %map, i32 17, i32 1
  %arrayidx60 = getelementptr %struct.tipc_stats, ptr %s, i32 0, i32 26, i32 4
  %65 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx60, align 4
  %67 = ptrtoint ptr %val58 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %val58, align 4
  %arrayinit.element61 = getelementptr inbounds %struct.nla_map, ptr %map, i32 18
  %68 = ptrtoint ptr %arrayinit.element61 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 19, ptr %arrayinit.element61, align 4
  %val63 = getelementptr inbounds %struct.nla_map, ptr %map, i32 18, i32 1
  %arrayidx65 = getelementptr %struct.tipc_stats, ptr %s, i32 0, i32 26, i32 5
  %69 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx65, align 4
  %71 = ptrtoint ptr %val63 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %val63, align 4
  %arrayinit.element66 = getelementptr inbounds %struct.nla_map, ptr %map, i32 19
  %72 = ptrtoint ptr %arrayinit.element66 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 20, ptr %arrayinit.element66, align 4
  %val68 = getelementptr inbounds %struct.nla_map, ptr %map, i32 19, i32 1
  %arrayidx70 = getelementptr %struct.tipc_stats, ptr %s, i32 0, i32 26, i32 6
  %73 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx70, align 4
  %75 = ptrtoint ptr %val68 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %val68, align 4
  %arrayinit.element71 = getelementptr inbounds %struct.nla_map, ptr %map, i32 20
  %76 = ptrtoint ptr %arrayinit.element71 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 21, ptr %arrayinit.element71, align 4
  %val73 = getelementptr inbounds %struct.nla_map, ptr %map, i32 20, i32 1
  %recv_states = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 3
  %77 = ptrtoint ptr %recv_states to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %recv_states, align 4
  %79 = ptrtoint ptr %val73 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %val73, align 4
  %arrayinit.element74 = getelementptr inbounds %struct.nla_map, ptr %map, i32 21
  %80 = ptrtoint ptr %arrayinit.element74 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 22, ptr %arrayinit.element74, align 4
  %val76 = getelementptr inbounds %struct.nla_map, ptr %map, i32 21, i32 1
  %recv_probes = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 5
  %81 = ptrtoint ptr %recv_probes to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %recv_probes, align 4
  %83 = ptrtoint ptr %val76 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %val76, align 4
  %arrayinit.element77 = getelementptr inbounds %struct.nla_map, ptr %map, i32 22
  %84 = ptrtoint ptr %arrayinit.element77 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 23, ptr %arrayinit.element77, align 4
  %val79 = getelementptr inbounds %struct.nla_map, ptr %map, i32 22, i32 1
  %recv_nacks = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 7
  %85 = ptrtoint ptr %recv_nacks to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %recv_nacks, align 4
  %87 = ptrtoint ptr %val79 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %val79, align 4
  %arrayinit.element80 = getelementptr inbounds %struct.nla_map, ptr %map, i32 23
  %88 = ptrtoint ptr %arrayinit.element80 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 24, ptr %arrayinit.element80, align 4
  %val82 = getelementptr inbounds %struct.nla_map, ptr %map, i32 23, i32 1
  %deferred_recv = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 19
  %89 = ptrtoint ptr %deferred_recv to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %deferred_recv, align 4
  %91 = ptrtoint ptr %val82 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %val82, align 4
  %arrayinit.element83 = getelementptr inbounds %struct.nla_map, ptr %map, i32 24
  %92 = ptrtoint ptr %arrayinit.element83 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 25, ptr %arrayinit.element83, align 4
  %val85 = getelementptr inbounds %struct.nla_map, ptr %map, i32 24, i32 1
  %sent_states = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 2
  %93 = ptrtoint ptr %sent_states to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sent_states, align 4
  %95 = ptrtoint ptr %val85 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %val85, align 4
  %arrayinit.element86 = getelementptr inbounds %struct.nla_map, ptr %map, i32 25
  %96 = ptrtoint ptr %arrayinit.element86 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 26, ptr %arrayinit.element86, align 4
  %val88 = getelementptr inbounds %struct.nla_map, ptr %map, i32 25, i32 1
  %sent_probes = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 4
  %97 = ptrtoint ptr %sent_probes to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sent_probes, align 4
  %99 = ptrtoint ptr %val88 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %val88, align 4
  %arrayinit.element89 = getelementptr inbounds %struct.nla_map, ptr %map, i32 26
  %100 = ptrtoint ptr %arrayinit.element89 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 27, ptr %arrayinit.element89, align 4
  %val91 = getelementptr inbounds %struct.nla_map, ptr %map, i32 26, i32 1
  %sent_nacks = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 6
  %101 = ptrtoint ptr %sent_nacks to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sent_nacks, align 4
  %103 = ptrtoint ptr %val91 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %val91, align 4
  %arrayinit.element92 = getelementptr inbounds %struct.nla_map, ptr %map, i32 27
  %104 = ptrtoint ptr %arrayinit.element92 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 28, ptr %arrayinit.element92, align 4
  %val94 = getelementptr inbounds %struct.nla_map, ptr %map, i32 27, i32 1
  %sent_acks = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 8
  %105 = ptrtoint ptr %sent_acks to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sent_acks, align 4
  %107 = ptrtoint ptr %val94 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %val94, align 4
  %arrayinit.element95 = getelementptr inbounds %struct.nla_map, ptr %map, i32 28
  %108 = ptrtoint ptr %arrayinit.element95 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 29, ptr %arrayinit.element95, align 4
  %val97 = getelementptr inbounds %struct.nla_map, ptr %map, i32 28, i32 1
  %retransmitted = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 13
  %109 = ptrtoint ptr %retransmitted to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %retransmitted, align 4
  %111 = ptrtoint ptr %val97 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %val97, align 4
  %arrayinit.element98 = getelementptr inbounds %struct.nla_map, ptr %map, i32 29
  %112 = ptrtoint ptr %arrayinit.element98 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 30, ptr %arrayinit.element98, align 4
  %val100 = getelementptr inbounds %struct.nla_map, ptr %map, i32 29, i32 1
  %duplicates = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 20
  %113 = ptrtoint ptr %duplicates to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %duplicates, align 4
  %115 = ptrtoint ptr %val100 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %val100, align 4
  %arrayinit.element101 = getelementptr inbounds %struct.nla_map, ptr %map, i32 30
  %116 = ptrtoint ptr %arrayinit.element101 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 31, ptr %arrayinit.element101, align 4
  %val103 = getelementptr inbounds %struct.nla_map, ptr %map, i32 30, i32 1
  %link_congs = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 18
  %117 = ptrtoint ptr %link_congs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %link_congs, align 4
  %119 = ptrtoint ptr %val103 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %val103, align 4
  %arrayinit.element104 = getelementptr inbounds %struct.nla_map, ptr %map, i32 31
  %120 = ptrtoint ptr %arrayinit.element104 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 32, ptr %arrayinit.element104, align 4
  %val106 = getelementptr inbounds %struct.nla_map, ptr %map, i32 31, i32 1
  %max_queue_sz = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 21
  %121 = ptrtoint ptr %max_queue_sz to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %max_queue_sz, align 4
  %123 = ptrtoint ptr %val106 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %val106, align 4
  %arrayinit.element107 = getelementptr inbounds %struct.nla_map, ptr %map, i32 32
  %124 = ptrtoint ptr %arrayinit.element107 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 33, ptr %arrayinit.element107, align 4
  %val109 = getelementptr inbounds %struct.nla_map, ptr %map, i32 32, i32 1
  %queue_sz_counts = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 23
  %125 = ptrtoint ptr %queue_sz_counts to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %queue_sz_counts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool110.not = icmp eq i32 %126, 0
  br i1 %tobool110.not, label %entry.cond.end114_crit_edge, label %cond.true111

entry.cond.end114_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end114

cond.true111:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %accu_queue_sz = getelementptr inbounds %struct.tipc_stats, ptr %s, i32 0, i32 22
  %127 = ptrtoint ptr %accu_queue_sz to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %accu_queue_sz, align 4
  %div = udiv i32 %128, %126
  br label %cond.end114

cond.end114:                                      ; preds = %cond.true111, %entry.cond.end114_crit_edge
  %cond115 = phi i32 [ %div, %cond.true111 ], [ 0, %entry.cond.end114_crit_edge ]
  %129 = ptrtoint ptr %val109 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %cond115, ptr %val109, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %130 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool116.not172 = icmp eq ptr %131, null
  %tobool116.not = select i1 %cmp.i, i1 true, i1 %tobool116.not172
  br i1 %tobool116.not, label %cond.end114.cleanup_crit_edge, label %cond.end114.for.body_crit_edge

cond.end114.for.body_crit_edge:                   ; preds = %cond.end114
  br label %for.body

cond.end114.cleanup_crit_edge:                    ; preds = %cond.end114
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0171, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %cond.end114.for.body_crit_edge
  %i.0171 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %cond.end114.for.body_crit_edge ]
  %arrayidx117 = getelementptr [33 x %struct.nla_map], ptr %map, i32 0, i32 %i.0171
  %132 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx117, align 4
  %val120 = getelementptr [33 x %struct.nla_map], ptr %map, i32 0, i32 %i.0171, i32 1
  %134 = ptrtoint ptr %val120 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %val120, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #18
  %136 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef %133, i32 noundef 4, ptr noundef nonnull %tmp.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool122.not = icmp eq i32 %call.i, 0
  br i1 %tobool122.not, label %for.cond, label %if.then.i.i

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  %137 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %138 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %131 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %139 = ptrtoint ptr %131 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv.i, ptr %131, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %for.body
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %140 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %141, %131
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !254

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.94, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %142 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %131 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %143 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #18
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %for.end, %cond.end114.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ 0, %for.end ], [ -90, %cond.end114.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %map) #18
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nla_nest_cancel(ptr noundef %skb, ptr noundef %start) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %tobool.not.i = icmp eq ptr %start, null
  br i1 %tobool.not.i, label %entry.nlmsg_trim.exit_crit_edge, label %if.then.i

entry.nlmsg_trim.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %nlmsg_trim.exit

if.then.i:                                        ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %1, %start
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !254

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.94, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %start to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #18
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %entry.nlmsg_trim.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_add_bc_link(ptr noundef %net, ptr nocapture noundef readonly %msg, ptr noundef %bcl) local_unnamed_addr #2 align 64 {
entry:
  %tmp.i128 = alloca i32, align 4
  %tmp.i126 = alloca i32, align 4
  %tmp.i124 = alloca i32, align 4
  %tmp.i118 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tipc_bcast_get_mode(ptr noundef %net) #18
  %call1 = tail call i32 @tipc_bcast_get_broadcast_ratio(ptr noundef %net) #18
  %tobool.not = icmp eq ptr %bcl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #18
  %bclock.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %bclock.i) #18
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %portid = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid, align 4
  %seq = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seq, align 4
  %call2 = tail call ptr @genlmsg_put(ptr noundef %1, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @tipc_genl_family, i32 noundef 2, i8 noundef zeroext 8) #18
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i111 = tail call fastcc ptr @tipc_net(ptr noundef %net) #18
  %bclock.i112 = getelementptr inbounds %struct.tipc_net, ptr %call.i111, i32 0, i32 16
  tail call void @_raw_spin_unlock_bh(ptr noundef %bclock.i112) #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msg, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %7, i32 noundef 4, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool8.not144 = icmp eq ptr %9, null
  %tobool8.not = select i1 %cmp.i, i1 true, i1 %tobool8.not144
  br i1 %tobool8.not, label %if.end5.if.then.i_crit_edge, label %if.end10

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

if.end10:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msg, align 4
  %call.i113 = tail call i32 @nla_put(ptr noundef %11, i32 noundef 5, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool13.not = icmp eq i32 %call.i113, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.if.then.i.i_crit_edge

if.end10.if.then.i.i_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end15:                                         ; preds = %if.end10
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg, align 4
  %call.i114 = tail call i32 @nla_put(ptr noundef %13, i32 noundef 4, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool18.not = icmp eq i32 %call.i114, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.if.then.i.i_crit_edge

if.end15.if.then.i.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end20:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %msg, align 4
  %name = getelementptr inbounds %struct.tipc_link, ptr %bcl, i32 0, i32 1
  %call.i115 = tail call i32 @strlen(ptr noundef %name) #24
  %add.i = add i32 %call.i115, 1
  %call1.i116 = tail call i32 @nla_put(ptr noundef %15, i32 noundef 1, i32 noundef %add.i, ptr noundef %name) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i116)
  %tobool23.not = icmp eq i32 %call1.i116, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.if.then.i.i_crit_edge

if.end20.if.then.i.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end25:                                         ; preds = %if.end20
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #18
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %tmp.i, align 4
  %call.i117 = call i32 @nla_put(ptr noundef %17, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool28.not = icmp eq i32 %call.i117, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.if.then.i.i_crit_edge

if.end25.if.then.i.i_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end30:                                         ; preds = %if.end25
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %msg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i118) #18
  %21 = ptrtoint ptr %tmp.i118 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %tmp.i118, align 4
  %call.i119 = call i32 @nla_put(ptr noundef %20, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i118) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i118) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool33.not = icmp eq i32 %call.i119, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.if.then.i.i_crit_edge

if.end30.if.then.i.i_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end35:                                         ; preds = %if.end30
  %22 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %msg, align 4
  %tail.i.i120 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i.i120 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i120, align 8
  %call1.i121 = call i32 @nla_put(ptr noundef %23, i32 noundef 7, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121)
  %cmp.i122 = icmp slt i32 %call1.i121, 0
  %tobool38.not145 = icmp eq ptr %25, null
  %tobool38.not = select i1 %cmp.i122, i1 true, i1 %tobool38.not145
  br i1 %tobool38.not, label %if.end35.if.then.i.i_crit_edge, label %if.end40

if.end35.if.then.i.i_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end40:                                         ; preds = %if.end35
  %26 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %msg, align 4
  %max_win = getelementptr inbounds %struct.tipc_link, ptr %bcl, i32 0, i32 39
  %28 = ptrtoint ptr %max_win to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %max_win, align 2
  %conv = zext i16 %29 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i124) #18
  %30 = ptrtoint ptr %tmp.i124 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %tmp.i124, align 4
  %call.i125 = call i32 @nla_put(ptr noundef %27, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i124) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i124) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool43.not = icmp eq i32 %call.i125, 0
  br i1 %tobool43.not, label %if.end45, label %if.end40.prop_msg_full_crit_edge

if.end40.prop_msg_full_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  br label %prop_msg_full

if.end45:                                         ; preds = %if.end40
  %31 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %msg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i126) #18
  %33 = ptrtoint ptr %tmp.i126 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call, ptr %tmp.i126, align 4
  %call.i127 = call i32 @nla_put(ptr noundef %32, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i126) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i126) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool48.not = icmp eq i32 %call.i127, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.prop_msg_full_crit_edge

if.end45.prop_msg_full_crit_edge:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #20
  br label %prop_msg_full

if.end50:                                         ; preds = %if.end45
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %if.end50.if.end58_crit_edge, label %if.then52

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58

if.then52:                                        ; preds = %if.end50
  %34 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %msg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i128) #18
  %36 = ptrtoint ptr %tmp.i128 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call1, ptr %tmp.i128, align 4
  %call.i129 = call i32 @nla_put(ptr noundef %35, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i128) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i128) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool55.not = icmp eq i32 %call.i129, 0
  br i1 %tobool55.not, label %if.then52.if.end58_crit_edge, label %if.then52.prop_msg_full_crit_edge

if.then52.prop_msg_full_crit_edge:                ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %prop_msg_full

if.then52.if.end58_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58

if.end58:                                         ; preds = %if.then52.if.end58_crit_edge, %if.end50.if.end58_crit_edge
  %37 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %msg, align 4
  %tail.i.i130 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 16
  %39 = ptrtoint ptr %tail.i.i130 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i130, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %41 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i, ptr %25, align 2
  %42 = load ptr, ptr %msg, align 4
  %stats = getelementptr inbounds %struct.tipc_link, ptr %bcl, i32 0, i32 52
  %call62 = call fastcc i32 @__tipc_nl_add_bc_link_stat(ptr noundef %42, ptr noundef %stats)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end58.if.then.i.i_crit_edge

if.end58.if.then.i.i_crit_edge:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  %call.i131 = call fastcc ptr @tipc_net(ptr noundef %net) #18
  %bclock.i132 = getelementptr inbounds %struct.tipc_net, ptr %call.i131, i32 0, i32 16
  call void @_raw_spin_unlock_bh(ptr noundef %bclock.i132) #18
  %43 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %msg, align 4
  %tail.i.i133 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %tail.i.i133 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i133, align 8
  %sub.ptr.lhs.cast.i134 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i135 = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i136 = sub i32 %sub.ptr.lhs.cast.i134, %sub.ptr.rhs.cast.i135
  %conv.i137 = trunc i32 %sub.ptr.sub.i136 to i16
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i137, ptr %9, align 2
  %48 = load ptr, ptr %msg, align 4
  %add.ptr1.i = getelementptr i8, ptr %call2, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %51 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

prop_msg_full:                                    ; preds = %if.then52.prop_msg_full_crit_edge, %if.end45.prop_msg_full_crit_edge, %if.end40.prop_msg_full_crit_edge
  %52 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %msg, align 4
  call fastcc void @nla_nest_cancel(ptr noundef %53, ptr noundef nonnull %25)
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %prop_msg_full, %if.end58.if.then.i.i_crit_edge, %if.end35.if.then.i.i_crit_edge, %if.end30.if.then.i.i_crit_edge, %if.end25.if.then.i.i_crit_edge, %if.end20.if.then.i.i_crit_edge, %if.end15.if.then.i.i_crit_edge, %if.end10.if.then.i.i_crit_edge
  %54 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %msg, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 19
  %56 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %57, %9
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !254

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.94, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %58 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i138 = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i139 = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i.i140 = sub i32 %sub.ptr.lhs.cast.i.i138, %sub.ptr.rhs.cast.i.i139
  call void @skb_trim(ptr noundef %55, i32 noundef %sub.ptr.sub.i.i140) #18
  br label %if.then.i

if.then.i:                                        ; preds = %nla_nest_cancel.exit, %if.end5.if.then.i_crit_edge
  %call.i141 = call fastcc ptr @tipc_net(ptr noundef %net) #18
  %bclock.i142 = getelementptr inbounds %struct.tipc_net, ptr %call.i141, i32 0, i32 16
  call void @_raw_spin_unlock_bh(ptr noundef %bclock.i142) #18
  %60 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %msg, align 4
  %add.ptr1.i143 = getelementptr i8, ptr %call2, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i143, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 19
  %62 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %63, %add.ptr1.i143
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !254

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.94, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %64 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i143 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %65 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %61, i32 noundef %sub.ptr.sub.i.i.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end65, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end65 ], [ -90, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_bcast_get_mode(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_bcast_get_broadcast_ratio(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__tipc_nl_add_bc_link_stat(ptr noundef %skb, ptr nocapture noundef readonly %stats) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %map = alloca [19 x %struct.nla_map.154], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %map) #18
  %0 = getelementptr inbounds i8, ptr %map, i32 148
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !255
  %2 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %map, align 4
  %val = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 0, i32 1
  %recv_pkts = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 1
  %3 = ptrtoint ptr %recv_pkts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %recv_pkts, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val, align 4
  %arrayinit.element = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 1
  %6 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %arrayinit.element, align 4
  %val2 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 1, i32 1
  %recv_fragments = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 17
  %7 = ptrtoint ptr %recv_fragments to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %recv_fragments, align 4
  %9 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val2, align 4
  %arrayinit.element3 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 2
  %10 = ptrtoint ptr %arrayinit.element3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %arrayinit.element3, align 4
  %val5 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 2, i32 1
  %recv_fragmented = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 16
  %11 = ptrtoint ptr %recv_fragmented to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %recv_fragmented, align 4
  %13 = ptrtoint ptr %val5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val5, align 4
  %arrayinit.element6 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 3
  %14 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %arrayinit.element6, align 4
  %val8 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 3, i32 1
  %recv_bundles = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 12
  %15 = ptrtoint ptr %recv_bundles to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %recv_bundles, align 4
  %17 = ptrtoint ptr %val8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val8, align 4
  %arrayinit.element9 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 4
  %18 = ptrtoint ptr %arrayinit.element9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %arrayinit.element9, align 4
  %val11 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 4, i32 1
  %recv_bundled = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 11
  %19 = ptrtoint ptr %recv_bundled to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %recv_bundled, align 4
  %21 = ptrtoint ptr %val11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val11, align 4
  %arrayinit.element12 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 5
  %22 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 6, ptr %arrayinit.element12, align 4
  %val14 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 5, i32 1
  %23 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stats, align 4
  %25 = ptrtoint ptr %val14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %val14, align 4
  %arrayinit.element15 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 6
  %26 = ptrtoint ptr %arrayinit.element15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 7, ptr %arrayinit.element15, align 4
  %val17 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 6, i32 1
  %sent_fragments = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 15
  %27 = ptrtoint ptr %sent_fragments to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sent_fragments, align 4
  %29 = ptrtoint ptr %val17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %val17, align 4
  %arrayinit.element18 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 7
  %30 = ptrtoint ptr %arrayinit.element18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %arrayinit.element18, align 4
  %val20 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 7, i32 1
  %sent_fragmented = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 14
  %31 = ptrtoint ptr %sent_fragmented to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sent_fragmented, align 4
  %33 = ptrtoint ptr %val20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %val20, align 4
  %arrayinit.element21 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 8
  %34 = ptrtoint ptr %arrayinit.element21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 9, ptr %arrayinit.element21, align 4
  %val23 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 8, i32 1
  %sent_bundles = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 10
  %35 = ptrtoint ptr %sent_bundles to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sent_bundles, align 4
  %37 = ptrtoint ptr %val23 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %val23, align 4
  %arrayinit.element24 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 9
  %38 = ptrtoint ptr %arrayinit.element24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 10, ptr %arrayinit.element24, align 4
  %val26 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 9, i32 1
  %sent_bundled = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 9
  %39 = ptrtoint ptr %sent_bundled to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sent_bundled, align 4
  %41 = ptrtoint ptr %val26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %val26, align 4
  %arrayinit.element27 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 10
  %42 = ptrtoint ptr %arrayinit.element27 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 23, ptr %arrayinit.element27, align 4
  %val29 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 10, i32 1
  %recv_nacks = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 7
  %43 = ptrtoint ptr %recv_nacks to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %recv_nacks, align 4
  %45 = ptrtoint ptr %val29 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %val29, align 4
  %arrayinit.element30 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 11
  %46 = ptrtoint ptr %arrayinit.element30 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 24, ptr %arrayinit.element30, align 4
  %val32 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 11, i32 1
  %deferred_recv = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 19
  %47 = ptrtoint ptr %deferred_recv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %deferred_recv, align 4
  %49 = ptrtoint ptr %val32 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %val32, align 4
  %arrayinit.element33 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 12
  %50 = ptrtoint ptr %arrayinit.element33 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 27, ptr %arrayinit.element33, align 4
  %val35 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 12, i32 1
  %sent_nacks = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 6
  %51 = ptrtoint ptr %sent_nacks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sent_nacks, align 4
  %53 = ptrtoint ptr %val35 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %val35, align 4
  %arrayinit.element36 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 13
  %54 = ptrtoint ptr %arrayinit.element36 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 28, ptr %arrayinit.element36, align 4
  %val38 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 13, i32 1
  %sent_acks = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 8
  %55 = ptrtoint ptr %sent_acks to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sent_acks, align 4
  %57 = ptrtoint ptr %val38 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %val38, align 4
  %arrayinit.element39 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 14
  %58 = ptrtoint ptr %arrayinit.element39 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 29, ptr %arrayinit.element39, align 4
  %val41 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 14, i32 1
  %retransmitted = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 13
  %59 = ptrtoint ptr %retransmitted to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %retransmitted, align 4
  %61 = ptrtoint ptr %val41 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %val41, align 4
  %arrayinit.element42 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 15
  %62 = ptrtoint ptr %arrayinit.element42 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 30, ptr %arrayinit.element42, align 4
  %val44 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 15, i32 1
  %duplicates = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 20
  %63 = ptrtoint ptr %duplicates to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %duplicates, align 4
  %65 = ptrtoint ptr %val44 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %val44, align 4
  %arrayinit.element45 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 16
  %66 = ptrtoint ptr %arrayinit.element45 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 31, ptr %arrayinit.element45, align 4
  %val47 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 16, i32 1
  %link_congs = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 18
  %67 = ptrtoint ptr %link_congs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %link_congs, align 4
  %69 = ptrtoint ptr %val47 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %val47, align 4
  %arrayinit.element48 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 17
  %70 = ptrtoint ptr %arrayinit.element48 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 32, ptr %arrayinit.element48, align 4
  %val50 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 17, i32 1
  %max_queue_sz = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 21
  %71 = ptrtoint ptr %max_queue_sz to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_queue_sz, align 4
  %73 = ptrtoint ptr %val50 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %val50, align 4
  %arrayinit.element51 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 18
  %74 = ptrtoint ptr %arrayinit.element51 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 33, ptr %arrayinit.element51, align 4
  %val53 = getelementptr inbounds %struct.nla_map.154, ptr %map, i32 18, i32 1
  %queue_sz_counts = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 23
  %75 = ptrtoint ptr %queue_sz_counts to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %queue_sz_counts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not = icmp eq i32 %76, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %accu_queue_sz = getelementptr inbounds %struct.tipc_stats, ptr %stats, i32 0, i32 22
  %77 = ptrtoint ptr %accu_queue_sz to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %accu_queue_sz, align 4
  %div = udiv i32 %78, %76
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %79 = ptrtoint ptr %val53 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %cond, ptr %val53, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %80 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool55.not96 = icmp eq ptr %81, null
  %tobool55.not = select i1 %cmp.i, i1 true, i1 %tobool55.not96
  br i1 %tobool55.not, label %cond.end.cleanup_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, 19
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %cond.end.for.body_crit_edge
  %i.095 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %arrayidx = getelementptr [19 x %struct.nla_map.154], ptr %map, i32 0, i32 %i.095
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx, align 4
  %val58 = getelementptr [19 x %struct.nla_map.154], ptr %map, i32 0, i32 %i.095, i32 1
  %84 = ptrtoint ptr %val58 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val58, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #18
  %86 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef %83, i32 noundef 4, ptr noundef nonnull %tmp.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool60.not = icmp eq i32 %call.i, 0
  br i1 %tobool60.not, label %for.cond, label %if.then.i.i

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  %87 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %88 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %81 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %89 = ptrtoint ptr %81 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i, ptr %81, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %for.body
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %90 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %91, %81
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !254

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.94, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %92 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %81 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %93 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #18
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %for.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ 0, %for.end ], [ -90, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %map) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_link_set_tolerance(ptr noundef %l, i32 noundef %tol, ptr noundef %xmitq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tolerance = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 9
  %0 = ptrtoint ptr %tolerance to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %tol, ptr %tolerance, align 4
  %bc_rcvlink = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 48
  %1 = ptrtoint ptr %bc_rcvlink to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bc_rcvlink, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %tolerance2 = getelementptr inbounds %struct.tipc_link, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %tolerance2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %tol, ptr %tolerance2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  %and.i = and i32 %5, 201326606
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not = icmp eq i32 %and.i, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @tipc_link_build_proto_msg(ptr noundef %l, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i16 noundef zeroext 0, i32 noundef %tol, i32 noundef 0, ptr noundef %xmitq)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_link_set_prio(ptr noundef %l, i32 noundef %prio, ptr noundef %xmitq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %priority = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 17
  %0 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %prio, ptr %priority, align 4
  tail call fastcc void @tipc_link_build_proto_msg(ptr noundef %l, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i16 noundef zeroext 0, i32 noundef 0, i32 noundef %prio, ptr noundef %xmitq)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tipc_link_set_abort_limit(ptr nocapture noundef writeonly %l, i32 noundef %limit) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %abort_limit = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 10
  %0 = ptrtoint ptr %abort_limit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %limit, ptr %abort_limit, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_link_dump(ptr noundef %l, i16 noundef zeroext %dqueues, ptr noundef %buf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %dqueues to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dqueues)
  %tobool.not = icmp eq i16 %dqueues, 0
  %cond = select i1 %tobool.not, i32 100, i32 1600
  %tobool1.not = icmp eq ptr %l, null
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %cond, ptr noundef nonnull @.str.39) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %cond, ptr noundef nonnull @.str.40, i32 noundef %1) #18
  %add.ptr = getelementptr i8, ptr %buf, i32 %call2
  %sub = sub i32 %cond, %call2
  %state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.41, i32 noundef %3) #18
  %add5 = add i32 %call4, %call2
  %add.ptr6 = getelementptr i8, ptr %buf, i32 %add5
  %sub7 = sub i32 %cond, %add5
  %in_session = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 13
  %4 = ptrtoint ptr %in_session to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_session, align 2, !range !241
  %6 = zext i8 %5 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.42, i32 noundef %6) #18
  %add11 = add i32 %call10, %add5
  %add.ptr12 = getelementptr i8, ptr %buf, i32 %add11
  %sub13 = sub i32 %cond, %add11
  %session = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 4
  %7 = ptrtoint ptr %session to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %session, align 2
  %conv14 = zext i16 %8 to i32
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.42, i32 noundef %conv14) #18
  %add16 = add i32 %call15, %add11
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %add16
  %sub18 = sub i32 %cond, %add16
  %peer_session = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 3
  %9 = ptrtoint ptr %peer_session to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %peer_session, align 4
  %conv19 = zext i16 %10 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.42, i32 noundef %conv19) #18
  %add21 = add i32 %call20, %add16
  %add.ptr22 = getelementptr i8, ptr %buf, i32 %add21
  %sub23 = sub i32 %cond, %add21
  %snd_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 29
  %11 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %snd_nxt, align 4
  %conv24 = zext i16 %12 to i32
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.42, i32 noundef %conv24) #18
  %add26 = add i32 %call25, %add21
  %add.ptr27 = getelementptr i8, ptr %buf, i32 %add26
  %sub28 = sub i32 %cond, %add26
  %rcv_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %13 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rcv_nxt, align 2
  %conv29 = zext i16 %14 to i32
  %call30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27, i32 noundef %sub28, ptr noundef nonnull @.str.42, i32 noundef %conv29) #18
  %add31 = add i32 %call30, %add26
  %add.ptr32 = getelementptr i8, ptr %buf, i32 %add31
  %sub33 = sub i32 %cond, %add31
  %snd_nxt_state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 5
  %15 = ptrtoint ptr %snd_nxt_state to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %snd_nxt_state, align 4
  %conv34 = zext i16 %16 to i32
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32, i32 noundef %sub33, ptr noundef nonnull @.str.42, i32 noundef %conv34) #18
  %add36 = add i32 %call35, %add31
  %add.ptr37 = getelementptr i8, ptr %buf, i32 %add36
  %sub38 = sub i32 %cond, %add36
  %rcv_nxt_state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 6
  %17 = ptrtoint ptr %rcv_nxt_state to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rcv_nxt_state, align 2
  %conv39 = zext i16 %18 to i32
  %call40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub38, ptr noundef nonnull @.str.42, i32 noundef %conv39) #18
  %add41 = add i32 %call40, %add36
  %add.ptr42 = getelementptr i8, ptr %buf, i32 %add41
  %sub43 = sub i32 %cond, %add41
  %peer_caps = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 12
  %19 = ptrtoint ptr %peer_caps to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %peer_caps, align 4
  %conv44 = zext i16 %20 to i32
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr42, i32 noundef %sub43, ptr noundef nonnull @.str.41, i32 noundef %conv44) #18
  %add46 = add i32 %call45, %add41
  %add.ptr47 = getelementptr i8, ptr %buf, i32 %add46
  %sub48 = sub i32 %cond, %add46
  %silent_intv_cnt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 15
  %21 = ptrtoint ptr %silent_intv_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %silent_intv_cnt, align 4
  %call49 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr47, i32 noundef %sub48, ptr noundef nonnull @.str.42, i32 noundef %22) #18
  %add50 = add i32 %call49, %add46
  %add.ptr51 = getelementptr i8, ptr %buf, i32 %add50
  %sub52 = sub i32 %cond, %add50
  %rst_cnt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 20
  %23 = ptrtoint ptr %rst_cnt to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rst_cnt, align 2
  %conv53 = zext i16 %24 to i32
  %call54 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr51, i32 noundef %sub52, ptr noundef nonnull @.str.42, i32 noundef %conv53) #18
  %add55 = add i32 %call54, %add50
  %add.ptr56 = getelementptr i8, ptr %buf, i32 %add55
  %sub57 = sub i32 %cond, %add55
  %call58 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr56, i32 noundef %sub57, ptr noundef nonnull @.str.42, i32 noundef 0) #18
  %add59 = add i32 %add55, %call58
  %add.ptr60 = getelementptr i8, ptr %buf, i32 %add59
  %sub61 = sub i32 %cond, %add59
  %call62 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr60, i32 noundef %sub61, ptr noundef nonnull @.str.42, i32 noundef 0) #18
  %add63 = add i32 %add59, %call62
  %add.ptr64 = getelementptr i8, ptr %buf, i32 %add63
  %sub65 = sub i32 %cond, %add63
  %acked = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 45
  %25 = ptrtoint ptr %acked to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %acked, align 2
  %conv66 = zext i16 %26 to i32
  %call67 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr64, i32 noundef %sub65, ptr noundef nonnull @.str.42, i32 noundef %conv66) #18
  %add68 = add i32 %call67, %add63
  %transmq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26
  %qlen.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26, i32 1
  %27 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i, align 4
  %29 = ptrtoint ptr %transmq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %transmq, align 4
  %cmp.i = icmp eq ptr %30, %transmq
  %prev.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i439 = icmp eq ptr %32, %transmq
  %spec.store.select.i440 = select i1 %cmp.i439, ptr null, ptr %32
  %add.ptr72 = getelementptr i8, ptr %buf, i32 %add68
  %sub73 = sub i32 %cond, %add68
  %tobool74.not480 = icmp eq ptr %30, null
  %tobool74.not = or i1 %cmp.i, %tobool74.not480
  br i1 %tobool74.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 19
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv77 = and i32 %36, 65535
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond78 = phi i32 [ %conv77, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %tobool79.not = icmp eq ptr %spec.store.select.i440, null
  br i1 %tobool79.not, label %cond.end.cond.end85_crit_edge, label %cond.true80

cond.end.cond.end85_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end85

cond.true80:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  %data.i441 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i440, i32 0, i32 19
  %37 = ptrtoint ptr %data.i441 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i441, align 4
  %arrayidx.i.i.i442 = getelementptr [15 x i32], ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx.i.i.i442 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i.i442, align 4
  %conv83 = and i32 %40, 65535
  br label %cond.end85

cond.end85:                                       ; preds = %cond.true80, %cond.end.cond.end85_crit_edge
  %cond86 = phi i32 [ %conv83, %cond.true80 ], [ 0, %cond.end.cond.end85_crit_edge ]
  %call87 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr72, i32 noundef %sub73, ptr noundef nonnull @.str.43, i32 noundef %28, i32 noundef %cond78, i32 noundef %cond86) #18
  %add88 = add i32 %call87, %add68
  %deferdq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32
  %qlen.i444 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32, i32 1
  %41 = ptrtoint ptr %qlen.i444 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qlen.i444, align 4
  %43 = ptrtoint ptr %deferdq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %deferdq, align 4
  %cmp.i445 = icmp eq ptr %44, %deferdq
  %prev.i447 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i447 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %prev.i447, align 4
  %cmp.i448 = icmp eq ptr %46, %deferdq
  %spec.store.select.i449 = select i1 %cmp.i448, ptr null, ptr %46
  %add.ptr92 = getelementptr i8, ptr %buf, i32 %add88
  %sub93 = sub i32 %cond, %add88
  %tobool94.not481 = icmp eq ptr %44, null
  %tobool94.not = or i1 %cmp.i445, %tobool94.not481
  br i1 %tobool94.not, label %cond.end85.cond.end100_crit_edge, label %cond.true95

cond.end85.cond.end100_crit_edge:                 ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end100

cond.true95:                                      ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #20
  %data.i450 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 19
  %47 = ptrtoint ptr %data.i450 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i450, align 4
  %arrayidx.i.i.i451 = getelementptr [15 x i32], ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx.i.i.i451 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i.i451, align 4
  %conv98 = and i32 %50, 65535
  br label %cond.end100

cond.end100:                                      ; preds = %cond.true95, %cond.end85.cond.end100_crit_edge
  %cond101 = phi i32 [ %conv98, %cond.true95 ], [ 0, %cond.end85.cond.end100_crit_edge ]
  %tobool102.not = icmp eq ptr %spec.store.select.i449, null
  br i1 %tobool102.not, label %cond.end100.cond.end108_crit_edge, label %cond.true103

cond.end100.cond.end108_crit_edge:                ; preds = %cond.end100
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end108

cond.true103:                                     ; preds = %cond.end100
  call void @__sanitizer_cov_trace_pc() #20
  %data.i453 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i449, i32 0, i32 19
  %51 = ptrtoint ptr %data.i453 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i453, align 4
  %arrayidx.i.i.i454 = getelementptr [15 x i32], ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i.i454, align 4
  %conv106 = and i32 %54, 65535
  br label %cond.end108

cond.end108:                                      ; preds = %cond.true103, %cond.end100.cond.end108_crit_edge
  %cond109 = phi i32 [ %conv106, %cond.true103 ], [ 0, %cond.end100.cond.end108_crit_edge ]
  %call110 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr92, i32 noundef %sub93, ptr noundef nonnull @.str.43, i32 noundef %42, i32 noundef %cond101, i32 noundef %cond109) #18
  %add111 = add i32 %call110, %add88
  %backlogq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 27
  %qlen.i456 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 27, i32 1
  %55 = ptrtoint ptr %qlen.i456 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %qlen.i456, align 4
  %57 = ptrtoint ptr %backlogq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %backlogq, align 4
  %cmp.i457 = icmp eq ptr %58, %backlogq
  %prev.i459 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 27, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i459 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %prev.i459, align 4
  %cmp.i460 = icmp eq ptr %60, %backlogq
  %spec.store.select.i461 = select i1 %cmp.i460, ptr null, ptr %60
  %add.ptr115 = getelementptr i8, ptr %buf, i32 %add111
  %sub116 = sub i32 %cond, %add111
  %tobool117.not482 = icmp eq ptr %58, null
  %tobool117.not = or i1 %cmp.i457, %tobool117.not482
  br i1 %tobool117.not, label %cond.end108.cond.end123_crit_edge, label %cond.true118

cond.end108.cond.end123_crit_edge:                ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end123

cond.true118:                                     ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #20
  %data.i462 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 19
  %61 = ptrtoint ptr %data.i462 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i462, align 4
  %arrayidx.i.i.i463 = getelementptr [15 x i32], ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %arrayidx.i.i.i463 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i.i463, align 4
  %conv121 = and i32 %64, 65535
  br label %cond.end123

cond.end123:                                      ; preds = %cond.true118, %cond.end108.cond.end123_crit_edge
  %cond124 = phi i32 [ %conv121, %cond.true118 ], [ 0, %cond.end108.cond.end123_crit_edge ]
  %tobool125.not = icmp eq ptr %spec.store.select.i461, null
  br i1 %tobool125.not, label %cond.end123.cond.end131_crit_edge, label %cond.true126

cond.end123.cond.end131_crit_edge:                ; preds = %cond.end123
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end131

cond.true126:                                     ; preds = %cond.end123
  call void @__sanitizer_cov_trace_pc() #20
  %data.i465 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i461, i32 0, i32 19
  %65 = ptrtoint ptr %data.i465 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i465, align 4
  %arrayidx.i.i.i466 = getelementptr [15 x i32], ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %arrayidx.i.i.i466 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i.i466, align 4
  %conv129 = and i32 %68, 65535
  br label %cond.end131

cond.end131:                                      ; preds = %cond.true126, %cond.end123.cond.end131_crit_edge
  %cond132 = phi i32 [ %conv129, %cond.true126 ], [ 0, %cond.end123.cond.end131_crit_edge ]
  %call133 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr115, i32 noundef %sub116, ptr noundef nonnull @.str.43, i32 noundef %56, i32 noundef %cond124, i32 noundef %cond132) #18
  %add134 = add i32 %call133, %add111
  %inputq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 33
  %69 = ptrtoint ptr %inputq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %inputq, align 4
  %qlen.i468 = getelementptr inbounds %struct.sk_buff_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %qlen.i468 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %qlen.i468, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %70, align 4
  %cmp.i469 = icmp eq ptr %74, %70
  %prev.i471 = getelementptr inbounds %struct.anon.90, ptr %70, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i471 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %prev.i471, align 4
  %cmp.i472 = icmp eq ptr %76, %70
  %spec.store.select.i473 = select i1 %cmp.i472, ptr null, ptr %76
  %add.ptr138 = getelementptr i8, ptr %buf, i32 %add134
  %sub139 = sub i32 %cond, %add134
  %tobool140.not483 = icmp eq ptr %74, null
  %tobool140.not = or i1 %cmp.i469, %tobool140.not483
  br i1 %tobool140.not, label %cond.end131.cond.end146_crit_edge, label %cond.true141

cond.end131.cond.end146_crit_edge:                ; preds = %cond.end131
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end146

cond.true141:                                     ; preds = %cond.end131
  call void @__sanitizer_cov_trace_pc() #20
  %data.i474 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 19
  %77 = ptrtoint ptr %data.i474 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i474, align 4
  %arrayidx.i.i.i475 = getelementptr [15 x i32], ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %arrayidx.i.i.i475 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i.i.i475, align 4
  %conv144 = and i32 %80, 65535
  br label %cond.end146

cond.end146:                                      ; preds = %cond.true141, %cond.end131.cond.end146_crit_edge
  %cond147 = phi i32 [ %conv144, %cond.true141 ], [ 0, %cond.end131.cond.end146_crit_edge ]
  %tobool148.not = icmp eq ptr %spec.store.select.i473, null
  br i1 %tobool148.not, label %cond.end146.cond.end154_crit_edge, label %cond.true149

cond.end146.cond.end154_crit_edge:                ; preds = %cond.end146
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end154

cond.true149:                                     ; preds = %cond.end146
  call void @__sanitizer_cov_trace_pc() #20
  %data.i477 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i473, i32 0, i32 19
  %81 = ptrtoint ptr %data.i477 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i477, align 4
  %arrayidx.i.i.i478 = getelementptr [15 x i32], ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %arrayidx.i.i.i478 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i.i.i478, align 4
  %conv152 = and i32 %84, 65535
  br label %cond.end154

cond.end154:                                      ; preds = %cond.true149, %cond.end146.cond.end154_crit_edge
  %cond155 = phi i32 [ %conv152, %cond.true149 ], [ 0, %cond.end146.cond.end154_crit_edge ]
  %call156 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr138, i32 noundef %sub139, ptr noundef nonnull @.str.44, i32 noundef %72, i32 noundef %cond147, i32 noundef %cond155) #18
  %add157 = add i32 %call156, %add134
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool159.not = icmp eq i32 %and, 0
  br i1 %tobool159.not, label %cond.end154.if.end169_crit_edge, label %if.then160

cond.end154.if.end169_crit_edge:                  ; preds = %cond.end154
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end169

if.then160:                                       ; preds = %cond.end154
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr161 = getelementptr i8, ptr %buf, i32 %add157
  %sub162 = sub i32 %cond, %add157
  %call163 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr161, i32 noundef %sub162, ptr noundef nonnull @.str.45) #18
  %add164 = add i32 %call163, %add157
  %add.ptr166 = getelementptr i8, ptr %buf, i32 %add164
  %call167 = tail call i32 @tipc_list_dump(ptr noundef %transmq, i1 noundef zeroext false, ptr noundef %add.ptr166) #18
  %add168 = add i32 %add164, %call167
  br label %if.end169

if.end169:                                        ; preds = %if.then160, %cond.end154.if.end169_crit_edge
  %i.0 = phi i32 [ %add168, %if.then160 ], [ %add157, %cond.end154.if.end169_crit_edge ]
  %and171 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.end169.if.end200_crit_edge, label %if.then173

if.end169.if.end200_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end200

if.then173:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr174 = getelementptr i8, ptr %buf, i32 %i.0
  %sub175 = sub i32 %cond, %i.0
  %backlog = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 28
  %85 = ptrtoint ptr %backlog to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %backlog, align 4
  %conv177 = zext i16 %86 to i32
  %arrayidx179 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 1
  %87 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx179, align 4
  %conv181 = zext i16 %88 to i32
  %arrayidx183 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 2
  %89 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx183, align 4
  %conv185 = zext i16 %90 to i32
  %arrayidx187 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 3
  %91 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx187, align 4
  %conv189 = zext i16 %92 to i32
  %arrayidx191 = getelementptr %struct.tipc_link, ptr %l, i32 0, i32 28, i32 4
  %93 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx191, align 4
  %conv193 = zext i16 %94 to i32
  %call194 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr174, i32 noundef %sub175, ptr noundef nonnull @.str.46, i32 noundef %conv177, i32 noundef %conv181, i32 noundef %conv185, i32 noundef %conv189, i32 noundef %conv193) #18
  %add195 = add i32 %call194, %i.0
  %add.ptr197 = getelementptr i8, ptr %buf, i32 %add195
  %call198 = tail call i32 @tipc_list_dump(ptr noundef %backlogq, i1 noundef zeroext false, ptr noundef %add.ptr197) #18
  %add199 = add i32 %add195, %call198
  br label %if.end200

if.end200:                                        ; preds = %if.then173, %if.end169.if.end200_crit_edge
  %i.1 = phi i32 [ %add199, %if.then173 ], [ %i.0, %if.end169.if.end200_crit_edge ]
  %and202 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %tobool203.not = icmp eq i32 %and202, 0
  br i1 %tobool203.not, label %if.end200.if.end213_crit_edge, label %if.then204

if.end200.if.end213_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end213

if.then204:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr205 = getelementptr i8, ptr %buf, i32 %i.1
  %sub206 = sub i32 %cond, %i.1
  %call207 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr205, i32 noundef %sub206, ptr noundef nonnull @.str.47) #18
  %add208 = add i32 %call207, %i.1
  %add.ptr210 = getelementptr i8, ptr %buf, i32 %add208
  %call211 = tail call i32 @tipc_list_dump(ptr noundef %deferdq, i1 noundef zeroext false, ptr noundef %add.ptr210) #18
  %add212 = add i32 %add208, %call211
  br label %if.end213

if.end213:                                        ; preds = %if.then204, %if.end200.if.end213_crit_edge
  %i.2 = phi i32 [ %add212, %if.then204 ], [ %i.1, %if.end200.if.end213_crit_edge ]
  %and215 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  br i1 %tobool216.not, label %if.end213.if.end226_crit_edge, label %if.then217

if.end213.if.end226_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end226

if.then217:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr218 = getelementptr i8, ptr %buf, i32 %i.2
  %sub219 = sub i32 %cond, %i.2
  %call220 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr218, i32 noundef %sub219, ptr noundef nonnull @.str.48) #18
  %add221 = add i32 %call220, %i.2
  %95 = ptrtoint ptr %inputq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %inputq, align 4
  %add.ptr223 = getelementptr i8, ptr %buf, i32 %add221
  %call224 = tail call i32 @tipc_list_dump(ptr noundef %96, i1 noundef zeroext false, ptr noundef %add.ptr223) #18
  %add225 = add i32 %call224, %add221
  br label %if.end226

if.end226:                                        ; preds = %if.then217, %if.end213.if.end226_crit_edge
  %i.3 = phi i32 [ %add225, %if.then217 ], [ %i.2, %if.end213.if.end226_crit_edge ]
  %and228 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %tobool229.not = icmp eq i32 %and228, 0
  br i1 %tobool229.not, label %if.end226.cleanup_crit_edge, label %if.then230

if.end226.cleanup_crit_edge:                      ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then230:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr231 = getelementptr i8, ptr %buf, i32 %i.3
  %sub232 = sub i32 %cond, %i.3
  %call233 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr231, i32 noundef %sub232, ptr noundef nonnull @.str.49) #18
  %add234 = add i32 %call233, %i.3
  %wakeupq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 35
  %add.ptr235 = getelementptr i8, ptr %buf, i32 %add234
  %call236 = tail call i32 @tipc_list_dump(ptr noundef %wakeupq, i1 noundef zeroext false, ptr noundef %add.ptr235) #18
  %add237 = add i32 %add234, %call236
  br label %cleanup

cleanup:                                          ; preds = %if.then230, %if.end226.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %add237, %if.then230 ], [ %i.3, %if.end226.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_list_dump(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_link_reset(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_net(ptr noundef %net) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !261
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 696, ptr noundef nonnull @.str.55) #18
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 45, ptr noundef nonnull @.str.51) #18
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 724, ptr noundef nonnull @.str.56) #18
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !262
  %9 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_link_fsm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_link_timeout(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_link_too_silent(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_link_conges(ptr noundef %l) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_conges, i32 0, i32 1), ptr blockaddress(@trace_tipc_link_conges, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !263
  %call42 = tail call i32 @__traceiter_tipc_link_conges(ptr noundef null, ptr noundef %l, i16 noundef zeroext -1, ptr noundef nonnull @.str.59) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !264
  %13 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !242

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !246
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_conges, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_conges, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_link_conges.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_tipc_link_conges.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 271, ptr noundef nonnull @.str.51) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !247
  %31 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_link_conges(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_link_retrans(ptr noundef %r, i16 noundef zeroext %f, i16 noundef zeroext %t, ptr noundef %tq) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_retrans, i32 0, i32 1), ptr blockaddress(@trace_tipc_link_retrans, %do.body)) #18
          to label %if.end50 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i85 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i85
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end75_crit_edge, label %land.lhs.true

cpu_online.exit.if.end75_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end75

land.lhs.true:                                    ; preds = %cpu_online.exit
  %9 = xor i16 %t, -1
  %10 = add i16 %9, %f
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %tobool.not = icmp sgt i16 %10, -1
  br i1 %tobool.not, label %land.lhs.true.if.end75_crit_edge, label %cleanup

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end75

cleanup:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %11 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %14, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !265
  %call44 = tail call i32 @__traceiter_tipc_link_retrans(ptr noundef null, ptr noundef %r, i16 noundef zeroext %f, i16 noundef zeroext %t, ptr noundef %tq) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !266
  %15 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i83 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i83 to ptr
  %preempt_count.i.i84 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i84 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i84, align 4
  %sub.i = add i32 %18, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i84, align 4
  br label %if.end50

if.end50:                                         ; preds = %cleanup, %entry
  %19 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i86 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i86 to ptr
  %cpu52 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu52, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %22)
  %cmp.not.i.i.i.i87 = icmp ugt i32 %23, %22
  br i1 %cmp.not.i.i.i.i87, label %if.end50.cpu_online.exit95_crit_edge, label %land.rhs.i.i.i.i89

if.end50.cpu_online.exit95_crit_edge:             ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit95

land.rhs.i.i.i.i89:                               ; preds = %if.end50
  %.b37.i.i.i.i88 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i88, label %land.rhs.i.i.i.i89.cpu_online.exit95_crit_edge, label %if.then.i.i.i.i90, !prof !242

land.rhs.i.i.i.i89.cpu_online.exit95_crit_edge:   ; preds = %land.rhs.i.i.i.i89
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit95

if.then.i.i.i.i90:                                ; preds = %land.rhs.i.i.i.i89
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit95

cpu_online.exit95:                                ; preds = %if.then.i.i.i.i90, %land.rhs.i.i.i.i89.cpu_online.exit95_crit_edge, %if.end50.cpu_online.exit95_crit_edge
  %div1.i.i.i91 = lshr i32 %22, 5
  %arrayidx.i.i.i92 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i91
  %24 = ptrtoint ptr %arrayidx.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.i.i.i92, align 4
  %and.i.i.i93 = and i32 %22, 31
  %26 = shl nuw i32 1, %and.i.i.i93
  %27 = and i32 %25, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i94.not = icmp eq i32 %27, 0
  br i1 %tobool.i94.not, label %cpu_online.exit95.if.end75_crit_edge, label %land.lhs.true54

cpu_online.exit95.if.end75_crit_edge:             ; preds = %cpu_online.exit95
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end75

land.lhs.true54:                                  ; preds = %cpu_online.exit95
  %28 = xor i16 %t, -1
  %29 = add i16 %28, %f
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %29)
  %tobool56.not = icmp sgt i16 %29, -1
  br i1 %tobool56.not, label %land.lhs.true54.if.end75_crit_edge, label %if.then57

land.lhs.true54.if.end75_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end75

if.then57:                                        ; preds = %land.lhs.true54
  %30 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %33, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !246
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_retrans, i32 0, i32 7) to i32))
  %34 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_retrans, i32 0, i32 7), align 4
  %call63 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true65, label %if.then57.do.end73_crit_edge

if.then57.do.end73_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end73

land.lhs.true65:                                  ; preds = %if.then57
  %call66 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true65.do.end73_crit_edge, label %land.lhs.true68

land.lhs.true65.do.end73_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end73

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %.b82 = load i1, ptr @trace_tipc_link_retrans.__warned, align 1
  br i1 %.b82, label %land.lhs.true68.do.end73_crit_edge, label %if.then70

land.lhs.true68.do.end73_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end73

if.then70:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_tipc_link_retrans.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 317, ptr noundef nonnull @.str.51) #18
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %land.lhs.true68.do.end73_crit_edge, %land.lhs.true65.do.end73_crit_edge, %if.then57.do.end73_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !247
  %35 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i97 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i97 to ptr
  %preempt_count.i.i.i98 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i98, align 4
  %sub.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i98, align 4
  br label %if.end75

if.end75:                                         ; preds = %do.end73, %land.lhs.true54.if.end75_crit_edge, %cpu_online.exit95.if.end75_crit_edge, %land.lhs.true.if.end75_crit_edge, %cpu_online.exit.if.end75_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_link_retrans(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @link_print(ptr noundef %l) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %transmq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26
  %0 = ptrtoint ptr %transmq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transmq, align 4
  %cmp.i = icmp eq ptr %1, %transmq
  %tobool.not2 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not2
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv.i = trunc i32 %5 to i16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %snd_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 29
  %6 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %snd_nxt, align 4
  %sub = add i16 %7, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16 [ %conv.i, %cond.true ], [ %sub, %cond.false ]
  %snd_nxt5 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 29
  %8 = ptrtoint ptr %snd_nxt5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %snd_nxt5, align 4
  %sub7 = add i16 %9, -1
  %name = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 1
  %state = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 11
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.64, ptr noundef %name, i32 noundef %11) #23
  %qlen.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 26, i32 1
  %12 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i, align 4
  %conv16 = zext i16 %cond to i32
  %conv17 = zext i16 %sub7 to i32
  %qlen.i1 = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 27, i32 1
  %14 = ptrtoint ptr %qlen.i1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i1, align 4
  %16 = ptrtoint ptr %snd_nxt5 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %snd_nxt5, align 4
  %conv20 = zext i16 %17 to i32
  %rcv_nxt = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 30
  %18 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rcv_nxt, align 2
  %conv21 = zext i16 %19 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %13, i32 noundef %conv16, i32 noundef %conv17, i32 noundef %15, i32 noundef %conv20, i32 noundef %conv21) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_list_dump(ptr noundef %list) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_list_dump, i32 0, i32 1), ptr blockaddress(@trace_tipc_list_dump, %do.body)) #18
          to label %if.end49 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !267
  %call43 = tail call i32 @__traceiter_tipc_list_dump(ptr noundef null, ptr noundef %list, i1 noundef zeroext true, ptr noundef nonnull @.str.74) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !268
  %13 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !242

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !246
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_list_dump, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_list_dump, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_list_dump.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_tipc_list_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 186, ptr noundef nonnull @.str.51) #18
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !247
  %31 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_link_dump(ptr noundef %l, ptr noundef %header) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_dump, i32 0, i32 1), ptr blockaddress(@trace_tipc_link_dump, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !269
  %call42 = tail call i32 @__traceiter_tipc_link_dump(ptr noundef null, ptr noundef %l, i16 noundef zeroext 0, ptr noundef %header) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !270
  %13 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !242

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !246
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_dump, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_dump, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_link_dump.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_tipc_link_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 270, ptr noundef nonnull @.str.51) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !247
  %31 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_list_dump(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_link_dump(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_msg_extract(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_buf_append(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_crypto_msg_rcv(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_mon_prep(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_proto_build(ptr noundef %skb, ptr noundef %header) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_proto_build, i32 0, i32 1), ptr blockaddress(@trace_tipc_proto_build, %do.body)) #18
          to label %if.end49 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !271
  %call43 = tail call i32 @__traceiter_tipc_proto_build(ptr noundef null, ptr noundef %skb, i1 noundef zeroext false, ptr noundef %header) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !272
  %13 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !242

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !246
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_proto_build, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_proto_build, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_proto_build.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_tipc_proto_build.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 160, ptr noundef nonnull @.str.51) #18
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !247
  %31 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @__tipc_build_gap_ack_blks(ptr nocapture noundef writeonly %ga, ptr noundef %l, i8 noundef zeroext %start_index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %start_index to i32
  %arrayidx = getelementptr %struct.tipc_gap_ack_blks, ptr %ga, i32 0, i32 3, i32 %idxprom
  %deferdq = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32
  %0 = ptrtoint ptr %deferdq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %deferdq, align 4
  %cmp.i = icmp eq ptr %1, %deferdq
  %tobool.not93 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not93
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %deferdq to i32
  call void @__asan_load4_noabort(i32 %2)
  %skb.097 = load ptr, ptr %deferdq, align 4
  %cmp.not98 = icmp eq ptr %skb.097, %deferdq
  br i1 %cmp.not98, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %conv.i.i = trunc i32 %6 to i16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %skb.0101 = phi ptr [ %skb.0, %for.inc.for.body_crit_edge ], [ %skb.097, %for.body.preheader ]
  %n.0100 = phi i8 [ %n.2, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %expect.099 = phi i16 [ %expect.1, %for.inc.for.body_crit_edge ], [ %conv.i.i, %for.body.preheader ]
  %data.i.i89 = getelementptr inbounds %struct.sk_buff, ptr %skb.0101, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i89 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i89, align 4
  %arrayidx.i.i.i.i90 = getelementptr [15 x i32], ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx.i.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i.i90, align 4
  %conv.i.i91 = trunc i32 %10 to i16
  %11 = sub i16 %expect.099, %conv.i.i91
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %tobool7.not = icmp sgt i16 %11, -1
  br i1 %tobool7.not, label %if.else, label %if.then10, !prof !242

if.then10:                                        ; preds = %for.body
  %sub = add i16 %expect.099, -1
  %idxprom12 = zext i8 %n.0100 to i32
  %arrayidx13 = getelementptr %struct.tipc_gap_ack, ptr %arrayidx, i32 %idxprom12
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %sub, ptr %arrayidx13, align 2
  %sub16 = sub i16 %conv.i.i91, %expect.099
  %gap = getelementptr %struct.tipc_gap_ack, ptr %arrayidx, i32 %idxprom12, i32 1
  %13 = ptrtoint ptr %gap to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %sub16, ptr %gap, align 2
  %inc = add i8 %n.0100, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %inc)
  %cmp21 = icmp ugt i8 %inc, 63
  br i1 %cmp21, label %if.then23, label %if.then10.if.end48_crit_edge

if.then10.if.end48_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48

if.then23:                                        ; preds = %if.then10
  %call24 = tail call i32 @___ratelimit(ptr noundef nonnull @__tipc_build_gap_ack_blks._rs, ptr noundef nonnull @__func__.__tipc_build_gap_ack_blks) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.cleanup_crit_edge, label %do.end

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #20
  %conv20.le = zext i8 %inc to i32
  %name = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 1
  %qlen.i = getelementptr inbounds %struct.tipc_link, ptr %l, i32 0, i32 32, i32 1
  %14 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name, i32 noundef %conv20.le, i32 noundef %15) #23
  br label %cleanup

if.else:                                          ; preds = %for.body
  %16 = xor i16 %expect.099, -1
  %17 = add i16 %conv.i.i91, %16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %tobool.not.i = icmp sgt i16 %17, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %expect.099, i16 %conv.i.i91)
  %cmp.i92 = icmp eq i16 %expect.099, %conv.i.i91
  %tobool34.not = or i1 %cmp.i92, %tobool.not.i
  br i1 %tobool34.not, label %if.else.if.end48_crit_edge, label %do.end44, !prof !242

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48

do.end44:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #23
  br label %for.inc

if.end48:                                         ; preds = %if.else.if.end48_crit_edge, %if.then10.if.end48_crit_edge
  %n.1 = phi i8 [ %inc, %if.then10.if.end48_crit_edge ], [ %n.0100, %if.else.if.end48_crit_edge ]
  %add = add i16 %conv.i.i91, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end48, %do.end44
  %expect.1 = phi i16 [ %add, %if.end48 ], [ %expect.099, %do.end44 ]
  %n.2 = phi i8 [ %n.1, %if.end48 ], [ %n.0100, %do.end44 ]
  %18 = ptrtoint ptr %skb.0101 to i32
  call void @__asan_load4_noabort(i32 %18)
  %skb.0 = load ptr, ptr %skb.0101, align 4
  %cmp.not = icmp eq ptr %skb.0, %deferdq
  br i1 %cmp.not, label %for.end.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i91.le = trunc i32 %10 to i16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %seqno.0.lcssa = phi i16 [ 0, %if.end.for.end_crit_edge ], [ %conv.i.i91.le, %for.end.loopexit ]
  %n.0.lcssa = phi i8 [ 0, %if.end.for.end_crit_edge ], [ %n.2, %for.end.loopexit ]
  %idxprom52 = zext i8 %n.0.lcssa to i32
  %arrayidx53 = getelementptr %struct.tipc_gap_ack, ptr %arrayidx, i32 %idxprom52
  %19 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %seqno.0.lcssa, ptr %arrayidx53, align 2
  %gap57 = getelementptr %struct.tipc_gap_ack, ptr %arrayidx, i32 %idxprom52, i32 1
  %20 = ptrtoint ptr %gap57 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %gap57, align 2
  %inc58 = add i8 %n.0.lcssa, 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %if.then23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %inc58, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ %inc, %do.end ], [ %inc, %if.then23.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_proto_build(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_proto_rcv(ptr noundef %skb, ptr noundef %header) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_proto_rcv, i32 0, i32 1), ptr blockaddress(@trace_tipc_proto_rcv, %do.body)) #18
          to label %if.end49 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !273
  %call43 = tail call i32 @__traceiter_tipc_proto_rcv(ptr noundef null, ptr noundef %skb, i1 noundef zeroext false, ptr noundef %header) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !274
  %13 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !242

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !246
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_proto_rcv, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_proto_rcv, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_proto_rcv.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_tipc_proto_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 161, ptr noundef nonnull @.str.51) #18
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !247
  %31 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_skb_dump(ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_skb_dump, i32 0, i32 1), ptr blockaddress(@trace_tipc_skb_dump, %do.body)) #18
          to label %if.end49 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !275
  %call43 = tail call i32 @__traceiter_tipc_skb_dump(ptr noundef null, ptr noundef %skb, i1 noundef zeroext false, ptr noundef nonnull @.str.93) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !276
  %13 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !242

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !246
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_skb_dump, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_skb_dump, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_skb_dump.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_tipc_skb_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 159, ptr noundef nonnull @.str.51) #18
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !247
  %31 = tail call i32 @llvm.read_register.i32(metadata !231) #18
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_mon_rcv(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_proto_rcv(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_skb_dump(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_link_bc_ack(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind readonly }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nobuiltin }
attributes #23 = { cold nounwind }
attributes #24 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !102, !103, !105, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !126, !128, !130, !131, !133, !134, !135, !136, !137, !139, !140, !142, !143, !145, !146, !147, !148, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !178, !179, !181, !182, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !200, !201, !203, !204, !205, !206, !207, !209, !210, !211, !213, !214, !216, !218, !220, !222, !223, !225, !226, !228, !229}
!llvm.named.register.sp = !{!231}
!llvm.module.flags = !{!232, !233, !234, !235, !236, !237, !238, !239}
!llvm.ident = !{!240}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/tipc/link.c", i32 407, i32 46}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/tipc/link.c", i32 411, i32 47}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/tipc/link.c", i32 522, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/tipc/link.c", i32 528, i32 37}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/tipc/link.c", i32 586, i32 29}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/tipc/link.c", i32 599, i32 38}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/tipc/link.c", i32 604, i32 42}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/tipc/link.c", i32 775, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @tipc_link_fsm_evt._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @tipc_link_fsm_evt._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/tipc/link.c", i32 780, i32 2}
!22 = !{ptr @tipc_link_fsm_evt._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @tipc_link_fsm_evt._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/tipc/link.c", i32 852, i32 45}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/tipc/link.c", i32 1059, i32 3}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tipc_link_xmit._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @tipc_link_xmit._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/tipc/link.c", i32 1070, i32 4}
!33 = !{ptr @tipc_link_xmit._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @tipc_link_xmit._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/tipc/link.c", i32 1954, i32 3}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @tipc_link_create_dummy_tnl_msg._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @tipc_link_create_dummy_tnl_msg._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/tipc/link.c", i32 2001, i32 4}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tipc_link_tnl_prepare._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @tipc_link_tnl_prepare._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @tipc_link_tnl_prepare._entry.23, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../net/tipc/link.c", i32 2022, i32 3}
!47 = !{ptr @tipc_link_tnl_prepare._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/tipc/link.c", i32 2061, i32 6}
!50 = !{ptr @tipc_link_tnl_prepare._entry.25, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @tipc_link_tnl_prepare._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/tipc/link.c", i32 2073, i32 4}
!54 = !{ptr @tipc_link_tnl_prepare._rs, !53, !"_rs", i1 false, i1 false}
!55 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tipc_link_tnl_prepare._entry.29, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @tipc_link_tnl_prepare._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/tipc/link.c", i32 2082, i32 4}
!60 = !{ptr @tipc_link_tnl_prepare._entry.32, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @tipc_link_tnl_prepare._entry_ptr.34, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/tipc/link.c", i32 2109, i32 4}
!64 = !{ptr @tipc_link_tnl_prepare._entry.35, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @tipc_link_tnl_prepare._entry_ptr.37, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/tipc/link.c", i32 2145, i32 3}
!68 = !{ptr @tipc_link_failover_prepare._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @tipc_link_failover_prepare._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/tipc/link.c", i32 2924, i32 27}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/tipc/link.c", i32 2928, i32 26}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/tipc/link.c", i32 2929, i32 34}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/tipc/link.c", i32 2930, i32 34}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/tipc/link.c", i32 2948, i32 34}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/tipc/link.c", i32 2972, i32 34}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/tipc/link.c", i32 2977, i32 35}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/tipc/link.c", i32 2982, i32 11}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/tipc/link.c", i32 2991, i32 35}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/tipc/link.c", i32 2995, i32 35}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/tipc/link.c", i32 2999, i32 35}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../net/tipc/trace.h", i32 273, i32 1}
!94 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!96 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!99 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!100 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!101 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!102 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!105 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!107 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!108 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!109 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @skb_queue_head_init.__key, !111, !"__key", i1 false, i1 false}
!111 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!112 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../net/tipc/trace.h", i32 392, i32 1}
!115 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../net/tipc/trace.h", i32 272, i32 1}
!118 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../net/tipc/trace.h", i32 280, i32 1}
!121 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/tipc/link.c", i32 234, i32 35}
!124 = distinct !{null, !125, !"link_rst_msg", i1 false, i1 false}
!125 = !{!"../net/tipc/link.c", i32 234, i32 20}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/tipc/link.c", i32 921, i32 43}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../net/tipc/trace.h", i32 271, i32 1}
!130 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!131 = !{ptr @tipc_link_advance_transmq._rs, !132, !"_rs", i1 false, i1 false}
!132 = !{!"../net/tipc/link.c", i32 1594, i32 4}
!133 = !{ptr @__func__.tipc_link_advance_transmq, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @tipc_link_advance_transmq._entry, !132, !"_entry", i1 false, i1 false}
!136 = !{ptr @tipc_link_advance_transmq._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!137 = distinct !{null, !138, !"__already_done", i1 false, i1 false}
!138 = !{!"../net/tipc/link.c", i32 1617, i32 5}
!139 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!140 = distinct !{null, !141, !"__already_done", i1 false, i1 false}
!141 = !{!"../net/tipc/trace.h", i32 313, i32 1}
!142 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/tipc/link.c", i32 1239, i32 2}
!145 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @link_retransmit_failure._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @link_retransmit_failure._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/tipc/link.c", i32 1240, i32 16}
!150 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/tipc/link.c", i32 1241, i32 2}
!152 = !{ptr @link_retransmit_failure._entry.65, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @link_retransmit_failure._entry_ptr.67, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../net/tipc/link.c", i32 1243, i32 2}
!156 = !{ptr @link_retransmit_failure._entry.68, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @link_retransmit_failure._entry_ptr.70, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/tipc/link.c", i32 1245, i32 2}
!160 = !{ptr @link_retransmit_failure._entry.71, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @link_retransmit_failure._entry_ptr.73, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/tipc/link.c", i32 1249, i32 42}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../net/tipc/link.c", i32 2577, i32 2}
!166 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @link_print._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @link_print._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../net/tipc/link.c", i32 2578, i32 2}
!171 = !{ptr @link_print._entry.77, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @link_print._entry_ptr.79, !170, !"_entry_ptr", i1 false, i1 false}
!173 = distinct !{null, !174, !"__already_done", i1 false, i1 false}
!174 = !{!"../net/tipc/trace.h", i32 186, i32 1}
!175 = distinct !{null, !174, !"__warned", i1 false, i1 false}
!176 = distinct !{null, !177, !"__already_done", i1 false, i1 false}
!177 = !{!"../net/tipc/trace.h", i32 270, i32 1}
!178 = distinct !{null, !177, !"__warned", i1 false, i1 false}
!179 = !{ptr @tipc_link_tnl_rcv._rs, !180, !"_rs", i1 false, i1 false}
!180 = !{!"../net/tipc/link.c", i32 1384, i32 4}
!181 = !{ptr @__func__.tipc_link_tnl_rcv, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.80, !180, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @tipc_link_tnl_rcv._entry, !180, !"_entry", i1 false, i1 false}
!184 = !{ptr @tipc_link_tnl_rcv._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @tipc_link_tnl_rcv._rs.81, !186, !"_rs", i1 false, i1 false}
!186 = !{!"../net/tipc/link.c", i32 1402, i32 4}
!187 = !{ptr @.str.83, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @tipc_link_tnl_rcv._entry.82, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @tipc_link_tnl_rcv._entry_ptr.84, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../net/tipc/link.c", i32 1309, i32 3}
!192 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @tipc_data_input._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @tipc_data_input._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @tipc_link_input._rs, !196, !"_rs", i1 false, i1 false}
!196 = !{!"../net/tipc/link.c", i32 1343, i32 4}
!197 = !{ptr @__func__.tipc_link_input, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.87, !196, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @tipc_link_input._entry, !196, !"_entry", i1 false, i1 false}
!200 = !{ptr @tipc_link_input._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @__tipc_build_gap_ack_blks._rs, !202, !"_rs", i1 false, i1 false}
!202 = !{!"../net/tipc/link.c", i32 1487, i32 5}
!203 = !{ptr @__func__.__tipc_build_gap_ack_blks, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.88, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @__tipc_build_gap_ack_blks._entry, !202, !"_entry", i1 false, i1 false}
!206 = !{ptr @__tipc_build_gap_ack_blks._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.90, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../net/tipc/link.c", i32 1493, i32 4}
!209 = !{ptr @__tipc_build_gap_ack_blks._entry.89, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @__tipc_build_gap_ack_blks._entry_ptr.91, !208, !"_entry_ptr", i1 false, i1 false}
!211 = distinct !{null, !212, !"__already_done", i1 false, i1 false}
!212 = !{!"../net/tipc/trace.h", i32 160, i32 1}
!213 = distinct !{null, !212, !"__warned", i1 false, i1 false}
!214 = !{ptr @.str.92, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../net/tipc/link.c", i32 233, i32 34}
!216 = distinct !{null, !217, !"link_co_err", i1 false, i1 false}
!217 = !{!"../net/tipc/link.c", i32 233, i32 20}
!218 = !{ptr @.str.93, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../net/tipc/link.c", i32 2232, i32 35}
!220 = distinct !{null, !221, !"__already_done", i1 false, i1 false}
!221 = !{!"../net/tipc/trace.h", i32 161, i32 1}
!222 = distinct !{null, !221, !"__warned", i1 false, i1 false}
!223 = distinct !{null, !224, !"__already_done", i1 false, i1 false}
!224 = !{!"../net/tipc/trace.h", i32 159, i32 1}
!225 = distinct !{null, !224, !"__warned", i1 false, i1 false}
!226 = distinct !{null, !227, !"__already_done", i1 false, i1 false}
!227 = !{!"../net/tipc/trace.h", i32 319, i32 1}
!228 = distinct !{null, !227, !"__warned", i1 false, i1 false}
!229 = !{ptr @.str.94, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../include/net/netlink.h", i32 991, i32 3}
!231 = !{!"sp"}
!232 = !{i32 1, !"wchar_size", i32 2}
!233 = !{i32 1, !"min_enum_size", i32 4}
!234 = !{i32 8, !"branch-target-enforcement", i32 0}
!235 = !{i32 8, !"sign-return-address", i32 0}
!236 = !{i32 8, !"sign-return-address-all", i32 0}
!237 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!238 = !{i32 7, !"uwtable", i32 1}
!239 = !{i32 7, !"frame-pointer", i32 2}
!240 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!241 = !{i8 0, i8 2}
!242 = !{!"branch_weights", i32 2000, i32 1}
!243 = !{i64 2148842077, i64 2148842082, i64 2148842095, i64 2148842139, i64 2148842173, i64 2148842194}
!244 = !{i64 2157822475}
!245 = !{i64 2157822704}
!246 = !{i64 2150144310}
!247 = !{i64 2150145346}
!248 = !{i64 2158056981}
!249 = !{i64 2158057204}
!250 = !{i64 2157805480}
!251 = !{i64 2157805713}
!252 = !{i64 2157839952}
!253 = !{i64 2157840191}
!254 = !{!"branch_weights", i32 1, i32 2000}
!255 = !{!"auto-init"}
!256 = !{!"branch_weights", i32 4000000, i32 4001}
!257 = !{!"branch_weights", i32 4006001, i32 4000000}
!258 = !{!"branch_weights", i32 1, i32 4001}
!259 = !{i64 2157878417}
!260 = !{i64 2157878634}
!261 = !{i64 2150135751}
!262 = !{i64 2150136017}
!263 = !{i64 2157788461}
!264 = !{i64 2157788692}
!265 = !{i64 2157861476}
!266 = !{i64 2157861695}
!267 = !{i64 2157486457}
!268 = !{i64 2157486684}
!269 = !{i64 2157767528}
!270 = !{i64 2157767755}
!271 = !{i64 2157448705}
!272 = !{i64 2157448934}
!273 = !{i64 2157465554}
!274 = !{i64 2157465779}
!275 = !{i64 2157431940}
!276 = !{i64 2157432163}
