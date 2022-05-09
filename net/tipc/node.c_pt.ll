; ModuleID = '/llk/IR_all_yes/net/tipc/node.c_pt.bc'
source_filename = "../net/tipc/node.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%union.anon.63 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tipc_node = type { i32, %struct.kref, %struct.rwlock_t, ptr, %struct.hlist_node, [2 x i32], [3 x %struct.tipc_link_entry], %struct.tipc_bclink_entry, i32, %struct.list_head, i32, i8, i8, i16, i32, i16, i16, i32, i32, [16 x i8], [33 x i8], %struct.list_head, %struct.list_head, i32, %struct.timer_list, %struct.callback_head, i32, ptr, i32, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.tipc_link_entry = type { ptr, %struct.spinlock, i32, %struct.sk_buff_head, %struct.tipc_media_addr }
%struct.tipc_media_addr = type { [32 x i8], i8, i8 }
%struct.tipc_bclink_entry = type { ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i16, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tipc_net = type { [16 x i8], i32, i32, i32, [33 x i8], i32, i32, i8, %struct.spinlock, [512 x %struct.hlist_head], %struct.list_head, i32, i32, [3 x ptr], i32, [4 x ptr], %struct.spinlock, ptr, ptr, %struct.rhashtable, %struct.spinlock, ptr, ptr, %struct.atomic_t, i16, %struct.packet_type, ptr, %struct.work_struct, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tipc_sock_conn = type { i32, i32, i32, %struct.list_head }
%struct.tipc_socket_addr = type { i32, i32 }
%struct.tipc_uaddr = type { i16, i8, i8, %union.anon.155 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { %struct.tipc_service_addr, i32 }
%struct.tipc_service_addr = type { i32, i32 }
%struct.tipc_bearer = type { ptr, i32, %struct.tipc_media_addr, [32 x i8], ptr, %struct.tipc_media_addr, %struct.packet_type, %struct.callback_head, i32, i32, i32, i32, i32, i32, ptr, i8, i32, %struct.refcount_struct }
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
%struct.tipc_ehdr = type <{ %union.anon.147, i64, %union.anon.149 }>
%union.anon.147 = type { i32 }
%union.anon.149 = type { i32, [12 x i8] }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.127, [0 x i32], %union.anon.128, i16, i16, %union.anon.129, %struct.refcount_struct, [0 x i32], %union.anon.130 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { %struct.hlist_node }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.tipc_nl_msg = type { ptr, i32, i32 }
%struct.genl_dumpit_info = type { ptr, %struct.genl_ops, ptr }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }

@tipc_net_id = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@tipc_node_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/tipc/node.c\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@tipc_node_create.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_node_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014tipc: Node creation failed, no memory\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tipc_node_create\00", [47 x i8] zeroinitializer }, align 32
@tipc_node_create._entry_ptr = internal global ptr @tipc_node_create._entry, section ".printk_index", align 4
@tipc_node_create._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014tipc: Failed to start crypto RX(%s)!\0A\00", [56 x i8] zeroinitializer }, align 32
@tipc_node_create._entry_ptr.7 = internal global ptr @tipc_node_create._entry.5, section ".printk_index", align 4
@tipc_node_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&n->lock\00", [23 x i8] zeroinitializer }, align 32
@tipc_node_create.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&n->links[i].lock\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tipc_node_create.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(&n->timer)\00", [20 x i8] zeroinitializer }, align 32
@tipc_node_create.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_node_create.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@tipc_node_subscribe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014tipc: Node subscribe rejected, unknown node 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tipc_node_subscribe\00", [44 x i8] zeroinitializer }, align 32
@tipc_node_subscribe._entry_ptr = internal global ptr @tipc_node_subscribe._entry, section ".printk_index", align 4
@tipc_node_unsubscribe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014tipc: Node unsubscribe rejected, unknown node 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tipc_node_unsubscribe\00", [42 x i8] zeroinitializer }, align 32
@tipc_node_unsubscribe._entry_ptr = internal global ptr @tipc_node_unsubscribe._entry, section ".printk_index", align 4
@tipc_node_add_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014tipc: Connecting sock to node 0x%x failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tipc_node_add_conn\00", [45 x i8] zeroinitializer }, align 32
@tipc_node_add_conn._entry_ptr = internal global ptr @tipc_node_add_conn._entry, section ".printk_index", align 4
@tipc_node_check_dest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 1188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014tipc: Broadcast rcv link creation failed, no mem\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tipc_node_check_dest\00", [43 x i8] zeroinitializer }, align 32
@tipc_node_check_dest._entry_ptr = internal global ptr @tipc_node_check_dest._entry, section ".printk_index", align 4
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"link created!\00", [18 x i8] zeroinitializer }, align 32
@tipc_node_delete_links.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_node_xmit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@tipc_node_broadcast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_node_apply_property.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_nl_net_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@tipc_nl_peer_rm.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_nl_node_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_nl_link_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@tipc_bclink_name = external dso_local constant [0 x i8], align 1
@tipc_nl_node_reset_link_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_nl_node_dump_link.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_nl_monitor_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"node data: (null)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"node data: %x\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %x\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %d\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %u\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %lu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"link_entry[0]:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" mtu: %u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" media: \00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" inputq: \00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"link_entry[1]:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bclink:\0A \00", [22 x i8] zeroinitializer }, align 32
@tipc_node_pre_cleanup_net.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_namespace_list = external dso_local global %struct.list_head, align 4
@tipc_node_pre_cleanup_net.__warned.39 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_node_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@tipc_node_find_by_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_node_assign_peer_net.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__tracepoint_tipc_node_create = external dso_local global %struct.tracepoint, align 4
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/tipc/trace.h\00", [47 x i8] zeroinitializer }, align 32
@trace_tipc_node_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_tipc_node_delete = external dso_local global %struct.tracepoint, align 4
@trace_tipc_node_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_tipc_node_timeout = external dso_local global %struct.tracepoint, align 4
@trace_tipc_node_timeout.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_node_cleanup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_tipc_link_reset = external dso_local global %struct.tracepoint, align 4
@trace_tipc_link_reset.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"node link down or deleted!\00", [37 x i8] zeroinitializer }, align 32
@__tipc_node_link_down.__UNIQUE_ID_ddebug601 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.46, ptr @.str, ptr @.str.47, i8 0, i8 -8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tipc\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__tipc_node_link_down\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Lost link <%s> on network plane %c\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"tipc: Lost link <%s> on network plane %c\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link down!\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"link down -> failover!\00", [41 x i8] zeroinitializer }, align 32
@tipc_node_fsm_evt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str, i32 1499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013tipc: Unknown node fsm state %x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tipc_node_fsm_evt\00", [46 x i8] zeroinitializer }, align 32
@tipc_node_fsm_evt._entry_ptr = internal global ptr @tipc_node_fsm_evt._entry, section ".printk_index", align 4
@tipc_node_fsm_evt._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str, i32 1507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013tipc: Illegal node fsm evt %x in state %x\0A\00", [51 x i8] zeroinitializer }, align 32
@tipc_node_fsm_evt._entry_ptr.55 = internal global ptr @tipc_node_fsm_evt._entry.53, section ".printk_index", align 4
@__tracepoint_tipc_node_fsm = external dso_local global %struct.tracepoint, align 4
@trace_tipc_node_fsm.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@node_lost_contact.__UNIQUE_ID_ddebug604 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.56, ptr @.str, ptr @.str.57, i8 1, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"node_lost_contact\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Lost contact with %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tipc: Lost contact with %x\0A\00", [36 x i8] zeroinitializer }, align 32
@__tracepoint_tipc_node_lost_contact = external dso_local global %struct.tracepoint, align 4
@trace_tipc_node_lost_contact.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_tipc_node_link_down = external dso_local global %struct.tracepoint, align 4
@trace_tipc_node_link_down.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@tipc_lxc_xmit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tipc_lxc_xmit.__key.62 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tipc_node_reset_links._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014tipc: Resetting all links to %x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tipc_node_reset_links\00", [42 x i8] zeroinitializer }, align 32
@tipc_node_reset_links._entry_ptr = internal global ptr @tipc_node_reset_links._entry, section ".printk_index", align 4
@__tracepoint_tipc_node_reset_links = external dso_local global %struct.tracepoint, align 4
@trace_tipc_node_reset_links.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"skb for node state check\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PROTO invalid (2)!\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"node link down <- failover!\00", [36 x i8] zeroinitializer }, align 32
@__tracepoint_tipc_node_check_state = external dso_local global %struct.tracepoint, align 4
@__tracepoint_tipc_skb_dump = external dso_local global %struct.tracepoint, align 4
@trace_tipc_skb_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_tipc_node_check_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_tipc_link_dump = external dso_local global %struct.tracepoint, align 4
@trace_tipc_link_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tipc_node_link_up.__UNIQUE_ID_ddebug598 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.68, ptr @.str, ptr @.str.69, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__tipc_node_link_up\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Established link <%s> on network plane %c\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"tipc: Established link <%s> on network plane %c\0A\00", [47 x i8] zeroinitializer }, align 32
@__tipc_node_link_up.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.68, ptr @.str, ptr @.str.71, i8 0, i8 -35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Old link <%s> becomes standby\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tipc: Old link <%s> becomes standby\0A\00", [59 x i8] zeroinitializer }, align 32
@__tipc_node_link_up.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.68, ptr @.str, ptr @.str.73, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"New link <%s> is standby\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tipc: New link <%s> is standby\0A\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_tipc_node_link_up = external dso_local global %struct.tracepoint, align 4
@trace_tipc_node_link_up.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_genl_family = external dso_local global %struct.genl_family, align 4
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@tipc_node_find_by_name.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_nl_node_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@__tipc_nl_node_set_key.__msg = internal constant [38 x i8] c"not found own node identity (set id?)\00", align 1
@__tipc_nl_node_set_key.__msg.76 = internal constant [37 x i8] c"unable to initiate or attach new key\00", align 1
@__tipc_nl_node_set_key.__msg.77 = internal constant [28 x i8] c"failed to replicate new key\00", align 1
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@__tipc_nl_node_flush_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 8, i64 9, i64 12]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 1073741824, i64 1610612736]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 29, i64 172, i64 209]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 209, i64 221]
@__sancov_gen_cov_switch_values.83 = internal global [10 x i64] [i64 8, i64 32, i64 29, i64 170, i64 172, i64 202, i64 204, i64 209, i64 221, i64 240]
@__sancov_gen_cov_switch_values.84 = internal global [10 x i64] [i64 8, i64 32, i64 29, i64 170, i64 172, i64 202, i64 204, i64 209, i64 221, i64 240]
@__sancov_gen_cov_switch_values.85 = internal global [10 x i64] [i64 8, i64 32, i64 29, i64 170, i64 172, i64 202, i64 204, i64 209, i64 221, i64 240]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 32, i64 462, i64 3790, i64 37326, i64 40654]
@__sancov_gen_cov_switch_values.87 = internal global [10 x i64] [i64 8, i64 32, i64 462, i64 3262, i64 3310, i64 3790, i64 4030, i64 4078, i64 37326, i64 40654]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 32, i64 462, i64 3790, i64 37326, i64 40654]
@__sancov_gen_cov_switch_values.89 = internal global [8 x i64] [i64 6, i64 32, i64 462, i64 3310, i64 3790, i64 4030, i64 37326, i64 40654]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 462, i64 3790, i64 37326, i64 40654]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 462, i64 3790, i64 37326, i64 40654]
@__sancov_gen_cov_switch_values.92 = internal global [8 x i64] [i64 6, i64 32, i64 462, i64 3790, i64 4030, i64 4078, i64 37326, i64 40654]
@__sancov_gen_cov_switch_values.93 = internal global [9 x i64] [i64 7, i64 32, i64 462, i64 3262, i64 3310, i64 3790, i64 4030, i64 37326, i64 40654]
@__sancov_gen_cov_switch_values.94 = internal global [10 x i64] [i64 8, i64 32, i64 29, i64 170, i64 172, i64 202, i64 204, i64 209, i64 221, i64 240]
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 497, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 532, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 538, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 554, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 564, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 572, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 590, i32 34 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 648, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 666, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 686, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1188, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1286, i32 43 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1694, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 3082, i32 27 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 3086, i32 26 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 3087, i32 34 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 3088, i32 34 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 3091, i32 34 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 3096, i32 34 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 3101, i32 34 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 3102, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 3103, i32 34 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 3105, i32 34 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 3107, i32 34 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 3110, i32 34 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 3119, i32 34 }
@___asan_gen_.225 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 45, i32 7 }
@___asan_gen_.228 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1984, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [20 x i8] c"../net/tipc/trace.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 354, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 108, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1071, i32 37 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 991, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1019, i32 43 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1037, i32 42 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1499, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1507, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1520, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 695, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 723, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1635, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1660, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1324, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1934, i32 35 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1955, i32 35 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1989, i32 9 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 864, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 884, i32 3 }
@___asan_gen_.333 = private constant [19 x i8] c"../net/tipc/node.c\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 893, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 991, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1208, i32 3 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @tipc_node_add_conn._entry, ptr @tipc_node_add_conn._entry_ptr, ptr @tipc_node_check_dest._entry, ptr @tipc_node_check_dest._entry_ptr, ptr @tipc_node_create._entry, ptr @tipc_node_create._entry.5, ptr @tipc_node_create._entry_ptr, ptr @tipc_node_create._entry_ptr.7, ptr @tipc_node_fsm_evt._entry, ptr @tipc_node_fsm_evt._entry.53, ptr @tipc_node_fsm_evt._entry_ptr, ptr @tipc_node_fsm_evt._entry_ptr.55, ptr @tipc_node_reset_links._entry, ptr @tipc_node_reset_links._entry_ptr, ptr @tipc_node_subscribe._entry, ptr @tipc_node_subscribe._entry_ptr, ptr @tipc_node_unsubscribe._entry, ptr @tipc_node_unsubscribe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @tipc_node_create.__key, ptr @.str.8, ptr @tipc_node_create.__key.9, ptr @.str.10, ptr @tipc_node_create.__key.11, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @tipc_node_xmit.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @skb_queue_head_init.__key, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @tipc_lxc_xmit.__key, ptr @tipc_lxc_xmit.__key.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @nla_parse_nested.__msg], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_node_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_node_create._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_node_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_node_create.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_node_create.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_node_subscribe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_node_unsubscribe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_node_add_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_node_check_dest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_node_xmit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_node_fsm_evt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_node_fsm_evt._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_lxc_xmit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_lxc_xmit.__key.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_node_reset_links._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_node_get_mtu(ptr noundef %net, i32 noundef %addr, i32 noundef %sel, i1 noundef zeroext %connected) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %addr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !238

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %peer_net = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 27
  %0 = ptrtoint ptr %peer_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer_net, align 4
  %tobool4.not = icmp ne ptr %1, null
  %2 = and i1 %tobool4.not, %connected
  br i1 %2, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bc_entry.i.i.i, align 4
  tail call void @kfree(ptr noundef %5) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %and = and i32 %sel, 1
  %arrayidx = getelementptr %struct.tipc_node, ptr %call, i32 0, i32 5, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.not = icmp eq i32 %7, -1
  br i1 %cmp.not, label %if.end7.if.end17_crit_edge, label %if.then14, !prof !238

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %mtu16 = getelementptr %struct.tipc_node, ptr %call, i32 0, i32 6, i32 %7, i32 2
  %8 = ptrtoint ptr %mtu16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end7.if.end17_crit_edge
  %mtu.0 = phi i32 [ %9, %if.then14 ], [ 66060, %if.end7.if.end17_crit_edge ]
  %kref.i28 = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i28, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i28, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i28, ptr %kref.i28, i32 1, ptr elementtype(i32) %kref.i28) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i30 = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i30)
  %cmp.i.i.i.i.i31 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i30, 1
  br i1 %cmp.i.i.i.i.i31, label %if.then.i.i37, label %if.end5.i.i.i.i.i33

if.end5.i.i.i.i.i33:                              ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i30)
  %.not.i.i.i.i.i32 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i30, 0
  br i1 %.not.i.i.i.i.i32, label %if.end5.i.i.i.i.i33.cleanup_crit_edge, label %if.then10.i.i.i.i.i34, !prof !241

if.end5.i.i.i.i.i33.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i34:                            ; preds = %if.end5.i.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i28, i32 noundef 3) #14
  br label %cleanup

if.then.i.i37:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i35 = getelementptr %struct.tipc_node, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %bc_entry.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bc_entry.i.i.i35, align 4
  tail call void @kfree(ptr noundef %12) #14
  %rcu.i.i.i36 = getelementptr %struct.tipc_node, ptr %call, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i.i36, ptr noundef nonnull @tipc_node_free) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i37, %if.then10.i.i.i.i.i34, %if.end5.i.i.i.i.i33.cleanup_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 66060, %entry.cleanup_crit_edge ], [ 66060, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 66060, %if.then10.i.i.i.i.i ], [ 66060, %if.then.i.i ], [ %mtu.0, %if.end5.i.i.i.i.i33.cleanup_crit_edge ], [ %mtu.0, %if.then10.i.i.i.i.i34 ], [ %mtu.0, %if.then.i.i37 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i50 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #14
  %and.i = and i32 %addr, 511
  %1 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !243
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call2 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @tipc_node_find.__warned, align 1
  br i1 %.b47, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_node_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 339, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %arrayidx = getelementptr %struct.tipc_net, ptr %call.i50, i32 0, i32 9, i32 %and.i
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %6, null
  %add.ptr = getelementptr i8, ptr %6, i32 -56
  %tobool14.not6367 = icmp eq ptr %add.ptr, null
  %tobool14.not63 = or i1 %tobool12.not, %tobool14.not6367
  br i1 %tobool14.not63, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %node.064 = phi ptr [ %add.ptr34, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %7 = ptrtoint ptr %node.064 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %node.064, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %addr)
  %cmp.not = icmp eq i32 %8, %addr
  br i1 %cmp.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %preliminary = getelementptr inbounds %struct.tipc_node, ptr %node.064, i32 0, i32 11
  %9 = ptrtoint ptr %preliminary to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %preliminary, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool16.not = icmp eq i8 %10, 0
  br i1 %tobool16.not, label %if.end18, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end18:                                         ; preds = %lor.lhs.false
  %kref = getelementptr inbounds %struct.tipc_node, ptr %node.064, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #14
  %11 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end18
  %13 = phi i32 [ %12, %if.end18 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %13, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #14
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %17 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %16, i32 %add.i.i.i.i, ptr elementtype(i32) %kref) #14, !srcloc !245
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %16
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !241

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %19, 1
  %20 = or i32 %add5.i.i.i.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !241

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #14
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %21 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool12.i.i.i.i.not = icmp eq i32 %22, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %spec.select48 = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %node.064
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %hash = getelementptr inbounds %struct.tipc_node, ptr %node.064, i32 0, i32 4
  %23 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %hash, align 4
  %tobool30.not = icmp eq ptr %24, null
  %add.ptr34 = getelementptr i8, ptr %24, i32 -56
  %tobool14.not69 = icmp eq ptr %add.ptr34, null
  %tobool14.not = or i1 %tobool30.not, %tobool14.not69
  br i1 %tobool14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit, %do.end.for.end_crit_edge
  %node.1 = phi ptr [ %spec.select48, %kref_get_unless_zero.exit ], [ null, %do.end.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i51 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i51, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i54

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i54:                                ; preds = %for.end
  %call1.i52 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i56

land.lhs.true.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i56:                               ; preds = %land.lhs.true.i54
  %.b4.i55 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55, label %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, label %if.then.i57

land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i57:                                      ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.61) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i57, %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !246
  %25 = call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i58 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i58 to ptr
  %preempt_count.i.i.i.i59 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i59, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i59, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %node.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_node_put(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.tipc_node, ptr %node, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !241

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i = getelementptr %struct.tipc_node, ptr %node, i32 0, i32 7
  %1 = ptrtoint ptr %bc_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bc_entry.i.i, align 4
  tail call void @kfree(ptr noundef %2) #14
  %rcu.i.i = getelementptr %struct.tipc_node, ptr %node, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_node_get_id(ptr noundef %net, i32 noundef %addr, ptr nocapture noundef writeonly %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #14
  %node_id_string.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %node_id_string.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %char0.i = load i8, ptr %node_id_string.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool.not.i = icmp eq i8 %char0.i, 0
  %tobool.not17 = icmp eq ptr %call.i.i, null
  %tobool.not = select i1 %tobool.not.i, i1 true, i1 %tobool.not17
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %2 = load i32, ptr @tipc_net_id, align 4
  %call.i.i16 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %2) #14
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i16, i32 0, i32 1
  %3 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %node_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %addr)
  %cmp = icmp eq i32 %4, %addr
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = call ptr @memcpy(ptr %id, ptr %call.i.i, i32 16)
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %addr)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %peer_id = getelementptr inbounds %struct.tipc_node, ptr %call4, i32 0, i32 19
  %6 = call ptr @memcpy(ptr %id, ptr %peer_id, i32 16)
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call4, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %call4, i32 0, i32 7
  %8 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bc_entry.i.i.i, align 4
  tail call void @kfree(ptr noundef %9) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call4, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then2 ], [ true, %entry.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ true, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ true, %if.then10.i.i.i.i.i ], [ true, %if.then.i.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @tipc_node_get_capabilities(ptr noundef %net, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %addr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !238

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %capabilities = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 16
  %0 = ptrtoint ptr %capabilities to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %capabilities, align 2
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bc_entry.i.i.i, align 4
  tail call void @kfree(ptr noundef %4) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 4095, %entry.cleanup_crit_edge ], [ %1, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %1, %if.then10.i.i.i.i.i ], [ %1, %if.then.i.i ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tipc_node_get_addr(ptr noundef readonly %node) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @tipc_node_get_id_str(ptr noundef readnone %node) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_id_string = getelementptr inbounds %struct.tipc_node, ptr %node, i32 0, i32 20
  ret ptr %peer_id_string
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @tipc_node_crypto_rx(ptr noundef readonly %__n) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %__n, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %crypto_rx = getelementptr inbounds %struct.tipc_node, ptr %__n, i32 0, i32 29
  %0 = ptrtoint ptr %crypto_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypto_rx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @tipc_node_crypto_rx_by_list(ptr nocapture noundef readonly %pos) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %crypto_rx = getelementptr i8, ptr %pos, i32 172
  %0 = ptrtoint ptr %crypto_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypto_rx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tipc_node_crypto_rx_by_addr(ptr noundef %net, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %addr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %crypto_rx = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 29
  %0 = ptrtoint ptr %crypto_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypto_rx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_node_get(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.tipc_node, ptr %node, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !247
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !238

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !241

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #14
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tipc_node_create(ptr noundef %net, i32 noundef %addr, ptr noundef %peer_id, i16 noundef zeroext %capabilities, i32 noundef %hash_mixes, i1 noundef zeroext %preliminary) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %preliminary to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %node_list_lock = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %node_list_lock) #14
  %call1 = tail call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %addr)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call fastcc ptr @tipc_node_find_by_id(ptr noundef %net, ptr noundef %peer_id)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end112, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond449 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call1, %entry.if.then_crit_edge ]
  %preliminary4 = getelementptr inbounds %struct.tipc_node, ptr %cond449, i32 0, i32 11
  %1 = ptrtoint ptr %preliminary4 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %preliminary4, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool5.not = icmp eq i8 %2, 0
  br i1 %tobool5.not, label %if.then.update_crit_edge, label %if.end

if.then.update_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %update

if.end:                                           ; preds = %if.then
  br i1 %preliminary, label %if.end.exit_crit_edge, label %if.end9

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end9:                                          ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.tipc_node, ptr %cond449, i32 0, i32 2
  tail call void @_raw_write_lock_bh(ptr noundef %lock.i) #14
  %3 = ptrtoint ptr %preliminary4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %preliminary4, align 4
  %4 = ptrtoint ptr %cond449 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %addr, ptr %cond449, align 4
  %hash = getelementptr inbounds %struct.tipc_node, ptr %cond449, i32 0, i32 4
  %5 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hash, align 4
  %pprev2.i.i = getelementptr inbounds %struct.tipc_node, ptr %cond449, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev2.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %6, ptr %8, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end9.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.end9.hlist_del_rcu.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.end9.hlist_del_rcu.exit_crit_edge
  %11 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %and.i = and i32 %addr, 511
  %arrayidx = getelementptr %struct.tipc_net, ptr %call, i32 0, i32 9, i32 %and.i
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %hash, align 4
  store volatile ptr %arrayidx, ptr %pprev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !248
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %hash, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %hlist_del_rcu.exit.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

hlist_del_rcu.exit.hlist_add_head_rcu.exit_crit_edge: ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %hash, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %hlist_del_rcu.exit.hlist_add_head_rcu.exit_crit_edge
  %list = getelementptr inbounds %struct.tipc_node, ptr %cond449, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %hlist_add_head_rcu.exit.list_del_rcu.exit_crit_edge

hlist_add_head_rcu.exit.list_del_rcu.exit_crit_edge: ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.tipc_node, ptr %cond449, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %hlist_add_head_rcu.exit.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.tipc_node, ptr %cond449, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call14 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true, label %list_del_rcu.exit.do.end_crit_edge

list_del_rcu.exit.do.end_crit_edge:               ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %list_del_rcu.exit
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true18

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true18:                                  ; preds = %land.lhs.true
  %.b406 = load i1, ptr @tipc_node_create.__warned, align 1
  br i1 %.b406, label %land.lhs.true18.do.end_crit_edge, label %if.then20

land.lhs.true18.do.end_crit_edge:                 ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_node_create.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 497, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then20, %land.lhs.true18.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %list_del_rcu.exit.do.end_crit_edge
  %node_list = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn405.in = phi ptr [ %node_list, %do.end ], [ %.pn405, %for.body.for.cond_crit_edge ]
  %24 = ptrtoint ptr %.pn405.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn405 = load volatile ptr, ptr %.pn405.in, align 4
  %cmp.not = icmp eq ptr %.pn405, %node_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond
  %temp_node.0 = getelementptr i8, ptr %.pn405, i32 -740
  %25 = ptrtoint ptr %cond449 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cond449, align 4
  %27 = ptrtoint ptr %temp_node.0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %temp_node.0, align 4
  %cmp30 = icmp ult i32 %26, %28
  br i1 %cmp30, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.pn405.lcssa = phi ptr [ %.pn405, %for.body.for.end_crit_edge ], [ %node_list, %for.cond.for.end_crit_edge ]
  %prev.i407 = getelementptr inbounds %struct.list_head, ptr %.pn405.lcssa, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i407 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i407, align 4
  %call.i.i408 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %30, ptr noundef %.pn405.lcssa) #14
  br i1 %call.i.i408, label %if.end.i.i409, label %for.end.list_add_tail_rcu.exit_crit_edge

for.end.list_add_tail_rcu.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail_rcu.exit

if.end.i.i409:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %.pn405.lcssa, ptr %list, align 4
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !249
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list, ptr %30, align 4
  %34 = ptrtoint ptr %prev.i407 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list, ptr %prev.i407, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i409, %for.end.list_add_tail_rcu.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %lock.i) #14
  br label %update

update:                                           ; preds = %list_add_tail_rcu.exit, %if.then.update_crit_edge
  %peer_hash_mix = getelementptr inbounds %struct.tipc_node, ptr %cond449, i32 0, i32 28
  %35 = ptrtoint ptr %peer_hash_mix to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %peer_hash_mix, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %hash_mixes)
  %tobool44.not = icmp eq i32 %36, %hash_mixes
  br i1 %tobool44.not, label %update.if.end46_crit_edge, label %if.then45

update.if.end46_crit_edge:                        ; preds = %update
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then45:                                        ; preds = %update
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @tipc_node_assign_peer_net(ptr noundef nonnull %cond449, i32 noundef %hash_mixes)
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %update.if.end46_crit_edge
  %capabilities47 = getelementptr inbounds %struct.tipc_node, ptr %cond449, i32 0, i32 16
  %37 = ptrtoint ptr %capabilities47 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %capabilities47, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %capabilities)
  %cmp49 = icmp eq i16 %38, %capabilities
  br i1 %cmp49, label %if.end46.exit_crit_edge, label %if.end52

if.end46.exit_crit_edge:                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end52:                                         ; preds = %if.end46
  %lock.i411 = getelementptr inbounds %struct.tipc_node, ptr %cond449, i32 0, i32 2
  tail call void @_raw_write_lock_bh(ptr noundef %lock.i411) #14
  %39 = ptrtoint ptr %capabilities47 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %capabilities, ptr %capabilities47, align 2
  %arrayidx58 = getelementptr %struct.tipc_node, ptr %cond449, i32 0, i32 6, i32 0
  %40 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx58, align 4
  %tobool59.not = icmp eq ptr %41, null
  br i1 %tobool59.not, label %if.end52.for.inc62_crit_edge, label %if.then60

if.end52.for.inc62_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc62

if.then60:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @tipc_link_update_caps(ptr noundef nonnull %41, i16 noundef zeroext %capabilities) #14
  br label %for.inc62

for.inc62:                                        ; preds = %if.then60, %if.end52.for.inc62_crit_edge
  %arrayidx58.1 = getelementptr %struct.tipc_node, ptr %cond449, i32 0, i32 6, i32 1
  %42 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx58.1, align 4
  %tobool59.not.1 = icmp eq ptr %43, null
  br i1 %tobool59.not.1, label %for.inc62.for.inc62.1_crit_edge, label %if.then60.1

for.inc62.for.inc62.1_crit_edge:                  ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc62.1

if.then60.1:                                      ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @tipc_link_update_caps(ptr noundef nonnull %43, i16 noundef zeroext %capabilities) #14
  br label %for.inc62.1

for.inc62.1:                                      ; preds = %if.then60.1, %for.inc62.for.inc62.1_crit_edge
  %arrayidx58.2 = getelementptr %struct.tipc_node, ptr %cond449, i32 0, i32 6, i32 2
  %44 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx58.2, align 4
  %tobool59.not.2 = icmp eq ptr %45, null
  br i1 %tobool59.not.2, label %for.inc62.1.for.inc62.2_crit_edge, label %if.then60.2

for.inc62.1.for.inc62.2_crit_edge:                ; preds = %for.inc62.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc62.2

if.then60.2:                                      ; preds = %for.inc62.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @tipc_link_update_caps(ptr noundef nonnull %45, i16 noundef zeroext %capabilities) #14
  br label %for.inc62.2

for.inc62.2:                                      ; preds = %if.then60.2, %for.inc62.1.for.inc62.2_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %lock.i411) #14
  %capabilities64 = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 24
  %46 = ptrtoint ptr %capabilities64 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 4095, ptr %capabilities64, align 4
  %call66 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true68, label %for.inc62.2.do.end76_crit_edge

for.inc62.2.do.end76_crit_edge:                   ; preds = %for.inc62.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76

land.lhs.true68:                                  ; preds = %for.inc62.2
  %call69 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true68.do.end76_crit_edge, label %land.lhs.true71

land.lhs.true68.do.end76_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %.b395404 = load i1, ptr @tipc_node_create.__warned.2, align 1
  br i1 %.b395404, label %land.lhs.true71.do.end76_crit_edge, label %if.then73

land.lhs.true71.do.end76_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76

if.then73:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_node_create.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 521, ptr noundef nonnull @.str.1) #14
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %land.lhs.true71.do.end76_crit_edge, %land.lhs.true68.do.end76_crit_edge, %for.inc62.2.do.end76_crit_edge
  %node_list82 = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 10
  %47 = ptrtoint ptr %node_list82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn402451 = load volatile ptr, ptr %node_list82, align 4
  %cmp89.not452 = icmp eq ptr %.pn402451, %node_list82
  br i1 %cmp89.not452, label %do.end76.for.end107_crit_edge, label %do.end76.for.body91_crit_edge

do.end76.for.body91_crit_edge:                    ; preds = %do.end76
  br label %for.body91

do.end76.for.end107_crit_edge:                    ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end107

for.body91:                                       ; preds = %for.body91.for.body91_crit_edge, %do.end76.for.body91_crit_edge
  %.pn402453 = phi ptr [ %.pn402, %for.body91.for.body91_crit_edge ], [ %.pn402451, %do.end76.for.body91_crit_edge ]
  %capabilities92 = getelementptr i8, ptr %.pn402453, i32 22
  %48 = ptrtoint ptr %capabilities92 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %capabilities92, align 2
  %50 = ptrtoint ptr %capabilities64 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %capabilities64, align 4
  %and403 = and i16 %51, %49
  store i16 %and403, ptr %capabilities64, align 4
  %52 = ptrtoint ptr %.pn402453 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn402 = load volatile ptr, ptr %.pn402453, align 4
  %cmp89.not = icmp eq ptr %.pn402, %node_list82
  br i1 %cmp89.not, label %for.body91.for.end107_crit_edge, label %for.body91.for.body91_crit_edge

for.body91.for.body91_crit_edge:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body91

for.body91.for.end107_crit_edge:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end107

for.end107:                                       ; preds = %for.body91.for.end107_crit_edge, %do.end76.for.end107_crit_edge
  %53 = ptrtoint ptr %capabilities64 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %capabilities64, align 4
  %55 = and i16 %54, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool111 = icmp ne i16 %55, 0
  tail call void @tipc_bcast_toggle_rcast(ptr noundef %net, i1 noundef zeroext %tobool111) #14
  br label %exit

if.end112:                                        ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 2848, i32 noundef 916) #17
  %tobool114.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool114.not, label %do.end118, label %if.end121

do.end118:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #16
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #18
  br label %exit

if.end121:                                        ; preds = %if.end112
  %peer_id_string = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 20
  %call122 = tail call ptr @tipc_nodeid2string(ptr noundef %peer_id_string, ptr noundef %peer_id) #14
  %crypto_rx = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 29
  %call123 = tail call i32 @tipc_crypto_start(ptr noundef %crypto_rx, ptr noundef %net, ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end135, label %do.end130, !prof !241

do.end130:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #16
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %peer_id_string) #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %exit

if.end135:                                        ; preds = %if.end121
  %57 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %addr, ptr %call7.i.i, align 8
  %preliminary138 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 11
  %58 = ptrtoint ptr %preliminary138 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %frombool, ptr %preliminary138, align 8
  %peer_id140 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 19
  %59 = call ptr @memcpy(ptr %peer_id140, ptr %peer_id, i32 16)
  %net141 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %net141 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %net, ptr %net141, align 4
  %peer_net = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 27
  %61 = ptrtoint ptr %peer_net to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %peer_net, align 8
  %peer_hash_mix142 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 28
  %62 = ptrtoint ptr %peer_hash_mix142 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %peer_hash_mix142, align 4
  tail call fastcc void @tipc_node_assign_peer_net(ptr noundef nonnull %call7.i.i, i32 noundef %hash_mixes)
  %capabilities143 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 16
  %63 = ptrtoint ptr %capabilities143 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %capabilities, ptr %capabilities143, align 2
  %kref = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  %64 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 1, ptr %kref, align 4
  %lock = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 2
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @tipc_node_create.__key) #14
  %hash147 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %hash147 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %hash147, align 8
  %pprev.i413 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %pprev.i413 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %pprev.i413, align 4
  %list148 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 9
  %67 = ptrtoint ptr %list148 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %list148, ptr %list148, align 4
  %prev.i414 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 9, i32 1
  %68 = ptrtoint ptr %prev.i414 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %list148, ptr %prev.i414, align 8
  %publ_list = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 21
  %69 = ptrtoint ptr %publ_list to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %publ_list, ptr %publ_list, align 8
  %prev.i415 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 21, i32 1
  %70 = ptrtoint ptr %prev.i415 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %publ_list, ptr %prev.i415, align 4
  %conn_sks = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 22
  %71 = ptrtoint ptr %conn_sks to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %conn_sks, ptr %conn_sks, align 8
  %prev.i416 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 22, i32 1
  %72 = ptrtoint ptr %prev.i416 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %conn_sks, ptr %prev.i416, align 4
  %namedq = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 7, i32 4
  %lock.i417 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 7, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i417, ptr noundef nonnull @.str.25, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %73 = ptrtoint ptr %namedq to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %namedq, ptr %namedq, align 4
  %prev.i.i418 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 7, i32 4, i32 0, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i418 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %namedq, ptr %prev.i.i418, align 8
  %qlen.i.i = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 7, i32 4, i32 1
  %75 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %qlen.i.i, align 4
  %inputq1 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 7, i32 1
  %lock.i419 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i419, ptr noundef nonnull @.str.25, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %76 = ptrtoint ptr %inputq1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %inputq1, ptr %inputq1, align 4
  %prev.i.i420 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 0, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i420 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %inputq1, ptr %prev.i.i420, align 8
  %qlen.i.i421 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %78 = ptrtoint ptr %qlen.i.i421 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %qlen.i.i421, align 4
  %arrvq = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 7, i32 2
  %79 = ptrtoint ptr %arrvq to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %arrvq, ptr %arrvq, align 4
  %prev.i422 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 7, i32 2, i32 0, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i422 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %arrvq, ptr %prev.i422, align 8
  %qlen.i = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 7, i32 2, i32 1
  %81 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %qlen.i, align 4
  %inputq2 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 7, i32 3
  %lock.i423 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 7, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i423, ptr noundef nonnull @.str.25, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %82 = ptrtoint ptr %inputq2 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %inputq2, ptr %inputq2, align 4
  %prev.i.i424 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 7, i32 3, i32 0, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i424 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %inputq2, ptr %prev.i.i424, align 8
  %qlen.i.i425 = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 7, i32 3, i32 1
  %84 = ptrtoint ptr %qlen.i.i425 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %qlen.i.i425, align 4
  %lock159 = getelementptr %struct.tipc_node, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock159, ptr noundef nonnull @.str.10, ptr noundef nonnull @tipc_node_create.__key.9, i16 noundef signext 3) #14
  %lock159.1 = getelementptr %struct.tipc_node, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock159.1, ptr noundef nonnull @.str.10, ptr noundef nonnull @tipc_node_create.__key.9, i16 noundef signext 3) #14
  %lock159.2 = getelementptr %struct.tipc_node, ptr %call7.i.i, i32 0, i32 6, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock159.2, ptr noundef nonnull @.str.10, ptr noundef nonnull @tipc_node_create.__key.9, i16 noundef signext 3) #14
  %bc_entry = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 7
  %state = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 10
  %85 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 209, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %86, 30000
  %delete_at = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 26
  %87 = ptrtoint ptr %delete_at to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add, ptr %delete_at, align 4
  %signature = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 17
  %88 = ptrtoint ptr %signature to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 65536, ptr %signature, align 4
  %active_links = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 5
  %89 = ptrtoint ptr %active_links to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %active_links, align 8
  %arrayidx169 = getelementptr %struct.tipc_node, ptr %call7.i.i, i32 0, i32 5, i32 1
  %90 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %arrayidx169, align 4
  %91 = ptrtoint ptr %bc_entry to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %bc_entry, align 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %92 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !247
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end135.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !238

if.end135.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end135
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %93 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %93)
  %.not.i.i.i.i.i = icmp sgt i32 %93, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.tipc_node_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !241

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.tipc_node_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end135.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end135.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i.i) #14
  br label %tipc_node_get.exit

tipc_node_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.tipc_node_get.exit_crit_edge
  %timer = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 24
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @tipc_node_timeout, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @tipc_node_create.__key.11) #14
  %keepalive_intv = getelementptr inbounds %struct.tipc_node, ptr %call7.i.i, i32 0, i32 23
  %94 = ptrtoint ptr %keepalive_intv to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 10000, ptr %keepalive_intv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %add177 = add i32 %95, 1000
  %call179 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add177) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.then181, label %tipc_node_get.exit.if.end182_crit_edge

tipc_node_get.exit.if.end182_crit_edge:           ; preds = %tipc_node_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182

if.then181:                                       ; preds = %tipc_node_get.exit
  %call.i.i.i.i.i.i.i427 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %96 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !247
  %asmresult.i.i.i.i.i.i.i428 = extractvalue { i32, i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i428)
  %tobool1.not.i.i.i.i.i429 = icmp eq i32 %asmresult.i.i.i.i.i.i.i428, 0
  br i1 %tobool1.not.i.i.i.i.i429, label %if.then181.if.end15.sink.split.i.i.i.i.i434_crit_edge, label %if.else.i.i.i.i.i432, !prof !238

if.then181.if.end15.sink.split.i.i.i.i.i434_crit_edge: ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i434

if.else.i.i.i.i.i432:                             ; preds = %if.then181
  %add.i.i.i.i.i430 = add i32 %asmresult.i.i.i.i.i.i.i428, 1
  %97 = or i32 %add.i.i.i.i.i430, %asmresult.i.i.i.i.i.i.i428
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %.not.i.i.i.i.i431 = icmp sgt i32 %97, -1
  br i1 %.not.i.i.i.i.i431, label %if.else.i.i.i.i.i432.if.end182_crit_edge, label %if.else.i.i.i.i.i432.if.end15.sink.split.i.i.i.i.i434_crit_edge, !prof !241

if.else.i.i.i.i.i432.if.end15.sink.split.i.i.i.i.i434_crit_edge: ; preds = %if.else.i.i.i.i.i432
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i434

if.else.i.i.i.i.i432.if.end182_crit_edge:         ; preds = %if.else.i.i.i.i.i432
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182

if.end15.sink.split.i.i.i.i.i434:                 ; preds = %if.else.i.i.i.i.i432.if.end15.sink.split.i.i.i.i.i434_crit_edge, %if.then181.if.end15.sink.split.i.i.i.i.i434_crit_edge
  %.sink.i.i.i.i.i433 = phi i32 [ 2, %if.then181.if.end15.sink.split.i.i.i.i.i434_crit_edge ], [ 1, %if.else.i.i.i.i.i432.if.end15.sink.split.i.i.i.i.i434_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i.i433) #14
  br label %if.end182

if.end182:                                        ; preds = %if.end15.sink.split.i.i.i.i.i434, %if.else.i.i.i.i.i432.if.end182_crit_edge, %tipc_node_get.exit.if.end182_crit_edge
  %and.i436 = and i32 %addr, 511
  %arrayidx186 = getelementptr %struct.tipc_net, ptr %call, i32 0, i32 9, i32 %and.i436
  %98 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx186, align 4
  %100 = ptrtoint ptr %hash147 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %hash147, align 8
  %101 = ptrtoint ptr %pprev.i413 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %arrayidx186, ptr %pprev.i413, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !248
  %102 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %hash147, ptr %arrayidx186, align 4
  %tobool.not.i438 = icmp eq ptr %99, null
  br i1 %tobool.not.i438, label %if.end182.hlist_add_head_rcu.exit441_crit_edge, label %do.body49.i440

if.end182.hlist_add_head_rcu.exit441_crit_edge:   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_add_head_rcu.exit441

do.body49.i440:                                   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #16
  %pprev51.i439 = getelementptr inbounds %struct.hlist_node, ptr %99, i32 0, i32 1
  %103 = ptrtoint ptr %pprev51.i439 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %hash147, ptr %pprev51.i439, align 4
  br label %hlist_add_head_rcu.exit441

hlist_add_head_rcu.exit441:                       ; preds = %do.body49.i440, %if.end182.hlist_add_head_rcu.exit441_crit_edge
  %call188 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %land.lhs.true190, label %hlist_add_head_rcu.exit441.do.end198_crit_edge

hlist_add_head_rcu.exit441.do.end198_crit_edge:   ; preds = %hlist_add_head_rcu.exit441
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end198

land.lhs.true190:                                 ; preds = %hlist_add_head_rcu.exit441
  %call191 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %land.lhs.true190.do.end198_crit_edge, label %land.lhs.true193

land.lhs.true190.do.end198_crit_edge:             ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end198

land.lhs.true193:                                 ; preds = %land.lhs.true190
  %.b396401 = load i1, ptr @tipc_node_create.__warned.13, align 1
  br i1 %.b396401, label %land.lhs.true193.do.end198_crit_edge, label %if.then195

land.lhs.true193.do.end198_crit_edge:             ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end198

if.then195:                                       ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_node_create.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 579, ptr noundef nonnull @.str.1) #14
  br label %do.end198

do.end198:                                        ; preds = %if.then195, %land.lhs.true193.do.end198_crit_edge, %land.lhs.true190.do.end198_crit_edge, %hlist_add_head_rcu.exit441.do.end198_crit_edge
  %node_list204 = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 10
  br label %for.cond208

for.cond208:                                      ; preds = %for.body213.for.cond208_crit_edge, %do.end198
  %.pn.in = phi ptr [ %node_list204, %do.end198 ], [ %.pn, %for.body213.for.cond208_crit_edge ]
  %104 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp211.not = icmp eq ptr %.pn, %node_list204
  br i1 %cmp211.not, label %for.cond208.for.end230_crit_edge, label %for.body213

for.cond208.for.end230_crit_edge:                 ; preds = %for.cond208
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end230

for.body213:                                      ; preds = %for.cond208
  %temp_node.2 = getelementptr i8, ptr %.pn, i32 -740
  %105 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %call7.i.i, align 8
  %107 = ptrtoint ptr %temp_node.2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %temp_node.2, align 4
  %cmp216 = icmp ult i32 %106, %108
  br i1 %cmp216, label %for.body213.for.end230_crit_edge, label %for.body213.for.cond208_crit_edge

for.body213.for.cond208_crit_edge:                ; preds = %for.body213
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond208

for.body213.for.end230_crit_edge:                 ; preds = %for.body213
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end230

for.end230:                                       ; preds = %for.body213.for.end230_crit_edge, %for.cond208.for.end230_crit_edge
  %.pn.lcssa = phi ptr [ %.pn, %for.body213.for.end230_crit_edge ], [ %node_list204, %for.cond208.for.end230_crit_edge ]
  %prev.i442 = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa, i32 0, i32 1
  %109 = ptrtoint ptr %prev.i442 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %prev.i442, align 4
  %call.i.i443 = tail call zeroext i1 @__list_add_valid(ptr noundef %list148, ptr noundef %110, ptr noundef %.pn.lcssa) #14
  br i1 %call.i.i443, label %if.end.i.i445, label %for.end230.list_add_tail_rcu.exit446_crit_edge

for.end230.list_add_tail_rcu.exit446_crit_edge:   ; preds = %for.end230
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail_rcu.exit446

if.end.i.i445:                                    ; preds = %for.end230
  call void @__sanitizer_cov_trace_pc() #16
  %111 = ptrtoint ptr %list148 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %.pn.lcssa, ptr %list148, align 4
  %112 = ptrtoint ptr %prev.i414 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %110, ptr %prev.i414, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !249
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %list148, ptr %110, align 4
  %114 = ptrtoint ptr %prev.i442 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %list148, ptr %prev.i442, align 4
  br label %list_add_tail_rcu.exit446

list_add_tail_rcu.exit446:                        ; preds = %if.end.i.i445, %for.end230.list_add_tail_rcu.exit446_crit_edge
  %capabilities233 = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 24
  %115 = ptrtoint ptr %capabilities233 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 4095, ptr %capabilities233, align 4
  %call235 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %land.lhs.true237, label %list_add_tail_rcu.exit446.do.end245_crit_edge

list_add_tail_rcu.exit446.do.end245_crit_edge:    ; preds = %list_add_tail_rcu.exit446
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end245

land.lhs.true237:                                 ; preds = %list_add_tail_rcu.exit446
  %call238 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %land.lhs.true237.do.end245_crit_edge, label %land.lhs.true240

land.lhs.true237.do.end245_crit_edge:             ; preds = %land.lhs.true237
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end245

land.lhs.true240:                                 ; preds = %land.lhs.true237
  %.b397400 = load i1, ptr @tipc_node_create.__warned.14, align 1
  br i1 %.b397400, label %land.lhs.true240.do.end245_crit_edge, label %if.then242

land.lhs.true240.do.end245_crit_edge:             ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end245

if.then242:                                       ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_node_create.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 586, ptr noundef nonnull @.str.1) #14
  br label %do.end245

do.end245:                                        ; preds = %if.then242, %land.lhs.true240.do.end245_crit_edge, %land.lhs.true237.do.end245_crit_edge, %list_add_tail_rcu.exit446.do.end245_crit_edge
  %116 = ptrtoint ptr %node_list204 to i32
  call void @__asan_load4_noabort(i32 %116)
  %.pn398455 = load volatile ptr, ptr %node_list204, align 4
  %cmp258.not456 = icmp eq ptr %.pn398455, %node_list204
  br i1 %cmp258.not456, label %do.end245.for.end277_crit_edge, label %do.end245.for.body260_crit_edge

do.end245.for.body260_crit_edge:                  ; preds = %do.end245
  br label %for.body260

do.end245.for.end277_crit_edge:                   ; preds = %do.end245
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end277

for.body260:                                      ; preds = %for.body260.for.body260_crit_edge, %do.end245.for.body260_crit_edge
  %.pn398457 = phi ptr [ %.pn398, %for.body260.for.body260_crit_edge ], [ %.pn398455, %do.end245.for.body260_crit_edge ]
  %capabilities261 = getelementptr i8, ptr %.pn398457, i32 22
  %117 = ptrtoint ptr %capabilities261 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %capabilities261, align 2
  %119 = ptrtoint ptr %capabilities233 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %capabilities233, align 4
  %and265399 = and i16 %120, %118
  store i16 %and265399, ptr %capabilities233, align 4
  %121 = ptrtoint ptr %.pn398457 to i32
  call void @__asan_load4_noabort(i32 %121)
  %.pn398 = load volatile ptr, ptr %.pn398457, align 4
  %cmp258.not = icmp eq ptr %.pn398, %node_list204
  br i1 %cmp258.not, label %for.body260.for.end277_crit_edge, label %for.body260.for.body260_crit_edge

for.body260.for.body260_crit_edge:                ; preds = %for.body260
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body260

for.body260.for.end277_crit_edge:                 ; preds = %for.body260
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end277

for.end277:                                       ; preds = %for.body260.for.end277_crit_edge, %do.end245.for.end277_crit_edge
  %122 = ptrtoint ptr %capabilities233 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %capabilities233, align 4
  %124 = and i16 %123, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %tobool281 = icmp ne i16 %124, 0
  tail call void @tipc_bcast_toggle_rcast(ptr noundef %net, i1 noundef zeroext %tobool281) #14
  tail call fastcc void @trace_tipc_node_create(ptr noundef nonnull %call7.i.i)
  br label %exit

exit:                                             ; preds = %for.end277, %do.end130, %do.end118, %for.end107, %if.end46.exit_crit_edge, %if.end.exit_crit_edge
  %n.0 = phi ptr [ %cond449, %if.end.exit_crit_edge ], [ %cond449, %if.end46.exit_crit_edge ], [ %cond449, %for.end107 ], [ null, %do.end130 ], [ %call7.i.i, %for.end277 ], [ null, %do.end118 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %node_list_lock) #14
  ret ptr %n.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !243
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 45, ptr noundef nonnull @.str.41) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.61) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !246
  %8 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_node_find_by_id(ptr noundef %net, ptr nocapture noundef readonly %id) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i46 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !243
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b44 = load i1, ptr @tipc_node_find_by_id.__warned, align 1
  br i1 %.b44, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_node_find_by_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 361, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %node_list = getelementptr inbounds %struct.tipc_net, ptr %call.i46, i32 0, i32 10
  %5 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn56 = load volatile ptr, ptr %node_list, align 4
  %cmp.not57 = icmp eq ptr %.pn56, %node_list
  br i1 %cmp.not57, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn58 = phi ptr [ %.pn, %for.cond.backedge.for.body_crit_edge ], [ %.pn56, %do.end.for.body_crit_edge ]
  %lock = getelementptr i8, ptr %.pn58, i32 -732
  call void @_raw_read_lock_bh(ptr noundef %lock) #14
  %peer_id = getelementptr i8, ptr %.pn58, i32 32
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %id, ptr noundef dereferenceable(16) %peer_id, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool12.not = icmp eq i32 %bcmp, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %if.end17

land.lhs.true13:                                  ; preds = %for.body
  %kref = getelementptr i8, ptr %.pn58, i32 -736
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #14
  %6 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true13
  %8 = phi i32 [ %7, %land.lhs.true13 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #14
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %kref) #14, !srcloc !245
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !241

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !241

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #14
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.not.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  call void @_raw_read_unlock_bh(ptr noundef %lock) #14
  br i1 %tobool12.i.i.i.i.not.not, label %kref_get_unless_zero.exit.for.cond.backedge_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

kref_get_unless_zero.exit.for.cond.backedge_crit_edge: ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end17, %kref_get_unless_zero.exit.for.cond.backedge_crit_edge
  %18 = ptrtoint ptr %.pn58 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load volatile ptr, ptr %.pn58, align 4
  %cmp.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end17:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_read_unlock_bh(ptr noundef %lock) #14
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %.pn.lcssa = phi ptr [ %node_list, %do.end.for.end_crit_edge ], [ %.pn58, %kref_get_unless_zero.exit.for.end_crit_edge ], [ %node_list, %for.cond.backedge.for.end_crit_edge ]
  %cmp.not.lcssa = phi i1 [ true, %do.end.for.end_crit_edge ], [ false, %kref_get_unless_zero.exit.for.end_crit_edge ], [ true, %for.cond.backedge.for.end_crit_edge ]
  %call.i47 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i47, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i50

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i50:                                ; preds = %for.end
  %call1.i48 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.61) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  %n.0 = getelementptr i8, ptr %.pn.lcssa, i32 -740
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !246
  %19 = call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i54 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i55, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %spec.select45 = select i1 %cmp.not.lcssa, ptr null, ptr %n.0
  ret ptr %spec.select45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_node_assign_peer_net(ptr nocapture noundef %n, i32 noundef %hash_mixes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 3
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %2 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2) #14
  %net_id.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %net_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %net_id.i, align 4
  %peer_net = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 27
  %5 = ptrtoint ptr %peer_net to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %peer_net, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b55 = load i1, ptr @tipc_node_assign_peer_net.__warned, align 1
  br i1 %.b55, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_node_assign_peer_net.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 452, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @net_namespace_list to i32))
  %.pn57 = load volatile ptr, ptr @net_namespace_list, align 4
  %cmp.not59 = icmp eq ptr %.pn57, @net_namespace_list
  br i1 %cmp.not59, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %peer_id = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn60 = phi ptr [ %.pn57, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %tmp.061 = getelementptr i8, ptr %.pn60, i32 -108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %7 = load i32, ptr @tipc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %tmp.061, i32 noundef %7) #14
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %if.end17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %net_id18 = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %net_id18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %net_id18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %4)
  %cmp19.not = icmp eq i32 %9, %4
  br i1 %cmp19.not, label %if.end21, label %if.end17.for.inc_crit_edge

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end21:                                         ; preds = %if.end17
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %peer_id, ptr noundef nonnull dereferenceable(16) %call.i, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool24.not = icmp eq i32 %bcmp, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end26:                                         ; preds = %if.end21
  %random = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %random to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %random, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26) to i32))
  %12 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 8
  %hash_mix.i.i = getelementptr i8, ptr %.pn60, i32 268
  %13 = ptrtoint ptr %hash_mix.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_mix.i.i, align 8
  %xor.i = xor i32 %12, %11
  %xor2.i = xor i32 %xor.i, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %xor2.i, i32 %hash_mixes)
  %tobool28.not = icmp eq i32 %xor2.i, %hash_mixes
  br i1 %tobool28.not, label %if.end30, label %if.end26.for.inc_crit_edge

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %peer_net to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tmp.061, ptr %peer_net, align 4
  %peer_hash_mix = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 28
  %16 = ptrtoint ptr %peer_hash_mix to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %hash_mixes, ptr %peer_hash_mix, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end26.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %if.end17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %.pn60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load volatile ptr, ptr %.pn60, align 4
  %cmp.not = icmp eq ptr %.pn, @net_namespace_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end30, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_update_caps(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_bcast_toggle_rcast(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_nodeid2string(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_crypto_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_node_timeout(ptr noundef %t) #0 align 64 {
entry:
  %xmitq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -844
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %xmitq) #14
  %0 = getelementptr inbounds i8, ptr %xmitq, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %link_cnt = getelementptr i8, ptr %t, i32 -88
  %2 = ptrtoint ptr %link_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_cnt, align 4
  tail call fastcc void @trace_tipc_node_timeout(ptr noundef %add.ptr)
  %active_links.i = getelementptr i8, ptr %t, i32 -780
  %4 = ptrtoint ptr %active_links.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i47.not = icmp eq i32 %5, -1
  br i1 %cmp.i47.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %net.i = getelementptr i8, ptr %t, i32 -792
  %6 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %8 = load i32, ptr @tipc_net_id, align 4
  %call.i67.i = tail call fastcc ptr @net_generic(ptr noundef %7, i32 noundef %8) #14
  %node_list_lock.i = getelementptr inbounds %struct.tipc_net, ptr %call.i67.i, i32 0, i32 8
  %call.i.i = tail call i32 @_raw_spin_trylock_bh(ptr noundef %node_list_lock.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.end_crit_edge, label %if.end.i48

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i48:                                       ; preds = %land.lhs.true
  %lock.i.i = getelementptr i8, ptr %t, i32 -836
  tail call void @_raw_write_lock_bh(ptr noundef %lock.i.i) #14
  %9 = ptrtoint ptr %active_links.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %active_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %if.end.i48.tipc_node_cleanup.exit_crit_edge

if.end.i48.tipc_node_cleanup.exit_crit_edge:      ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_cleanup.exit

land.lhs.true.i:                                  ; preds = %if.end.i48
  %delete_at.i = getelementptr i8, ptr %t, i32 56
  %11 = ptrtoint ptr %delete_at.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delete_at.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i49 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i49, label %if.then3.i, label %land.lhs.true.i.tipc_node_cleanup.exit_crit_edge

land.lhs.true.i.tipc_node_cleanup.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_cleanup.exit

if.then3.i:                                       ; preds = %land.lhs.true.i
  %arrayidx.i.i = getelementptr i8, ptr %t, i32 -772
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.then3.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then3.i.if.end.i.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %15) #14
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx.i.i, align 4
  %17 = ptrtoint ptr %link_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %link_cnt, align 4
  %dec.i.i = add i32 %18, -1
  store i32 %dec.i.i, ptr %link_cnt, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then3.i.if.end.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr i8, ptr %t, i32 -628
  %19 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.1.i.i, label %if.end.i.i.if.end.1.i.i_crit_edge, label %if.then.1.i.i

if.end.i.i.if.end.1.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.1.i.i

if.then.1.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %20) #14
  %21 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx.1.i.i, align 4
  %22 = ptrtoint ptr %link_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %link_cnt, align 4
  %dec.1.i.i = add i32 %23, -1
  store i32 %dec.1.i.i, ptr %link_cnt, align 4
  br label %if.end.1.i.i

if.end.1.i.i:                                     ; preds = %if.then.1.i.i, %if.end.i.i.if.end.1.i.i_crit_edge
  %arrayidx.2.i.i = getelementptr i8, ptr %t, i32 -484
  %24 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.2.i.i, align 4
  %tobool.not.2.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.2.i.i, label %if.end.1.i.i.tipc_node_clear_links.exit.i_crit_edge, label %if.then.2.i.i

if.end.1.i.i.tipc_node_clear_links.exit.i_crit_edge: ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_clear_links.exit.i

if.then.2.i.i:                                    ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %25) #14
  %26 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx.2.i.i, align 4
  %27 = ptrtoint ptr %link_cnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link_cnt, align 4
  %dec.2.i.i = add i32 %28, -1
  store i32 %dec.2.i.i, ptr %link_cnt, align 4
  br label %tipc_node_clear_links.exit.i

tipc_node_clear_links.exit.i:                     ; preds = %if.then.2.i.i, %if.end.1.i.i.tipc_node_clear_links.exit.i_crit_edge
  tail call fastcc void @tipc_node_delete_from_list(ptr noundef %add.ptr) #14
  tail call fastcc void @tipc_node_write_unlock(ptr noundef %add.ptr) #14
  %capabilities.i = getelementptr inbounds %struct.tipc_net, ptr %call.i67.i, i32 0, i32 24
  %29 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 4095, ptr %capabilities.i, align 4
  %call10.i = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %tipc_node_clear_links.exit.i.do.end.i_crit_edge

tipc_node_clear_links.exit.i.do.end.i_crit_edge:  ; preds = %tipc_node_clear_links.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true12.i:                                ; preds = %tipc_node_clear_links.exit.i
  %call13.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true12.i.do.end.i_crit_edge, label %land.lhs.true15.i

land.lhs.true12.i.do.end.i_crit_edge:             ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true15.i:                                ; preds = %land.lhs.true12.i
  %.b66.i = load i1, ptr @tipc_node_cleanup.__warned, align 1
  br i1 %.b66.i, label %land.lhs.true15.i.do.end.i_crit_edge, label %if.then17.i

land.lhs.true15.i.do.end.i_crit_edge:             ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then17.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_node_cleanup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 773, ptr noundef nonnull @.str.1) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then17.i, %land.lhs.true15.i.do.end.i_crit_edge, %land.lhs.true12.i.do.end.i_crit_edge, %tipc_node_clear_links.exit.i.do.end.i_crit_edge
  %node_list.i = getelementptr inbounds %struct.tipc_net, ptr %call.i67.i, i32 0, i32 10
  %30 = ptrtoint ptr %node_list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn68.i = load volatile ptr, ptr %node_list.i, align 4
  %cmp24.not69.i = icmp eq ptr %.pn68.i, %node_list.i
  br i1 %cmp24.not69.i, label %do.end.i.if.then_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.then_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn70.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn68.i, %do.end.i.for.body.i_crit_edge ]
  %capabilities25.i = getelementptr i8, ptr %.pn70.i, i32 22
  %31 = ptrtoint ptr %capabilities25.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %capabilities25.i, align 2
  %33 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %capabilities.i, align 4
  %and65.i = and i16 %34, %32
  store i16 %and65.i, ptr %capabilities.i, align 4
  %35 = ptrtoint ptr %.pn70.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i = load volatile ptr, ptr %.pn70.i, align 4
  %cmp24.not.i = icmp eq ptr %.pn.i, %node_list.i
  br i1 %cmp24.not.i, label %for.body.i.if.then_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.if.then_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

tipc_node_cleanup.exit:                           ; preds = %land.lhs.true.i.tipc_node_cleanup.exit_crit_edge, %if.end.i48.tipc_node_cleanup.exit_crit_edge
  tail call fastcc void @tipc_node_write_unlock(ptr noundef %add.ptr) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %node_list_lock.i) #14
  br label %if.end

if.then:                                          ; preds = %for.body.i.if.then_crit_edge, %do.end.i.if.then_crit_edge
  %36 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net.i, align 4
  %38 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %capabilities.i, align 4
  %40 = and i16 %39, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool42.i = icmp ne i16 %40, 0
  tail call void @tipc_bcast_toggle_rcast(ptr noundef %37, i1 noundef zeroext %tobool42.i) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %node_list_lock.i) #14
  %kref.i = getelementptr i8, ptr %t, i32 -840
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i51, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i51:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr i8, ptr %t, i32 -340
  %42 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bc_entry.i.i.i, align 4
  tail call void @kfree(ptr noundef %43) #14
  %rcu.i.i.i = getelementptr i8, ptr %t, i32 48
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %cleanup

if.end:                                           ; preds = %tipc_node_cleanup.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %crypto_rx = getelementptr i8, ptr %t, i32 68
  %44 = ptrtoint ptr %crypto_rx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %crypto_rx, align 4
  tail call void @tipc_crypto_timeout(ptr noundef %45) #14
  %46 = ptrtoint ptr %xmitq to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %xmitq, ptr %xmitq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %xmitq, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %xmitq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %48 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %qlen.i, align 4
  %lock.i = getelementptr i8, ptr %t, i32 -836
  call void @_raw_read_lock_bh(ptr noundef %lock.i) #14
  %keepalive_intv = getelementptr i8, ptr %t, i32 -4
  %49 = ptrtoint ptr %keepalive_intv to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 10000, ptr %keepalive_intv, align 4
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not61.not = icmp eq i32 %3, 0
  br i1 %tobool.not61.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %links = getelementptr i8, ptr %t, i32 -772
  %net = getelementptr i8, ptr %t, i32 -792
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rc.065 = phi i32 [ 0, %for.body.lr.ph ], [ %rc.1, %for.inc.for.body_crit_edge ]
  %bearer_id.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %remains.062 = phi i32 [ %3, %for.body.lr.ph ], [ %remains.1, %for.inc.for.body_crit_edge ]
  call void @_raw_read_lock_bh(ptr noundef %lock.i) #14
  %arrayidx = getelementptr [3 x %struct.tipc_link_entry], ptr %links, i32 0, i32 %bearer_id.063
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %51, null
  br i1 %tobool2.not, label %for.body.if.end8_crit_edge, label %if.then3

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then3:                                         ; preds = %for.body
  %lock = getelementptr inbounds %struct.tipc_link_entry, ptr %arrayidx, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 4
  %call.i = call i32 @tipc_link_tolerance(ptr noundef %53) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2003, i32 %call.i)
  %cmp.i54 = icmp ugt i32 %call.i, 2003
  %div12.i = lshr i32 %call.i, 2
  %spec.select.i = select i1 %cmp.i54, i32 500, i32 %div12.i
  %54 = ptrtoint ptr %keepalive_intv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %keepalive_intv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %55)
  %cmp2.i = icmp ult i32 %spec.select.i, %55
  br i1 %cmp2.i, label %if.then.i55, label %if.then3.tipc_node_calculate_timer.exit_crit_edge

if.then3.tipc_node_calculate_timer.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_calculate_timer.exit

if.then.i55:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %keepalive_intv to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %spec.select.i, ptr %keepalive_intv, align 4
  br label %tipc_node_calculate_timer.exit

tipc_node_calculate_timer.exit:                   ; preds = %if.then.i55, %if.then3.tipc_node_calculate_timer.exit_crit_edge
  %57 = ptrtoint ptr %keepalive_intv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %keepalive_intv, align 4
  %div5.i = udiv i32 %call.i, %58
  call void @tipc_link_set_abort_limit(ptr noundef %53, i32 noundef %div5.i) #14
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx, align 4
  %call6 = call i32 @tipc_link_timeout(ptr noundef %60, ptr noundef nonnull %xmitq) #14
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  %dec = add i32 %remains.062, -1
  br label %if.end8

if.end8:                                          ; preds = %tipc_node_calculate_timer.exit, %for.body.if.end8_crit_edge
  %remains.1 = phi i32 [ %dec, %tipc_node_calculate_timer.exit ], [ %remains.062, %for.body.if.end8_crit_edge ]
  %rc.1 = phi i32 [ %call6, %tipc_node_calculate_timer.exit ], [ %rc.065, %for.body.if.end8_crit_edge ]
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  %61 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %net, align 4
  %maddr = getelementptr inbounds %struct.tipc_link_entry, ptr %arrayidx, i32 0, i32 4
  call void @tipc_bearer_xmit(ptr noundef %62, i32 noundef %bearer_id.063, ptr noundef nonnull %xmitq, ptr noundef %maddr, ptr noundef %add.ptr) #14
  %and = and i32 %rc.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.for.inc_crit_edge, label %if.then10

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @tipc_node_link_down(ptr noundef %add.ptr, i32 noundef %bearer_id.063, i1 noundef zeroext false)
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end8.for.inc_crit_edge
  %inc = add nuw nsw i32 %bearer_id.063, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remains.1)
  %tobool.not = icmp ne i32 %remains.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bearer_id.063)
  %cmp = icmp ult i32 %bearer_id.063, 2
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %64 = ptrtoint ptr %keepalive_intv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %keepalive_intv, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %65) #14
  %add = add i32 %call2.i, %63
  %call14 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.i.i51, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %xmitq) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_node_create(ptr noundef %n) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_create, i32 0, i32 1), ptr blockaddress(@trace_tipc_node_create, %do.body)) #14
          to label %if.end49 [label %do.body], !srcloc !250

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !241

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !251
  %call43 = tail call i32 @__traceiter_tipc_node_create(ptr noundef null, ptr noundef %n, i1 noundef zeroext true, ptr noundef nonnull @.str.15) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !252
  %13 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !241

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_create, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_create, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_node_create.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_tipc_node_create.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 354, ptr noundef nonnull @.str.41) #14
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !254
  %31 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
define dso_local void @tipc_node_stop(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #14
  %node_list_lock = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %node_list_lock) #14
  %node_list = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 10
  %1 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %node_list, align 4
  %cmp.not20 = icmp eq ptr %2, %node_list
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in21 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %node.0 = getelementptr i8, ptr %.pn.in21, i32 -740
  %3 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in21, align 4
  tail call fastcc void @tipc_node_delete(ptr noundef %node.0)
  %cmp.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %node_list_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_node_delete(ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_tipc_node_delete(ptr noundef %node)
  tail call fastcc void @tipc_node_delete_from_list(ptr noundef %node)
  %timer = getelementptr inbounds %struct.tipc_node, ptr %node, i32 0, i32 24
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #14
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %node, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.tipc_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.tipc_node_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %tipc_node_put.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %node, i32 0, i32 7
  %1 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bc_entry.i.i.i, align 4
  tail call void @kfree(ptr noundef %2) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %node, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %tipc_node_put.exit

tipc_node_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.tipc_node_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_node_subscribe(ptr noundef %net, ptr noundef %subscr, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #14
  %node_addr.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %addr)
  %cmp.i = icmp ne i32 %2, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %tobool.not.i = icmp ne i32 %addr, 0
  %tobool.not = and i1 %tobool.not.i, %cmp.i
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %addr)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %addr) #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.tipc_node, ptr %call1, i32 0, i32 2
  tail call void @_raw_write_lock_bh(ptr noundef %lock.i) #14
  %publ_list = getelementptr inbounds %struct.tipc_node, ptr %call1, i32 0, i32 21
  %prev.i = getelementptr inbounds %struct.tipc_node, ptr %call1, i32 0, i32 21, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %subscr, ptr noundef %4, ptr noundef %publ_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add_tail.exit_crit_edge

if.end5.list_add_tail.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %subscr, ptr %prev.i, align 4
  %6 = ptrtoint ptr %subscr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %publ_list, ptr %subscr, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %subscr, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %subscr, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end5.list_add_tail.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %lock.i) #14
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call1, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i:                                      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %call1, i32 0, i32 7
  %10 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bc_entry.i.i.i, align 4
  tail call void @kfree(ptr noundef %11) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call1, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_node_unsubscribe(ptr noundef %net, ptr noundef %subscr, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #14
  %node_addr.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %addr)
  %cmp.i = icmp ne i32 %2, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %tobool.not.i = icmp ne i32 %addr, 0
  %tobool.not = and i1 %tobool.not.i, %cmp.i
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %addr)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %addr) #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.tipc_node, ptr %call1, i32 0, i32 2
  tail call void @_raw_write_lock_bh(ptr noundef %lock.i) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %subscr) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_del_init.exit_crit_edge

if.end5.list_del_init.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %subscr, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %subscr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subscr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end5.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %subscr to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %subscr, ptr %subscr, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %subscr, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %subscr, ptr %prev.i3.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %lock.i) #14
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call1, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %call1, i32 0, i32 7
  %12 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bc_entry.i.i.i, align 4
  tail call void @kfree(ptr noundef %13) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call1, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_node_add_conn(ptr noundef %net, i32 noundef %dnode, i32 noundef %port, i32 noundef %peer_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #14
  %node_addr.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %dnode)
  %cmp.i = icmp ne i32 %2, %dnode
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dnode)
  %tobool.not.i = icmp ne i32 %dnode, 0
  %tobool.not = and i1 %tobool.not.i, %cmp.i
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %dnode)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %dnode) #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2592, i32 noundef 20) #17
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %if.end5.exit_crit_edge, label %if.end9

if.end5.exit_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end9:                                          ; preds = %if.end5
  %peer_node = getelementptr inbounds %struct.tipc_sock_conn, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %peer_node to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dnode, ptr %peer_node, align 8
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %port, ptr %call7.i, align 8
  %peer_port11 = getelementptr inbounds %struct.tipc_sock_conn, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %peer_port11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %peer_port, ptr %peer_port11, align 4
  %lock.i = getelementptr inbounds %struct.tipc_node, ptr %call1, i32 0, i32 2
  tail call void @_raw_write_lock_bh(ptr noundef %lock.i) #14
  %list = getelementptr inbounds %struct.tipc_sock_conn, ptr %call7.i, i32 0, i32 3
  %conn_sks = getelementptr inbounds %struct.tipc_node, ptr %call1, i32 0, i32 22
  %prev.i = getelementptr inbounds %struct.tipc_node, ptr %call1, i32 0, i32 22, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %8, ptr noundef %conn_sks) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.list_add_tail.exit_crit_edge

if.end9.list_add_tail.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %conn_sks, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.tipc_sock_conn, ptr %call7.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 8
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end9.list_add_tail.exit_crit_edge
  tail call fastcc void @tipc_node_write_unlock(ptr noundef nonnull %call1)
  br label %exit

exit:                                             ; preds = %list_add_tail.exit, %if.end5.exit_crit_edge
  %err.0 = phi i32 [ 0, %list_add_tail.exit ], [ -113, %if.end5.exit_crit_edge ]
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call1, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i:                                      ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %call1, i32 0, i32 7
  %14 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bc_entry.i.i.i, align 4
  tail call void @kfree(ptr noundef %15) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call1, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -113, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %err.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i ], [ %err.0, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_node_write_unlock(ptr noundef %n) unnamed_addr #0 align 64 {
entry:
  %sk = alloca %struct.tipc_socket_addr, align 4
  %ua = alloca %struct.tipc_uaddr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sk) #14
  %net1 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 3
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %action_flags = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 8
  %2 = ptrtoint ptr %action_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %action_flags, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ua) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %lock = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 2
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3, i32 0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3
  %7 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 2
  %8 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 1
  %9 = getelementptr inbounds %struct.tipc_socket_addr, ptr %sk, i32 0, i32 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  %12 = ptrtoint ptr %ua to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 30, ptr %ua, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %8, align 2
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %7, align 1
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %6, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %11, ptr %5, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %11, ptr %4, align 4
  %link_id = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 18
  %18 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %link_id, align 4
  %20 = ptrtoint ptr %sk to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %21 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %21) #14
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node_addr.i, align 4
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %9, align 4
  %25 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n, align 4
  %27 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link_id, align 4
  %and = and i32 %28, 65535
  %29 = ptrtoint ptr %action_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %action_flags, align 4
  %and11 = and i32 %30, -217
  store i32 %and11, ptr %action_flags, align 4
  %lock12 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 2
  tail call void @_raw_write_unlock_bh(ptr noundef %lock12) #14
  %and13 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end.if.end16_crit_edge, label %if.then15

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %publ_list9 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 21
  %capabilities = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 16
  %31 = ptrtoint ptr %capabilities to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %capabilities, align 2
  tail call void @tipc_publ_notify(ptr noundef %1, ptr noundef %publ_list9, i32 noundef %26, i16 noundef zeroext %32) #14
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end.if.end16_crit_edge
  %and17 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end21_crit_edge, label %if.then19

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %capabilities20 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 16
  %33 = ptrtoint ptr %capabilities20 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %capabilities20, align 2
  tail call void @tipc_named_node_up(ptr noundef %1, i32 noundef %26, i16 noundef zeroext %34) #14
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16.if.end21_crit_edge
  %and22 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end27_crit_edge, label %if.then24

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @tipc_mon_peer_up(ptr noundef %1, i32 noundef %26, i32 noundef %and) #14
  %35 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sk, align 4
  %call26 = call ptr @tipc_nametbl_publish(ptr noundef %1, ptr noundef nonnull %ua, ptr noundef nonnull %sk, i32 noundef %36) #14
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  %and28 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.then30

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  call void @tipc_mon_peer_down(ptr noundef %1, i32 noundef %26, i32 noundef %and) #14
  %37 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sk, align 4
  call void @tipc_nametbl_withdraw(ptr noundef %1, ptr noundef nonnull %ua, ptr noundef nonnull %sk, i32 noundef %38) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end27.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ua) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sk) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_node_remove_conn(ptr noundef %net, i32 noundef %dnode, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #14
  %node_addr.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %dnode)
  %cmp.i = icmp ne i32 %2, %dnode
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dnode)
  %tobool.not.i = icmp ne i32 %dnode, 0
  %tobool.not = and i1 %tobool.not.i, %cmp.i
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %dnode)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.tipc_node, ptr %call1, i32 0, i32 2
  tail call void @_raw_write_lock_bh(ptr noundef %lock.i) #14
  %conn_sks = getelementptr inbounds %struct.tipc_node, ptr %call1, i32 0, i32 22
  %3 = ptrtoint ptr %conn_sks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %conn_sks, align 4
  %cmp.not38 = icmp eq ptr %4, %conn_sks
  br i1 %cmp.not38, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %.pn.in39 = phi ptr [ %.pn42, %for.inc.for.body_crit_edge ], [ %4, %if.end4.for.body_crit_edge ]
  %conn.041 = getelementptr i8, ptr %.pn.in39, i32 -12
  %5 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn42 = load ptr, ptr %.pn.in39, align 4
  %6 = ptrtoint ptr %conn.041 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conn.041, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %port)
  %cmp12.not = icmp eq i32 %7, %port
  br i1 %cmp12.not, label %if.end14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in39) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_del.exit_crit_edge

if.end14.list_del.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in39, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in39, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end14.list_del.exit_crit_edge
  %14 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in39, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in39, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %conn.041) #14
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn42, %conn_sks
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end4.for.end_crit_edge
  tail call fastcc void @tipc_node_write_unlock(ptr noundef nonnull %call1)
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call1, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %call1, i32 0, i32 7
  %17 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bc_entry.i.i.i, align 4
  tail call void @kfree(ptr noundef %18) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call1, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_node_is_up(ptr noundef %net, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #14
  %node_addr.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %addr)
  %cmp.i = icmp ne i32 %2, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %tobool.not.i = icmp ne i32 %addr, 0
  %tobool.not = and i1 %tobool.not.i, %cmp.i
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %addr)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %active_links.i = getelementptr inbounds %struct.tipc_node, ptr %call2, i32 0, i32 5
  %3 = ptrtoint ptr %active_links.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %active_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.i13 = icmp ne i32 %4, -1
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call2, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %call2, i32 0, i32 7
  %6 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bc_entry.i.i.i, align 4
  tail call void @kfree(ptr noundef %7) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call2, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ %cmp.i13, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %cmp.i13, %if.then10.i.i.i.i.i ], [ %cmp.i13, %if.then.i.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_node_try_addr(ptr noundef %net, ptr nocapture noundef readonly %id, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #14
  %call1 = tail call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %addr)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %peer_id = getelementptr inbounds %struct.tipc_node, ptr %call1, i32 0, i32 19
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %peer_id, ptr noundef dereferenceable(16) %id, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool3.not = icmp eq i32 %bcmp, 0
  %spec.select = select i1 %tobool3.not, i32 0, i32 %addr
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call1, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.tipc_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.tipc_node_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %tipc_node_put.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %call1, i32 0, i32 7
  %2 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_entry.i.i.i, align 4
  tail call void @kfree(ptr noundef %3) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call1, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %tipc_node_put.exit

tipc_node_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.tipc_node_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool5.not = icmp eq i32 %spec.select, 0
  br i1 %tobool5.not, label %tipc_node_put.exit.cleanup_crit_edge, label %tipc_node_put.exit.cleanup.sink.split_crit_edge

tipc_node_put.exit.cleanup.sink.split_crit_edge:  ; preds = %tipc_node_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

tipc_node_put.exit.cleanup_crit_edge:             ; preds = %tipc_node_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call10 = tail call fastcc ptr @tipc_node_find_by_id(ptr noundef %net, ptr noundef %id)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.if.end19_crit_edge, label %if.then12

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then12:                                        ; preds = %if.end9
  %4 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call10, align 4
  %preliminary14 = getelementptr inbounds %struct.tipc_node, ptr %call10, i32 0, i32 11
  %6 = ptrtoint ptr %preliminary14 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %preliminary14, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool15.not = icmp eq i8 %7, 0
  %kref.i41 = getelementptr inbounds %struct.tipc_node, ptr %call10, i32 0, i32 1
  %call.i.i.i.i.i.i.i42 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i41, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i41, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i41, ptr %kref.i41, i32 1, ptr elementtype(i32) %kref.i41) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i43 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i43)
  %cmp.i.i.i.i.i44 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i43, 1
  br i1 %cmp.i.i.i.i.i44, label %if.then.i.i50, label %if.end5.i.i.i.i.i46

if.end5.i.i.i.i.i46:                              ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i43)
  %.not.i.i.i.i.i45 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i43, 0
  br i1 %.not.i.i.i.i.i45, label %if.end5.i.i.i.i.i46.tipc_node_put.exit51_crit_edge, label %if.then10.i.i.i.i.i47, !prof !241

if.end5.i.i.i.i.i46.tipc_node_put.exit51_crit_edge: ; preds = %if.end5.i.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_put.exit51

if.then10.i.i.i.i.i47:                            ; preds = %if.end5.i.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i41, i32 noundef 3) #14
  br label %tipc_node_put.exit51

if.then.i.i50:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i48 = getelementptr %struct.tipc_node, ptr %call10, i32 0, i32 7
  %9 = ptrtoint ptr %bc_entry.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bc_entry.i.i.i48, align 4
  tail call void @kfree(ptr noundef %10) #14
  %rcu.i.i.i49 = getelementptr %struct.tipc_node, ptr %call10, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i.i49, ptr noundef nonnull @tipc_node_free) #14
  br label %tipc_node_put.exit51

tipc_node_put.exit51:                             ; preds = %if.then.i.i50, %if.then10.i.i.i.i.i47, %if.end5.i.i.i.i.i46.tipc_node_put.exit51_crit_edge
  br i1 %tobool15.not, label %tipc_node_put.exit51.cleanup_crit_edge, label %tipc_node_put.exit51.if.end19_crit_edge

tipc_node_put.exit51.if.end19_crit_edge:          ; preds = %tipc_node_put.exit51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

tipc_node_put.exit51.cleanup_crit_edge:           ; preds = %tipc_node_put.exit51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %tipc_node_put.exit51.if.end19_crit_edge, %if.end9.if.end19_crit_edge
  %trial_addr = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %trial_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %trial_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %addr)
  %cmp = icmp eq i32 %12, %addr
  br i1 %cmp, label %if.end19.cleanup.sink.split_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19.cleanup.sink.split_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end19.cleanup.sink.split_crit_edge, %tipc_node_put.exit.cleanup.sink.split_crit_edge
  %addr.sink = phi i32 [ %spec.select, %tipc_node_put.exit.cleanup.sink.split_crit_edge ], [ %addr, %if.end19.cleanup.sink.split_crit_edge ]
  %call21 = tail call fastcc i32 @tipc_node_suggest_addr(ptr noundef %net, i32 noundef %addr.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end19.cleanup_crit_edge, %tipc_node_put.exit51.cleanup_crit_edge, %tipc_node_put.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tipc_node_put.exit.cleanup_crit_edge ], [ %5, %tipc_node_put.exit51.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ %call21, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_node_suggest_addr(ptr noundef %net, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #14
  %random = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %random to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %random, align 4
  %xor = xor i32 %2, %addr
  %call16 = tail call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %xor)
  %tobool.not7 = icmp eq ptr %call16, null
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %tipc_node_put.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %call19 = phi ptr [ %call1, %tipc_node_put.exit.while.body_crit_edge ], [ %call16, %entry.while.body_crit_edge ]
  %addr.addr.08 = phi i32 [ %inc, %tipc_node_put.exit.while.body_crit_edge ], [ %xor, %entry.while.body_crit_edge ]
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call19, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.tipc_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.tipc_node_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %tipc_node_put.exit

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %call19, i32 0, i32 7
  %4 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bc_entry.i.i.i, align 4
  tail call void @kfree(ptr noundef %5) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call19, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %tipc_node_put.exit

tipc_node_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.tipc_node_put.exit_crit_edge
  %inc = add i32 %addr.addr.08, 1
  %call1 = tail call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %inc)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %tipc_node_put.exit.while.end_crit_edge, label %tipc_node_put.exit.while.body_crit_edge

tipc_node_put.exit.while.body_crit_edge:          ; preds = %tipc_node_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

tipc_node_put.exit.while.end_crit_edge:           ; preds = %tipc_node_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %tipc_node_put.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %addr.addr.0.lcssa = phi i32 [ %xor, %entry.while.end_crit_edge ], [ %inc, %tipc_node_put.exit.while.end_crit_edge ]
  ret i32 %addr.addr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_node_check_dest(ptr noundef %net, i32 noundef %addr, ptr noundef %peer_id, ptr noundef %b, i16 noundef zeroext %capabilities, i32 noundef %signature, i32 noundef %hash_mixes, ptr nocapture noundef readonly %maddr, ptr nocapture noundef writeonly %respond, ptr nocapture noundef writeonly %dupl_addr) local_unnamed_addr #0 align 64 {
entry:
  %l = alloca ptr, align 4
  %session = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %session) #14
  %0 = ptrtoint ptr %session to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %session, align 2, !annotation !255
  %1 = ptrtoint ptr %dupl_addr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %dupl_addr, align 1
  %2 = ptrtoint ptr %respond to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %respond, align 1
  %call = tail call ptr @tipc_node_create(ptr noundef %net, i32 noundef %addr, ptr noundef %peer_id, i16 noundef zeroext %capabilities, i32 noundef %hash_mixes, i1 noundef zeroext false)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 2
  tail call void @_raw_write_lock_bh(ptr noundef %lock.i) #14
  %bc_entry = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %bc_entry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bc_entry, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.then5, label %if.end.if.end19_crit_edge, !prof !238

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then5:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %5 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %5) #14
  %bcl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 18
  %6 = ptrtoint ptr %bcl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bcl.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %8 = load i32, ptr @tipc_net_id, align 4
  %call.i.i276 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %8) #14
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i276, i32 0, i32 1
  %9 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %node_addr.i, align 4
  %call8 = tail call i32 @tipc_link_min_win(ptr noundef %7) #14
  %call9 = tail call i32 @tipc_link_max_win(ptr noundef %7) #14
  %capabilities10 = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 16
  %11 = ptrtoint ptr %capabilities10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %capabilities10, align 2
  %inputq1 = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 7, i32 1
  %namedq = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 7, i32 4
  %call15 = tail call zeroext i1 @tipc_link_bc_create(ptr noundef %net, i32 noundef %10, i32 noundef %addr, ptr noundef %peer_id, i32 noundef 65535, i32 noundef %call8, i32 noundef %call9, i16 noundef zeroext %12, ptr noundef %inputq1, ptr noundef %namedq, ptr noundef %7, ptr noundef %bc_entry) #14
  br i1 %call15, label %if.then5.if.end19_crit_edge, label %do.end

if.then5.if.end19_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #18
  tail call void @_raw_write_unlock_bh(ptr noundef %lock.i) #14
  tail call void @tipc_node_put(ptr noundef nonnull %call)
  br label %cleanup

if.end19:                                         ; preds = %if.then5.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %identity = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 13
  %13 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %identity, align 4
  %arrayidx = getelementptr %struct.tipc_node, ptr %call, i32 0, i32 6, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %l, align 4
  %tobool21.not = icmp eq ptr %16, null
  br i1 %tobool21.not, label %if.end19.land.end30_crit_edge, label %land.end

if.end19.land.end30_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end30

land.end:                                         ; preds = %if.end19
  %call22 = tail call zeroext i1 @tipc_link_is_up(ptr noundef nonnull %16) #14
  %18 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load ptr, ptr %l, align 4
  %tobool23.not = icmp eq ptr %.pr, null
  br i1 %tobool23.not, label %land.end.land.end30_crit_edge, label %land.rhs24

land.end.land.end30_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end30

land.rhs24:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  %maddr25 = getelementptr %struct.tipc_node, ptr %call, i32 0, i32 6, i32 %14, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(34) %maddr25, ptr noundef dereferenceable(34) %maddr, i32 34) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool27.not = icmp eq i32 %bcmp, 0
  br label %land.end30

land.end30:                                       ; preds = %land.rhs24, %land.end.land.end30_crit_edge, %if.end19.land.end30_crit_edge
  %tobool23.not286 = phi i1 [ true, %land.end.land.end30_crit_edge ], [ false, %land.rhs24 ], [ true, %if.end19.land.end30_crit_edge ]
  %19 = phi i1 [ %call22, %land.end.land.end30_crit_edge ], [ %call22, %land.rhs24 ], [ false, %if.end19.land.end30_crit_edge ]
  %20 = phi i1 [ false, %land.end.land.end30_crit_edge ], [ %tobool27.not, %land.rhs24 ], [ false, %if.end19.land.end30_crit_edge ]
  %signature32 = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 17
  %21 = ptrtoint ptr %signature32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %signature32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %signature)
  %cmp = icmp eq i32 %22, %signature
  %cmp.not = xor i1 %cmp, true
  %.not = xor i1 %20, true
  %brmerge = select i1 %cmp.not, i1 true, i1 %.not
  %.not251 = xor i1 %19, true
  %brmerge252 = select i1 %brmerge, i1 true, i1 %.not251
  br i1 %brmerge252, label %if.else, label %if.then38

if.then38:                                        ; preds = %land.end30
  %peer_hash_mix = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 28
  %23 = ptrtoint ptr %peer_hash_mix to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %peer_hash_mix, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool39.not = icmp eq i32 %24, 0
  br i1 %tobool39.not, label %if.then40, label %if.then38.exit_crit_edge

if.then38.exit_crit_edge:                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.then40:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %peer_hash_mix to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %hash_mixes, ptr %peer_hash_mix, align 4
  br label %exit

if.else:                                          ; preds = %land.end30
  %brmerge256 = select i1 %brmerge, i1 true, i1 %19
  br i1 %brmerge256, label %if.else49, label %if.then48

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %respond to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %respond, align 1
  br label %exit.thread292

if.else49:                                        ; preds = %if.else
  %brmerge258 = select i1 %cmp.not, i1 true, i1 %20
  %brmerge260 = select i1 %brmerge258, i1 true, i1 %.not251
  br i1 %brmerge260, label %if.else56, label %if.then55

if.then55:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %dupl_addr to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %dupl_addr, align 1
  br label %exit.thread292

if.else56:                                        ; preds = %if.else49
  %brmerge263 = select i1 %brmerge258, i1 true, i1 %19
  br i1 %brmerge263, label %if.else63, label %if.else56.if.end104_crit_edge

if.else56.if.end104_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end104

if.else63:                                        ; preds = %if.else56
  %brmerge265 = select i1 %cmp, i1 true, i1 %.not
  %brmerge267 = select i1 %brmerge265, i1 true, i1 %.not251
  br i1 %brmerge267, label %if.else71, label %if.then69

if.then69:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %signature32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %signature, ptr %signature32, align 4
  br label %exit.thread292

if.else71:                                        ; preds = %if.else63
  %brmerge270 = select i1 %brmerge265, i1 true, i1 %19
  br i1 %brmerge270, label %if.else79, label %if.then77

if.then77:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %signature32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %signature, ptr %signature32, align 4
  %30 = ptrtoint ptr %respond to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %respond, align 1
  br label %exit.thread292

if.else79:                                        ; preds = %if.else71
  %brmerge271 = select i1 %cmp, i1 true, i1 %20
  %brmerge273 = select i1 %brmerge271, i1 true, i1 %.not251
  br i1 %brmerge273, label %if.else86, label %if.then85

if.then85:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %dupl_addr to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %dupl_addr, align 1
  br label %exit.thread292

if.else86:                                        ; preds = %if.else79
  %brmerge275 = select i1 %brmerge271, i1 true, i1 %19
  br i1 %brmerge275, label %if.else86.exit.thread292_crit_edge, label %if.then92

if.else86.exit.thread292_crit_edge:               ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit.thread292

if.then92:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %signature32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %signature, ptr %signature32, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then92, %if.else56.if.end104_crit_edge
  %33 = ptrtoint ptr %respond to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %respond, align 1
  br i1 %tobool23.not286, label %if.then106, label %if.end104.if.end141_crit_edge

if.end104.if.end141_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end141

if.then106:                                       ; preds = %if.end104
  %link_cnt = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 14
  %34 = ptrtoint ptr %link_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %link_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp107 = icmp eq i32 %35, 2
  br i1 %cmp107, label %if.then106.exit.thread_crit_edge, label %if.end109

if.then106.exit.thread_crit_edge:                 ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit.thread

if.end109:                                        ; preds = %if.then106
  %name = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 3
  %call110 = tail call ptr @strchr(ptr noundef %name, i32 noundef 58)
  %add.ptr = getelementptr i8, ptr %call110, i32 1
  call void @get_random_bytes(ptr noundef nonnull %session, i32 noundef 2) #14
  %36 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %identity, align 4
  %tolerance = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 11
  %38 = ptrtoint ptr %tolerance to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tolerance, align 4
  %net_plane = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 15
  %40 = ptrtoint ptr %net_plane to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %net_plane, align 4
  %mtu = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 1
  %42 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mtu, align 4
  %priority = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 8
  %44 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %priority, align 4
  %min_win = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 9
  %46 = ptrtoint ptr %min_win to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %min_win, align 4
  %max_win = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 10
  %48 = ptrtoint ptr %max_win to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_win, align 4
  %50 = ptrtoint ptr %session to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %session, align 2
  %conv = zext i16 %51 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %52 = load i32, ptr @tipc_net_id, align 4
  %call.i.i278 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %52) #14
  %node_addr.i279 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i278, i32 0, i32 1
  %53 = ptrtoint ptr %node_addr.i279 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %node_addr.i279, align 4
  %capabilities113 = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 16
  %55 = ptrtoint ptr %capabilities113 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %capabilities113, align 2
  %net114 = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 3
  %57 = ptrtoint ptr %net114 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net114, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %59 = load i32, ptr @tipc_net_id, align 4
  %call.i.i280 = call fastcc ptr @net_generic(ptr noundef %58, i32 noundef %59) #14
  %bcl.i281 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i280, i32 0, i32 18
  %60 = ptrtoint ptr %bcl.i281 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bcl.i281, align 4
  %62 = ptrtoint ptr %bc_entry to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bc_entry, align 4
  %inputq = getelementptr %struct.tipc_node, ptr %call, i32 0, i32 6, i32 %14, i32 3
  %namedq119 = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 7, i32 4
  %call120 = call zeroext i1 @tipc_link_create(ptr noundef %net, ptr noundef %add.ptr, i32 noundef %37, i32 noundef %39, i8 noundef zeroext %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %conv, i32 noundef %54, i32 noundef %addr, ptr noundef %peer_id, i16 noundef zeroext %56, ptr noundef %61, ptr noundef %63, ptr noundef %inputq, ptr noundef %namedq119, ptr noundef nonnull %l) #14
  br i1 %call120, label %if.end122, label %if.then121

if.then121:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %respond to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %respond, align 1
  br label %exit.thread

if.end122:                                        ; preds = %if.end109
  %65 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %l, align 4
  call fastcc void @trace_tipc_link_reset(ptr noundef %66, ptr noundef nonnull @.str.24)
  %67 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %l, align 4
  call void @tipc_link_reset(ptr noundef %68) #14
  %69 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %l, align 4
  %call123 = call i32 @tipc_link_fsm_evt(ptr noundef %70, i32 noundef 281681166) #14
  %state = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 10
  %71 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %72)
  %cmp124 = icmp eq i32 %72, 240
  br i1 %cmp124, label %if.then126, label %if.end122.if.end128_crit_edge

if.end122.if.end128_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128

if.then126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  %73 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %l, align 4
  %call127 = call i32 @tipc_link_fsm_evt(ptr noundef %74, i32 noundef -99546130) #14
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.end122.if.end128_crit_edge
  %75 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %l, align 4
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %arrayidx, align 4
  %78 = ptrtoint ptr %link_cnt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %link_cnt, align 4
  %inc = add i32 %79, 1
  store i32 %inc, ptr %link_cnt, align 4
  %80 = load ptr, ptr %l, align 4
  %call.i = call i32 @tipc_link_tolerance(ptr noundef %80) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2003, i32 %call.i)
  %cmp.i282 = icmp ugt i32 %call.i, 2003
  %div12.i = lshr i32 %call.i, 2
  %spec.select.i = select i1 %cmp.i282, i32 500, i32 %div12.i
  %keepalive_intv.i = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 23
  %81 = ptrtoint ptr %keepalive_intv.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %keepalive_intv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %82)
  %cmp2.i = icmp ult i32 %spec.select.i, %82
  br i1 %cmp2.i, label %if.then.i283, label %if.end128.tipc_node_calculate_timer.exit_crit_edge

if.end128.tipc_node_calculate_timer.exit_crit_edge: ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_calculate_timer.exit

if.then.i283:                                     ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #16
  %83 = ptrtoint ptr %keepalive_intv.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %spec.select.i, ptr %keepalive_intv.i, align 4
  br label %tipc_node_calculate_timer.exit

tipc_node_calculate_timer.exit:                   ; preds = %if.then.i283, %if.end128.tipc_node_calculate_timer.exit_crit_edge
  %84 = ptrtoint ptr %keepalive_intv.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %keepalive_intv.i, align 4
  %div5.i = udiv i32 %call.i, %85
  call void @tipc_link_set_abort_limit(ptr noundef %80, i32 noundef %div5.i) #14
  %86 = ptrtoint ptr %link_cnt to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %link_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp132 = icmp eq i32 %87, 1
  br i1 %cmp132, label %if.then134, label %tipc_node_calculate_timer.exit.if.end141_crit_edge

tipc_node_calculate_timer.exit.if.end141_crit_edge: ; preds = %tipc_node_calculate_timer.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end141

if.then134:                                       ; preds = %tipc_node_calculate_timer.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %89 = ptrtoint ptr %keepalive_intv.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %keepalive_intv.i, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %90) #14
  %add = add i32 %call2.i, %88
  %timer = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 24
  %call136 = call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.then138, label %if.then134.if.end141_crit_edge

if.then134.if.end141_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end141

if.then138:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #16
  call void @tipc_node_get(ptr noundef nonnull %call)
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.then134.if.end141_crit_edge, %tipc_node_calculate_timer.exit.if.end141_crit_edge, %if.end104.if.end141_crit_edge
  %maddr142 = getelementptr %struct.tipc_node, ptr %call, i32 0, i32 6, i32 %14, i32 4
  %91 = call ptr @memcpy(ptr %maddr142, ptr %maddr, i32 34)
  br label %exit.thread

exit.thread:                                      ; preds = %if.end141, %if.then121, %if.then106.exit.thread_crit_edge
  call fastcc void @tipc_node_write_unlock(ptr noundef nonnull %call)
  br label %land.lhs.true145

exit.thread292:                                   ; preds = %if.else86.exit.thread292_crit_edge, %if.then85, %if.then77, %if.then69, %if.then55, %if.then48
  tail call fastcc void @tipc_node_write_unlock(ptr noundef nonnull %call)
  br label %land.lhs.true145

exit:                                             ; preds = %if.then40, %if.then38.exit_crit_edge
  tail call fastcc void @tipc_node_write_unlock(ptr noundef nonnull %call)
  br label %if.end151

land.lhs.true145:                                 ; preds = %exit.thread292, %exit.thread
  %92 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %l, align 4
  %tobool146.not = icmp eq ptr %93, null
  br i1 %tobool146.not, label %land.lhs.true145.if.end151_crit_edge, label %land.lhs.true147

land.lhs.true145.if.end151_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end151

land.lhs.true147:                                 ; preds = %land.lhs.true145
  %call148 = call zeroext i1 @tipc_link_is_reset(ptr noundef nonnull %93) #14
  br i1 %call148, label %land.lhs.true147.if.end151_crit_edge, label %if.then149

land.lhs.true147.if.end151_crit_edge:             ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end151

if.then149:                                       ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %identity, align 4
  call fastcc void @tipc_node_link_down(ptr noundef nonnull %call, i32 noundef %95, i1 noundef zeroext false)
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %land.lhs.true147.if.end151_crit_edge, %land.lhs.true145.if.end151_crit_edge, %exit
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %97 = ptrtoint ptr %bc_entry to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bc_entry, align 4
  call void @kfree(ptr noundef %98) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call, i32 0, i32 25
  call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %session) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_link_bc_create(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_min_win(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_max_win(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_link_is_up(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_link_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_link_reset(ptr noundef %l, ptr noundef %header) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_reset, i32 0, i32 1), ptr blockaddress(@trace_tipc_link_reset, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !250

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !241

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !256
  %call42 = tail call i32 @__traceiter_tipc_link_reset(ptr noundef null, ptr noundef %l, i16 noundef zeroext -1, ptr noundef %header) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !257
  %13 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !241

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_reset, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_reset, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_link_reset.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_tipc_link_reset.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 273, ptr noundef nonnull @.str.41) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !254
  %31 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
declare dso_local void @tipc_link_reset(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_fsm_evt(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_link_is_reset(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_node_link_down(ptr noundef %n, i32 noundef %bearer_id, i1 noundef zeroext %delete) unnamed_addr #0 align 64 {
entry:
  %bearer_id.addr = alloca i32, align 4
  %maddr = alloca ptr, align 4
  %xmitq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bearer_id.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %bearer_id, ptr %bearer_id.addr, align 4
  %arrayidx = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 %bearer_id
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maddr) #14
  %1 = ptrtoint ptr %maddr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %maddr, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %xmitq) #14
  %4 = getelementptr inbounds i8, ptr %xmitq, i32 12
  %5 = call ptr @memset(ptr %4, i32 255, i32 44)
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
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
  %lock.i = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 2
  call void @_raw_write_lock_bh(ptr noundef %lock.i) #14
  %call = call zeroext i1 @tipc_link_is_establishing(ptr noundef nonnull %3) #14
  br i1 %call, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @__tipc_node_link_down(ptr noundef %n, ptr noundef nonnull %bearer_id.addr, ptr noundef nonnull %xmitq, ptr noundef nonnull %maddr)
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @tipc_link_reset(ptr noundef nonnull %3) #14
  %call2 = call i32 @tipc_link_fsm_evt(ptr noundef nonnull %3, i32 noundef 281681166) #14
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  br i1 %delete, label %if.then5, label %if.end10.critedge

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %3) #14
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx, align 4
  %link_cnt = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 14
  %10 = ptrtoint ptr %link_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_cnt, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %link_cnt, align 4
  call fastcc void @trace_tipc_node_link_down(ptr noundef %n, ptr noundef nonnull @.str.44)
  call fastcc void @tipc_node_write_unlock(ptr noundef %n)
  %net = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 3
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n, align 4
  call void @tipc_mon_remove_peer(ptr noundef %13, i32 noundef %15, i32 noundef %bearer_id) #14
  br label %if.end10

if.end10.critedge:                                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @trace_tipc_node_link_down(ptr noundef %n, ptr noundef nonnull @.str.44)
  call fastcc void @tipc_node_write_unlock(ptr noundef %n)
  br label %if.end10

if.end10:                                         ; preds = %if.end10.critedge, %if.then5
  %16 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xmitq, align 4
  %cmp.i.not = icmp eq ptr %17, %xmitq
  br i1 %cmp.i.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %net14 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 3
  %18 = ptrtoint ptr %net14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net14, align 4
  %20 = ptrtoint ptr %bearer_id.addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bearer_id.addr, align 4
  %22 = ptrtoint ptr %maddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %maddr, align 4
  call void @tipc_bearer_xmit(ptr noundef %19, i32 noundef %21, ptr noundef nonnull %xmitq, ptr noundef %23, ptr noundef %n) #14
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %net16 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 3
  %24 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net16, align 4
  %inputq = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 %bearer_id, i32 3
  call void @tipc_sk_rcv(ptr noundef %25, ptr noundef %inputq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %xmitq) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maddr) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_node_delete_links(ptr noundef %net, i32 noundef %bearer_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !243
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b23 = load i1, ptr @tipc_node_delete_links.__warned, align 1
  br i1 %.b23, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_node_delete_links.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1314, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %node_list = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 10
  %5 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn33 = load volatile ptr, ptr %node_list, align 4
  %cmp.not34 = icmp eq ptr %.pn33, %node_list
  br i1 %cmp.not34, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn35 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn33, %do.end.for.body_crit_edge ]
  %n.0 = getelementptr i8, ptr %.pn35, i32 -740
  tail call fastcc void @tipc_node_link_down(ptr noundef %n.0, i32 noundef %bearer_id, i1 noundef zeroext true)
  %6 = ptrtoint ptr %.pn35 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load volatile ptr, ptr %.pn35, align 4
  %cmp.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i24 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i24, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i27

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i27:                                ; preds = %for.end
  %call1.i25 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool.not.i26 = icmp eq i32 %call1.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i29

land.lhs.true.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i29:                               ; preds = %land.lhs.true.i27
  %.b4.i28 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28, label %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, label %if.then.i30

land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i30:                                      ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.61) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i30, %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !246
  %7 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i31 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i31 to ptr
  %preempt_count.i.i.i.i32 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i32, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i32, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_node_get_linkname(ptr noundef %net, i32 noundef %bearer_id, i32 noundef %addr, ptr noundef %linkname, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %addr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bearer_id)
  %cmp = icmp ugt i32 %bearer_id, 2
  br i1 %cmp, label %if.end.exit_crit_edge, label %if.end2

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end2:                                          ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 2
  tail call void @_raw_read_lock_bh(ptr noundef %lock.i) #14
  %arrayidx = getelementptr %struct.tipc_node, ptr %call, i32 0, i32 6, i32 %bearer_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end2.if.end8_crit_edge, label %if.then5

if.end2.if.end8_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call ptr @tipc_link_name(ptr noundef nonnull %1) #14
  %call7 = tail call ptr @strncpy(ptr noundef %linkname, ptr noundef %call6, i32 noundef %len)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end2.if.end8_crit_edge
  %err.0 = phi i32 [ 0, %if.then5 ], [ -22, %if.end2.if.end8_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  br label %exit

exit:                                             ; preds = %if.end8, %if.end.exit_crit_edge
  %err.1 = phi i32 [ -22, %if.end.exit_crit_edge ], [ %err.0, %if.end8 ]
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i:                                      ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bc_entry.i.i.i, align 4
  tail call void @kfree(ptr noundef %4) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %err.1, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %err.1, %if.then10.i.i.i.i.i ], [ %err.1, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_link_name(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_node_xmit(ptr noundef %net, ptr noundef %list, i32 noundef %dnode, i32 noundef %selector) local_unnamed_addr #0 align 64 {
entry:
  %inputq.i = alloca %struct.sk_buff_head, align 4
  %xmitq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %xmitq) #14
  %0 = getelementptr inbounds i8, ptr %xmitq, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %2 = load i32, ptr @tipc_net_id, align 4
  %call.i.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %2) #14
  %node_addr.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %node_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %dnode)
  %cmp.i = icmp ne i32 %4, %dnode
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dnode)
  %tobool.not.i = icmp ne i32 %dnode, 0
  %tobool.not = and i1 %tobool.not.i, %cmp.i
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %loopback_dev.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 27
  %5 = ptrtoint ptr %loopback_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %loopback_dev.i, align 4
  %call.i = tail call zeroext i1 @dev_nit_active(ptr noundef %6) #14
  br i1 %call.i, label %if.then.i, label %if.then.tipc_loopback_trace.exit_crit_edge, !prof !238

if.then.tipc_loopback_trace.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_loopback_trace.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @tipc_clone_to_loopback(ptr noundef %net, ptr noundef %list) #14
  br label %tipc_loopback_trace.exit

tipc_loopback_trace.exit:                         ; preds = %if.then.i, %if.then.tipc_loopback_trace.exit_crit_edge
  %lock = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @tipc_node_xmit.__key, i16 noundef signext 3) #14
  tail call void @tipc_sk_rcv(ptr noundef %net, ptr noundef %list) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %dnode)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then7, label %if.end8, !prof !238

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__skb_queue_purge(ptr noundef %list)
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.tipc_node, ptr %call2, i32 0, i32 2
  tail call void @_raw_read_lock_bh(ptr noundef %lock.i) #14
  %active_links.i = getelementptr inbounds %struct.tipc_node, ptr %call2, i32 0, i32 5
  %7 = ptrtoint ptr %active_links.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i90.not = icmp eq i32 %8, -1
  br i1 %cmp.i90.not, label %if.end8.if.end28_crit_edge, label %land.lhs.true

if.end8.if.end28_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end8
  %peer_net = getelementptr inbounds %struct.tipc_node, ptr %call2, i32 0, i32 27
  %9 = ptrtoint ptr %peer_net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peer_net, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %land.lhs.true.if.end28_crit_edge, label %land.lhs.true12

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.lhs.true12:                                  ; preds = %land.lhs.true
  %count.i = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 14, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #14
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i91.not = icmp eq i32 %12, 0
  br i1 %cmp.i91.not, label %land.lhs.true12.if.end28_crit_edge, label %if.then16

land.lhs.true12.if.end28_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then16:                                        ; preds = %land.lhs.true12
  %13 = ptrtoint ptr %peer_net to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %peer_net, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %16, %list
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %16
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %inputq.i) #14
  %19 = call ptr @memset(ptr %inputq.i, i32 255, i32 56)
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %18, align 4
  %shr.i.i.i = lshr i32 %21, 25
  %and.i.i.i = and i32 %shr.i.i.i, 15
  %22 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i.i, label %if.then16.tipc_lxc_xmit.exit_crit_edge [
    i32 0, label %if.then16.sw.bb.i_crit_edge
    i32 1, label %if.then16.sw.bb.i_crit_edge111
    i32 2, label %if.then16.sw.bb.i_crit_edge112
    i32 3, label %if.then16.sw.bb.i_crit_edge113
    i32 12, label %sw.bb14.i
    i32 9, label %if.then16.sw.bb18.i_crit_edge
    i32 8, label %if.then16.sw.bb18.i_crit_edge114
  ]

if.then16.sw.bb18.i_crit_edge114:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb18.i

if.then16.sw.bb18.i_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb18.i

if.then16.sw.bb.i_crit_edge113:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then16.sw.bb.i_crit_edge112:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then16.sw.bb.i_crit_edge111:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then16.sw.bb.i_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then16.tipc_lxc_xmit.exit_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_lxc_xmit.exit

sw.bb.i:                                          ; preds = %if.then16.sw.bb.i_crit_edge, %if.then16.sw.bb.i_crit_edge111, %if.then16.sw.bb.i_crit_edge112, %if.then16.sw.bb.i_crit_edge113
  %arrayidx.i.i.i.i.i = getelementptr [15 x i32], ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870911, i32 %24)
  %cmp.i50.i = icmp ugt i32 %24, 536870911
  br i1 %cmp.i50.i, label %lor.lhs.false.i, label %sw.bb.i.if.then.i92_crit_edge

sw.bb.i.if.then.i92_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i92

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %shr.i.i.mask.i.i = and i32 %24, -536870912
  %25 = zext i32 %shr.i.i.mask.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %shr.i.i.mask.i.i, label %if.end.i [
    i32 1073741824, label %lor.lhs.false.i.if.then.i92_crit_edge
    i32 1610612736, label %lor.lhs.false.i.if.then.i92_crit_edge115
  ]

lor.lhs.false.i.if.then.i92_crit_edge115:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i92

lor.lhs.false.i.if.then.i92_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i92

if.then.i92:                                      ; preds = %lor.lhs.false.i.if.then.i92_crit_edge, %lor.lhs.false.i.if.then.i92_crit_edge115, %sw.bb.i.if.then.i92_crit_edge
  %loopback_dev.i.i = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 27
  %26 = ptrtoint ptr %loopback_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %loopback_dev.i.i, align 4
  %call.i.i = tail call zeroext i1 @dev_nit_active(ptr noundef %27) #14
  br i1 %call.i.i, label %if.then.i.i, label %if.then.i92.tipc_loopback_trace.exit.i_crit_edge, !prof !238

if.then.i92.tipc_loopback_trace.exit.i_crit_edge: ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_loopback_trace.exit.i

if.then.i.i:                                      ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @tipc_clone_to_loopback(ptr noundef %14, ptr noundef %list) #14
  br label %tipc_loopback_trace.exit.i

tipc_loopback_trace.exit.i:                       ; preds = %if.then.i.i, %if.then.i92.tipc_loopback_trace.exit.i_crit_edge
  %lock.i93 = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i93, ptr noundef nonnull @.str.25, ptr noundef nonnull @tipc_lxc_xmit.__key, i16 noundef signext 3) #14
  tail call void @tipc_sk_rcv(ptr noundef %14, ptr noundef %list) #14
  br label %tipc_lxc_xmit.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %shr.i.i.i.i = lshr i32 %24, 29
  %28 = zext i32 %shr.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %shr.i.i.i.i, label %if.end.i.tipc_lxc_xmit.exit_crit_edge [
    i32 1, label %if.end.i.if.then12.i_crit_edge
    i32 5, label %if.end.i.if.then12.i_crit_edge116
    i32 6, label %if.end.i.if.then12.i_crit_edge117
  ]

if.end.i.if.then12.i_crit_edge117:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

if.end.i.if.then12.i_crit_edge116:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

if.end.i.if.then12.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

if.end.i.tipc_lxc_xmit.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_lxc_xmit.exit

if.then12.i:                                      ; preds = %if.end.i.if.then12.i_crit_edge, %if.end.i.if.then12.i_crit_edge116, %if.end.i.if.then12.i_crit_edge117
  tail call fastcc void @tipc_loopback_trace(ptr noundef %14, ptr noundef %list) #14
  %lock.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %inputq.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %29 = ptrtoint ptr %inputq.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %inputq.i, ptr %inputq.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon.90, ptr %inputq.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %inputq.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %inputq.i, i32 0, i32 1
  %31 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %qlen.i.i.i, align 4
  call void @tipc_sk_mcast_rcv(ptr noundef %14, ptr noundef %list, ptr noundef nonnull %inputq.i) #14
  call fastcc void @__skb_queue_purge(ptr noundef %list) #14
  call void @skb_queue_purge(ptr noundef nonnull %inputq.i) #14
  br label %tipc_lxc_xmit.exit

sw.bb14.i:                                        ; preds = %if.then16
  %call15.i = tail call zeroext i1 @tipc_msg_assemble(ptr noundef %list) #14
  br i1 %call15.i, label %if.then16.i, label %sw.bb14.i.tipc_lxc_xmit.exit_crit_edge

sw.bb14.i.tipc_lxc_xmit.exit_crit_edge:           ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_lxc_xmit.exit

if.then16.i:                                      ; preds = %sw.bb14.i
  %loopback_dev.i59.i = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 27
  %32 = ptrtoint ptr %loopback_dev.i59.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %loopback_dev.i59.i, align 4
  %call.i60.i = tail call zeroext i1 @dev_nit_active(ptr noundef %33) #14
  br i1 %call.i60.i, label %if.then.i61.i, label %if.then16.i.tipc_loopback_trace.exit62.i_crit_edge, !prof !238

if.then16.i.tipc_loopback_trace.exit62.i_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_loopback_trace.exit62.i

if.then.i61.i:                                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @tipc_clone_to_loopback(ptr noundef %14, ptr noundef %list) #14
  br label %tipc_loopback_trace.exit62.i

tipc_loopback_trace.exit62.i:                     ; preds = %if.then.i61.i, %if.then16.i.tipc_loopback_trace.exit62.i_crit_edge
  %lock.i63.i = getelementptr inbounds %struct.sk_buff_head, ptr %inputq.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i63.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %34 = ptrtoint ptr %inputq.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %inputq.i, ptr %inputq.i, align 4
  %prev.i.i64.i = getelementptr inbounds %struct.anon.90, ptr %inputq.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i64.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %inputq.i, ptr %prev.i.i64.i, align 4
  %qlen.i.i65.i = getelementptr inbounds %struct.sk_buff_head, ptr %inputq.i, i32 0, i32 1
  %36 = ptrtoint ptr %qlen.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %qlen.i.i65.i, align 4
  call void @tipc_sk_mcast_rcv(ptr noundef %14, ptr noundef %list, ptr noundef nonnull %inputq.i) #14
  %37 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %list, align 4
  %cmp.i.i2.i.i = icmp eq ptr %38, %list
  %tobool.not.i13.i.i = icmp eq ptr %38, null
  %tobool.not.i4.i.i = or i1 %cmp.i.i2.i.i, %tobool.not.i13.i.i
  br i1 %tobool.not.i4.i.i, label %tipc_loopback_trace.exit62.i.__skb_queue_purge.exit.i_crit_edge, label %while.body.lr.ph.i.i

tipc_loopback_trace.exit62.i.__skb_queue_purge.exit.i_crit_edge: ; preds = %tipc_loopback_trace.exit62.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__skb_queue_purge.exit.i

while.body.lr.ph.i.i:                             ; preds = %tipc_loopback_trace.exit62.i
  %qlen.i.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %39 = phi ptr [ %38, %while.body.lr.ph.i.i ], [ %49, %while.body.i.i.while.body.i.i_crit_edge ]
  %40 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %qlen.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.83, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %39, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.83, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %45, ptr %prev17.i.i.i.i, align 4
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %43, ptr %45, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %39, i32 noundef 0) #14
  %48 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %list, align 4
  %cmp.i.i.i.i = icmp eq ptr %49, %list
  %tobool.not.i1.i.i = icmp eq ptr %49, null
  %tobool.not.i.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i1.i.i
  br i1 %tobool.not.i.i.i, label %while.body.i.i.__skb_queue_purge.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.body.i.i.__skb_queue_purge.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__skb_queue_purge.exit.i

__skb_queue_purge.exit.i:                         ; preds = %while.body.i.i.__skb_queue_purge.exit.i_crit_edge, %tipc_loopback_trace.exit62.i.__skb_queue_purge.exit.i_crit_edge
  call void @skb_queue_purge(ptr noundef nonnull %inputq.i) #14
  br label %tipc_lxc_xmit.exit

sw.bb18.i:                                        ; preds = %if.then16.sw.bb18.i_crit_edge, %if.then16.sw.bb18.i_crit_edge114
  %loopback_dev.i66.i = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 27
  %50 = ptrtoint ptr %loopback_dev.i66.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %loopback_dev.i66.i, align 4
  %call.i67.i = tail call zeroext i1 @dev_nit_active(ptr noundef %51) #14
  br i1 %call.i67.i, label %if.then.i68.i, label %sw.bb18.i.tipc_loopback_trace.exit69.i_crit_edge, !prof !238

sw.bb18.i.tipc_loopback_trace.exit69.i_crit_edge: ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_loopback_trace.exit69.i

if.then.i68.i:                                    ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @tipc_clone_to_loopback(ptr noundef %14, ptr noundef %list) #14
  br label %tipc_loopback_trace.exit69.i

tipc_loopback_trace.exit69.i:                     ; preds = %if.then.i68.i, %sw.bb18.i.tipc_loopback_trace.exit69.i_crit_edge
  %lock20.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock20.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @tipc_lxc_xmit.__key.62, i16 noundef signext 3) #14
  tail call void @tipc_sk_rcv(ptr noundef %14, ptr noundef %list) #14
  br label %tipc_lxc_xmit.exit

tipc_lxc_xmit.exit:                               ; preds = %tipc_loopback_trace.exit69.i, %__skb_queue_purge.exit.i, %sw.bb14.i.tipc_lxc_xmit.exit_crit_edge, %if.then12.i, %if.end.i.tipc_lxc_xmit.exit_crit_edge, %tipc_loopback_trace.exit.i, %if.then16.tipc_lxc_xmit.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %inputq.i) #14
  %52 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %list, align 4
  %cmp.i94.not = icmp eq ptr %53, %list
  br i1 %cmp.i94.not, label %if.then26, label %tipc_lxc_xmit.exit.if.end28_crit_edge, !prof !241

tipc_lxc_xmit.exit.if.end28_crit_edge:            ; preds = %tipc_lxc_xmit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then26:                                        ; preds = %tipc_lxc_xmit.exit
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call2, i32 0, i32 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %54 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i97, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i97:                                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %call2, i32 0, i32 7
  %55 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bc_entry.i.i.i, align 4
  call void @kfree(ptr noundef %56) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call2, i32 0, i32 25
  call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %cleanup

if.end28:                                         ; preds = %tipc_lxc_xmit.exit.if.end28_crit_edge, %land.lhs.true12.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %if.end8.if.end28_crit_edge
  %and = and i32 %selector, 1
  %arrayidx = getelementptr %struct.tipc_node, ptr %call2, i32 0, i32 5, i32 %and
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp = icmp eq i32 %58, -1
  br i1 %cmp, label %if.then35, label %if.end36, !prof !238

if.then35:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  call void @tipc_node_put(ptr noundef nonnull %call2)
  call fastcc void @__skb_queue_purge(ptr noundef %list)
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %59 = ptrtoint ptr %xmitq to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %xmitq, ptr %xmitq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %xmitq, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %xmitq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %61 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %qlen.i, align 4
  %arrayidx37 = getelementptr %struct.tipc_node, ptr %call2, i32 0, i32 6, i32 %58
  %lock38 = getelementptr %struct.tipc_node, ptr %call2, i32 0, i32 6, i32 %58, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock38) #14
  %62 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx37, align 4
  %call39 = call i32 @tipc_link_xmit(ptr noundef %63, ptr noundef %list, ptr noundef nonnull %xmitq) #14
  call void @_raw_spin_unlock_bh(ptr noundef %lock38) #14
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %call39)
  %cmp41 = icmp eq i32 %call39, -105
  br i1 %cmp41, label %if.then48, label %if.else, !prof !238

if.then48:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @tipc_node_link_down(ptr noundef nonnull %call2, i32 noundef %58, i1 noundef zeroext false)
  br label %if.end49

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %maddr = getelementptr %struct.tipc_node, ptr %call2, i32 0, i32 6, i32 %58, i32 4
  call void @tipc_bearer_xmit(ptr noundef %net, i32 noundef %58, ptr noundef nonnull %xmitq, ptr noundef %maddr, ptr noundef nonnull %call2) #14
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then48
  %kref.i100 = getelementptr inbounds %struct.tipc_node, ptr %call2, i32 0, i32 1
  %call.i.i.i.i.i.i.i101 = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i100, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  call void @llvm.prefetch.p0(ptr %kref.i100, i32 1, i32 3, i32 1) #14
  %64 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i100, ptr %kref.i100, i32 1, ptr elementtype(i32) %kref.i100) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i102 = extractvalue { i32, i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i102)
  %cmp.i.i.i.i.i103 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i102, 1
  br i1 %cmp.i.i.i.i.i103, label %if.then.i.i109, label %if.end5.i.i.i.i.i105

if.end5.i.i.i.i.i105:                             ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i102)
  %.not.i.i.i.i.i104 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i102, 0
  br i1 %.not.i.i.i.i.i104, label %if.end5.i.i.i.i.i105.cleanup_crit_edge, label %if.then10.i.i.i.i.i106, !prof !241

if.end5.i.i.i.i.i105.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i.i105
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i106:                           ; preds = %if.end5.i.i.i.i.i105
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref.i100, i32 noundef 3) #14
  br label %cleanup

if.then.i.i109:                                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i107 = getelementptr %struct.tipc_node, ptr %call2, i32 0, i32 7
  %65 = ptrtoint ptr %bc_entry.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bc_entry.i.i.i107, align 4
  call void @kfree(ptr noundef %66) #14
  %rcu.i.i.i108 = getelementptr %struct.tipc_node, ptr %call2, i32 0, i32 25
  call void @call_rcu(ptr noundef %rcu.i.i.i108, ptr noundef nonnull @tipc_node_free) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i109, %if.then10.i.i.i.i.i106, %if.end5.i.i.i.i.i105.cleanup_crit_edge, %if.then35, %if.then.i.i97, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then7, %tipc_loopback_trace.exit
  %retval.0 = phi i32 [ 0, %tipc_loopback_trace.exit ], [ -113, %if.then7 ], [ -113, %if.then35 ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i97 ], [ %call39, %if.end5.i.i.i.i.i105.cleanup_crit_edge ], [ %call39, %if.then10.i.i.i.i.i106 ], [ %call39, %if.then.i.i109 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %xmitq) #14
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_loopback_trace(ptr noundef %net, ptr noundef %pkts) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %loopback_dev = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 27
  %0 = ptrtoint ptr %loopback_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %loopback_dev, align 4
  %call = tail call zeroext i1 @dev_nit_active(ptr noundef %1) #14
  br i1 %call, label %if.then, label %entry.if.end_crit_edge, !prof !238

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @tipc_clone_to_loopback(ptr noundef %net, ptr noundef %pkts) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_sk_rcv(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__skb_queue_purge(ptr noundef %list) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.i.i2 = icmp eq ptr %1, %list
  %tobool.not.i13 = icmp eq ptr %1, null
  %tobool.not.i4 = or i1 %cmp.i.i2, %tobool.not.i13
  br i1 %tobool.not.i4, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #14
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %12, %list
  %tobool.not.i1 = icmp eq ptr %12, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i1
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_xmit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_bearer_xmit(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_node_xmit_skb(ptr noundef %net, ptr noundef %skb, i32 noundef %dnode, i32 noundef %selector) local_unnamed_addr #0 align 64 {
entry:
  %head = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %head) #14
  %0 = getelementptr inbounds i8, ptr %head, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %head, i32 0, i32 1
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %head, i32 0, i32 1
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %head, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %head, ptr %prev10.i.i.i, align 4
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %skb, ptr %prev.i, align 4
  %5 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %skb, ptr %head, align 4
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %qlen.i, align 4
  %call = call i32 @tipc_node_xmit(ptr noundef %net, ptr noundef nonnull %head, i32 noundef %dnode, i32 noundef %selector)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %head) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_node_distr_xmit(ptr noundef %net, ptr noundef %xmitq) local_unnamed_addr #0 align 64 {
entry:
  %head.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xmitq, align 4
  %cmp.i.i12 = icmp eq ptr %1, %xmitq
  %tobool.not.i1113 = icmp eq ptr %1, null
  %tobool.not.i14 = or i1 %cmp.i.i12, %tobool.not.i1113
  br i1 %tobool.not.i14, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %2 = getelementptr inbounds i8, ptr %head.i, i32 12
  %prev.i.i = getelementptr inbounds %struct.anon.90, ptr %head.i, i32 0, i32 1
  %qlen.i.i10 = getelementptr inbounds %struct.sk_buff_head, ptr %head.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %3 = phi ptr [ %1, %while.body.lr.ph ], [ %29, %while.body.while.body_crit_edge ]
  %4 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %5, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.83, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %3, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.83, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %prev17.i.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %7, ptr %9, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = and i32 %15, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %16)
  %cmp.i = icmp eq i32 %16, 402653184
  %17 = lshr i32 %15, 19
  %shl.i.i.i.i = and i32 %17, 60
  %m.addr.0.idx.i = select i1 %cmp.i, i32 %shl.i.i.i.i, i32 0
  %m.addr.0.i = getelementptr i8, ptr %13, i32 %m.addr.0.idx.i
  %arrayidx.i.i = getelementptr [15 x i32], ptr %m.addr.0.i, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i9 = getelementptr [15 x i32], ptr %13, i32 0, i32 7
  %20 = ptrtoint ptr %arrayidx.i.i9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i9, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %head.i) #14
  %22 = call ptr @memset(ptr %2, i32 255, i32 44)
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %head.i, ptr %3, align 8
  %24 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %head.i, ptr %prev9.i.i, align 4
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %3, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %3, ptr %head.i, align 4
  %27 = ptrtoint ptr %qlen.i.i10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %qlen.i.i10, align 4
  %call.i = call i32 @tipc_node_xmit(ptr noundef %net, ptr noundef nonnull %head.i, i32 noundef %21, i32 noundef %19) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %head.i) #14
  %28 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xmitq, align 4
  %cmp.i.i = icmp eq ptr %29, %xmitq
  %tobool.not.i11 = icmp eq ptr %29, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i11
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_node_broadcast(ptr noundef %net, ptr noundef %skb, i32 noundef %rc_dests) local_unnamed_addr #0 align 64 {
entry:
  %head.i = alloca %struct.sk_buff_head, align 4
  %xmitq = alloca %struct.sk_buff_head, align 4
  %dummy = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %xmitq) #14
  %0 = getelementptr inbounds i8, ptr %xmitq, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dummy) #14
  %2 = ptrtoint ptr %dummy to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %dummy, align 2, !annotation !255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc_dests)
  %tobool.not = icmp eq i32 %rc_dests, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @tipc_bcast_get_mode(ptr noundef %net) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %xmitq, i32 0, i32 1
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %xmitq, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %xmitq, ptr %prev10.i.i.i, align 4
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %skb, ptr %prev.i, align 4
  %6 = ptrtoint ptr %xmitq to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %skb, ptr %xmitq, align 4
  %7 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %qlen.i, align 4
  %call1 = call i32 @tipc_bcast_xmit(ptr noundef %net, ptr noundef nonnull %xmitq, ptr noundef nonnull %dummy) #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !243
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call2 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true4:                                   ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true4.do.end_crit_edge, label %land.lhs.true7

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %.b58 = load i1, ptr @tipc_node_broadcast.__warned, align 1
  br i1 %.b58, label %land.lhs.true7.do.end_crit_edge, label %if.then9

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_node_broadcast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1793, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.lhs.true7.do.end_crit_edge, %land.lhs.true4.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %12 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %12) #14
  %node_list.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %node_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn76 = load volatile ptr, ptr %node_list.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %14 = load i32, ptr @tipc_net_id, align 4
  %call.i.i6077 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %14) #14
  %node_list.i6178 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i6077, i32 0, i32 10
  %cmp17.not79 = icmp eq ptr %.pn76, %node_list.i6178
  br i1 %cmp17.not79, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = getelementptr inbounds i8, ptr %head.i, i32 12
  %prev.i.i65 = getelementptr inbounds %struct.anon.90, ptr %head.i, i32 0, i32 1
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %head.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn80 = phi ptr [ %.pn76, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %n.0 = getelementptr i8, ptr %.pn80, i32 -740
  %16 = ptrtoint ptr %n.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n.0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %18 = load i32, ptr @tipc_net_id, align 4
  %call.i.i.i = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %18) #14
  %node_addr.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %node_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %17)
  %cmp.i = icmp ne i32 %20, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i62 = icmp ne i32 %17, 0
  %tobool19.not = and i1 %tobool.not.i62, %cmp.i
  br i1 %tobool19.not, label %if.end21, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %active_links.i = getelementptr i8, ptr %.pn80, i32 -676
  %21 = ptrtoint ptr %active_links.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %active_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i63.not = icmp eq i32 %22, -1
  br i1 %cmp.i63.not, label %if.end21.for.inc_crit_edge, label %if.end24

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end24:                                         ; preds = %if.end21
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i, align 4
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i64 = call ptr @__pskb_copy_fclone(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i, i32 noundef 2592, i1 noundef zeroext false) #14
  %tobool26.not = icmp eq ptr %call.i.i64, null
  br i1 %tobool26.not, label %if.end24.for.end_crit_edge, label %if.end28

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i64, i32 0, i32 19
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %17, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %head.i) #14
  %30 = call ptr @memset(ptr %15, i32 255, i32 44)
  %31 = ptrtoint ptr %call.i.i64 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %head.i, ptr %call.i.i64, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.83, ptr %call.i.i64, i32 0, i32 1
  %32 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %head.i, ptr %prev10.i.i.i.i, align 4
  %33 = ptrtoint ptr %prev.i.i65 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call.i.i64, ptr %prev.i.i65, align 4
  %34 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call.i.i64, ptr %head.i, align 4
  %35 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 1, ptr %qlen.i.i, align 4
  %call.i66 = call i32 @tipc_node_xmit(ptr noundef %net, ptr noundef nonnull %head.i, i32 noundef %17, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %head.i) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %if.end21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %36 = ptrtoint ptr %.pn80 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn = load volatile ptr, ptr %.pn80, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %37 = load i32, ptr @tipc_net_id, align 4
  %call.i.i60 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %37) #14
  %node_list.i61 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i60, i32 0, i32 10
  %cmp17.not = icmp eq ptr %.pn, %node_list.i61
  br i1 %cmp17.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end24.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i67 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i67, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i70

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i70:                                ; preds = %for.end
  %call1.i68 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %tobool.not.i69 = icmp eq i32 %call1.i68, 0
  br i1 %tobool.not.i69, label %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i72

land.lhs.true.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i72:                               ; preds = %land.lhs.true.i70
  %.b4.i71 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i71, label %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, label %if.then.i73

land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i73:                                      ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.61) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i73, %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !246
  %38 = call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i74 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i74 to ptr
  %preempt_count.i.i.i.i75 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i75, align 4
  %sub.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i75, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dummy) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %xmitq) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_bcast_get_mode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_bcast_xmit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_rcv(ptr noundef %net, ptr noundef %skb, ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  %skb.addr = alloca ptr, align 4
  %xmitq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skb.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %skb, ptr %skb.addr, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %xmitq) #14
  %1 = call ptr @memset(ptr %xmitq, i32 255, i32 56)
  %identity = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 13
  %2 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %identity, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %4 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %4) #14
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %node_addr.i, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %7, align 2
  %9 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.rcv_crit_edge

entry.rcv_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcv

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call zeroext i1 @tipc_ehdr_validate(ptr noundef %skb) #14
  br i1 %call1, label %if.end, label %lor.lhs.false.rcv_crit_edge

lor.lhs.false.rcv_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcv

if.end:                                           ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb.addr, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %bf.load2 = load i16, ptr %13, align 1
  %15 = and i16 %bf.load2, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 6656, i16 %15)
  %cmp.not = icmp eq i16 %15, 6656
  %16 = getelementptr inbounds %struct.tipc_ehdr, ptr %13, i32 0, i32 2
  br i1 %cmp.not, label %if.end23, label %if.then9, !prof !238

if.then9:                                         ; preds = %if.end
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %16, align 1
  %call10 = tail call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %18)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then9.discard_crit_edge, label %if.then9.cond.true_crit_edge, !prof !238

if.then9.cond.true_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true

if.then9.discard_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %discard

if.end23:                                         ; preds = %if.end
  %call22 = tail call fastcc ptr @tipc_node_find_by_id(ptr noundef %net, ptr noundef %16)
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.end23.cond.end_crit_edge, label %if.end23.cond.true_crit_edge

if.end23.cond.true_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true

if.end23.cond.end_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %if.end23.cond.true_crit_edge, %if.then9.cond.true_crit_edge
  %n.0333 = phi ptr [ %call22, %if.end23.cond.true_crit_edge ], [ %call10, %if.then9.cond.true_crit_edge ]
  %crypto_rx = getelementptr inbounds %struct.tipc_node, ptr %n.0333, i32 0, i32 29
  %19 = ptrtoint ptr %crypto_rx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crypto_rx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end23.cond.end_crit_edge
  %cond = phi ptr [ %20, %cond.true ], [ null, %if.end23.cond.end_crit_edge ]
  %call25 = call i32 @tipc_crypto_rcv(ptr noundef %net, ptr noundef %cond, ptr noundef nonnull %skb.addr, ptr noundef %b) #14
  %21 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb.addr, align 4
  %tobool26.not = icmp eq ptr %22, null
  br i1 %tobool26.not, label %cond.end.cleanup_crit_edge, label %cond.end.rcv_crit_edge

cond.end.rcv_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcv

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

rcv:                                              ; preds = %cond.end.rcv_crit_edge, %lor.lhs.false.rcv_crit_edge, %entry.rcv_crit_edge
  %call29 = call zeroext i1 @tipc_msg_validate(ptr noundef nonnull %skb.addr) #14
  br i1 %call29, label %if.end39, label %rcv.discard_crit_edge, !prof !241

rcv.discard_crit_edge:                            ; preds = %rcv
  call void @__sanitizer_cov_trace_pc() #16
  br label %discard

if.end39:                                         ; preds = %rcv
  %23 = ptrtoint ptr %xmitq to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %xmitq, ptr %xmitq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %xmitq, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %xmitq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %25 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %qlen.i, align 4
  %26 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skb.addr, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %shr.i.i = lshr i32 %31, 25
  %and.i.i = and i32 %shr.i.i, 15
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv.i = trunc i32 %33 to i16
  %34 = and i32 %31, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool44.not = icmp eq i32 %34, 0
  br i1 %tobool44.not, label %if.end62, label %if.then51, !prof !241

if.then51:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and.i.i)
  %cmp52 = icmp eq i32 %and.i.i, 13
  br i1 %cmp52, label %if.then60, label %if.else61, !prof !238

if.then60:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  call void @tipc_disc_rcv(ptr noundef %net, ptr noundef %27, ptr noundef %b) #14
  br label %cleanup

if.else61:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @tipc_node_bc_rcv(ptr noundef %net, ptr noundef %27, i32 noundef %3)
  br label %cleanup

if.end62:                                         ; preds = %if.end39
  %35 = and i32 %31, 31457280
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %35)
  %cmp.i.not = icmp eq i32 %35, 12582912
  br i1 %cmp.i.not, label %if.end62.if.end75_crit_edge, label %land.rhs

if.end62.if.end75_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

land.rhs:                                         ; preds = %if.end62
  %arrayidx.i.i = getelementptr [15 x i32], ptr %29, i32 0, i32 7
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %6)
  %cmp66.not = icmp eq i32 %37, %6
  br i1 %cmp66.not, label %land.rhs.if.end75_crit_edge, label %land.rhs.discard_crit_edge, !prof !241

land.rhs.discard_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %discard

land.rhs.if.end75_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.end75:                                         ; preds = %land.rhs.if.end75_crit_edge, %if.end62.if.end75_crit_edge
  %arrayidx.i.i310 = getelementptr [15 x i32], ptr %29, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx.i.i310 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i310, align 4
  %call77 = call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %39)
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %if.end75.discard_crit_edge, label %if.end88, !prof !238

if.end75.discard_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %discard

if.end88:                                         ; preds = %if.end75
  %arrayidx89 = getelementptr %struct.tipc_node, ptr %call77, i32 0, i32 6, i32 %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i.i)
  %cmp90 = icmp eq i32 %and.i.i, 7
  br i1 %cmp90, label %if.then98, label %if.else110, !prof !238

if.then98:                                        ; preds = %if.end88
  %40 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb.addr, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i = icmp eq i32 %43, 0
  br i1 %tobool.i.not.i, label %if.then98.if.end108_crit_edge, label %cond.true.i

if.then98.if.end108_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end108

cond.true.i:                                      ; preds = %if.then98
  %call.i.i311 = call ptr @__pskb_pull_tail(ptr noundef %41, i32 noundef %43) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i311, null
  br i1 %tobool.not.i.i, label %if.then107, label %cond.true.i.if.end108_crit_edge

cond.true.i.if.end108_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end108

if.then107:                                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @tipc_node_put(ptr noundef nonnull %call77)
  br label %discard

if.end108:                                        ; preds = %cond.true.i.if.end108_crit_edge, %if.then98.if.end108_crit_edge
  %44 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skb.addr, align 4
  %data.i312 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 19
  %46 = ptrtoint ptr %data.i312 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i312, align 4
  call fastcc void @tipc_node_bc_sync_rcv(ptr noundef nonnull %call77, ptr noundef %47, i32 noundef %3, ptr noundef nonnull %xmitq)
  br label %if.end126

if.else110:                                       ; preds = %if.end88
  %bc_entry = getelementptr inbounds %struct.tipc_node, ptr %call77, i32 0, i32 7
  %48 = ptrtoint ptr %bc_entry to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bc_entry, align 4
  %call111 = call zeroext i16 @tipc_link_acked(ptr noundef %49) #14
  call void @__sanitizer_cov_trace_cmp2(i16 %call111, i16 %conv.i)
  %cmp114.not = icmp eq i16 %call111, %conv.i
  br i1 %cmp114.not, label %if.else110.if.end126_crit_edge, label %if.then122, !prof !241

if.else110.if.end126_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end126

if.then122:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %bc_entry to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bc_entry, align 4
  call void @tipc_bcast_ack_rcv(ptr noundef %net, ptr noundef %51, ptr noundef %29) #14
  br label %if.end126

if.end126:                                        ; preds = %if.then122, %if.else110.if.end126_crit_edge, %if.end108
  %lock.i = getelementptr inbounds %struct.tipc_node, ptr %call77, i32 0, i32 2
  call void @_raw_read_lock_bh(ptr noundef %lock.i) #14
  %state = getelementptr inbounds %struct.tipc_node, ptr %call77, i32 0, i32 10
  %52 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 170, i32 %53)
  %cmp127 = icmp eq i32 %53, 170
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.i.i)
  %cmp130 = icmp ne i32 %and.i.i, 10
  %spec.select = select i1 %cmp127, i1 %cmp130, i1 false, !prof !241
  br i1 %spec.select, label %if.then139, label %if.end126.if.end147_crit_edge, !prof !241

if.end126.if.end147_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147

if.then139:                                       ; preds = %if.end126
  %lock = getelementptr %struct.tipc_node, ptr %call77, i32 0, i32 6, i32 %3, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %54 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx89, align 4
  %tobool141.not = icmp eq ptr %55, null
  br i1 %tobool141.not, label %if.then139.if.end145_crit_edge, label %if.then142

if.then139.if.end145_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end145

if.then142:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skb.addr, align 4
  %call144 = call i32 @tipc_link_rcv(ptr noundef nonnull %55, ptr noundef %57, ptr noundef nonnull %xmitq) #14
  %58 = ptrtoint ptr %skb.addr to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %skb.addr, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then142, %if.then139.if.end145_crit_edge
  %rc.0 = phi i32 [ %call144, %if.then142 ], [ 0, %if.then139.if.end145_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  br label %if.end147

if.end147:                                        ; preds = %if.end145, %if.end126.if.end147_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.end145 ], [ 0, %if.end126.if.end147_crit_edge ]
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  %59 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %skb.addr, align 4
  %tobool148.not = icmp eq ptr %60, null
  br i1 %tobool148.not, label %if.end147.if.end175_crit_edge, label %if.then155, !prof !241

if.end147.if.end175_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end175

if.then155:                                       ; preds = %if.end147
  %data_len.i.i314 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %data_len.i.i314 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %data_len.i.i314, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.i.not.i315 = icmp eq i32 %62, 0
  br i1 %tobool.i.not.i315, label %if.then155.if.end165_crit_edge, label %cond.true.i319

if.then155.if.end165_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end165

cond.true.i319:                                   ; preds = %if.then155
  %call.i.i316 = call ptr @__pskb_pull_tail(ptr noundef nonnull %60, i32 noundef %62) #14
  %tobool.not.i.i317 = icmp eq ptr %call.i.i316, null
  br i1 %tobool.not.i.i317, label %cond.true.i319.out_node_put_crit_edge, label %cond.true.i319.if.end165_crit_edge

cond.true.i319.if.end165_crit_edge:               ; preds = %cond.true.i319
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end165

cond.true.i319.out_node_put_crit_edge:            ; preds = %cond.true.i319
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_node_put

if.end165:                                        ; preds = %cond.true.i319.if.end165_crit_edge, %if.then155.if.end165_crit_edge
  call void @_raw_write_lock_bh(ptr noundef %lock.i) #14
  %63 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %skb.addr, align 4
  %call166 = call fastcc zeroext i1 @tipc_node_check_state(ptr noundef nonnull %call77, ptr noundef %64, i32 noundef %3, ptr noundef nonnull %xmitq)
  br i1 %call166, label %if.then167, label %if.end165.if.end174_crit_edge

if.end165.if.end174_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end174

if.then167:                                       ; preds = %if.end165
  %65 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx89, align 4
  %tobool169.not = icmp eq ptr %66, null
  br i1 %tobool169.not, label %if.then167.if.end174_crit_edge, label %if.then170

if.then167.if.end174_crit_edge:                   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end174

if.then170:                                       ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #16
  %67 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %skb.addr, align 4
  %call172 = call i32 @tipc_link_rcv(ptr noundef nonnull %66, ptr noundef %68, ptr noundef nonnull %xmitq) #14
  %69 = ptrtoint ptr %skb.addr to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %skb.addr, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then170, %if.then167.if.end174_crit_edge, %if.end165.if.end174_crit_edge
  %rc.2 = phi i32 [ %call172, %if.then170 ], [ %rc.1, %if.then167.if.end174_crit_edge ], [ %rc.1, %if.end165.if.end174_crit_edge ]
  call fastcc void @tipc_node_write_unlock(ptr noundef nonnull %call77)
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %if.end147.if.end175_crit_edge
  %rc.3 = phi i32 [ %rc.2, %if.end174 ], [ %rc.1, %if.end147.if.end175_crit_edge ]
  %and = and i32 %rc.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool176.not = icmp eq i32 %and, 0
  br i1 %tobool176.not, label %if.end175.if.end184_crit_edge, label %if.then183, !prof !241

if.end175.if.end184_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end184

if.then183:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @tipc_node_link_up(ptr noundef nonnull %call77, i32 noundef %3, ptr noundef nonnull %xmitq)
  br label %if.end184

if.end184:                                        ; preds = %if.then183, %if.end175.if.end184_crit_edge
  %and185 = and i32 %rc.3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.end184.if.end194_crit_edge, label %if.then193, !prof !241

if.end184.if.end194_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end194

if.then193:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @tipc_node_link_down(ptr noundef nonnull %call77, i32 noundef %3, i1 noundef zeroext false)
  br label %if.end194

if.end194:                                        ; preds = %if.then193, %if.end184.if.end194_crit_edge
  %namedq = getelementptr inbounds %struct.tipc_node, ptr %call77, i32 0, i32 7, i32 4
  %70 = ptrtoint ptr %namedq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %namedq, align 4
  %cmp.i323.not = icmp eq ptr %71, %namedq
  br i1 %cmp.i323.not, label %if.end194.if.end211_crit_edge, label %if.then206, !prof !241

if.end194.if.end211_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end211

if.then206:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #16
  %named_rcv_nxt = getelementptr inbounds %struct.tipc_node, ptr %call77, i32 0, i32 7, i32 5
  %named_open = getelementptr inbounds %struct.tipc_node, ptr %call77, i32 0, i32 7, i32 6
  call void @tipc_named_rcv(ptr noundef %net, ptr noundef %namedq, ptr noundef %named_rcv_nxt, ptr noundef %named_open) #14
  br label %if.end211

if.end211:                                        ; preds = %if.then206, %if.end194.if.end211_crit_edge
  %inputq1 = getelementptr inbounds %struct.tipc_node, ptr %call77, i32 0, i32 7, i32 1
  %72 = ptrtoint ptr %inputq1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %inputq1, align 4
  %cmp.i325.not = icmp eq ptr %73, %inputq1
  br i1 %cmp.i325.not, label %if.end211.if.end224_crit_edge, label %if.then223, !prof !241

if.end211.if.end224_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end224

if.then223:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @tipc_node_mcast_rcv(ptr noundef nonnull %call77)
  br label %if.end224

if.end224:                                        ; preds = %if.then223, %if.end211.if.end224_crit_edge
  %inputq = getelementptr %struct.tipc_node, ptr %call77, i32 0, i32 6, i32 %3, i32 3
  %74 = ptrtoint ptr %inputq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %inputq, align 4
  %cmp.i327.not = icmp eq ptr %75, %inputq
  br i1 %cmp.i327.not, label %if.end224.if.end229_crit_edge, label %if.then227

if.end224.if.end229_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end229

if.then227:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #16
  call void @tipc_sk_rcv(ptr noundef %net, ptr noundef %inputq) #14
  br label %if.end229

if.end229:                                        ; preds = %if.then227, %if.end224.if.end229_crit_edge
  %76 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %xmitq, align 4
  %cmp.i329.not = icmp eq ptr %77, %xmitq
  br i1 %cmp.i329.not, label %if.end229.out_node_put_crit_edge, label %if.then232

if.end229.out_node_put_crit_edge:                 ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_node_put

if.then232:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #16
  %maddr = getelementptr %struct.tipc_node, ptr %call77, i32 0, i32 6, i32 %3, i32 4
  call void @tipc_bearer_xmit(ptr noundef %net, i32 noundef %3, ptr noundef nonnull %xmitq, ptr noundef %maddr, ptr noundef nonnull %call77) #14
  br label %out_node_put

out_node_put:                                     ; preds = %if.then232, %if.end229.out_node_put_crit_edge, %cond.true.i319.out_node_put_crit_edge
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call77, i32 0, i32 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %78 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %out_node_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.discard_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.discard_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %discard

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %discard

if.then.i.i:                                      ; preds = %out_node_put
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %call77, i32 0, i32 7
  %79 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bc_entry.i.i.i, align 4
  call void @kfree(ptr noundef %80) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call77, i32 0, i32 25
  call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %discard

discard:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.discard_crit_edge, %if.then107, %if.end75.discard_crit_edge, %land.rhs.discard_crit_edge, %rcv.discard_crit_edge, %if.then9.discard_crit_edge
  %81 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %skb.addr, align 4
  call void @kfree_skb_reason(ptr noundef %82, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %discard, %if.else61, %if.then60, %cond.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %xmitq) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_ehdr_validate(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_crypto_rcv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_msg_validate(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_disc_rcv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_node_bc_rcv(ptr noundef %net, ptr noundef %skb, i32 noundef %bearer_id) unnamed_addr #0 align 64 {
entry:
  %xmitq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %xmitq) #14
  %0 = getelementptr inbounds i8, ptr %xmitq, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
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
  %11 = and i32 %5, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772160, i32 %11)
  %cmp = icmp eq i32 %11, 167772160
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %12 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %12) #14
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %14)
  %cmp4.not = icmp eq i32 %7, %14
  br i1 %cmp4.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %arrayidx.i.i70 = getelementptr [15 x i32], ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx.i.i70 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i70, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %.sink = phi i32 [ %16, %if.else ], [ %7, %land.lhs.true.if.end_crit_edge ]
  %call7 = call fastcc ptr @tipc_node_find(ptr noundef %net, i32 noundef %.sink)
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %bc_entry = getelementptr inbounds %struct.tipc_node, ptr %call7, i32 0, i32 7
  %17 = ptrtoint ptr %bc_entry to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bc_entry, align 4
  %call10 = call i32 @tipc_bcast_rcv(ptr noundef %net, ptr noundef %18, ptr noundef %skb) #14
  %and = and i32 %call10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr %struct.tipc_node, ptr %call7, i32 0, i32 6, i32 %bearer_id
  %lock.i = getelementptr inbounds %struct.tipc_node, ptr %call7, i32 0, i32 2
  call void @_raw_read_lock_bh(ptr noundef %lock.i) #14
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call14 = call i32 @tipc_link_build_state_msg(ptr noundef %20, ptr noundef nonnull %xmitq) #14
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %21 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xmitq, align 4
  %cmp.i.not = icmp eq ptr %22, %xmitq
  br i1 %cmp.i.not, label %if.end15.if.end19_crit_edge, label %if.then18

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %maddr = getelementptr %struct.tipc_node, ptr %call7, i32 0, i32 6, i32 %bearer_id, i32 4
  call void @tipc_bearer_xmit(ptr noundef %net, i32 noundef %bearer_id, ptr noundef nonnull %xmitq, ptr noundef %maddr, ptr noundef nonnull %call7) #14
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge
  %inputq1 = getelementptr inbounds %struct.tipc_node, ptr %call7, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %inputq1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %inputq1, align 4
  %cmp.i72.not = icmp eq ptr %24, %inputq1
  br i1 %cmp.i72.not, label %if.end19.if.end23_crit_edge, label %if.then22

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @tipc_node_mcast_rcv(ptr noundef nonnull %call7)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19.if.end23_crit_edge
  %namedq = getelementptr inbounds %struct.tipc_node, ptr %call7, i32 0, i32 7, i32 4
  %25 = ptrtoint ptr %namedq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %namedq, align 4
  %cmp.i74.not = icmp eq ptr %26, %namedq
  br i1 %cmp.i74.not, label %if.end23.if.end32_crit_edge, label %if.then27

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %named_rcv_nxt = getelementptr inbounds %struct.tipc_node, ptr %call7, i32 0, i32 7, i32 5
  %named_open = getelementptr inbounds %struct.tipc_node, ptr %call7, i32 0, i32 7, i32 6
  call void @tipc_named_rcv(ptr noundef %net, ptr noundef %namedq, ptr noundef %named_rcv_nxt, ptr noundef %named_open) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.end23.if.end32_crit_edge
  %and33 = and i32 %call10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end36_crit_edge, label %if.then35

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call7, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %28) #18
  call fastcc void @trace_tipc_node_reset_links(ptr noundef nonnull %call7) #14
  call fastcc void @tipc_node_link_down(ptr noundef nonnull %call7, i32 noundef 0, i1 noundef zeroext false) #14
  call fastcc void @tipc_node_link_down(ptr noundef nonnull %call7, i32 noundef 1, i1 noundef zeroext false) #14
  call fastcc void @tipc_node_link_down(ptr noundef nonnull %call7, i32 noundef 2, i1 noundef zeroext false) #14
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end32.if.end36_crit_edge
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call7, i32 0, i32 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %30 = ptrtoint ptr %bc_entry to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bc_entry, align 4
  call void @kfree(ptr noundef %31) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call7, i32 0, i32 25
  call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %xmitq) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_node_bc_sync_rcv(ptr noundef %n, ptr noundef %hdr, i32 noundef %bearer_id, ptr noundef %xmitq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 3
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %bc_entry = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 7
  %2 = ptrtoint ptr %bc_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_entry, align 4
  %call = tail call i32 @tipc_bcast_sync_rcv(ptr noundef %1, ptr noundef %3, ptr noundef %hdr, ptr noundef %xmitq) #14
  %and = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %5) #18
  tail call fastcc void @trace_tipc_node_reset_links(ptr noundef %n) #14
  tail call fastcc void @tipc_node_link_down(ptr noundef %n, i32 noundef 0, i1 noundef zeroext false) #14
  tail call fastcc void @tipc_node_link_down(ptr noundef %n, i32 noundef 1, i1 noundef zeroext false) #14
  tail call fastcc void @tipc_node_link_down(ptr noundef %n, i32 noundef 2, i1 noundef zeroext false) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %hdr, i32 0, i32 5
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %lock.i = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 2
  tail call void @_raw_read_lock_bh(ptr noundef %lock.i) #14
  %arrayidx = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 %bearer_id
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %if.then11

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = tail call i32 @tipc_link_build_state_msg(ptr noundef nonnull %9, ptr noundef %xmitq) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @tipc_link_acked(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_bcast_ack_rcv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_rcv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tipc_node_check_state(ptr noundef %n, ptr noundef %skb, i32 noundef %bearer_id, ptr noundef %xmitq) unnamed_addr #0 align 64 {
entry:
  %maddr = alloca ptr, align 4
  %pb_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shr.i.i = lshr i32 %3, 25
  %and.i.i = and i32 %shr.i.i, 15
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i.i268 = getelementptr [15 x i32], ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i.i268 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i268, align 4
  %conv.i = trunc i32 %7 to i16
  %arrayidx.i.i.i269 = getelementptr [15 x i32], ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %arrayidx.i.i.i269 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i269, align 4
  %shr.i.i270 = lshr i32 %9, 16
  %conv.i271 = trunc i32 %shr.i.i270 to i16
  %state5 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 10
  %10 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maddr) #14
  %12 = ptrtoint ptr %maddr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %maddr, align 4, !annotation !255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pb_id) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_check_state, i32 0, i32 1), ptr blockaddress(@tipc_node_check_state, %if.then)) #14
          to label %if.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @trace_tipc_skb_dump(ptr noundef %skb, ptr noundef nonnull @.str.65)
  tail call fastcc void @trace_tipc_node_check_state(ptr noundef %n)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 %bearer_id
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call zeroext i16 @tipc_link_rcv_nxt(ptr noundef nonnull %14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 170, i32 %11)
  %cmp = icmp eq i32 %11, 170
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.i.i)
  %cmp10 = icmp ne i32 %and.i.i, 10
  %spec.select = select i1 %cmp, i1 %cmp10, i1 false, !prof !241
  br i1 %spec.select, label %if.end8.cleanup_crit_edge, label %for.body.preheader, !prof !241

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.preheader:                               ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bearer_id)
  %cmp16.not = icmp eq i32 %bearer_id, 0
  br i1 %cmp16.not, label %land.lhs.true.1.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.preheader
  %arrayidx18 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 0
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx18, align 4
  %tobool20.not = icmp eq ptr %16, null
  br i1 %tobool20.not, label %for.inc, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bearer_id)
  %cmp16.not.1 = icmp eq i32 %bearer_id, 1
  br i1 %cmp16.not.1, label %for.inc.land.lhs.true.2_crit_edge, label %land.lhs.true.1

for.inc.land.lhs.true.2_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.2

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx18.1 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx18.1, align 4
  %tobool20.not.1 = icmp eq ptr %18, null
  br i1 %tobool20.not.1, label %for.inc.1, label %land.lhs.true.1.for.end_crit_edge

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true.1.thread:                           ; preds = %for.body.preheader
  %arrayidx18.1296 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %arrayidx18.1296 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx18.1296, align 4
  %tobool20.not.1297 = icmp eq ptr %20, null
  br i1 %tobool20.not.1297, label %land.lhs.true.1.thread.land.lhs.true.2_crit_edge, label %land.lhs.true.1.thread.for.end_crit_edge

land.lhs.true.1.thread.for.end_crit_edge:         ; preds = %land.lhs.true.1.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true.1.thread.land.lhs.true.2_crit_edge: ; preds = %land.lhs.true.1.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.2

for.inc.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bearer_id)
  %cmp16.not.2 = icmp eq i32 %bearer_id, 2
  br i1 %cmp16.not.2, label %for.inc.1.for.inc.2_crit_edge, label %for.inc.1.land.lhs.true.2_crit_edge

for.inc.1.land.lhs.true.2_crit_edge:              ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1.land.lhs.true.2_crit_edge, %land.lhs.true.1.thread.land.lhs.true.2_crit_edge, %for.inc.land.lhs.true.2_crit_edge
  %arrayidx18.2 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 2
  %21 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx18.2, align 4
  %tobool20.not.2 = icmp eq ptr %22, null
  br i1 %tobool20.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true.2.for.end_crit_edge

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  br label %for.end

for.end:                                          ; preds = %for.inc.2, %land.lhs.true.2.for.end_crit_edge, %land.lhs.true.1.thread.for.end_crit_edge, %land.lhs.true.1.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %storemerge.lcssa = phi i32 [ 0, %land.lhs.true.for.end_crit_edge ], [ 1, %land.lhs.true.1.for.end_crit_edge ], [ 2, %land.lhs.true.2.for.end_crit_edge ], [ 3, %for.inc.2 ], [ 1, %land.lhs.true.1.thread.for.end_crit_edge ]
  %pl.0 = phi ptr [ %16, %land.lhs.true.for.end_crit_edge ], [ %18, %land.lhs.true.1.for.end_crit_edge ], [ %22, %land.lhs.true.2.for.end_crit_edge ], [ null, %for.inc.2 ], [ %20, %land.lhs.true.1.thread.for.end_crit_edge ]
  %23 = ptrtoint ptr %pb_id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge.lcssa, ptr %pb_id, align 4
  %call26 = tail call zeroext i1 @tipc_link_validate_msg(ptr noundef nonnull %14, ptr noundef %1) #14
  br i1 %call26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @trace_tipc_skb_dump(ptr noundef %skb, ptr noundef nonnull @.str.66)
  tail call fastcc void @trace_tipc_link_dump(ptr noundef nonnull %14)
  br label %cleanup

if.end28:                                         ; preds = %for.end
  %24 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %11, label %if.end28.if.end46_crit_edge [
    i32 172, label %if.then30
    i32 209, label %if.then39
    i32 29, label %if.end28.cleanup_crit_edge
  ]

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28.if.end46_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then30:                                        ; preds = %if.end28
  %call31 = tail call zeroext i1 @tipc_link_is_up(ptr noundef nonnull %14) #14
  br i1 %call31, label %if.end33, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end33:                                         ; preds = %if.then30
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %27 = and i32 %26, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %27)
  %cmp.not.i = icmp eq i32 %27, 234881024
  br i1 %cmp.not.i, label %msg_peer_link_is_up.exit, label %if.end33.if.end36_crit_edge, !prof !238

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

msg_peer_link_is_up.exit:                         ; preds = %if.end33
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %29)
  %cmp3.i = icmp ult i32 %29, 536870912
  br i1 %cmp3.i, label %msg_peer_link_is_up.exit.if.end36_crit_edge, label %msg_peer_link_is_up.exit.cleanup_crit_edge

msg_peer_link_is_up.exit.cleanup_crit_edge:       ; preds = %msg_peer_link_is_up.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

msg_peer_link_is_up.exit.if.end36_crit_edge:      ; preds = %msg_peer_link_is_up.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.end36:                                         ; preds = %msg_peer_link_is_up.exit.if.end36_crit_edge, %if.end33.if.end36_crit_edge
  tail call fastcc void @tipc_node_fsm_evt(ptr noundef %n, i32 noundef 40654)
  br label %if.end46

if.then39:                                        ; preds = %if.end28
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %32 = and i32 %31, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %32)
  %cmp.not.i.i = icmp eq i32 %32, 234881024
  br i1 %cmp.not.i.i, label %msg_peer_link_is_up.exit.i, label %if.then39.cleanup_crit_edge, !prof !238

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

msg_peer_link_is_up.exit.i:                       ; preds = %if.then39
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %34)
  %cmp3.i.i = icmp ult i32 %34, 536870912
  br i1 %cmp3.i.i, label %msg_peer_link_is_up.exit.i.cleanup_crit_edge, label %msg_peer_node_is_up.exit

msg_peer_link_is_up.exit.i.cleanup_crit_edge:     ; preds = %msg_peer_link_is_up.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

msg_peer_node_is_up.exit:                         ; preds = %msg_peer_link_is_up.exit.i
  %arrayidx.i.i.i.i272 = getelementptr [15 x i32], ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %arrayidx.i.i.i.i272 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.i.i272, align 4
  %37 = and i32 %36, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not = icmp eq i32 %37, 0
  br i1 %tobool.i.not, label %if.end42, label %msg_peer_node_is_up.exit.cleanup_crit_edge

msg_peer_node_is_up.exit.cleanup_crit_edge:       ; preds = %msg_peer_node_is_up.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end42:                                         ; preds = %msg_peer_node_is_up.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @tipc_node_fsm_evt(ptr noundef %n, i32 noundef 37326)
  br label %cleanup

if.end46:                                         ; preds = %if.end36, %if.end28.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i.i)
  %cmp47.not = icmp eq i32 %and.i.i, 7
  br i1 %cmp47.not, label %if.end46.if.end76_crit_edge, label %land.lhs.true48

if.end46.if.end76_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

land.lhs.true48:                                  ; preds = %if.end46
  %38 = xor i16 %call9, -1
  %39 = add i16 %38, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %39)
  %tobool.not.i = icmp sgt i16 %39, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %call9, i16 %conv.i)
  %cmp.i = icmp eq i16 %call9, %conv.i
  %tobool50.not = or i1 %cmp.i, %tobool.not.i
  br i1 %tobool50.not, label %if.end52, label %land.lhs.true48.cleanup_crit_edge

land.lhs.true48.cleanup_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end52:                                         ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.i.i)
  %cmp53 = icmp eq i32 %and.i.i, 10
  %shr.i.i267.mask = and i32 %5, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.i.i267.mask)
  %cmp55 = icmp eq i32 %shr.i.i267.mask, 536870912
  %or.cond = select i1 %cmp53, i1 %cmp55, i1 false
  br i1 %or.cond, label %if.then56, label %if.end52.if.end76_crit_edge

if.end52.if.end76_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

if.then56:                                        ; preds = %if.end52
  %add = add i16 %conv.i271, -1
  %sub = add i16 %add, %conv.i
  %tobool59.not = icmp eq ptr %pl.0, null
  br i1 %tobool59.not, label %if.then56.if.end65_crit_edge, label %land.lhs.true60

if.then56.if.end65_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

land.lhs.true60:                                  ; preds = %if.then56
  %call61 = tail call zeroext i1 @tipc_link_is_reset(ptr noundef nonnull %pl.0) #14
  br i1 %call61, label %land.lhs.true60.if.end65_crit_edge, label %if.then62

land.lhs.true60.if.end65_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then62:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @__tipc_node_link_down(ptr noundef %n, ptr noundef nonnull %pb_id, ptr noundef %xmitq, ptr noundef nonnull %maddr)
  tail call fastcc void @trace_tipc_node_link_down(ptr noundef %n, ptr noundef nonnull @.str.67)
  %call63 = tail call ptr @tipc_link_inputq(ptr noundef nonnull %pl.0) #14
  %call64 = tail call ptr @tipc_link_inputq(ptr noundef nonnull %14) #14
  tail call fastcc void @tipc_skb_queue_splice_tail_init(ptr noundef %call63, ptr noundef %call64)
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %land.lhs.true60.if.end65_crit_edge, %if.then56.if.end65_crit_edge
  %40 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %41)
  %cmp67.not = icmp eq i32 %41, 240
  br i1 %cmp67.not, label %if.end65.if.end70_crit_edge, label %if.then69

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @tipc_node_link_failover(ptr noundef %n, ptr noundef %pl.0, ptr noundef nonnull %14, ptr noundef %xmitq)
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end65.if.end70_crit_edge
  %sync_point = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 13
  %42 = ptrtoint ptr %sync_point to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sync_point, align 2
  %44 = xor i16 %43, -1
  %45 = add i16 %sub, %44
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %45)
  %tobool.not.i275 = icmp sgt i16 %45, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %sub)
  %cmp.i276 = icmp eq i16 %43, %sub
  %tobool72.not = or i1 %cmp.i276, %tobool.not.i275
  br i1 %tobool72.not, label %if.end70.if.end76_crit_edge, label %if.then73

if.end70.if.end76_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %sync_point to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %sub, ptr %sync_point, align 2
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end70.if.end76_crit_edge, %if.end52.if.end76_crit_edge, %if.end46.if.end76_crit_edge
  %cmp53290 = phi i1 [ true, %if.end70.if.end76_crit_edge ], [ true, %if.then73 ], [ %cmp53, %if.end52.if.end76_crit_edge ], [ false, %if.end46.if.end76_crit_edge ]
  %47 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %48)
  %cmp78 = icmp eq i32 %48, 240
  br i1 %cmp78, label %land.lhs.true80, label %if.end76.if.end93_crit_edge

if.end76.if.end93_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93

land.lhs.true80:                                  ; preds = %if.end76
  %call81 = tail call zeroext i1 @tipc_link_is_up(ptr noundef nonnull %14) #14
  br i1 %call81, label %if.then83, label %land.lhs.true80.if.end93_crit_edge

land.lhs.true80.if.end93_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93

if.then83:                                        ; preds = %land.lhs.true80
  %sync_point84 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 13
  %49 = ptrtoint ptr %sync_point84 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sync_point84, align 2
  %51 = sub i16 %50, %call9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %51)
  %tobool86.not = icmp sgt i16 %51, -1
  br i1 %tobool86.not, label %if.then83.cleanup_crit_edge, label %if.end88

if.then83.cleanup_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end88:                                         ; preds = %if.then83
  tail call fastcc void @tipc_node_fsm_evt(ptr noundef %n, i32 noundef 4078)
  %tobool89.not = icmp eq ptr %pl.0, null
  br i1 %tobool89.not, label %if.end88.cleanup_crit_edge, label %if.then90

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  %call91 = tail call i32 @tipc_link_fsm_evt(ptr noundef nonnull %pl.0, i32 noundef -99545378) #14
  br label %cleanup

if.end93:                                         ; preds = %land.lhs.true80.if.end93_crit_edge, %if.end76.if.end93_crit_edge
  %tobool94.not = icmp eq ptr %pl.0, null
  br i1 %tobool94.not, label %if.end93.cleanup_crit_edge, label %lor.lhs.false

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end93
  %call95 = tail call zeroext i1 @tipc_link_is_up(ptr noundef nonnull %pl.0) #14
  br i1 %call95, label %if.end97, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end97:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %5)
  %cmp101 = icmp ult i32 %5, 536870912
  %or.cond263 = select i1 %cmp53290, i1 %cmp101, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv.i)
  %cmp105 = icmp eq i16 %conv.i, 1
  %or.cond264 = select i1 %or.cond263, i1 %cmp105, i1 false
  br i1 %or.cond264, label %if.then107, label %if.end97.if.end130thread-pre-split_crit_edge

if.end97.if.end130thread-pre-split_crit_edge:     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end130thread-pre-split

if.then107:                                       ; preds = %if.end97
  %capabilities = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 16
  %52 = ptrtoint ptr %capabilities to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %capabilities, align 2
  %54 = and i16 %53, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool109.not = icmp eq i16 %54, 0
  br i1 %tobool109.not, label %if.else, label %if.then110

if.then110:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %arrayidx.i.i.i269 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i.i269, align 4
  %shr.i.i279 = lshr i32 %56, 16
  %conv.i280 = trunc i32 %shr.i.i279 to i16
  br label %if.end119

if.else:                                          ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %1, align 4
  %59 = lshr i32 %58, 19
  %shl.i.i.i = and i32 %59, 60
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %shl.i.i.i
  %arrayidx.i.i.i281 = getelementptr [15 x i32], ptr %add.ptr.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %arrayidx.i.i.i281 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i.i281, align 4
  %conv.i282 = trunc i32 %61 to i16
  %add116 = add i16 %conv.i271, -1
  %sub117 = add i16 %add116, %conv.i282
  br label %if.end119

if.end119:                                        ; preds = %if.else, %if.then110
  %syncpt.0 = phi i16 [ %conv.i280, %if.then110 ], [ %sub117, %if.else ]
  %call120 = tail call zeroext i1 @tipc_link_is_up(ptr noundef nonnull %14) #14
  br i1 %call120, label %if.end119.if.end122_crit_edge, label %if.then121

if.end119.if.end122_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end122

if.then121:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__tipc_node_link_up(ptr noundef %n, i32 noundef %bearer_id, ptr noundef %xmitq)
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end119.if.end122_crit_edge
  %62 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 170, i32 %63)
  %cmp124 = icmp eq i32 %63, 170
  br i1 %cmp124, label %if.then126, label %if.end122.if.end130_crit_edge

if.end122.if.end130_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end130

if.then126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  %sync_point127 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 13
  %64 = ptrtoint ptr %sync_point127 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %syncpt.0, ptr %sync_point127, align 2
  %call128 = tail call i32 @tipc_link_fsm_evt(ptr noundef nonnull %14, i32 noundef 203213806) #14
  tail call fastcc void @tipc_node_fsm_evt(ptr noundef %n, i32 noundef 3262)
  br label %if.end130thread-pre-split

if.end130thread-pre-split:                        ; preds = %if.then126, %if.end97.if.end130thread-pre-split_crit_edge
  %65 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr = load i32, ptr %state5, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.end130thread-pre-split, %if.end122.if.end130_crit_edge
  %66 = phi i32 [ %.pr, %if.end130thread-pre-split ], [ %63, %if.end122.if.end130_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 204, i32 %66)
  %cmp132 = icmp eq i32 %66, 204
  br i1 %cmp132, label %if.then134, label %if.end130.cleanup_crit_edge

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then134:                                       ; preds = %if.end130
  %call135 = tail call zeroext i1 @tipc_link_is_synching(ptr noundef nonnull %14) #14
  %pl.0. = select i1 %call135, ptr %pl.0, ptr %14
  %call139 = tail call ptr @tipc_link_inputq(ptr noundef nonnull %pl.0.) #14
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %call139, i32 0, i32 1
  %67 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %qlen.i, align 4
  %call142 = tail call zeroext i16 @tipc_link_rcv_nxt(ptr noundef nonnull %pl.0.) #14
  %69 = trunc i32 %68 to i16
  %conv146.neg = sub i16 %69, %call142
  %sync_point147 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 13
  %70 = ptrtoint ptr %sync_point147 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %sync_point147, align 2
  %72 = add i16 %conv146.neg, %71
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %72)
  %tobool149.not = icmp sgt i16 %72, -1
  br i1 %tobool149.not, label %if.end152, label %if.then150

if.then150:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #16
  %.pl.0 = select i1 %call135, ptr %14, ptr %pl.0
  %call151 = tail call i32 @tipc_link_fsm_evt(ptr noundef nonnull %.pl.0, i32 noundef 203214558) #14
  tail call fastcc void @tipc_node_fsm_evt(ptr noundef %n, i32 noundef 3310)
  br label %cleanup

if.end152:                                        ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #16
  %cmp153 = icmp eq ptr %14, %pl.0.
  %or.cond266 = select i1 %cmp153, i1 true, i1 %or.cond263
  %spec.select291 = select i1 %or.cond266, i1 true, i1 %cmp47.not
  br label %cleanup

cleanup:                                          ; preds = %if.end152, %if.then150, %if.end130.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %if.then90, %if.end88.cleanup_crit_edge, %if.then83.cleanup_crit_edge, %land.lhs.true48.cleanup_crit_edge, %if.end42, %msg_peer_node_is_up.exit.cleanup_crit_edge, %msg_peer_link_is_up.exit.i.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %msg_peer_link_is_up.exit.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then27, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end42 ], [ true, %if.then150 ], [ false, %if.then27 ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.end8.cleanup_crit_edge ], [ true, %if.then30.cleanup_crit_edge ], [ true, %msg_peer_link_is_up.exit.cleanup_crit_edge ], [ false, %msg_peer_node_is_up.exit.cleanup_crit_edge ], [ false, %if.end28.cleanup_crit_edge ], [ true, %land.lhs.true48.cleanup_crit_edge ], [ true, %if.then83.cleanup_crit_edge ], [ true, %if.then90 ], [ true, %if.end88.cleanup_crit_edge ], [ true, %lor.lhs.false.cleanup_crit_edge ], [ true, %if.end93.cleanup_crit_edge ], [ true, %if.end130.cleanup_crit_edge ], [ false, %msg_peer_link_is_up.exit.i.cleanup_crit_edge ], [ false, %if.then39.cleanup_crit_edge ], [ %spec.select291, %if.end152 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pb_id) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maddr) #14
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_node_link_up(ptr noundef %n, i32 noundef %bearer_id, ptr noundef %xmitq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 2
  tail call void @_raw_write_lock_bh(ptr noundef %lock.i) #14
  tail call fastcc void @__tipc_node_link_up(ptr noundef %n, i32 noundef %bearer_id, ptr noundef %xmitq)
  %maddr1 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 %bearer_id, i32 4
  %net = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 3
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  tail call void @tipc_bearer_xmit(ptr noundef %1, i32 noundef %bearer_id, ptr noundef %xmitq, ptr noundef %maddr1, ptr noundef %n) #14
  tail call fastcc void @tipc_node_write_unlock(ptr noundef %n)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_named_rcv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_node_mcast_rcv(ptr noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 7, i32 3, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %inputq1 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 7, i32 1
  %lock1 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 7, i32 1, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock1) #14
  %arrvq = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %inputq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inputq1, align 4
  %cmp.i.not.i = icmp eq ptr %1, %inputq1
  br i1 %cmp.i.not.i, label %entry.skb_queue_splice_tail_init.exit_crit_edge, label %if.then.i

entry.skb_queue_splice_tail_init.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_queue_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 7, i32 2, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 7, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.83, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %prev5.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %1, ptr %3, align 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %arrvq, ptr %5, align 8
  store volatile ptr %5, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 7, i32 1, i32 1
  %9 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i, align 4
  %qlen1.i = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 7, i32 2, i32 1
  %11 = ptrtoint ptr %qlen1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen1.i, align 4
  %add.i = add i32 %12, %10
  store i32 %add.i, ptr %qlen1.i, align 4
  %13 = ptrtoint ptr %inputq1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %inputq1, ptr %inputq1, align 4
  store ptr %inputq1, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i, align 4
  br label %skb_queue_splice_tail_init.exit

skb_queue_splice_tail_init.exit:                  ; preds = %if.then.i, %entry.skb_queue_splice_tail_init.exit_crit_edge
  %inputq2 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 7, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock1) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  %net = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 3
  %14 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net, align 4
  tail call void @tipc_sk_mcast_rcv(ptr noundef %15, ptr noundef %arrvq, ptr noundef %inputq2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_node_apply_property(ptr noundef %net, ptr nocapture noundef readonly %b, i32 noundef %prop) local_unnamed_addr #0 align 64 {
entry:
  %xmitq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i50 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #14
  %identity = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 13
  %1 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %identity, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %xmitq) #14
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
  %8 = call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !243
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b49 = load i1, ptr @tipc_node_apply_property.__warned, align 1
  br i1 %.b49, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_node_apply_property.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2206, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %node_list = getelementptr inbounds %struct.tipc_net, ptr %call.i50, i32 0, i32 10
  %12 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn60 = load volatile ptr, ptr %node_list, align 4
  %cmp.not62 = icmp eq ptr %.pn60, %node_list
  br i1 %cmp.not62, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %mtu = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 1
  %tolerance = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %for.body.lr.ph
  %.pn63 = phi ptr [ %.pn60, %for.body.lr.ph ], [ %.pn, %if.end24.for.body_crit_edge ]
  %n.064 = getelementptr i8, ptr %.pn63, i32 -740
  %lock.i = getelementptr i8, ptr %.pn63, i32 -732
  call void @_raw_write_lock_bh(ptr noundef %lock.i) #14
  %links = getelementptr i8, ptr %.pn63, i32 -668
  %arrayidx = getelementptr [3 x %struct.tipc_link_entry], ptr %links, i32 0, i32 %2
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %for.body.if.end24_crit_edge, label %if.then12

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then12:                                        ; preds = %for.body
  %15 = zext i32 %prop to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %prop, label %if.then12.if.end20_crit_edge [
    i32 2, label %if.then14
    i32 4, label %if.then17
  ]

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %tolerance to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tolerance, align 4
  call void @tipc_link_set_tolerance(ptr noundef nonnull %14, i32 noundef %17, ptr noundef nonnull %xmitq) #14
  br label %if.end20

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mtu, align 4
  call void @tipc_link_set_mtu(ptr noundef nonnull %14, i32 noundef %19) #14
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then14, %if.then12.if.end20_crit_edge
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call22 = call i32 @tipc_link_mss(ptr noundef %21) #14
  %mtu23 = getelementptr inbounds %struct.tipc_link_entry, ptr %arrayidx, i32 0, i32 2
  %22 = ptrtoint ptr %mtu23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call22, ptr %mtu23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end20, %for.body.if.end24_crit_edge
  call fastcc void @tipc_node_write_unlock(ptr noundef %n.064)
  %maddr = getelementptr inbounds %struct.tipc_link_entry, ptr %arrayidx, i32 0, i32 4
  call void @tipc_bearer_xmit(ptr noundef %net, i32 noundef %2, ptr noundef nonnull %xmitq, ptr noundef %maddr, ptr noundef null) #14
  %23 = ptrtoint ptr %.pn63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load volatile ptr, ptr %.pn63, align 4
  %cmp.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp.not, label %if.end24.for.end_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end24.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i51 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i51, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i54

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i54:                                ; preds = %for.end
  %call1.i52 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i56

land.lhs.true.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i56:                               ; preds = %land.lhs.true.i54
  %.b4.i55 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55, label %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, label %if.then.i57

land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i57:                                      ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.61) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i57, %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !246
  %24 = call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i58 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i58 to ptr
  %preempt_count.i.i.i.i59 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i59, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i59, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %xmitq) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_set_tolerance(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_mss(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_peer_rm(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i121 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  %attrs = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %5 = load i32, ptr @tipc_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %attrs) #14
  %6 = getelementptr inbounds [6 x ptr], ptr %attrs, i32 0, i32 2
  %7 = getelementptr inbounds [6 x ptr], ptr %attrs, i32 0, i32 3
  %8 = getelementptr inbounds [6 x ptr], ptr %attrs, i32 0, i32 4
  %attrs3 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %9 = call ptr @memset(ptr %attrs, i32 255, i32 24)
  %10 = ptrtoint ptr %attrs3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attrs3, align 4
  %arrayidx4 = getelementptr ptr, ptr %11, i32 7
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %13, align 2
  %conv.i.i = zext i16 %17 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 5, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_net_policy, i32 noundef 0, ptr noundef %15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool8.not = icmp eq i32 %call2.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %6, align 4
  %tobool12.not = icmp eq ptr %19, null
  br i1 %tobool12.not, label %if.end10.if.end19_crit_edge, label %if.then13

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then13:                                        ; preds = %if.end10
  %add.ptr.i.i120 = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i120 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool16.not = icmp eq i32 %21, 0
  br i1 %tobool16.not, label %if.then13.cleanup_crit_edge, label %if.then13.if.end19_crit_edge

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.then13.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %addr.0 = phi i32 [ %21, %if.then13.if.end19_crit_edge ], [ -1, %if.end10.if.end19_crit_edge ]
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %7, align 4
  %tobool21.not = icmp eq ptr %23, null
  br i1 %tobool21.not, label %if.end19.if.end33_crit_edge, label %if.then22

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then22:                                        ; preds = %if.end19
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %8, align 4
  %tobool24.not = icmp eq ptr %25, null
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %if.end26

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #14
  %26 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 -1, ptr %tmp.i, align 8, !annotation !255
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %23, i32 noundef 8) #14
  %27 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #14
  %node_id.sroa.0.sroa.0.0.extract.shift = lshr i64 %28, 32
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i121) #14
  %31 = ptrtoint ptr %tmp.i121 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 -1, ptr %tmp.i121, align 8, !annotation !255
  %call.i122 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i121, ptr noundef %30, i32 noundef 8) #14
  %32 = ptrtoint ptr %tmp.i121 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tmp.i121, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i121) #14
  %xor.i139 = xor i64 %node_id.sroa.0.sroa.0.0.extract.shift, %28
  %node_id.sroa.13.8.extract.shift = lshr i64 %33, 32
  %xor3.i140 = xor i64 %xor.i139, %33
  %xor5.i141 = xor i64 %xor3.i140, %node_id.sroa.13.8.extract.shift
  %xor5.i = trunc i64 %xor5.i141 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor5.i)
  %tobool.not.i = icmp eq i32 %xor5.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end26.if.end33_crit_edge, !prof !238

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %or.i142 = or i64 %node_id.sroa.0.sroa.0.0.extract.shift, %28
  %or11.i143 = or i64 %or.i142, %33
  %or13.i144 = or i64 %or11.i143, %node_id.sroa.13.8.extract.shift
  %or13.i = trunc i64 %or13.i144 to i32
  br label %if.end33

if.end33:                                         ; preds = %if.end.i, %if.end26.if.end33_crit_edge, %if.end19.if.end33_crit_edge
  %addr.1 = phi i32 [ %addr.0, %if.end19.if.end33_crit_edge ], [ %or13.i, %if.end.i ], [ %xor5.i, %if.end26.if.end33_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %34 = load i32, ptr @tipc_net_id, align 4
  %call.i.i.i = call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %34) #14
  %node_addr.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %node_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %addr.1)
  %cmp.i = icmp ne i32 %36, %addr.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr.1)
  %tobool.not.i123 = icmp ne i32 %addr.1, 0
  %tobool35.not = and i1 %tobool.not.i123, %cmp.i
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %node_list_lock = getelementptr inbounds %struct.tipc_net, ptr %call1, i32 0, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %node_list_lock) #14
  %call38 = call fastcc ptr @tipc_node_find(ptr noundef %4, i32 noundef %addr.1)
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end37.cleanup.sink.split_crit_edge, label %if.end42

if.end37.cleanup.sink.split_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end42:                                         ; preds = %if.end37
  %lock.i = getelementptr inbounds %struct.tipc_node, ptr %call38, i32 0, i32 2
  call void @_raw_write_lock_bh(ptr noundef %lock.i) #14
  %state = getelementptr inbounds %struct.tipc_node, ptr %call38, i32 0, i32 10
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %38, label %if.then45 [
    i32 221, label %if.end42.if.end46_crit_edge
    i32 209, label %if.end42.if.end46_crit_edge145
  ]

if.end42.if.end46_crit_edge145:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @tipc_node_write_unlock(ptr noundef nonnull %call38)
  br label %err_out

if.end46:                                         ; preds = %if.end42.if.end46_crit_edge, %if.end42.if.end46_crit_edge145
  %link_cnt.i = getelementptr inbounds %struct.tipc_node, ptr %call38, i32 0, i32 14
  %arrayidx.i = getelementptr %struct.tipc_node, ptr %call38, i32 0, i32 6, i32 0
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i124 = icmp eq ptr %41, null
  br i1 %tobool.not.i124, label %if.end46.if.end.i125_crit_edge, label %if.then.i

if.end46.if.end.i125_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i125

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %41) #14
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx.i, align 4
  %43 = ptrtoint ptr %link_cnt.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %link_cnt.i, align 4
  %dec.i = add i32 %44, -1
  store i32 %dec.i, ptr %link_cnt.i, align 4
  br label %if.end.i125

if.end.i125:                                      ; preds = %if.then.i, %if.end46.if.end.i125_crit_edge
  %arrayidx.1.i = getelementptr %struct.tipc_node, ptr %call38, i32 0, i32 6, i32 1
  %45 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %46, null
  br i1 %tobool.not.1.i, label %if.end.i125.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i125.if.end.1.i_crit_edge:                 ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %46) #14
  %47 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx.1.i, align 4
  %48 = ptrtoint ptr %link_cnt.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %link_cnt.i, align 4
  %dec.1.i = add i32 %49, -1
  store i32 %dec.1.i, ptr %link_cnt.i, align 4
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i125.if.end.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.tipc_node, ptr %call38, i32 0, i32 6, i32 2
  %50 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %51, null
  br i1 %tobool.not.2.i, label %if.end.1.i.tipc_node_clear_links.exit_crit_edge, label %if.then.2.i

if.end.1.i.tipc_node_clear_links.exit_crit_edge:  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_clear_links.exit

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %51) #14
  %52 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx.2.i, align 4
  %53 = ptrtoint ptr %link_cnt.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %link_cnt.i, align 4
  %dec.2.i = add i32 %54, -1
  store i32 %dec.2.i, ptr %link_cnt.i, align 4
  br label %tipc_node_clear_links.exit

tipc_node_clear_links.exit:                       ; preds = %if.then.2.i, %if.end.1.i.tipc_node_clear_links.exit_crit_edge
  call fastcc void @tipc_node_write_unlock(ptr noundef nonnull %call38)
  call fastcc void @tipc_node_delete(ptr noundef nonnull %call38)
  %capabilities = getelementptr inbounds %struct.tipc_net, ptr %call1, i32 0, i32 24
  %55 = ptrtoint ptr %capabilities to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 4095, ptr %capabilities, align 4
  %call47 = call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true49, label %tipc_node_clear_links.exit.do.end_crit_edge

tipc_node_clear_links.exit.do.end_crit_edge:      ; preds = %tipc_node_clear_links.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true49:                                  ; preds = %tipc_node_clear_links.exit
  %call50 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true49.do.end_crit_edge, label %land.lhs.true52

land.lhs.true49.do.end_crit_edge:                 ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true52:                                  ; preds = %land.lhs.true49
  %.b119 = load i1, ptr @tipc_nl_peer_rm.__warned, align 1
  br i1 %.b119, label %land.lhs.true52.do.end_crit_edge, label %if.then54

land.lhs.true52.do.end_crit_edge:                 ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then54:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_nl_peer_rm.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2290, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then54, %land.lhs.true52.do.end_crit_edge, %land.lhs.true49.do.end_crit_edge, %tipc_node_clear_links.exit.do.end_crit_edge
  %node_list = getelementptr inbounds %struct.tipc_net, ptr %call1, i32 0, i32 10
  %56 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn136 = load volatile ptr, ptr %node_list, align 4
  %cmp61.not137 = icmp eq ptr %.pn136, %node_list
  br i1 %cmp61.not137, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn138 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn136, %do.end.for.body_crit_edge ]
  %capabilities62 = getelementptr i8, ptr %.pn138, i32 22
  %57 = ptrtoint ptr %capabilities62 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %capabilities62, align 2
  %59 = ptrtoint ptr %capabilities to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %capabilities, align 4
  %and118 = and i16 %60, %58
  store i16 %and118, ptr %capabilities, align 4
  %61 = ptrtoint ptr %.pn138 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn = load volatile ptr, ptr %.pn138, align 4
  %cmp61.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp61.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %62 = ptrtoint ptr %capabilities to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %capabilities, align 4
  %64 = and i16 %63, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool78 = icmp ne i16 %64, 0
  call void @tipc_bcast_toggle_rcast(ptr noundef %4, i1 noundef zeroext %tobool78) #14
  br label %err_out

err_out:                                          ; preds = %for.end, %if.then45
  %err.0 = phi i32 [ -16, %if.then45 ], [ 0, %for.end ]
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call38, i32 0, i32 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %err_out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup.sink.split_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.cleanup.sink.split_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %cleanup.sink.split

if.then.i.i:                                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %call38, i32 0, i32 7
  %66 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bc_entry.i.i.i, align 4
  call void @kfree(ptr noundef %67) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call38, i32 0, i32 25
  call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup.sink.split_crit_edge, %if.end37.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -6, %if.end37.cleanup.sink.split_crit_edge ], [ %err.0, %if.end5.i.i.i.i.i.cleanup.sink.split_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i ], [ %err.0, %if.then.i.i ]
  call void @_raw_spin_unlock_bh(ptr noundef %node_list_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end33.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.then13.cleanup_crit_edge ], [ -22, %if.then22.cleanup_crit_edge ], [ -524, %if.end33.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %attrs) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_node_dump(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %5 = load i32, ptr @tipc_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %5)
  %6 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %arrayidx2 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 12
  %13 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %portid, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %15 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nlmsg_seq, align 4
  %19 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !243
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %rcu_read_lock.exit.do.body_crit_edge, label %if.then8

rcu_read_lock.exit.do.body_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then8:                                         ; preds = %rcu_read_lock.exit
  %call9 = tail call fastcc ptr @tipc_node_find(ptr noundef %4, i32 noundef %10)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  %call.i85 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i85, label %if.then11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i88

if.then11.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i88:                                ; preds = %if.then11
  %call1.i86 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i86)
  %tobool.not.i87 = icmp eq i32 %call1.i86, 0
  br i1 %tobool.not.i87, label %land.lhs.true.i88.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i90

land.lhs.true.i88.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i90:                               ; preds = %land.lhs.true.i88
  %.b4.i89 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i89, label %land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge, label %if.then.i91

land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i90
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i91:                                      ; preds = %land.lhs.true2.i90
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.61) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i91, %land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i88.rcu_read_unlock.exit_crit_edge, %if.then11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !246
  %23 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i92 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i92 to ptr
  %preempt_count.i.i.i.i93 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i93, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i93, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %prev_seq = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %27 = ptrtoint ptr %prev_seq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %prev_seq, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call9, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.do.body_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.do.body_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %do.body

if.then.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %call9, i32 0, i32 7
  %29 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bc_entry.i.i.i, align 4
  tail call void @kfree(ptr noundef %30) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call9, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %do.body

do.body:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.do.body_crit_edge, %rcu_read_lock.exit.do.body_crit_edge
  %call14 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true18

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true18:                                  ; preds = %land.lhs.true
  %.b84 = load i1, ptr @tipc_nl_node_dump.__warned, align 1
  br i1 %.b84, label %land.lhs.true18.do.end_crit_edge, label %if.then20

land.lhs.true18.do.end_crit_edge:                 ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_nl_node_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2337, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then20, %land.lhs.true18.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %node_list = getelementptr inbounds %struct.tipc_net, ptr %call1, i32 0, i32 10
  %31 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn135 = load volatile ptr, ptr %node_list, align 4
  %cmp.not137 = icmp eq ptr %.pn135, %node_list
  br i1 %cmp.not137, label %do.end.out_crit_edge, label %for.body.lr.ph

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body.lr.ph:                                   ; preds = %do.end
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn139 = phi ptr [ %.pn135, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %last_addr.0138 = phi i32 [ %10, %for.body.lr.ph ], [ %last_addr.2, %for.inc.for.body_crit_edge ]
  %node.0140 = getelementptr i8, ptr %.pn139, i32 -740
  %preliminary = getelementptr i8, ptr %.pn139, i32 12
  %32 = ptrtoint ptr %preliminary to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %preliminary, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool27.not = icmp eq i8 %33, 0
  br i1 %tobool27.not, label %if.end29, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end29:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_addr.0138)
  %tobool30.not = icmp eq i32 %last_addr.0138, 0
  br i1 %tobool30.not, label %if.end29.if.end35_crit_edge, label %if.then31

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then31:                                        ; preds = %if.end29
  %34 = ptrtoint ptr %node.0140 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %node.0140, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %last_addr.0138)
  %cmp32 = icmp eq i32 %35, %last_addr.0138
  br i1 %cmp32, label %if.then31.if.end35_crit_edge, label %if.then31.for.inc_crit_edge

if.then31.for.inc_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then31.if.end35_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.end35:                                         ; preds = %if.then31.if.end35_crit_edge, %if.end29.if.end35_crit_edge
  %lock.i = getelementptr i8, ptr %.pn139, i32 -732
  call void @_raw_read_lock_bh(ptr noundef %lock.i) #14
  %call.i94 = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %14, i32 noundef %18, ptr noundef nonnull @tipc_genl_family, i32 noundef 2, i8 noundef zeroext 13) #14
  %tobool.not.i95 = icmp eq ptr %call.i94, null
  br i1 %tobool.not.i95, label %if.end35.if.then38_crit_edge, label %if.end.i

if.end35.if.then38_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38

if.end.i:                                         ; preds = %if.end35
  %36 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool3.not46.i = icmp eq ptr %37, null
  %tobool3.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool3.not46.i
  br i1 %tobool3.not.i, label %if.end.i.if.then.i.i96_crit_edge, label %if.end5.i

if.end.i.if.then.i.i96_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i96

if.end5.i:                                        ; preds = %if.end.i
  %38 = ptrtoint ptr %node.0140 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %node.0140, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #14
  %40 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end5.i.if.then.i.i.i_crit_edge

if.end5.i.if.then.i.i.i_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end10.i:                                       ; preds = %if.end5.i
  %active_links.i.i = getelementptr i8, ptr %.pn139, i32 -676
  %41 = ptrtoint ptr %active_links.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %active_links.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp.i39.not.i = icmp eq i32 %42, -1
  br i1 %cmp.i39.not.i, label %if.end10.i.if.end40_crit_edge, label %if.then12.i

if.end10.i.if.end40_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then12.i:                                      ; preds = %if.end10.i
  %call.i40.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %tobool15.not.i = icmp eq i32 %call.i40.i, 0
  br i1 %tobool15.not.i, label %if.then12.i.if.end40_crit_edge, label %if.then12.i.if.then.i.i.i_crit_edge

if.then12.i.if.then.i.i.i_crit_edge:              ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.then12.i.if.end40_crit_edge:                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then.i.i.i:                                    ; preds = %if.then12.i.if.then.i.i.i_crit_edge, %if.end5.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %43 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %44, %37
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !238

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.75, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %45 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i42.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i.i43.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i.i44.i = sub i32 %sub.ptr.lhs.cast.i.i42.i, %sub.ptr.rhs.cast.i.i43.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i44.i) #14
  br label %if.then.i.i96

if.then.i.i96:                                    ; preds = %nla_nest_cancel.exit.i, %if.end.i.if.then.i.i96_crit_edge
  %add.ptr1.i45.i = getelementptr i8, ptr %call.i94, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i45.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i96.if.then38_crit_edge, label %if.then.i.i.i.i

if.then.i.i96.if.then38_crit_edge:                ; preds = %if.then.i.i96
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38

if.then.i.i.i.i:                                  ; preds = %if.then.i.i96
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %47 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %48, %add.ptr1.i45.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !238

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.75, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %49 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i45.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #14
  br label %if.then38

if.then38:                                        ; preds = %if.end.i.i.i.i, %if.then.i.i96.if.then38_crit_edge, %if.end35.if.then38_crit_edge
  %51 = ptrtoint ptr %node.0140 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %node.0140, align 4
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  br label %out

if.end40:                                         ; preds = %if.then12.i.if.end40_crit_edge, %if.end10.i.if.end40_crit_edge
  %53 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %55 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i.i, ptr %37, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call.i94, i32 -20
  %56 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %57 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end40, %if.then31.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %last_addr.2 = phi i32 [ %last_addr.0138, %for.body.for.inc_crit_edge ], [ 0, %if.end40 ], [ %last_addr.0138, %if.then31.for.inc_crit_edge ]
  %58 = ptrtoint ptr %.pn139 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn = load volatile ptr, ptr %.pn139, align 4
  %cmp.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.then38, %do.end.out_crit_edge
  %last_addr.3 = phi i32 [ %52, %if.then38 ], [ %10, %do.end.out_crit_edge ], [ %last_addr.2, %for.inc.out_crit_edge ]
  %done.0 = phi i32 [ 0, %if.then38 ], [ 1, %do.end.out_crit_edge ], [ 1, %for.inc.out_crit_edge ]
  %59 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %done.0, ptr %6, align 4
  %60 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %last_addr.3, ptr %arrayidx2, align 4
  %call.i99 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i99, label %out.rcu_read_unlock.exit109_crit_edge, label %land.lhs.true.i102

out.rcu_read_unlock.exit109_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit109

land.lhs.true.i102:                               ; preds = %out
  %call1.i100 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i100)
  %tobool.not.i101 = icmp eq i32 %call1.i100, 0
  br i1 %tobool.not.i101, label %land.lhs.true.i102.rcu_read_unlock.exit109_crit_edge, label %land.lhs.true2.i104

land.lhs.true.i102.rcu_read_unlock.exit109_crit_edge: ; preds = %land.lhs.true.i102
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit109

land.lhs.true2.i104:                              ; preds = %land.lhs.true.i102
  %.b4.i103 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i103, label %land.lhs.true2.i104.rcu_read_unlock.exit109_crit_edge, label %if.then.i105

land.lhs.true2.i104.rcu_read_unlock.exit109_crit_edge: ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit109

if.then.i105:                                     ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.61) #14
  br label %rcu_read_unlock.exit109

rcu_read_unlock.exit109:                          ; preds = %if.then.i105, %land.lhs.true2.i104.rcu_read_unlock.exit109_crit_edge, %land.lhs.true.i102.rcu_read_unlock.exit109_crit_edge, %out.rcu_read_unlock.exit109_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !246
  %61 = call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i106 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i106 to ptr
  %preempt_count.i.i.i.i107 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i107, align 4
  %sub.i.i.i108 = add i32 %64, -1
  store volatile i32 %sub.i.i.i108, ptr %preempt_count.i.i.i.i107, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %65 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit109, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %66, %rcu_read_unlock.exit109 ], [ -32, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_node_set_link(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %bearer_id = alloca i32, align 4
  %xmitq = alloca %struct.sk_buff_head, align 4
  %attrs = alloca [11 x ptr], align 4
  %props = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bearer_id) #14
  %0 = ptrtoint ptr %bearer_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bearer_id, align 4, !annotation !255
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %xmitq) #14
  %1 = getelementptr inbounds i8, ptr %xmitq, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %attrs) #14
  %3 = call ptr @memset(ptr %attrs, i32 255, i32 44)
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  %9 = ptrtoint ptr %xmitq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %xmitq, ptr %xmitq, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %xmitq, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %xmitq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %11 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qlen.i, align 4
  %attrs1 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %12 = ptrtoint ptr %attrs1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %attrs1, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.cleanup59_crit_edge, label %if.end

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup59

if.end:                                           ; preds = %entry
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %15, align 2
  %conv.i.i = zext i16 %19 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 10, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_link_policy, i32 noundef 0, ptr noundef %17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool5.not = icmp eq i32 %call2.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup59_crit_edge

if.end.cleanup59_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup59

if.end7:                                          ; preds = %if.end
  %arrayidx8 = getelementptr inbounds [11 x ptr], ptr %attrs, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %21, null
  br i1 %tobool9.not, label %if.end7.cleanup59_crit_edge, label %if.end11

if.end7.cleanup59_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup59

if.end11:                                         ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  %call14 = call i32 @strcmp(ptr noundef %add.ptr.i, ptr noundef nonnull @tipc_bclink_name) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp eq i32 %call14, 0
  br i1 %cmp, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = call i32 @tipc_nl_bc_link_set(ptr noundef %8, ptr noundef nonnull %attrs) #14
  br label %cleanup59

if.end18:                                         ; preds = %if.end11
  %call19 = call fastcc ptr @tipc_node_find_by_name(ptr noundef %8, ptr noundef %add.ptr.i, ptr noundef nonnull %bearer_id)
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.cleanup59_crit_edge, label %if.end22

if.end18.cleanup59_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup59

if.end22:                                         ; preds = %if.end18
  %lock.i = getelementptr inbounds %struct.tipc_node, ptr %call19, i32 0, i32 2
  call void @_raw_read_lock_bh(ptr noundef %lock.i) #14
  %22 = ptrtoint ptr %bearer_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bearer_id, align 4
  %arrayidx23 = getelementptr %struct.tipc_node, ptr %call19, i32 0, i32 6, i32 %23
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx23, align 4
  %tobool25.not = icmp eq ptr %25, null
  br i1 %tobool25.not, label %if.end22.out_crit_edge, label %if.end27

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end27:                                         ; preds = %if.end22
  %arrayidx28 = getelementptr inbounds [11 x ptr], ptr %attrs, i32 0, i32 7
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %27, null
  br i1 %tobool29.not, label %if.end27.out_crit_edge, label %if.then30

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then30:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #14
  %28 = getelementptr inbounds [7 x ptr], ptr %props, i32 0, i32 1
  %29 = getelementptr inbounds [7 x ptr], ptr %props, i32 0, i32 3
  %30 = call ptr @memset(ptr %props, i32 255, i32 28)
  %call33 = call i32 @tipc_nl_parse_link_prop(ptr noundef nonnull %27, ptr noundef nonnull %props) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end36:                                         ; preds = %if.then30
  %31 = getelementptr inbounds [7 x ptr], ptr %props, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool38.not = icmp eq ptr %33, null
  br i1 %tobool38.not, label %if.end36.if.end42_crit_edge, label %if.then39

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i89 = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i89 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i89, align 4
  call void @tipc_link_set_tolerance(ptr noundef nonnull %25, i32 noundef %35, ptr noundef nonnull %xmitq) #14
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36.if.end42_crit_edge
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %28, align 4
  %tobool44.not = icmp eq ptr %37, null
  br i1 %tobool44.not, label %if.end42.if.end48_crit_edge, label %if.then45

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i90 = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i90 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i90, align 4
  call void @tipc_link_set_prio(ptr noundef nonnull %25, i32 noundef %39, ptr noundef nonnull %xmitq) #14
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end42.if.end48_crit_edge
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %29, align 4
  %tobool50.not = icmp eq ptr %41, null
  br i1 %tobool50.not, label %if.end48.cleanup_crit_edge, label %if.then51

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i91 = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i91 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i91, align 4
  %call54 = call i32 @tipc_link_min_win(ptr noundef nonnull %25) #14
  call void @tipc_link_set_queue_limits(ptr noundef nonnull %25, i32 noundef %call54, i32 noundef %43) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end48.cleanup_crit_edge, %if.then30.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #14
  br label %out

out:                                              ; preds = %cleanup, %if.end27.out_crit_edge, %if.end22.out_crit_edge
  %res.1 = phi i32 [ %call33, %cleanup ], [ 0, %if.end27.out_crit_edge ], [ -22, %if.end22.out_crit_edge ]
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  %maddr = getelementptr %struct.tipc_node, ptr %call19, i32 0, i32 6, i32 %23, i32 4
  call void @tipc_bearer_xmit(ptr noundef %8, i32 noundef %23, ptr noundef nonnull %xmitq, ptr noundef %maddr, ptr noundef null) #14
  br label %cleanup59

cleanup59:                                        ; preds = %out, %if.end18.cleanup59_crit_edge, %if.then15, %if.end7.cleanup59_crit_edge, %if.end.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then15 ], [ %res.1, %out ], [ -22, %entry.cleanup59_crit_edge ], [ %call2.i, %if.end.cleanup59_crit_edge ], [ -22, %if.end7.cleanup59_crit_edge ], [ -22, %if.end18.cleanup59_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %attrs) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %xmitq) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bearer_id) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_bc_link_set(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_node_find_by_name(ptr noundef %net, ptr nocapture noundef readonly %link_name, ptr nocapture noundef writeonly %bearer_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %bearer_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %bearer_id, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !243
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @tipc_node_find_by_name.__warned, align 1
  br i1 %.b47, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_node_find_by_name.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2385, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %node_list = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %for.end.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %node_list, %do.end ], [ %.pn, %for.end.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %n.0 = getelementptr i8, ptr %.pn, i32 -740
  %cmp.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp.not, label %for.cond.for.end34_crit_edge, label %for.body

for.cond.for.end34_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34

for.body:                                         ; preds = %for.cond
  %lock.i = getelementptr i8, ptr %.pn, i32 -732
  tail call void @_raw_read_lock_bh(ptr noundef %lock.i) #14
  %links = getelementptr i8, ptr %.pn, i32 -668
  %7 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %links, align 4
  %tobool14.not = icmp eq ptr %8, null
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %land.lhs.true15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true15:                                  ; preds = %for.body
  %call16 = tail call ptr @tipc_link_name(ptr noundef nonnull %8) #14
  %call17 = tail call i32 @strcmp(ptr noundef %call16, ptr noundef %link_name) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true15.if.then19_crit_edge, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true15.if.then19_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

if.then19:                                        ; preds = %land.lhs.true15.2.if.then19_crit_edge, %land.lhs.true15.1.if.then19_crit_edge, %land.lhs.true15.if.then19_crit_edge
  %i.059.lcssa = phi i32 [ 0, %land.lhs.true15.if.then19_crit_edge ], [ 1, %land.lhs.true15.1.if.then19_crit_edge ], [ 2, %land.lhs.true15.2.if.then19_crit_edge ]
  %9 = ptrtoint ptr %bearer_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %i.059.lcssa, ptr %bearer_id, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %arrayidx.1 = getelementptr i8, ptr %.pn, i32 -524
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool14.not.1 = icmp eq ptr %11, null
  br i1 %tobool14.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true15.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

land.lhs.true15.1:                                ; preds = %for.inc
  %call16.1 = tail call ptr @tipc_link_name(ptr noundef nonnull %11) #14
  %call17.1 = tail call i32 @strcmp(ptr noundef %call16.1, ptr noundef %link_name) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.1)
  %tobool18.not.1 = icmp eq i32 %call17.1, 0
  br i1 %tobool18.not.1, label %land.lhs.true15.1.if.then19_crit_edge, label %land.lhs.true15.1.for.inc.1_crit_edge

land.lhs.true15.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true15.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

land.lhs.true15.1.if.then19_crit_edge:            ; preds = %land.lhs.true15.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

for.inc.1:                                        ; preds = %land.lhs.true15.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr i8, ptr %.pn, i32 -380
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %tobool14.not.2 = icmp eq ptr %13, null
  br i1 %tobool14.not.2, label %for.inc.1.for.end_crit_edge, label %land.lhs.true15.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true15.2:                                ; preds = %for.inc.1
  %call16.2 = tail call ptr @tipc_link_name(ptr noundef nonnull %13) #14
  %call17.2 = tail call i32 @strcmp(ptr noundef %call16.2, ptr noundef %link_name) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.2)
  %tobool18.not.2 = icmp eq i32 %call17.2, 0
  br i1 %tobool18.not.2, label %land.lhs.true15.2.if.then19_crit_edge, label %land.lhs.true15.2.for.end_crit_edge

land.lhs.true15.2.for.end_crit_edge:              ; preds = %land.lhs.true15.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true15.2.if.then19_crit_edge:            ; preds = %land.lhs.true15.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

for.end:                                          ; preds = %land.lhs.true15.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %if.then19
  %found_node.1 = phi ptr [ %n.0, %if.then19 ], [ null, %land.lhs.true15.2.for.end_crit_edge ], [ null, %for.inc.1.for.end_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  %tobool21.not = icmp eq ptr %found_node.1, null
  br i1 %tobool21.not, label %for.end.for.cond_crit_edge, label %for.end.for.end34_crit_edge

for.end.for.end34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34

for.end.for.cond_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.end34:                                        ; preds = %for.end.for.end34_crit_edge, %for.cond.for.end34_crit_edge
  %found_node.2 = phi ptr [ %found_node.1, %for.end.for.end34_crit_edge ], [ null, %for.cond.for.end34_crit_edge ]
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i49, label %for.end34.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i52

for.end34.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i52:                                ; preds = %for.end34
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.61) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, %for.end34.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !246
  %14 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i56 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i56 to ptr
  %preempt_count.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i57, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i57, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %found_node.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_parse_link_prop(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_set_prio(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_set_queue_limits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_node_get_link(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %attrs = alloca [11 x ptr], align 4
  %msg = alloca %struct.tipc_nl_msg, align 4
  %bearer_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %attrs) #14
  %2 = call ptr @memset(ptr %attrs, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #14
  %3 = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 1
  %4 = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 2
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %snd_portid, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %3, align 4
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %info, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %4, align 4
  %attrs1 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %11 = ptrtoint ptr %attrs1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attrs1, align 4
  %arrayidx = getelementptr ptr, ptr %12, i32 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.cleanup46_crit_edge, label %if.end

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup46

if.end:                                           ; preds = %entry
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %14, align 2
  %conv.i.i = zext i16 %18 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 10, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_link_policy, i32 noundef 0, ptr noundef %16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool5.not = icmp eq i32 %call2.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup46_crit_edge

if.end.cleanup46_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup46

if.end7:                                          ; preds = %if.end
  %arrayidx8 = getelementptr inbounds [11 x ptr], ptr %attrs, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %20, null
  br i1 %tobool9.not, label %if.end7.cleanup46_crit_edge, label %if.end11

if.end7.cleanup46_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup46

if.end11:                                         ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %20, i32 4
  %call.i.i = call ptr @__alloc_skb(i32 noundef 3856, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i, ptr %msg, align 4
  %tobool17.not = icmp eq ptr %call.i.i, null
  br i1 %tobool17.not, label %if.end11.cleanup46_crit_edge, label %if.end19

if.end11.cleanup46_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup46

if.end19:                                         ; preds = %if.end11
  %call20 = call i32 @strcmp(ptr noundef %add.ptr.i, ptr noundef nonnull @tipc_bclink_name) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp eq i32 %call20, 0
  br i1 %cmp, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %22 = load i32, ptr @tipc_net_id, align 4
  %call.i = call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %22) #14
  %bcl = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 18
  %23 = ptrtoint ptr %bcl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bcl, align 4
  %call23 = call i32 @tipc_nl_add_bc_link(ptr noundef %1, ptr noundef nonnull %msg, ptr noundef %24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then21.if.end42_crit_edge, label %if.then21.err_free_crit_edge

if.then21.err_free_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free

if.then21.if.end42_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.else:                                          ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bearer_id) #14
  %25 = ptrtoint ptr %bearer_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %bearer_id, align 4, !annotation !255
  %call27 = call fastcc ptr @tipc_node_find_by_name(ptr noundef %1, ptr noundef %add.ptr.i, ptr noundef nonnull %bearer_id)
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.else.cleanup.thread_crit_edge, label %if.end30

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end30:                                         ; preds = %if.else
  %lock.i = getelementptr inbounds %struct.tipc_node, ptr %call27, i32 0, i32 2
  call void @_raw_read_lock_bh(ptr noundef %lock.i) #14
  %26 = ptrtoint ptr %bearer_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bearer_id, align 4
  %arrayidx31 = getelementptr %struct.tipc_node, ptr %call27, i32 0, i32 6, i32 %27
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx31, align 4
  %tobool33.not = icmp eq ptr %29, null
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  br label %cleanup.thread

if.end35:                                         ; preds = %if.end30
  %call36 = call i32 @__tipc_nl_add_link(ptr noundef %1, ptr noundef nonnull %msg, ptr noundef nonnull %29, i32 noundef 0) #14
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cleanup, label %if.end35.cleanup.thread_crit_edge

if.end35.cleanup.thread_crit_edge:                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end35.cleanup.thread_crit_edge, %if.then34, %if.else.cleanup.thread_crit_edge
  %err.0.ph = phi i32 [ %call36, %if.end35.cleanup.thread_crit_edge ], [ -22, %if.else.cleanup.thread_crit_edge ], [ -22, %if.then34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bearer_id) #14
  br label %err_free

cleanup:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bearer_id) #14
  br label %if.end42

if.end42:                                         ; preds = %cleanup, %if.then21.if.end42_crit_edge
  %30 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %msg, align 4
  %32 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_net.i, align 4
  %34 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %33, i32 0, i32 21
  %36 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = call i32 @netlink_unicast(ptr noundef %37, ptr noundef %31, i32 noundef %35, i32 noundef 64) #14
  %38 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #14
  br label %cleanup46

err_free:                                         ; preds = %cleanup.thread, %if.then21.err_free_crit_edge
  %err.1 = phi i32 [ %call23, %if.then21.err_free_crit_edge ], [ %err.0.ph, %cleanup.thread ]
  %39 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %msg, align 4
  call void @kfree_skb_reason(ptr noundef %40, i32 noundef 0) #14
  br label %cleanup46

cleanup46:                                        ; preds = %err_free, %if.end42, %if.end11.cleanup46_crit_edge, %if.end7.cleanup46_crit_edge, %if.end.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_free ], [ %38, %if.end42 ], [ -22, %entry.cleanup46_crit_edge ], [ %call2.i, %if.end.cleanup46_crit_edge ], [ -22, %if.end7.cleanup46_crit_edge ], [ -12, %if.end11.cleanup46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %attrs) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_add_bc_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tipc_nl_add_link(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_node_reset_link_stats(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %bearer_id = alloca i32, align 4
  %attrs = alloca [11 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bearer_id) #14
  %0 = ptrtoint ptr %bearer_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bearer_id, align 4, !annotation !255
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %attrs) #14
  %1 = call ptr @memset(ptr %attrs, i32 255, i32 44)
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %7 = load i32, ptr @tipc_net_id, align 4
  %call.i115 = tail call fastcc ptr @net_generic(ptr noundef %6, i32 noundef %7) #14
  %attrs2 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %attrs2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs2, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %11, align 2
  %conv.i.i = zext i16 %15 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 10, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_link_policy, i32 noundef 0, ptr noundef %13) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool6.not = icmp eq i32 %call2.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %arrayidx9 = getelementptr inbounds [11 x ptr], ptr %attrs, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  %call15 = call i32 @strcmp(ptr noundef %add.ptr.i, ptr noundef nonnull @tipc_bclink_name) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %18 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = call fastcc ptr @net_generic(ptr noundef %6, i32 noundef %18) #14
  %bcl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 18
  %19 = ptrtoint ptr %bcl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bcl.i, align 4
  %call19 = call i32 @tipc_bclink_reset_stats(ptr noundef %6, ptr noundef %20) #14
  br label %cleanup

if.else:                                          ; preds = %if.end12
  %call23 = call ptr @strstr(ptr noundef %add.ptr.i, ptr noundef nonnull @tipc_bclink_name)
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end58, label %if.then25

if.then25:                                        ; preds = %if.else
  %21 = call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !243
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.then25.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then25.rcu_read_lock.exit_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then25
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then25.rcu_read_lock.exit_crit_edge
  %call26 = call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call28 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true30

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true30:                                  ; preds = %land.lhs.true
  %.b114 = load i1, ptr @tipc_nl_node_reset_link_stats.__warned, align 1
  br i1 %.b114, label %land.lhs.true30.do.end_crit_edge, label %if.then32

land.lhs.true30.do.end_crit_edge:                 ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_nl_node_reset_link_stats.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2584, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then32, %land.lhs.true30.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %node_list = getelementptr inbounds %struct.tipc_net, ptr %call.i115, i32 0, i32 10
  %25 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn130 = load volatile ptr, ptr %node_list, align 4
  %cmp.not131 = icmp eq ptr %.pn130, %node_list
  br i1 %cmp.not131, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %if.end47.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn132 = phi ptr [ %.pn, %if.end47.for.body_crit_edge ], [ %.pn130, %do.end.for.body_crit_edge ]
  %lock.i = getelementptr i8, ptr %.pn132, i32 -732
  call void @_raw_read_lock_bh(ptr noundef %lock.i) #14
  %bc_entry = getelementptr i8, ptr %.pn132, i32 -236
  %26 = ptrtoint ptr %bc_entry to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bc_entry, align 4
  %tobool40.not = icmp eq ptr %27, null
  br i1 %tobool40.not, label %for.body.if.end47_crit_edge, label %land.lhs.true41

for.body.if.end47_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

land.lhs.true41:                                  ; preds = %for.body
  %call42 = call ptr @tipc_link_name(ptr noundef nonnull %27) #14
  %call43 = call i32 @strcmp(ptr noundef %add.ptr.i, ptr noundef %call42) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %land.lhs.true41.if.end47_crit_edge

land.lhs.true41.if.end47_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then45:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #16
  %call46 = call i32 @tipc_bclink_reset_stats(ptr noundef %6, ptr noundef nonnull %27) #14
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  br label %for.end

if.end47:                                         ; preds = %land.lhs.true41.if.end47_crit_edge, %for.body.if.end47_crit_edge
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  %28 = ptrtoint ptr %.pn132 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load volatile ptr, ptr %.pn132, align 4
  %cmp.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp.not, label %if.end47.for.end_crit_edge, label %if.end47.for.body_crit_edge

if.end47.for.body_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end47.for.end_crit_edge, %if.then45, %do.end.for.end_crit_edge
  %err.0 = phi i32 [ %call46, %if.then45 ], [ -22, %do.end.for.end_crit_edge ], [ -22, %if.end47.for.end_crit_edge ]
  %call.i118 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i118, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i121

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i121:                               ; preds = %for.end
  %call1.i119 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i119)
  %tobool.not.i120 = icmp eq i32 %call1.i119, 0
  br i1 %tobool.not.i120, label %land.lhs.true.i121.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i123

land.lhs.true.i121.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i123:                              ; preds = %land.lhs.true.i121
  %.b4.i122 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i122, label %land.lhs.true2.i123.rcu_read_unlock.exit_crit_edge, label %if.then.i124

land.lhs.true2.i123.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i123
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i124:                                     ; preds = %land.lhs.true2.i123
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.61) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i124, %land.lhs.true2.i123.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i121.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !246
  %29 = call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i125 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i125 to ptr
  %preempt_count.i.i.i.i126 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i126, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i126, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

if.end58:                                         ; preds = %if.else
  %call59 = call fastcc ptr @tipc_node_find_by_name(ptr noundef %6, ptr noundef %add.ptr.i, ptr noundef nonnull %bearer_id)
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %if.end58.cleanup_crit_edge, label %if.end62

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %33 = ptrtoint ptr %bearer_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bearer_id, align 4
  %lock.i127 = getelementptr inbounds %struct.tipc_node, ptr %call59, i32 0, i32 2
  call void @_raw_read_lock_bh(ptr noundef %lock.i127) #14
  %lock = getelementptr %struct.tipc_node, ptr %call59, i32 0, i32 6, i32 %34, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %arrayidx65 = getelementptr %struct.tipc_node, ptr %call59, i32 0, i32 6, i32 %34
  %35 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx65, align 4
  %tobool67.not = icmp eq ptr %36, null
  br i1 %tobool67.not, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  call void @_raw_read_unlock_bh(ptr noundef %lock.i127) #14
  br label %cleanup

if.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  call void @tipc_link_reset_stats(ptr noundef nonnull %36) #14
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  call void @_raw_read_unlock_bh(ptr noundef %lock.i127) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then68, %if.end58.cleanup_crit_edge, %rcu_read_unlock.exit, %if.then17, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %rcu_read_unlock.exit ], [ 0, %if.end70 ], [ -22, %if.then68 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ %call19, %if.then17 ], [ -22, %if.end58.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %attrs) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bearer_id) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_bclink_reset_stats(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_reset_stats(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_node_dump_link(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %link = alloca [11 x ptr], align 4
  %msg = alloca %struct.tipc_nl_msg, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %data.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %attrs2 = getelementptr inbounds %struct.genl_dumpit_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %attrs2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %attrs2, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %link) #14
  %9 = call ptr @memset(ptr %link, i32 255, i32 44)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %10 = load i32, ptr @tipc_net_id, align 4
  %call3 = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %10)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #14
  %11 = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 1
  %12 = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 2
  %13 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %arrayidx4 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool = icmp ne i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7.not = icmp eq i32 %19, 0
  br i1 %tobool7.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  %tobool8.not.not = xor i1 %tobool8.not, true
  %tobool10.not = icmp eq ptr %8, null
  %or.cond = select i1 %tobool8.not.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.end.if.end34_crit_edge, label %land.lhs.true

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end
  %arrayidx11 = getelementptr ptr, ptr %8, i32 4
  %22 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %23, null
  br i1 %tobool12.not, label %land.lhs.true.if.end34_crit_edge, label %if.then13

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then13:                                        ; preds = %land.lhs.true
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 2
  %conv.i.i = zext i16 %25 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %link, i32 noundef 10, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_link_policy, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool16.not = icmp eq i32 %call2.i, 0
  br i1 %tobool16.not, label %if.end20, label %if.then13.cleanup_crit_edge, !prof !241

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %if.then13
  %arrayidx21 = getelementptr inbounds [11 x ptr], ptr %link, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %27, null
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end20.if.end34_crit_edge, !prof !238

if.end20.if.end34_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end34:                                         ; preds = %if.end20.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %bc_link.0.shrunk = phi i1 [ %tobool, %if.end.if.end34_crit_edge ], [ %tobool, %land.lhs.true.if.end34_crit_edge ], [ true, %if.end20.if.end34_crit_edge ]
  %28 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %skb, ptr %msg, align 4
  %29 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 3, i32 12
  %31 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %portid, align 4
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %11, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %34 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nlmsg_seq, align 4
  %38 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %12, align 4
  %39 = call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !243
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end34.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end34.rcu_read_lock.exit_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end34
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end34.rcu_read_lock.exit_crit_edge
  br i1 %tobool8.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %rcu_read_lock.exit
  %call41 = call fastcc ptr @tipc_node_find(ptr noundef %4, i32 noundef %15)
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  %prev_seq = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %43 = ptrtoint ptr %prev_seq to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %prev_seq, align 4
  br label %out

if.end44:                                         ; preds = %if.then40
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %call41, i32 0, i32 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.tipc_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.tipc_node_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %tipc_node_put.exit

if.then.i.i:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %call41, i32 0, i32 7
  %45 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bc_entry.i.i.i, align 4
  call void @kfree(ptr noundef %46) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %call41, i32 0, i32 25
  call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %tipc_node_put.exit

tipc_node_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.tipc_node_put.exit_crit_edge
  %list = getelementptr inbounds %struct.tipc_node, ptr %call41, i32 0, i32 9
  %node_list = getelementptr inbounds %struct.tipc_net, ptr %call3, i32 0, i32 10
  %47 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn174236 = load volatile ptr, ptr %list, align 4
  %cmp.not238 = icmp eq ptr %.pn174236, %node_list
  br i1 %cmp.not238, label %tipc_node_put.exit.out_crit_edge, label %tipc_node_put.exit.for.body_crit_edge

tipc_node_put.exit.for.body_crit_edge:            ; preds = %tipc_node_put.exit
  br label %for.body

tipc_node_put.exit.out_crit_edge:                 ; preds = %tipc_node_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body:                                         ; preds = %if.end51.for.body_crit_edge, %tipc_node_put.exit.for.body_crit_edge
  %.pn174241 = phi ptr [ %.pn174, %if.end51.for.body_crit_edge ], [ %.pn174236, %tipc_node_put.exit.for.body_crit_edge ]
  %prev_node.0240 = phi i32 [ %57, %if.end51.for.body_crit_edge ], [ %15, %tipc_node_put.exit.for.body_crit_edge ]
  %prev_link.0239 = phi i32 [ 0, %if.end51.for.body_crit_edge ], [ %17, %tipc_node_put.exit.for.body_crit_edge ]
  %node.0242 = getelementptr i8, ptr %.pn174241, i32 -740
  %lock.i = getelementptr i8, ptr %.pn174241, i32 -732
  call void @_raw_read_lock_bh(ptr noundef %lock.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %prev_link.0239)
  %cmp32.i = icmp ult i32 %prev_link.0239, 3
  br i1 %cmp32.i, label %for.body.i, label %for.body.for.end.i_crit_edge

for.body.for.end.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.body
  %arrayidx.i = getelementptr %struct.tipc_node, ptr %node.0242, i32 0, i32 6, i32 %prev_link.0239
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i175 = icmp eq ptr %49, null
  br i1 %tobool.not.i175, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i176 = call i32 @__tipc_nl_add_link(ptr noundef %4, ptr noundef nonnull %msg, ptr noundef nonnull %49, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %tobool4.not.i = icmp eq i32 %call.i176, 0
  br i1 %tobool4.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.__tipc_nl_add_node_links.exit.thread_crit_edge

if.end.i.__tipc_nl_add_node_links.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_add_node_links.exit.thread

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %prev_link.0239, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.body.i.1

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.inc.i
  %arrayidx.i.1 = getelementptr %struct.tipc_node, ptr %node.0242, i32 0, i32 6, i32 %inc.i
  %50 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool.not.i175.1 = icmp eq ptr %51, null
  br i1 %tobool.not.i175.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %if.end.i.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.1

if.end.i.1:                                       ; preds = %for.body.i.1
  %call.i176.1 = call i32 @__tipc_nl_add_link(ptr noundef %4, ptr noundef nonnull %msg, ptr noundef nonnull %51, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176.1)
  %tobool4.not.i.1 = icmp eq i32 %call.i176.1, 0
  br i1 %tobool4.not.i.1, label %if.end.i.1.for.inc.i.1_crit_edge, label %if.end.i.1.__tipc_nl_add_node_links.exit.thread_crit_edge

if.end.i.1.__tipc_nl_add_node_links.exit.thread_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_add_node_links.exit.thread

if.end.i.1.for.inc.i.1_crit_edge:                 ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.end.i.1.for.inc.i.1_crit_edge, %for.body.i.1.for.inc.i.1_crit_edge
  %inc.i.1 = add i32 %prev_link.0239, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.1)
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, 3
  br i1 %exitcond.not.i.1, label %for.inc.i.1.for.end.i_crit_edge, label %for.body.i.2

for.inc.i.1.for.end.i_crit_edge:                  ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.inc.i.1
  %arrayidx.i.2 = getelementptr %struct.tipc_node, ptr %node.0242, i32 0, i32 6, i32 %inc.i.1
  %52 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.2, align 4
  %tobool.not.i175.2 = icmp eq ptr %53, null
  br i1 %tobool.not.i175.2, label %for.body.i.2.for.end.i_crit_edge, label %if.end.i.2

for.body.i.2.for.end.i_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end.i.2:                                       ; preds = %for.body.i.2
  %call.i176.2 = call i32 @__tipc_nl_add_link(ptr noundef %4, ptr noundef nonnull %msg, ptr noundef nonnull %53, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176.2)
  %tobool4.not.i.2 = icmp eq i32 %call.i176.2, 0
  br i1 %tobool4.not.i.2, label %if.end.i.2.for.end.i_crit_edge, label %if.end.i.2.__tipc_nl_add_node_links.exit.thread_crit_edge

if.end.i.2.__tipc_nl_add_node_links.exit.thread_crit_edge: ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_add_node_links.exit.thread

if.end.i.2.for.end.i_crit_edge:                   ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.2.for.end.i_crit_edge, %for.body.i.2.for.end.i_crit_edge, %for.inc.i.1.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %for.body.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %prev_link.0239, %for.body.for.end.i_crit_edge ], [ 3, %for.body.i.2.for.end.i_crit_edge ], [ 3, %if.end.i.2.for.end.i_crit_edge ], [ 3, %for.inc.i.1.for.end.i_crit_edge ], [ 3, %for.inc.i.for.end.i_crit_edge ]
  br i1 %bc_link.0.shrunk, label %if.then8.i, label %for.end.i.if.end51_crit_edge

for.end.i.if.end51_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then8.i:                                       ; preds = %for.end.i
  %bc_entry.i = getelementptr i8, ptr %.pn174241, i32 -236
  %54 = ptrtoint ptr %bc_entry.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bc_entry.i, align 4
  %call10.i = call i32 @tipc_nl_add_bc_link(ptr noundef %4, ptr noundef nonnull %msg, ptr noundef %55) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then8.i.if.end51_crit_edge, label %if.then8.i.__tipc_nl_add_node_links.exit.thread_crit_edge

if.then8.i.__tipc_nl_add_node_links.exit.thread_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_add_node_links.exit.thread

if.then8.i.if.end51_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

__tipc_nl_add_node_links.exit.thread:             ; preds = %if.then8.i.__tipc_nl_add_node_links.exit.thread_crit_edge, %if.end.i.2.__tipc_nl_add_node_links.exit.thread_crit_edge, %if.end.i.1.__tipc_nl_add_node_links.exit.thread_crit_edge, %if.end.i.__tipc_nl_add_node_links.exit.thread_crit_edge
  %prev_link.1.ph = phi i32 [ %prev_link.0239, %if.end.i.__tipc_nl_add_node_links.exit.thread_crit_edge ], [ %inc.i, %if.end.i.1.__tipc_nl_add_node_links.exit.thread_crit_edge ], [ %inc.i.1, %if.end.i.2.__tipc_nl_add_node_links.exit.thread_crit_edge ], [ %i.0.lcssa.i, %if.then8.i.__tipc_nl_add_node_links.exit.thread_crit_edge ]
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  br label %out

if.end51:                                         ; preds = %if.then8.i.if.end51_crit_edge, %for.end.i.if.end51_crit_edge
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #14
  %56 = ptrtoint ptr %node.0242 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %node.0242, align 4
  %58 = ptrtoint ptr %.pn174241 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn174 = load volatile ptr, ptr %.pn174241, align 4
  %cmp.not = icmp eq ptr %.pn174, %node_list
  br i1 %cmp.not, label %if.end51.out_crit_edge, label %if.end51.for.body_crit_edge

if.end51.for.body_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.else:                                          ; preds = %rcu_read_lock.exit
  %bcl = getelementptr inbounds %struct.tipc_net, ptr %call3, i32 0, i32 18
  %59 = ptrtoint ptr %bcl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bcl, align 4
  %call61 = call i32 @tipc_nl_add_bc_link(ptr noundef %4, ptr noundef nonnull %msg, ptr noundef %60) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.body65, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body65:                                        ; preds = %if.else
  %call66 = call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true68, label %do.body65.do.end76_crit_edge

do.body65.do.end76_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76

land.lhs.true68:                                  ; preds = %do.body65
  %call69 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true68.do.end76_crit_edge, label %land.lhs.true71

land.lhs.true68.do.end76_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %.b173 = load i1, ptr @tipc_nl_node_dump_link.__warned, align 1
  br i1 %.b173, label %land.lhs.true71.do.end76_crit_edge, label %if.then73

land.lhs.true71.do.end76_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76

if.then73:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_nl_node_dump_link.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2717, ptr noundef nonnull @.str.1) #14
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %land.lhs.true71.do.end76_crit_edge, %land.lhs.true68.do.end76_crit_edge, %do.body65.do.end76_crit_edge
  %node_list82 = getelementptr inbounds %struct.tipc_net, ptr %call3, i32 0, i32 10
  %61 = ptrtoint ptr %node_list82 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn245 = load volatile ptr, ptr %node_list82, align 4
  %cmp89.not247 = icmp eq ptr %.pn245, %node_list82
  br i1 %cmp89.not247, label %do.end76.out_crit_edge, label %do.end76.for.body90_crit_edge

do.end76.for.body90_crit_edge:                    ; preds = %do.end76
  br label %for.body90

do.end76.out_crit_edge:                           ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body90:                                       ; preds = %if.end95.for.body90_crit_edge, %do.end76.for.body90_crit_edge
  %.pn250 = phi ptr [ %.pn, %if.end95.for.body90_crit_edge ], [ %.pn245, %do.end76.for.body90_crit_edge ]
  %prev_node.1249 = phi i32 [ %71, %if.end95.for.body90_crit_edge ], [ 0, %do.end76.for.body90_crit_edge ]
  %prev_link.2248 = phi i32 [ 0, %if.end95.for.body90_crit_edge ], [ %17, %do.end76.for.body90_crit_edge ]
  %node.1251 = getelementptr i8, ptr %.pn250, i32 -740
  %lock.i178 = getelementptr i8, ptr %.pn250, i32 -732
  call void @_raw_read_lock_bh(ptr noundef %lock.i178) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %prev_link.2248)
  %cmp32.i179 = icmp ult i32 %prev_link.2248, 3
  br i1 %cmp32.i179, label %for.body.i183, label %for.body90.for.end.i191_crit_edge

for.body90.for.end.i191_crit_edge:                ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i191

for.body.i183:                                    ; preds = %for.body90
  %arrayidx.i181 = getelementptr %struct.tipc_node, ptr %node.1251, i32 0, i32 6, i32 %prev_link.2248
  %62 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i181, align 4
  %tobool.not.i182 = icmp eq ptr %63, null
  br i1 %tobool.not.i182, label %for.body.i183.for.inc.i189_crit_edge, label %if.end.i186

for.body.i183.for.inc.i189_crit_edge:             ; preds = %for.body.i183
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i189

if.end.i186:                                      ; preds = %for.body.i183
  %call.i184 = call i32 @__tipc_nl_add_link(ptr noundef %4, ptr noundef nonnull %msg, ptr noundef nonnull %63, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool4.not.i185 = icmp eq i32 %call.i184, 0
  br i1 %tobool4.not.i185, label %if.end.i186.for.inc.i189_crit_edge, label %if.end.i186.__tipc_nl_add_node_links.exit198.thread_crit_edge

if.end.i186.__tipc_nl_add_node_links.exit198.thread_crit_edge: ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_add_node_links.exit198.thread

if.end.i186.for.inc.i189_crit_edge:               ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i189

for.inc.i189:                                     ; preds = %if.end.i186.for.inc.i189_crit_edge, %for.body.i183.for.inc.i189_crit_edge
  %inc.i187 = add i32 %prev_link.2248, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i187)
  %exitcond.not.i188 = icmp eq i32 %inc.i187, 3
  br i1 %exitcond.not.i188, label %for.inc.i189.for.end.i191_crit_edge, label %for.body.i183.1

for.inc.i189.for.end.i191_crit_edge:              ; preds = %for.inc.i189
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i191

for.body.i183.1:                                  ; preds = %for.inc.i189
  %arrayidx.i181.1 = getelementptr %struct.tipc_node, ptr %node.1251, i32 0, i32 6, i32 %inc.i187
  %64 = ptrtoint ptr %arrayidx.i181.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i181.1, align 4
  %tobool.not.i182.1 = icmp eq ptr %65, null
  br i1 %tobool.not.i182.1, label %for.body.i183.1.for.inc.i189.1_crit_edge, label %if.end.i186.1

for.body.i183.1.for.inc.i189.1_crit_edge:         ; preds = %for.body.i183.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i189.1

if.end.i186.1:                                    ; preds = %for.body.i183.1
  %call.i184.1 = call i32 @__tipc_nl_add_link(ptr noundef %4, ptr noundef nonnull %msg, ptr noundef nonnull %65, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184.1)
  %tobool4.not.i185.1 = icmp eq i32 %call.i184.1, 0
  br i1 %tobool4.not.i185.1, label %if.end.i186.1.for.inc.i189.1_crit_edge, label %if.end.i186.1.__tipc_nl_add_node_links.exit198.thread_crit_edge

if.end.i186.1.__tipc_nl_add_node_links.exit198.thread_crit_edge: ; preds = %if.end.i186.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_add_node_links.exit198.thread

if.end.i186.1.for.inc.i189.1_crit_edge:           ; preds = %if.end.i186.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i189.1

for.inc.i189.1:                                   ; preds = %if.end.i186.1.for.inc.i189.1_crit_edge, %for.body.i183.1.for.inc.i189.1_crit_edge
  %inc.i187.1 = add i32 %prev_link.2248, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i187.1)
  %exitcond.not.i188.1 = icmp eq i32 %inc.i187.1, 3
  br i1 %exitcond.not.i188.1, label %for.inc.i189.1.for.end.i191_crit_edge, label %for.body.i183.2

for.inc.i189.1.for.end.i191_crit_edge:            ; preds = %for.inc.i189.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i191

for.body.i183.2:                                  ; preds = %for.inc.i189.1
  %arrayidx.i181.2 = getelementptr %struct.tipc_node, ptr %node.1251, i32 0, i32 6, i32 %inc.i187.1
  %66 = ptrtoint ptr %arrayidx.i181.2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i181.2, align 4
  %tobool.not.i182.2 = icmp eq ptr %67, null
  br i1 %tobool.not.i182.2, label %for.body.i183.2.for.end.i191_crit_edge, label %if.end.i186.2

for.body.i183.2.for.end.i191_crit_edge:           ; preds = %for.body.i183.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i191

if.end.i186.2:                                    ; preds = %for.body.i183.2
  %call.i184.2 = call i32 @__tipc_nl_add_link(ptr noundef %4, ptr noundef nonnull %msg, ptr noundef nonnull %67, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184.2)
  %tobool4.not.i185.2 = icmp eq i32 %call.i184.2, 0
  br i1 %tobool4.not.i185.2, label %if.end.i186.2.for.end.i191_crit_edge, label %if.end.i186.2.__tipc_nl_add_node_links.exit198.thread_crit_edge

if.end.i186.2.__tipc_nl_add_node_links.exit198.thread_crit_edge: ; preds = %if.end.i186.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_add_node_links.exit198.thread

if.end.i186.2.for.end.i191_crit_edge:             ; preds = %if.end.i186.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i191

for.end.i191:                                     ; preds = %if.end.i186.2.for.end.i191_crit_edge, %for.body.i183.2.for.end.i191_crit_edge, %for.inc.i189.1.for.end.i191_crit_edge, %for.inc.i189.for.end.i191_crit_edge, %for.body90.for.end.i191_crit_edge
  %i.0.lcssa.i190 = phi i32 [ %prev_link.2248, %for.body90.for.end.i191_crit_edge ], [ 3, %for.body.i183.2.for.end.i191_crit_edge ], [ 3, %if.end.i186.2.for.end.i191_crit_edge ], [ 3, %for.inc.i189.1.for.end.i191_crit_edge ], [ 3, %for.inc.i189.for.end.i191_crit_edge ]
  br i1 %bc_link.0.shrunk, label %if.then8.i195, label %for.end.i191.if.end95_crit_edge

for.end.i191.if.end95_crit_edge:                  ; preds = %for.end.i191
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95

if.then8.i195:                                    ; preds = %for.end.i191
  %bc_entry.i192 = getelementptr i8, ptr %.pn250, i32 -236
  %68 = ptrtoint ptr %bc_entry.i192 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bc_entry.i192, align 4
  %call10.i193 = call i32 @tipc_nl_add_bc_link(ptr noundef %4, ptr noundef nonnull %msg, ptr noundef %69) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i193)
  %tobool11.not.i194 = icmp eq i32 %call10.i193, 0
  br i1 %tobool11.not.i194, label %if.then8.i195.if.end95_crit_edge, label %if.then8.i195.__tipc_nl_add_node_links.exit198.thread_crit_edge

if.then8.i195.__tipc_nl_add_node_links.exit198.thread_crit_edge: ; preds = %if.then8.i195
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_add_node_links.exit198.thread

if.then8.i195.if.end95_crit_edge:                 ; preds = %if.then8.i195
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95

__tipc_nl_add_node_links.exit198.thread:          ; preds = %if.then8.i195.__tipc_nl_add_node_links.exit198.thread_crit_edge, %if.end.i186.2.__tipc_nl_add_node_links.exit198.thread_crit_edge, %if.end.i186.1.__tipc_nl_add_node_links.exit198.thread_crit_edge, %if.end.i186.__tipc_nl_add_node_links.exit198.thread_crit_edge
  %prev_link.3.ph = phi i32 [ %prev_link.2248, %if.end.i186.__tipc_nl_add_node_links.exit198.thread_crit_edge ], [ %inc.i187, %if.end.i186.1.__tipc_nl_add_node_links.exit198.thread_crit_edge ], [ %inc.i187.1, %if.end.i186.2.__tipc_nl_add_node_links.exit198.thread_crit_edge ], [ %i.0.lcssa.i190, %if.then8.i195.__tipc_nl_add_node_links.exit198.thread_crit_edge ]
  call void @_raw_read_unlock_bh(ptr noundef %lock.i178) #14
  br label %out

if.end95:                                         ; preds = %if.then8.i195.if.end95_crit_edge, %for.end.i191.if.end95_crit_edge
  call void @_raw_read_unlock_bh(ptr noundef %lock.i178) #14
  %70 = ptrtoint ptr %node.1251 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %node.1251, align 4
  %72 = ptrtoint ptr %.pn250 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn = load volatile ptr, ptr %.pn250, align 4
  %cmp89.not = icmp eq ptr %.pn, %node_list82
  br i1 %cmp89.not, label %if.end95.out_crit_edge, label %if.end95.for.body90_crit_edge

if.end95.for.body90_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body90

if.end95.out_crit_edge:                           ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %if.end95.out_crit_edge, %__tipc_nl_add_node_links.exit198.thread, %do.end76.out_crit_edge, %if.else.out_crit_edge, %if.end51.out_crit_edge, %__tipc_nl_add_node_links.exit.thread, %tipc_node_put.exit.out_crit_edge, %if.then43
  %prev_link.4 = phi i32 [ %17, %if.else.out_crit_edge ], [ %17, %if.then43 ], [ %prev_link.1.ph, %__tipc_nl_add_node_links.exit.thread ], [ %prev_link.3.ph, %__tipc_nl_add_node_links.exit198.thread ], [ %17, %do.end76.out_crit_edge ], [ %17, %tipc_node_put.exit.out_crit_edge ], [ 0, %if.end95.out_crit_edge ], [ 0, %if.end51.out_crit_edge ]
  %done.0 = phi i32 [ 0, %if.else.out_crit_edge ], [ 0, %if.then43 ], [ 0, %__tipc_nl_add_node_links.exit.thread ], [ 0, %__tipc_nl_add_node_links.exit198.thread ], [ 1, %do.end76.out_crit_edge ], [ 1, %tipc_node_put.exit.out_crit_edge ], [ 1, %if.end95.out_crit_edge ], [ 1, %if.end51.out_crit_edge ]
  %prev_node.3 = phi i32 [ 0, %if.else.out_crit_edge ], [ %15, %if.then43 ], [ %prev_node.0240, %__tipc_nl_add_node_links.exit.thread ], [ %prev_node.1249, %__tipc_nl_add_node_links.exit198.thread ], [ 0, %do.end76.out_crit_edge ], [ %15, %tipc_node_put.exit.out_crit_edge ], [ %71, %if.end95.out_crit_edge ], [ %57, %if.end51.out_crit_edge ]
  %call.i200 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i200, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i203

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i203:                               ; preds = %out
  %call1.i201 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i201)
  %tobool.not.i202 = icmp eq i32 %call1.i201, 0
  br i1 %tobool.not.i202, label %land.lhs.true.i203.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i205

land.lhs.true.i203.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i203
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i205:                              ; preds = %land.lhs.true.i203
  %.b4.i204 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i204, label %land.lhs.true2.i205.rcu_read_unlock.exit_crit_edge, label %if.then.i206

land.lhs.true2.i205.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i205
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i206:                                     ; preds = %land.lhs.true2.i205
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.61) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i206, %land.lhs.true2.i205.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i203.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !246
  %73 = call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i207 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i207 to ptr
  %preempt_count.i.i.i.i208 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i.i208, align 4
  %sub.i.i.i = add i32 %76, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i208, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %77 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %prev_node.3, ptr %13, align 4
  %78 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %prev_link.4, ptr %arrayidx4, align 4
  %79 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %done.0, ptr %arrayidx5, align 4
  %conv = zext i1 %bc_link.0.shrunk to i32
  %80 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv, ptr %arrayidx6, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %81 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end20.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %82, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call2.i, %if.then13.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %link) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_node_set_monitor(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %attrs = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %attrs) #14
  %0 = getelementptr inbounds [7 x ptr], ptr %attrs, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %2 = call ptr @memset(ptr %attrs, i32 255, i32 28)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %attrs1 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %7 = ptrtoint ptr %attrs1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %attrs1, align 4
  %arrayidx = getelementptr ptr, ptr %8, i32 9
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup18_crit_edge, label %if.end

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup18

if.end:                                           ; preds = %entry
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %10, align 2
  %conv.i.i = zext i16 %14 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_monitor_policy, i32 noundef 0, ptr noundef %12) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool5.not = icmp eq i32 %call2.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup18_crit_edge

if.end.cleanup18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup18

if.end7:                                          ; preds = %if.end
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %if.end7.if.end17_crit_edge, label %if.then10

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then10:                                        ; preds = %if.end7
  %add.ptr.i.i27 = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i27, align 4
  %call13 = call i32 @tipc_nl_monitor_set_threshold(ptr noundef %6, i32 noundef %18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then10.if.end17_crit_edge, label %if.then10.cleanup18_crit_edge

if.then10.cleanup18_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup18

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.end17:                                         ; preds = %if.then10.if.end17_crit_edge, %if.end7.if.end17_crit_edge
  br label %cleanup18

cleanup18:                                        ; preds = %if.end17, %if.then10.cleanup18_crit_edge, %if.end.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  %retval.1 = phi i32 [ 0, %if.end17 ], [ %call13, %if.then10.cleanup18_crit_edge ], [ -22, %entry.cleanup18_crit_edge ], [ %call2.i, %if.end.cleanup18_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %attrs) #14
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_monitor_set_threshold(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_node_get_monitor(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3856, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %snd_portid, align 4
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %info, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %6, i32 noundef %8, ptr noundef nonnull @tipc_genl_family, i32 noundef 0, i8 noundef zeroext 18) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.if.then6_crit_edge, label %if.end.i

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6

if.end.i:                                         ; preds = %if.end
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 9, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool3.not36.i = icmp eq ptr %10, null
  %tobool3.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool3.not36.i
  br i1 %tobool3.not.i, label %if.end.i.if.then.i.i_crit_edge, label %if.end5.i

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @tipc_nl_monitor_get_threshold(ptr noundef %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #14
  %11 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call6.i, ptr %tmp.i.i, align 4
  %call.i.i16 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16)
  %tobool9.not.i = icmp eq i32 %call.i.i16, 0
  br i1 %tobool9.not.i, label %if.end8, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end5.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %13, %10
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !238

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.75, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %14 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i32.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i33.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i34.i = sub i32 %sub.ptr.lhs.cast.i.i32.i, %sub.ptr.rhs.cast.i.i33.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i34.i) #14
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %nla_nest_cancel.exit.i, %if.end.i.if.then.i.i_crit_edge
  %add.ptr1.i35.i = getelementptr i8, ptr %call.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i35.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then6_crit_edge, label %if.then.i.i.i.i

if.then.i.i.if.then6_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %17, %add.ptr1.i35.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !238

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.75, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %18 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i35.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i.i.i) #14
  br label %if.then6

if.then6:                                         ; preds = %if.end.i.i.i.i, %if.then.i.i.if.then6_crit_edge, %if.end.if.then6_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i.i, ptr %10, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call.i, i32 -20
  %23 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %24 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %25 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_net.i.i, align 4
  %27 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 21
  %29 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = call i32 @netlink_unicast(ptr noundef %30, ptr noundef nonnull %call.i.i, i32 noundef %28, i32 noundef 64) #14
  %31 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %if.then6 ], [ %31, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_node_dump_monitor(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.tipc_nl_msg, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 2
  %9 = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %skb, ptr %msg, align 4
  %11 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 12
  %13 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %portid, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %9, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %16 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nlmsg_seq, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %8, align 4
  tail call void @rtnl_lock() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp523 = icmp slt i32 %7, 3
  br i1 %cmp523, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %bearer_id.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %7, %if.end.for.body_crit_edge ]
  %call6 = call i32 @__tipc_nl_add_monitor(ptr noundef %4, ptr noundef nonnull %msg, i32 noundef %bearer_id.024) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add i32 %bearer_id.024, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %bearer_id.0.lcssa = phi i32 [ %7, %if.end.for.end_crit_edge ], [ %bearer_id.024, %for.body.for.end_crit_edge ], [ 3, %for.inc.for.end_crit_edge ]
  call void @rtnl_unlock() #14
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %bearer_id.0.lcssa, ptr %5, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tipc_nl_add_monitor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_node_dump_monitor_peer(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %prev_node = alloca i32, align 4
  %msg = alloca %struct.tipc_nl_msg, align 4
  %mon = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev_node) #14
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %prev_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %prev_node, align 4
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #14
  %13 = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 1
  %14 = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %attrs4 = getelementptr inbounds %struct.genl_dumpit_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %attrs4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attrs4, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %mon) #14
  %19 = getelementptr inbounds [7 x ptr], ptr %mon, i32 0, i32 2
  %arrayidx5 = getelementptr ptr, ptr %18, i32 9
  %20 = call ptr @memset(ptr %mon, i32 255, i32 28)
  %21 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %22, null
  br i1 %tobool6.not, label %if.then.cleanup.thread_crit_edge, label %if.end

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end:                                           ; preds = %if.then
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %22, align 2
  %conv.i.i = zext i16 %24 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %mon, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_monitor_policy, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool10.not = icmp eq i32 %call2.i, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end12:                                         ; preds = %if.end
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %19, align 4
  %tobool14.not = icmp eq ptr %26, null
  br i1 %tobool14.not, label %if.end12.cleanup.thread_crit_edge, label %cleanup

if.end12.cleanup.thread_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end12.cleanup.thread_crit_edge, %if.end.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.end12.cleanup.thread_crit_edge ], [ %call2.i, %if.end.cleanup.thread_crit_edge ], [ -22, %if.then.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mon) #14
  br label %cleanup37

cleanup:                                          ; preds = %if.end12
  %add.ptr.i.i62 = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i62 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp = icmp ult i32 %28, 3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mon) #14
  br i1 %cmp, label %cleanup.if.end22_crit_edge, label %cleanup.cleanup37_crit_edge

cleanup.cleanup37_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup37

cleanup.if.end22_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.end22:                                         ; preds = %cleanup.if.end22_crit_edge, %entry.if.end22_crit_edge
  %bearer_id.1 = phi i32 [ %10, %entry.if.end22_crit_edge ], [ %28, %cleanup.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool23.not = icmp eq i32 %12, 0
  br i1 %tobool23.not, label %if.end25, label %if.end22.cleanup37_crit_edge

if.end22.cleanup37_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup37

if.end25:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %skb, ptr %msg, align 4
  %30 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 3, i32 12
  %32 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %portid, align 4
  %34 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %13, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %35 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nlmsg_seq, align 4
  %39 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %14, align 4
  call void @rtnl_lock() #14
  %call30 = call i32 @tipc_nl_add_monitor_peer(ptr noundef %4, ptr noundef nonnull %msg, i32 noundef %bearer_id.1, ptr noundef nonnull %prev_node) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  %spec.select = zext i1 %tobool31.not to i32
  call void @rtnl_unlock() #14
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.select, ptr %5, align 4
  %41 = ptrtoint ptr %prev_node to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %prev_node, align 4
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx, align 4
  %44 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %bearer_id.1, ptr %arrayidx1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  br label %cleanup37

cleanup37:                                        ; preds = %if.end25, %if.end22.cleanup37_crit_edge, %cleanup.cleanup37_crit_edge, %cleanup.thread
  %retval.1 = phi i32 [ %46, %if.end25 ], [ -22, %cleanup.cleanup37_crit_edge ], [ 0, %if.end22.cleanup37_crit_edge ], [ %retval.0.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_node) #14
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_add_monitor_peer(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_node_set_key(ptr nocapture noundef readonly %skb, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %attrs.i = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #14
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %attrs.i) #14
  %0 = getelementptr inbounds [7 x ptr], ptr %attrs.i, i32 0, i32 3
  %1 = getelementptr inbounds [7 x ptr], ptr %attrs.i, i32 0, i32 4
  %2 = getelementptr inbounds [7 x ptr], ptr %attrs.i, i32 0, i32 5
  %3 = getelementptr inbounds [7 x ptr], ptr %attrs.i, i32 0, i32 6
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %5 = call ptr @memset(ptr %attrs.i, i32 255, i32 28)
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %4, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %10 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %9, i32 noundef %10) #14
  %crypto_tx.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 26
  %11 = ptrtoint ptr %crypto_tx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crypto_tx.i, align 4
  %attrs2.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %13 = ptrtoint ptr %attrs2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attrs2.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %14, i32 6
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %entry.__tipc_nl_node_set_key.exit_crit_edge, label %if.end.i

entry.__tipc_nl_node_set_key.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_node_set_key.exit

if.end.i:                                         ; preds = %entry
  %extack.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %17 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %extack.i, align 4
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %nla_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %tobool.not.i.i = icmp sgt i16 %20, -1
  br i1 %tobool.not.i.i, label %do.body.i.i, label %nla_parse_nested.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #14
  %tobool1.not.i.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.__tipc_nl_node_set_key.exit_crit_edge, label %if.then2.i.i

do.body.i.i.__tipc_nl_node_set_key.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_node_set_key.exit

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @nla_parse_nested.__msg, ptr %18, align 4
  %bad_attr.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %bad_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %16, ptr %bad_attr.i.i, align 4
  %policy3.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %policy3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %policy3.i.i, align 4
  br label %__tipc_nl_node_set_key.exit

nla_parse_nested.exit.i:                          ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 4
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %16, align 2
  %conv.i.i.i = zext i16 %25 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call6.i.i = call i32 @__nla_parse(ptr noundef nonnull %attrs.i, i32 noundef 6, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @tipc_nl_node_policy, i32 noundef 31, ptr noundef %18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool6.not.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %nla_parse_nested.exit.i.__tipc_nl_node_set_key.exit_crit_edge

nla_parse_nested.exit.i.__tipc_nl_node_set_key.exit_crit_edge: ; preds = %nla_parse_nested.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_node_set_key.exit

if.end8.i:                                        ; preds = %nla_parse_nested.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %26 = load i32, ptr @tipc_net_id, align 4
  %call.i.i.i = call fastcc ptr @net_generic(ptr noundef %9, i32 noundef %26) #14
  %node_id_string.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %node_id_string.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %char0.i.i = load i8, ptr %node_id_string.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i.i)
  %tobool.not.i148.i = icmp eq i8 %char0.i.i, 0
  %tobool10.not200.i = icmp eq ptr %call.i.i.i, null
  %tobool10.not.i = select i1 %tobool.not.i148.i, i1 true, i1 %tobool10.not200.i
  br i1 %tobool10.not.i, label %do.body.i, label %if.end16.i

do.body.i:                                        ; preds = %if.end8.i
  %28 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %extack.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @__tipc_nl_node_set_key.__msg) #14
  %tobool13.not.i = icmp eq ptr %29, null
  br i1 %tobool13.not.i, label %do.body.i.__tipc_nl_node_set_key.exit_crit_edge, label %if.then14.i

do.body.i.__tipc_nl_node_set_key.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_node_set_key.exit

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @__tipc_nl_node_set_key.__msg, ptr %29, align 4
  br label %__tipc_nl_node_set_key.exit

if.end16.i:                                       ; preds = %if.end8.i
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %tobool.not.i149.i = icmp eq ptr %32, null
  br i1 %tobool.not.i149.i, label %tipc_nl_retrieve_rekeying.exit.i, label %tipc_nl_retrieve_rekeying.exit.thread.i

tipc_nl_retrieve_rekeying.exit.i:                 ; preds = %if.end16.i
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %tobool.not.i152.i = icmp eq ptr %34, null
  br i1 %tobool.not.i152.i, label %tipc_nl_retrieve_rekeying.exit.i.__tipc_nl_node_set_key.exit_crit_edge, label %tipc_nl_retrieve_rekeying.exit.i.if.end.i155.i_crit_edge

tipc_nl_retrieve_rekeying.exit.i.if.end.i155.i_crit_edge: ; preds = %tipc_nl_retrieve_rekeying.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i155.i

tipc_nl_retrieve_rekeying.exit.i.__tipc_nl_node_set_key.exit_crit_edge: ; preds = %tipc_nl_retrieve_rekeying.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_node_set_key.exit

tipc_nl_retrieve_rekeying.exit.thread.i:          ; preds = %if.end16.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %32, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %tobool.not.i152202.i = icmp eq ptr %38, null
  br i1 %tobool.not.i152202.i, label %tipc_nl_retrieve_rekeying.exit.thread.i.rekeying94.i_crit_edge, label %tipc_nl_retrieve_rekeying.exit.thread.i.if.end.i155.i_crit_edge

tipc_nl_retrieve_rekeying.exit.thread.i.if.end.i155.i_crit_edge: ; preds = %tipc_nl_retrieve_rekeying.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i155.i

tipc_nl_retrieve_rekeying.exit.thread.i.rekeying94.i_crit_edge: ; preds = %tipc_nl_retrieve_rekeying.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rekeying94.i

if.end.i155.i:                                    ; preds = %tipc_nl_retrieve_rekeying.exit.thread.i.if.end.i155.i_crit_edge, %tipc_nl_retrieve_rekeying.exit.i.if.end.i155.i_crit_edge
  %39 = phi ptr [ %38, %tipc_nl_retrieve_rekeying.exit.thread.i.if.end.i155.i_crit_edge ], [ %34, %tipc_nl_retrieve_rekeying.exit.i.if.end.i155.i_crit_edge ]
  %intv.0204.i = phi i32 [ %36, %tipc_nl_retrieve_rekeying.exit.thread.i.if.end.i155.i_crit_edge ], [ 0, %tipc_nl_retrieve_rekeying.exit.i.if.end.i155.i_crit_edge ]
  %40 = xor i1 %tobool.not.i149.i, true
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %39, align 2
  %conv.i.i153.i = zext i16 %42 to i32
  %sub.i.i154.i = add nsw i32 %conv.i.i153.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %sub.i.i154.i)
  %cmp.i.i = icmp ult i32 %sub.i.i154.i, 36
  br i1 %cmp.i.i, label %if.end.i155.i.__tipc_nl_node_set_key.exit_crit_edge, label %if.end2.i.i

if.end.i155.i.__tipc_nl_node_set_key.exit_crit_edge: ; preds = %if.end.i155.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_node_set_key.exit

if.end2.i.i:                                      ; preds = %if.end.i155.i
  %keylen.i.i = getelementptr i8, ptr %39, i32 36
  %43 = ptrtoint ptr %keylen.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %keylen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %44)
  %cmp4.i.i = icmp ugt i32 %44, 36
  %add.i.i.i = add nuw nsw i32 %44, 36
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i154.i, i32 %add.i.i.i)
  %cmp7.i.i = icmp slt i32 %sub.i.i154.i, %add.i.i.i
  %or.cond.i.i = select i1 %cmp4.i.i, i1 true, i1 %cmp7.i.i
  br i1 %or.cond.i.i, label %if.end2.i.i.__tipc_nl_node_set_key.exit_crit_edge, label %if.end29.i

if.end2.i.i.__tipc_nl_node_set_key.exit_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_node_set_key.exit

if.end29.i:                                       ; preds = %if.end2.i.i
  %add.ptr.i.i156.i = getelementptr i8, ptr %39, i32 4
  %call30.i = call i32 @tipc_aead_key_validate(ptr noundef %add.ptr.i.i156.i, ptr noundef %info) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end29.i.__tipc_nl_node_set_key.exit_crit_edge

if.end29.i.__tipc_nl_node_set_key.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_node_set_key.exit

if.end33.i:                                       ; preds = %if.end29.i
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %tobool.not.i159.i = icmp eq ptr %46, null
  br i1 %tobool.not.i159.i, label %sw.bb.i, label %if.end.i161.i

if.end.i161.i:                                    ; preds = %if.end33.i
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %46, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %48)
  %cmp.i160.i = icmp ult i16 %48, 20
  br i1 %cmp.i160.i, label %if.end.i161.i.__tipc_nl_node_set_key.exit_crit_edge, label %sw.bb39.i

if.end.i161.i.__tipc_nl_node_set_key.exit_crit_edge: ; preds = %if.end.i161.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_node_set_key.exit

sw.bb.i:                                          ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %2, align 4
  %tobool37.i = icmp ne ptr %50, null
  br label %sw.epilog.thread.i

sw.bb39.i:                                        ; preds = %if.end.i161.i
  %add.ptr.i.i162.i = getelementptr i8, ptr %46, i32 4
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %add.ptr.i.i162.i, ptr noundef nonnull dereferenceable(16) %call.i.i.i, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool41.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool41.not.i, label %sw.bb39.i.sw.epilog.thread.i_crit_edge, label %if.then42.i

sw.bb39.i.sw.epilog.thread.i_crit_edge:           ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.thread.i

if.then42.i:                                      ; preds = %sw.bb39.i
  %call43.i = call fastcc ptr @tipc_node_find_by_id(ptr noundef %9, ptr noundef %add.ptr.i.i162.i) #14
  %tobool44.not.i = icmp eq ptr %call43.i, null
  br i1 %tobool44.not.i, label %cond.end.i, label %if.then42.i.if.then57.i_crit_edge

if.then42.i.if.then57.i_crit_edge:                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then57.i

cond.end.i:                                       ; preds = %if.then42.i
  %call45.i = call ptr @tipc_node_create(ptr noundef %9, i32 noundef 0, ptr noundef %add.ptr.i.i162.i, i16 noundef zeroext -1, i32 noundef 0, i1 noundef zeroext true) #14
  %tobool46.not.i = icmp eq ptr %call45.i, null
  br i1 %tobool46.not.i, label %cond.end.i.__tipc_nl_node_set_key.exit_crit_edge, label %cond.end.i.if.then57.i_crit_edge, !prof !238

cond.end.i.if.then57.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then57.i

cond.end.i.__tipc_nl_node_set_key.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_node_set_key.exit

sw.epilog.thread.i:                               ; preds = %sw.bb39.i.sw.epilog.thread.i_crit_edge, %sw.bb.i
  %master_key.0.off0.ph.i = phi i1 [ %tobool37.i, %sw.bb.i ], [ false, %sw.bb39.i.sw.epilog.thread.i_crit_edge ]
  %mode.0.ph.i = phi i8 [ 1, %sw.bb.i ], [ 2, %sw.bb39.i.sw.epilog.thread.i_crit_edge ]
  %call55195.i = call i32 @tipc_crypto_key_init(ptr noundef %12, ptr noundef %add.ptr.i.i156.i, i8 noundef zeroext %mode.0.ph.i, i1 noundef zeroext %master_key.0.off0.ph.i) #14
  br label %if.end58.i

if.then57.i:                                      ; preds = %cond.end.i.if.then57.i_crit_edge, %if.then42.i.if.then57.i_crit_edge
  %cond190.i = phi ptr [ %call45.i, %cond.end.i.if.then57.i_crit_edge ], [ %call43.i, %if.then42.i.if.then57.i_crit_edge ]
  %crypto_rx.i = getelementptr inbounds %struct.tipc_node, ptr %cond190.i, i32 0, i32 29
  %51 = ptrtoint ptr %crypto_rx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %crypto_rx.i, align 4
  %call55.i = call i32 @tipc_crypto_key_init(ptr noundef %52, ptr noundef %add.ptr.i.i156.i, i8 noundef zeroext 2, i1 noundef zeroext false) #14
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %cond190.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %53 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end58.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.if.end58.i_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %if.end58.i

if.then.i.i:                                      ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %cond190.i, i32 0, i32 7
  %54 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bc_entry.i.i.i, align 4
  call void @kfree(ptr noundef %55) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %cond190.i, i32 0, i32 25
  call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end58.i_crit_edge, %sw.epilog.thread.i
  %call55199.i = phi i32 [ %call55195.i, %sw.epilog.thread.i ], [ %call55.i, %if.end5.i.i.i.i.i.if.end58.i_crit_edge ], [ %call55.i, %if.then10.i.i.i.i.i ], [ %call55.i, %if.then.i.i ]
  %master_key.0.off0198.i = phi i1 [ %master_key.0.off0.ph.i, %sw.epilog.thread.i ], [ false, %if.end5.i.i.i.i.i.if.end58.i_crit_edge ], [ false, %if.then10.i.i.i.i.i ], [ false, %if.then.i.i ]
  %c.0197.i = phi ptr [ %12, %sw.epilog.thread.i ], [ %52, %if.end5.i.i.i.i.i.if.end58.i_crit_edge ], [ %52, %if.then10.i.i.i.i.i ], [ %52, %if.then.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55199.i)
  %cmp59.i = icmp slt i32 %call55199.i, 0
  br i1 %cmp59.i, label %do.body67.i, label %if.else76.i, !prof !238

do.body67.i:                                      ; preds = %if.end58.i
  %56 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %extack.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @__tipc_nl_node_set_key.__msg.76) #14
  %tobool70.not.i = icmp eq ptr %57, null
  br i1 %tobool70.not.i, label %do.body67.i.__tipc_nl_node_set_key.exit_crit_edge, label %if.then71.i

do.body67.i.__tipc_nl_node_set_key.exit_crit_edge: ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_node_set_key.exit

if.then71.i:                                      ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @__tipc_nl_node_set_key.__msg.76, ptr %57, align 4
  br label %__tipc_nl_node_set_key.exit

if.else76.i:                                      ; preds = %if.end58.i
  %cmp77.i = icmp eq ptr %c.0197.i, %12
  br i1 %cmp77.i, label %if.then78.i, label %if.else76.i.__tipc_nl_node_set_key.exit_crit_edge

if.else76.i.__tipc_nl_node_set_key.exit_crit_edge: ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_node_set_key.exit

if.then78.i:                                      ; preds = %if.else76.i
  br i1 %master_key.0.off0198.i, label %if.then78.i.rekeying94.i_crit_edge, label %land.lhs.true80.i

if.then78.i.rekeying94.i_crit_edge:               ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rekeying94.i

land.lhs.true80.i:                                ; preds = %if.then78.i
  %conv.i = trunc i32 %call55199.i to i8
  %call81.i = call i32 @tipc_crypto_key_distr(ptr noundef %12, i8 noundef zeroext %conv.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %land.lhs.true80.i.rekeying94.i_crit_edge, label %do.body84.i

land.lhs.true80.i.rekeying94.i_crit_edge:         ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rekeying94.i

do.body84.i:                                      ; preds = %land.lhs.true80.i
  %59 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %extack.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @__tipc_nl_node_set_key.__msg.77) #14
  %tobool87.not.i = icmp eq ptr %60, null
  br i1 %tobool87.not.i, label %do.body84.i.rekeying94.i_crit_edge, label %if.then88.i

do.body84.i.rekeying94.i_crit_edge:               ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rekeying94.i

if.then88.i:                                      ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @__tipc_nl_node_set_key.__msg.77, ptr %60, align 4
  br label %rekeying94.i

rekeying94.i:                                     ; preds = %if.then88.i, %do.body84.i.rekeying94.i_crit_edge, %land.lhs.true80.i.rekeying94.i_crit_edge, %if.then78.i.rekeying94.i_crit_edge, %tipc_nl_retrieve_rekeying.exit.thread.i.rekeying94.i_crit_edge
  %62 = phi i1 [ %40, %do.body84.i.rekeying94.i_crit_edge ], [ %40, %if.then88.i ], [ %40, %if.then78.i.rekeying94.i_crit_edge ], [ %40, %land.lhs.true80.i.rekeying94.i_crit_edge ], [ true, %tipc_nl_retrieve_rekeying.exit.thread.i.rekeying94.i_crit_edge ]
  %intv.0203.i = phi i32 [ %intv.0204.i, %do.body84.i.rekeying94.i_crit_edge ], [ %intv.0204.i, %if.then88.i ], [ %intv.0204.i, %if.then78.i.rekeying94.i_crit_edge ], [ %intv.0204.i, %land.lhs.true80.i.rekeying94.i_crit_edge ], [ %36, %tipc_nl_retrieve_rekeying.exit.thread.i.rekeying94.i_crit_edge ]
  call void @tipc_crypto_rekeying_sched(ptr noundef %12, i1 noundef zeroext %62, i32 noundef %intv.0203.i) #14
  br label %__tipc_nl_node_set_key.exit

__tipc_nl_node_set_key.exit:                      ; preds = %rekeying94.i, %if.else76.i.__tipc_nl_node_set_key.exit_crit_edge, %if.then71.i, %do.body67.i.__tipc_nl_node_set_key.exit_crit_edge, %cond.end.i.__tipc_nl_node_set_key.exit_crit_edge, %if.end.i161.i.__tipc_nl_node_set_key.exit_crit_edge, %if.end29.i.__tipc_nl_node_set_key.exit_crit_edge, %if.end2.i.i.__tipc_nl_node_set_key.exit_crit_edge, %if.end.i155.i.__tipc_nl_node_set_key.exit_crit_edge, %tipc_nl_retrieve_rekeying.exit.i.__tipc_nl_node_set_key.exit_crit_edge, %if.then14.i, %do.body.i.__tipc_nl_node_set_key.exit_crit_edge, %nla_parse_nested.exit.i.__tipc_nl_node_set_key.exit_crit_edge, %if.then2.i.i, %do.body.i.i.__tipc_nl_node_set_key.exit_crit_edge, %entry.__tipc_nl_node_set_key.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__tipc_nl_node_set_key.exit_crit_edge ], [ %call6.i.i, %nla_parse_nested.exit.i.__tipc_nl_node_set_key.exit_crit_edge ], [ -1, %if.then14.i ], [ -1, %do.body.i.__tipc_nl_node_set_key.exit_crit_edge ], [ %call30.i, %if.end29.i.__tipc_nl_node_set_key.exit_crit_edge ], [ -12, %cond.end.i.__tipc_nl_node_set_key.exit_crit_edge ], [ %call55199.i, %if.then71.i ], [ %call55199.i, %do.body67.i.__tipc_nl_node_set_key.exit_crit_edge ], [ 0, %if.else76.i.__tipc_nl_node_set_key.exit_crit_edge ], [ 0, %rekeying94.i ], [ -22, %if.then2.i.i ], [ -22, %do.body.i.i.__tipc_nl_node_set_key.exit_crit_edge ], [ -22, %if.end2.i.i.__tipc_nl_node_set_key.exit_crit_edge ], [ -22, %if.end.i155.i.__tipc_nl_node_set_key.exit_crit_edge ], [ -22, %if.end.i161.i.__tipc_nl_node_set_key.exit_crit_edge ], [ -61, %tipc_nl_retrieve_rekeying.exit.i.__tipc_nl_node_set_key.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %attrs.i) #14
  call void @rtnl_unlock() #14
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_node_flush_key(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #14
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %5 = load i32, ptr @tipc_net_id, align 4
  %call.i2.i = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %5) #14
  %crypto_tx.i = getelementptr inbounds %struct.tipc_net, ptr %call.i2.i, i32 0, i32 26
  %6 = ptrtoint ptr %crypto_tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crypto_tx.i, align 4
  tail call void @tipc_crypto_key_flush(ptr noundef %7) #14
  %8 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !243
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %call2.i = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @__tipc_nl_node_flush_key.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__tipc_nl_node_flush_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 3049, ptr noundef nonnull @.str.1) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %node_list.i = getelementptr inbounds %struct.tipc_net, ptr %call.i2.i, i32 0, i32 10
  %12 = ptrtoint ptr %node_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn12.i = load volatile ptr, ptr %node_list.i, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, %node_list.i
  br i1 %cmp.not13.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn14.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn12.i, %do.end.i.for.body.i_crit_edge ]
  %crypto_rx.i = getelementptr i8, ptr %.pn14.i, i32 172
  %13 = ptrtoint ptr %crypto_rx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crypto_rx.i, align 4
  tail call void @tipc_crypto_key_flush(ptr noundef %14) #14
  %15 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i = load volatile ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %node_list.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i3.i, label %for.end.i.__tipc_nl_node_flush_key.exit_crit_edge, label %land.lhs.true.i6.i

for.end.i.__tipc_nl_node_flush_key.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_node_flush_key.exit

land.lhs.true.i6.i:                               ; preds = %for.end.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.__tipc_nl_node_flush_key.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.__tipc_nl_node_flush_key.exit_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_node_flush_key.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.__tipc_nl_node_flush_key.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.__tipc_nl_node_flush_key.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__tipc_nl_node_flush_key.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.61) #14
  br label %__tipc_nl_node_flush_key.exit

__tipc_nl_node_flush_key.exit:                    ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.__tipc_nl_node_flush_key.exit_crit_edge, %land.lhs.true.i6.i.__tipc_nl_node_flush_key.exit_crit_edge, %for.end.i.__tipc_nl_node_flush_key.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !246
  %16 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i10.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  tail call void @rtnl_unlock() #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_node_dump(ptr noundef %n, i1 noundef zeroext %more, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %more, i32 1100, i32 100
  %tobool1.not = icmp eq ptr %n, null
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %cond, ptr noundef nonnull @.str.26) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %cond, ptr noundef nonnull @.str.27, i32 noundef %1) #14
  %add.ptr = getelementptr i8, ptr %buf, i32 %call2
  %sub = sub i32 %cond, %call2
  %state = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 10
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.28, i32 noundef %3) #14
  %add5 = add i32 %call4, %call2
  %add.ptr6 = getelementptr i8, ptr %buf, i32 %add5
  %sub7 = sub i32 %cond, %add5
  %active_links = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 5
  %4 = ptrtoint ptr %active_links to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_links, align 4
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.29, i32 noundef %5) #14
  %add9 = add i32 %call8, %add5
  %add.ptr10 = getelementptr i8, ptr %buf, i32 %add9
  %sub11 = sub i32 %cond, %add9
  %arrayidx13 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx13, align 4
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.29, i32 noundef %7) #14
  %add15 = add i32 %call14, %add9
  %add.ptr16 = getelementptr i8, ptr %buf, i32 %add15
  %sub17 = sub i32 %cond, %add15
  %action_flags = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 8
  %8 = ptrtoint ptr %action_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %action_flags, align 4
  %call18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub17, ptr noundef nonnull @.str.28, i32 noundef %9) #14
  %add19 = add i32 %call18, %add15
  %add.ptr20 = getelementptr i8, ptr %buf, i32 %add19
  %sub21 = sub i32 %cond, %add19
  %failover_sent = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 12
  %10 = ptrtoint ptr %failover_sent to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %failover_sent, align 1, !range !244
  %12 = zext i8 %11 to i32
  %call23 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.30, i32 noundef %12) #14
  %add24 = add i32 %call23, %add19
  %add.ptr25 = getelementptr i8, ptr %buf, i32 %add24
  %sub26 = sub i32 %cond, %add24
  %sync_point = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 13
  %13 = ptrtoint ptr %sync_point to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sync_point, align 2
  %conv27 = zext i16 %14 to i32
  %call28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25, i32 noundef %sub26, ptr noundef nonnull @.str.30, i32 noundef %conv27) #14
  %add29 = add i32 %call28, %add24
  %add.ptr30 = getelementptr i8, ptr %buf, i32 %add29
  %sub31 = sub i32 %cond, %add29
  %link_cnt = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 14
  %15 = ptrtoint ptr %link_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %link_cnt, align 4
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.29, i32 noundef %16) #14
  %add33 = add i32 %call32, %add29
  %add.ptr34 = getelementptr i8, ptr %buf, i32 %add33
  %sub35 = sub i32 %cond, %add33
  %working_links = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 15
  %17 = ptrtoint ptr %working_links to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %working_links, align 4
  %conv36 = zext i16 %18 to i32
  %call37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.30, i32 noundef %conv36) #14
  %add38 = add i32 %call37, %add33
  %add.ptr39 = getelementptr i8, ptr %buf, i32 %add38
  %sub40 = sub i32 %cond, %add38
  %capabilities = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 16
  %19 = ptrtoint ptr %capabilities to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %capabilities, align 2
  %conv41 = zext i16 %20 to i32
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39, i32 noundef %sub40, ptr noundef nonnull @.str.28, i32 noundef %conv41) #14
  %add43 = add i32 %call42, %add38
  %add.ptr44 = getelementptr i8, ptr %buf, i32 %add43
  %sub45 = sub i32 %cond, %add43
  %keepalive_intv = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 23
  %21 = ptrtoint ptr %keepalive_intv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %keepalive_intv, align 4
  %call46 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.31, i32 noundef %22) #14
  %add47 = add i32 %call46, %add43
  br i1 %more, label %if.end50, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end50:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr51 = getelementptr i8, ptr %buf, i32 %add47
  %sub52 = sub i32 %cond, %add47
  %call53 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr51, i32 noundef %sub52, ptr noundef nonnull @.str.32) #14
  %add54 = add i32 %call53, %add47
  %add.ptr55 = getelementptr i8, ptr %buf, i32 %add54
  %sub56 = sub i32 %cond, %add54
  %links = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 6
  %mtu = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 6, i32 0, i32 2
  %23 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mtu, align 4
  %call58 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr55, i32 noundef %sub56, ptr noundef nonnull @.str.33, i32 noundef %24) #14
  %add59 = add i32 %call58, %add54
  %add.ptr60 = getelementptr i8, ptr %buf, i32 %add59
  %sub61 = sub i32 %cond, %add59
  %call62 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr60, i32 noundef %sub61, ptr noundef nonnull @.str.34) #14
  %add63 = add i32 %add59, %call62
  %add.ptr64 = getelementptr i8, ptr %buf, i32 %add63
  %sub65 = sub i32 %cond, %add63
  %maddr = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 6, i32 0, i32 4
  %call68 = tail call i32 @tipc_media_addr_printf(ptr noundef %add.ptr64, i32 noundef %sub65, ptr noundef %maddr) #14
  %add69 = add i32 %add63, %call68
  %add.ptr70 = getelementptr i8, ptr %buf, i32 %add69
  %sub71 = sub i32 %cond, %add69
  %call72 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr70, i32 noundef %sub71, ptr noundef nonnull @.str.35) #14
  %add73 = add i32 %add69, %call72
  %25 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %links, align 4
  %add.ptr76 = getelementptr i8, ptr %buf, i32 %add73
  %call77 = tail call i32 @tipc_link_dump(ptr noundef %26, i16 noundef zeroext 0, ptr noundef %add.ptr76) #14
  %add78 = add i32 %call77, %add73
  %add.ptr79 = getelementptr i8, ptr %buf, i32 %add78
  %sub80 = sub i32 %cond, %add78
  %call81 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr79, i32 noundef %sub80, ptr noundef nonnull @.str.36) #14
  %add82 = add i32 %add78, %call81
  %inputq = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 6, i32 0, i32 3
  %add.ptr85 = getelementptr i8, ptr %buf, i32 %add82
  %call86 = tail call i32 @tipc_list_dump(ptr noundef %inputq, i1 noundef zeroext false, ptr noundef %add.ptr85) #14
  %add87 = add i32 %add82, %call86
  %add.ptr88 = getelementptr i8, ptr %buf, i32 %add87
  %sub89 = sub i32 %cond, %add87
  %call90 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr88, i32 noundef %sub89, ptr noundef nonnull @.str.37) #14
  %add91 = add i32 %add87, %call90
  %add.ptr92 = getelementptr i8, ptr %buf, i32 %add91
  %sub93 = sub i32 %cond, %add91
  %arrayidx95 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 1
  %mtu96 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 1, i32 2
  %27 = ptrtoint ptr %mtu96 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mtu96, align 4
  %call97 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr92, i32 noundef %sub93, ptr noundef nonnull @.str.33, i32 noundef %28) #14
  %add98 = add i32 %call97, %add91
  %add.ptr99 = getelementptr i8, ptr %buf, i32 %add98
  %sub100 = sub i32 %cond, %add98
  %call101 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr99, i32 noundef %sub100, ptr noundef nonnull @.str.34) #14
  %add102 = add i32 %add98, %call101
  %add.ptr103 = getelementptr i8, ptr %buf, i32 %add102
  %sub104 = sub i32 %cond, %add102
  %maddr107 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 1, i32 4
  %call108 = tail call i32 @tipc_media_addr_printf(ptr noundef %add.ptr103, i32 noundef %sub104, ptr noundef %maddr107) #14
  %add109 = add i32 %add102, %call108
  %add.ptr110 = getelementptr i8, ptr %buf, i32 %add109
  %sub111 = sub i32 %cond, %add109
  %call112 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr110, i32 noundef %sub111, ptr noundef nonnull @.str.35) #14
  %add113 = add i32 %add109, %call112
  %29 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx95, align 4
  %add.ptr117 = getelementptr i8, ptr %buf, i32 %add113
  %call118 = tail call i32 @tipc_link_dump(ptr noundef %30, i16 noundef zeroext 0, ptr noundef %add.ptr117) #14
  %add119 = add i32 %call118, %add113
  %add.ptr120 = getelementptr i8, ptr %buf, i32 %add119
  %sub121 = sub i32 %cond, %add119
  %call122 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr120, i32 noundef %sub121, ptr noundef nonnull @.str.36) #14
  %add123 = add i32 %add119, %call122
  %inputq126 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 1, i32 3
  %add.ptr127 = getelementptr i8, ptr %buf, i32 %add123
  %call128 = tail call i32 @tipc_list_dump(ptr noundef %inputq126, i1 noundef zeroext false, ptr noundef %add.ptr127) #14
  %add129 = add i32 %add123, %call128
  %add.ptr130 = getelementptr i8, ptr %buf, i32 %add129
  %sub131 = sub i32 %cond, %add129
  %call132 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr130, i32 noundef %sub131, ptr noundef nonnull @.str.38) #14
  %add133 = add i32 %add129, %call132
  %bc_entry = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 7
  %31 = ptrtoint ptr %bc_entry to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bc_entry, align 4
  %add.ptr135 = getelementptr i8, ptr %buf, i32 %add133
  %call136 = tail call i32 @tipc_link_dump(ptr noundef %32, i16 noundef zeroext 0, ptr noundef %add.ptr135) #14
  %add137 = add i32 %call136, %add133
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %add137, %if.end50 ], [ %call, %if.then ], [ %add47, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_media_addr_printf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_dump(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_list_dump(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_node_pre_cleanup_net(ptr noundef readnone %exit_net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !243
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b88 = load i1, ptr @tipc_node_pre_cleanup_net.__warned, align 1
  br i1 %.b88, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_node_pre_cleanup_net.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 3132, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @net_namespace_list to i32))
  %.pn101 = load volatile ptr, ptr @net_namespace_list, align 4
  %cmp.not103 = icmp eq ptr %.pn101, @net_namespace_list
  br i1 %cmp.not103, label %do.end.for.end69_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end69_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end69

for.body:                                         ; preds = %for.inc59.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn104 = phi ptr [ %.pn, %for.inc59.for.body_crit_edge ], [ %.pn101, %do.end.for.body_crit_edge ]
  %tmp.0105 = getelementptr i8, ptr %.pn104, i32 -108
  %cmp10 = icmp eq ptr %tmp.0105, %exit_net
  br i1 %cmp10, label %for.body.for.inc59_crit_edge, label %if.end12

for.body.for.inc59_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc59

if.end12:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %4 = load i32, ptr @tipc_net_id, align 4
  %call.i89 = tail call fastcc ptr @net_generic(ptr noundef %tmp.0105, i32 noundef %4) #14
  %tobool14.not = icmp eq ptr %call.i89, null
  br i1 %tobool14.not, label %if.end12.for.inc59_crit_edge, label %if.end16

if.end12.for.inc59_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc59

if.end16:                                         ; preds = %if.end12
  %node_list_lock = getelementptr inbounds %struct.tipc_net, ptr %call.i89, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %node_list_lock) #14
  %call18 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %if.end16.do.end28_crit_edge

if.end16.do.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28

land.lhs.true20:                                  ; preds = %if.end16
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b8587 = load i1, ptr @tipc_node_pre_cleanup_net.__warned.39, align 1
  br i1 %.b8587, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tipc_node_pre_cleanup_net.__warned.39, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 3139, ptr noundef nonnull @.str.1) #14
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %if.end16.do.end28_crit_edge
  %node_list = getelementptr inbounds %struct.tipc_net, ptr %call.i89, i32 0, i32 10
  br label %for.cond36

for.cond36:                                       ; preds = %for.body40.for.cond36_crit_edge, %do.end28
  %.pn86.in = phi ptr [ %node_list, %do.end28 ], [ %.pn86, %for.body40.for.cond36_crit_edge ]
  %5 = ptrtoint ptr %.pn86.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn86 = load volatile ptr, ptr %.pn86.in, align 4
  %cmp39.not = icmp eq ptr %.pn86, %node_list
  br i1 %cmp39.not, label %for.cond36.for.end_crit_edge, label %for.body40

for.cond36.for.end_crit_edge:                     ; preds = %for.cond36
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body40:                                       ; preds = %for.cond36
  %peer_net = getelementptr i8, ptr %.pn86, i32 164
  %6 = ptrtoint ptr %peer_net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peer_net, align 4
  %tobool41.not = icmp ne ptr %7, null
  %cmp45.not = icmp eq ptr %7, %exit_net
  %or.cond = and i1 %tobool41.not, %cmp45.not
  br i1 %or.cond, label %if.end47, label %for.body40.for.cond36_crit_edge

for.body40.for.cond36_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond36

if.end47:                                         ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #16
  %peer_net.le = getelementptr i8, ptr %.pn86, i32 164
  %lock.i = getelementptr i8, ptr %.pn86, i32 -732
  tail call void @_raw_write_lock_bh(ptr noundef %lock.i) #14
  %8 = ptrtoint ptr %peer_net.le to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %peer_net.le, align 4
  %peer_hash_mix = getelementptr i8, ptr %.pn86, i32 168
  %9 = ptrtoint ptr %peer_hash_mix to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %peer_hash_mix, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %lock.i) #14
  br label %for.end

for.end:                                          ; preds = %if.end47, %for.cond36.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %node_list_lock) #14
  br label %for.inc59

for.inc59:                                        ; preds = %for.end, %if.end12.for.inc59_crit_edge, %for.body.for.inc59_crit_edge
  %10 = ptrtoint ptr %.pn104 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load volatile ptr, ptr %.pn104, align 4
  %cmp.not = icmp eq ptr %.pn, @net_namespace_list
  br i1 %cmp.not, label %for.inc59.for.end69_crit_edge, label %for.inc59.for.body_crit_edge

for.inc59.for.body_crit_edge:                     ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc59.for.end69_crit_edge:                    ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end69

for.end69:                                        ; preds = %for.inc59.for.end69_crit_edge, %do.end.for.end69_crit_edge
  %call.i91 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i91, label %for.end69.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i94

for.end69.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i94:                                ; preds = %for.end69
  %call1.i92 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %tobool.not.i93 = icmp eq i32 %call1.i92, 0
  br i1 %tobool.not.i93, label %land.lhs.true.i94.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i96

land.lhs.true.i94.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i96:                               ; preds = %land.lhs.true.i94
  %.b4.i95 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i95, label %land.lhs.true2.i96.rcu_read_unlock.exit_crit_edge, label %if.then.i97

land.lhs.true2.i96.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i97:                                      ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.61) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i97, %land.lhs.true2.i96.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i94.rcu_read_unlock.exit_crit_edge, %for.end69.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !246
  %11 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i.i98 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i98 to ptr
  %preempt_count.i.i.i.i99 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i99, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i99, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_node_free(ptr noundef %rp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rp, i32 -892
  %crypto_rx = getelementptr i8, ptr %rp, i32 20
  tail call void @tipc_crypto_stop(ptr noundef %crypto_rx) #14
  tail call void @kfree(ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_crypto_stop(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_node_create(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_node_delete(ptr noundef %n) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_delete, i32 0, i32 1), ptr blockaddress(@trace_tipc_node_delete, %do.body)) #14
          to label %if.end49 [label %do.body], !srcloc !250

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !241

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !258
  %call43 = tail call i32 @__traceiter_tipc_node_delete(ptr noundef null, ptr noundef %n, i1 noundef zeroext true, ptr noundef nonnull @.str.15) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !259
  %13 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !241

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_delete, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_delete, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_node_delete.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_tipc_node_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 355, ptr noundef nonnull @.str.41) #14
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !254
  %31 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
define internal fastcc void @tipc_node_delete_from_list(ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %crypto_rx = getelementptr inbounds %struct.tipc_node, ptr %node, i32 0, i32 29
  %0 = ptrtoint ptr %crypto_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypto_rx, align 4
  tail call void @tipc_crypto_key_flush(ptr noundef %1) #14
  %list = getelementptr inbounds %struct.tipc_node, ptr %node, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.tipc_node, ptr %node, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.tipc_node, ptr %node, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %hash = getelementptr inbounds %struct.tipc_node, ptr %node, i32 0, i32 4
  %9 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hash, align 4
  %pprev2.i.i = getelementptr inbounds %struct.tipc_node, ptr %node, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pprev2.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %10, ptr %12, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %list_del_rcu.exit.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

list_del_rcu.exit.hlist_del_rcu.exit_crit_edge:   ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %list_del_rcu.exit.hlist_del_rcu.exit_crit_edge
  %15 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %kref.i = getelementptr inbounds %struct.tipc_node, ptr %node, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !240
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.tipc_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !241

if.end5.i.i.i.i.i.tipc_node_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %tipc_node_put.exit

if.then.i.i:                                      ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !242
  %bc_entry.i.i.i = getelementptr %struct.tipc_node, ptr %node, i32 0, i32 7
  %17 = ptrtoint ptr %bc_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bc_entry.i.i.i, align 4
  tail call void @kfree(ptr noundef %18) #14
  %rcu.i.i.i = getelementptr %struct.tipc_node, ptr %node, i32 0, i32 25
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @tipc_node_free) #14
  br label %tipc_node_put.exit

tipc_node_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.tipc_node_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_node_delete(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_crypto_key_flush(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_publ_notify(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_named_node_up(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_mon_peer_up(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_nametbl_publish(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_mon_peer_down(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_nametbl_withdraw(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_node_timeout(ptr noundef %n) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_timeout, i32 0, i32 1), ptr blockaddress(@trace_tipc_node_timeout, %do.body)) #14
          to label %if.end49 [label %do.body], !srcloc !250

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !241

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !260
  %call43 = tail call i32 @__traceiter_tipc_node_timeout(ptr noundef null, ptr noundef %n, i1 noundef zeroext false, ptr noundef nonnull @.str.15) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !261
  %13 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !241

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_timeout, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_timeout, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_node_timeout.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_tipc_node_timeout.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 357, ptr noundef nonnull @.str.41) #14
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !254
  %31 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_crypto_timeout(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_timeout(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_node_timeout(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_link_reset(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_tolerance(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_set_abort_limit(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_link_is_establishing(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tipc_node_link_down(ptr noundef %n, ptr nocapture noundef %bearer_id, ptr noundef %xmitq, ptr nocapture noundef writeonly %maddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bearer_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bearer_id, align 4
  %arrayidx = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 %1
  %active_links = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 5
  %arrayidx3 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i1 @tipc_link_is_reset(ptr noundef nonnull %3) #14
  br i1 %call, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %working_links = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 15
  %4 = ptrtoint ptr %working_links to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %working_links, align 4
  %dec = add i16 %5, -1
  store i16 %dec, ptr %working_links, align 4
  %action_flags = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 8
  %6 = ptrtoint ptr %action_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %action_flags, align 4
  %or = or i32 %7, 128
  store i32 %or, ptr %action_flags, align 4
  %call6 = tail call i32 @tipc_link_id(ptr noundef nonnull %3) #14
  %link_id = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 18
  %8 = ptrtoint ptr %link_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call6, ptr %link_id, align 4
  %net = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 3
  %9 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net, align 4
  %11 = ptrtoint ptr %bearer_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bearer_id, align 4
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  tail call void @tipc_bearer_remove_dest(ptr noundef %10, i32 noundef %12, i32 noundef %14) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__tipc_node_link_down.__UNIQUE_ID_ddebug601, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__tipc_node_link_down, %if.then11)) #14
          to label %do.end [label %if.then11], !srcloc !250

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = tail call ptr @tipc_link_name(ptr noundef nonnull %3) #14
  %call13 = tail call zeroext i8 @tipc_link_plane(ptr noundef nonnull %3) #14
  %conv = zext i8 %call13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__tipc_node_link_down.__UNIQUE_ID_ddebug601, ptr noundef nonnull @.str.48, ptr noundef %call12, i32 noundef %conv) #14
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end
  %15 = ptrtoint ptr %active_links to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %active_links, align 4
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %arrayidx3, align 4
  %arrayidx17 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 0
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx17, align 4
  %tobool19.not = icmp eq ptr %18, null
  br i1 %tobool19.not, label %do.end.for.inc_crit_edge, label %lor.lhs.false20

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false20:                                  ; preds = %do.end
  %call21 = tail call zeroext i1 @tipc_link_is_up(ptr noundef nonnull %18) #14
  %call21.not = xor i1 %call21, true
  %cmp24 = icmp eq ptr %18, %3
  %or.cond = select i1 %call21.not, i1 true, i1 %cmp24
  br i1 %or.cond, label %lor.lhs.false20.for.inc_crit_edge, label %if.end27

lor.lhs.false20.for.inc_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end27:                                         ; preds = %lor.lhs.false20
  %call28 = tail call i32 @tipc_link_prio(ptr noundef nonnull %18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.for.inc_crit_edge, label %if.end32

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp33.not = icmp eq i32 %call28, 0
  br i1 %cmp33.not, label %if.end32.for.inc.sink.split_crit_edge, label %if.then35

if.end32.for.inc.sink.split_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.sink.split

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %active_links to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %active_links, align 4
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then35, %if.end32.for.inc.sink.split_crit_edge
  %highest.1.ph = phi i32 [ %call28, %if.then35 ], [ 0, %if.end32.for.inc.sink.split_crit_edge ]
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end27.for.inc_crit_edge, %lor.lhs.false20.for.inc_crit_edge, %do.end.for.inc_crit_edge
  %highest.1 = phi i32 [ 0, %if.end27.for.inc_crit_edge ], [ 0, %lor.lhs.false20.for.inc_crit_edge ], [ 0, %do.end.for.inc_crit_edge ], [ %highest.1.ph, %for.inc.sink.split ]
  %arrayidx17.1 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx17.1, align 4
  %tobool19.not.1 = icmp eq ptr %22, null
  br i1 %tobool19.not.1, label %for.inc.for.inc.1_crit_edge, label %lor.lhs.false20.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

lor.lhs.false20.1:                                ; preds = %for.inc
  %call21.1 = tail call zeroext i1 @tipc_link_is_up(ptr noundef nonnull %22) #14
  %call21.not.1 = xor i1 %call21.1, true
  %cmp24.1 = icmp eq ptr %22, %3
  %or.cond.1 = select i1 %call21.not.1, i1 true, i1 %cmp24.1
  br i1 %or.cond.1, label %lor.lhs.false20.1.for.inc.1_crit_edge, label %if.end27.1

lor.lhs.false20.1.for.inc.1_crit_edge:            ; preds = %lor.lhs.false20.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.end27.1:                                       ; preds = %lor.lhs.false20.1
  %call28.1 = tail call i32 @tipc_link_prio(ptr noundef nonnull %22) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call28.1, i32 %highest.1)
  %cmp29.1 = icmp slt i32 %call28.1, %highest.1
  br i1 %cmp29.1, label %if.end27.1.for.inc.1_crit_edge, label %if.end32.1

if.end27.1.for.inc.1_crit_edge:                   ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.end32.1:                                       ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_cmp4(i32 %call28.1, i32 %highest.1)
  %cmp33.1 = icmp sgt i32 %call28.1, %highest.1
  br i1 %cmp33.1, label %if.then35.1, label %if.end32.1.for.inc.1.sink.split_crit_edge

if.end32.1.for.inc.1.sink.split_crit_edge:        ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1.sink.split

if.then35.1:                                      ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %active_links to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %active_links, align 4
  br label %for.inc.1.sink.split

for.inc.1.sink.split:                             ; preds = %if.then35.1, %if.end32.1.for.inc.1.sink.split_crit_edge
  %highest.1.1.ph = phi i32 [ %call28.1, %if.then35.1 ], [ %highest.1, %if.end32.1.for.inc.1.sink.split_crit_edge ]
  %24 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %arrayidx3, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.1.sink.split, %if.end27.1.for.inc.1_crit_edge, %lor.lhs.false20.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %highest.1.1 = phi i32 [ %highest.1, %if.end27.1.for.inc.1_crit_edge ], [ %highest.1, %lor.lhs.false20.1.for.inc.1_crit_edge ], [ %highest.1, %for.inc.for.inc.1_crit_edge ], [ %highest.1.1.ph, %for.inc.1.sink.split ]
  %arrayidx17.2 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx17.2, align 4
  %tobool19.not.2 = icmp eq ptr %26, null
  br i1 %tobool19.not.2, label %for.inc.1.for.inc.2_crit_edge, label %lor.lhs.false20.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

lor.lhs.false20.2:                                ; preds = %for.inc.1
  %call21.2 = tail call zeroext i1 @tipc_link_is_up(ptr noundef nonnull %26) #14
  %call21.not.2 = xor i1 %call21.2, true
  %cmp24.2 = icmp eq ptr %26, %3
  %or.cond.2 = select i1 %call21.not.2, i1 true, i1 %cmp24.2
  br i1 %or.cond.2, label %lor.lhs.false20.2.for.inc.2_crit_edge, label %if.end27.2

lor.lhs.false20.2.for.inc.2_crit_edge:            ; preds = %lor.lhs.false20.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.end27.2:                                       ; preds = %lor.lhs.false20.2
  %call28.2 = tail call i32 @tipc_link_prio(ptr noundef nonnull %26) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call28.2, i32 %highest.1.1)
  %cmp29.2 = icmp slt i32 %call28.2, %highest.1.1
  br i1 %cmp29.2, label %if.end27.2.for.inc.2_crit_edge, label %if.end32.2

if.end27.2.for.inc.2_crit_edge:                   ; preds = %if.end27.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.end32.2:                                       ; preds = %if.end27.2
  call void @__sanitizer_cov_trace_cmp4(i32 %call28.2, i32 %highest.1.1)
  %cmp33.2 = icmp sgt i32 %call28.2, %highest.1.1
  br i1 %cmp33.2, label %for.inc.2.thread, label %if.end36.2

if.end36.2:                                       ; preds = %if.end32.2
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %arrayidx3, align 4
  br label %for.inc.2

for.inc.2.thread:                                 ; preds = %if.end32.2
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %active_links to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %active_links, align 4
  %29 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %arrayidx3, align 4
  br label %if.end47

for.inc.2:                                        ; preds = %if.end36.2, %if.end27.2.for.inc.2_crit_edge, %lor.lhs.false20.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %30 = ptrtoint ptr %active_links to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %active_links, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp.i.not = icmp eq i32 %.pr, -1
  br i1 %cmp.i.not, label %if.then38, label %for.inc.2.if.end47_crit_edge

for.inc.2.if.end47_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then38:                                        ; preds = %for.inc.2
  %call39 = tail call zeroext i1 @tipc_link_peer_is_down(ptr noundef nonnull %3) #14
  br i1 %call39, label %if.then40, label %if.then38.if.end41_crit_edge

if.then38.if.end41_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then40:                                        ; preds = %if.then38
  %state1.i = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 10
  %31 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state1.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %32, label %do.end.i [
    i32 221, label %if.then40.tipc_node_fsm_evt.exit_crit_edge
    i32 170, label %sw.bb6.i
    i32 209, label %if.then40.tipc_node_fsm_evt.exit_crit_edge154
    i32 172, label %sw.bb20.i
    i32 202, label %if.then40.tipc_node_fsm_evt.exit_crit_edge155
    i32 29, label %sw.bb34.i
    i32 240, label %sw.bb40.i
    i32 204, label %sw.bb48.i
  ]

if.then40.tipc_node_fsm_evt.exit_crit_edge155:    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit

if.then40.tipc_node_fsm_evt.exit_crit_edge154:    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit

if.then40.tipc_node_fsm_evt.exit_crit_edge:       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit

sw.bb6.i:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit

sw.bb20.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit

sw.bb34.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit

sw.bb40.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit

sw.bb48.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit

do.end.i:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %32) #18
  br label %tipc_node_fsm_evt.exit

tipc_node_fsm_evt.exit:                           ; preds = %do.end.i, %sw.bb48.i, %sw.bb40.i, %sw.bb34.i, %sw.bb20.i, %sw.bb6.i, %if.then40.tipc_node_fsm_evt.exit_crit_edge, %if.then40.tipc_node_fsm_evt.exit_crit_edge154, %if.then40.tipc_node_fsm_evt.exit_crit_edge155
  %state.0.i = phi i32 [ %32, %do.end.i ], [ 29, %sw.bb48.i ], [ 29, %sw.bb40.i ], [ %32, %sw.bb34.i ], [ %32, %sw.bb20.i ], [ 29, %sw.bb6.i ], [ 221, %if.then40.tipc_node_fsm_evt.exit_crit_edge ], [ 221, %if.then40.tipc_node_fsm_evt.exit_crit_edge154 ], [ 221, %if.then40.tipc_node_fsm_evt.exit_crit_edge155 ]
  %peer_id.i = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 19
  %34 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state1.i, align 4
  tail call fastcc void @trace_tipc_node_fsm(ptr noundef %peer_id.i, i32 noundef %35, i32 noundef %state.0.i, i32 noundef 37326) #14
  %36 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %state.0.i, ptr %state1.i, align 4
  br label %if.end41

if.end41:                                         ; preds = %tipc_node_fsm_evt.exit, %if.then38.if.end41_crit_edge
  %state1.i135 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 10
  %37 = ptrtoint ptr %state1.i135 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state1.i135, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %38, label %do.end.i145 [
    i32 221, label %if.end41.tipc_node_fsm_evt.exit148_crit_edge
    i32 170, label %sw.bb6.i137
    i32 209, label %sw.bb14.i138
    i32 172, label %if.end41.tipc_node_fsm_evt.exit148_crit_edge156
    i32 202, label %sw.bb27.i140
    i32 29, label %if.end41.tipc_node_fsm_evt.exit148_crit_edge157
    i32 240, label %sw.bb40.i142
    i32 204, label %sw.bb48.i143
  ]

if.end41.tipc_node_fsm_evt.exit148_crit_edge157:  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit148

if.end41.tipc_node_fsm_evt.exit148_crit_edge156:  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit148

if.end41.tipc_node_fsm_evt.exit148_crit_edge:     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit148

sw.bb6.i137:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit148

sw.bb14.i138:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit148

sw.bb27.i140:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit148

sw.bb40.i142:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit148

sw.bb48.i143:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit148

do.end.i145:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %call.i144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %38) #18
  br label %tipc_node_fsm_evt.exit148

tipc_node_fsm_evt.exit148:                        ; preds = %do.end.i145, %sw.bb48.i143, %sw.bb40.i142, %sw.bb27.i140, %sw.bb14.i138, %sw.bb6.i137, %if.end41.tipc_node_fsm_evt.exit148_crit_edge, %if.end41.tipc_node_fsm_evt.exit148_crit_edge156, %if.end41.tipc_node_fsm_evt.exit148_crit_edge157
  %state.0.i146 = phi i32 [ %38, %do.end.i145 ], [ 209, %sw.bb48.i143 ], [ 209, %sw.bb40.i142 ], [ %38, %sw.bb27.i140 ], [ %38, %sw.bb14.i138 ], [ 209, %sw.bb6.i137 ], [ 221, %if.end41.tipc_node_fsm_evt.exit148_crit_edge ], [ 221, %if.end41.tipc_node_fsm_evt.exit148_crit_edge156 ], [ 221, %if.end41.tipc_node_fsm_evt.exit148_crit_edge157 ]
  %peer_id.i147 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 19
  %40 = ptrtoint ptr %state1.i135 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state1.i135, align 4
  tail call fastcc void @trace_tipc_node_fsm(ptr noundef %peer_id.i147, i32 noundef %41, i32 noundef %state.0.i146, i32 noundef 462) #14
  %42 = ptrtoint ptr %state1.i135 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %state.0.i146, ptr %state1.i135, align 4
  tail call fastcc void @trace_tipc_link_reset(ptr noundef nonnull %3, ptr noundef nonnull @.str.49)
  %call42 = tail call i32 @tipc_link_fsm_evt(ptr noundef nonnull %3, i32 noundef 281681166) #14
  tail call void @tipc_link_reset(ptr noundef nonnull %3) #14
  tail call void @tipc_link_build_reset_msg(ptr noundef nonnull %3, ptr noundef %xmitq) #14
  %43 = ptrtoint ptr %bearer_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bearer_id, align 4
  %maddr45 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 %44, i32 4
  %45 = ptrtoint ptr %maddr to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %maddr45, ptr %maddr, align 4
  %inputq = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 %1, i32 3
  tail call fastcc void @node_lost_contact(ptr noundef %n, ptr noundef %inputq)
  %46 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net, align 4
  %48 = ptrtoint ptr %bearer_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bearer_id, align 4
  tail call void @tipc_bcast_dec_bearer_dst_cnt(ptr noundef %47, i32 noundef %49) #14
  br label %cleanup

if.end47:                                         ; preds = %for.inc.2.if.end47_crit_edge, %for.inc.2.thread
  %50 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net, align 4
  %52 = ptrtoint ptr %bearer_id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bearer_id, align 4
  tail call void @tipc_bcast_dec_bearer_dst_cnt(ptr noundef %51, i32 noundef %53) #14
  %54 = ptrtoint ptr %active_links to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %active_links, align 4
  %56 = ptrtoint ptr %bearer_id to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %bearer_id, align 4
  %arrayidx52 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 %55
  %57 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx52, align 4
  %call54 = tail call i32 @tipc_link_fsm_evt(ptr noundef %58, i32 noundef 203214558) #14
  tail call fastcc void @tipc_node_fsm_evt(ptr noundef %n, i32 noundef 3310)
  %call55 = tail call zeroext i16 @tipc_link_rcv_nxt(ptr noundef %58) #14
  %add = add i16 %call55, 32766
  %sync_point = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 13
  %59 = ptrtoint ptr %sync_point to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %add, ptr %sync_point, align 2
  tail call void @tipc_link_tnl_prepare(ptr noundef nonnull %3, ptr noundef %58, i32 noundef 1, ptr noundef %xmitq) #14
  tail call fastcc void @trace_tipc_link_reset(ptr noundef nonnull %3, ptr noundef nonnull @.str.50)
  tail call void @tipc_link_reset(ptr noundef nonnull %3) #14
  %call58 = tail call i32 @tipc_link_fsm_evt(ptr noundef nonnull %3, i32 noundef 281681166) #14
  %call59 = tail call i32 @tipc_link_fsm_evt(ptr noundef nonnull %3, i32 noundef -99546130) #14
  tail call fastcc void @tipc_node_fsm_evt(ptr noundef %n, i32 noundef 4030)
  %60 = ptrtoint ptr %bearer_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bearer_id, align 4
  %maddr62 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 %61, i32 4
  %62 = ptrtoint ptr %maddr to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %maddr62, ptr %maddr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %tipc_node_fsm_evt.exit148, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_node_link_down(ptr noundef %n, ptr noundef %header) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_link_down, i32 0, i32 1), ptr blockaddress(@trace_tipc_node_link_down, %do.body)) #14
          to label %if.end49 [label %do.body], !srcloc !250

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !241

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !262
  %call43 = tail call i32 @__traceiter_tipc_node_link_down(ptr noundef null, ptr noundef %n, i1 noundef zeroext true, ptr noundef %header) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !263
  %13 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !241

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_link_down, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_link_down, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_node_link_down.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_tipc_node_link_down.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 359, ptr noundef nonnull @.str.41) #14
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !254
  %31 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_mon_remove_peer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_id(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_bearer_remove_dest(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tipc_link_plane(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_prio(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_link_peer_is_down(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_node_fsm_evt(ptr noundef %n, i32 noundef %evt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 10
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %1, label %do.end [
    i32 221, label %sw.bb
    i32 170, label %sw.bb6
    i32 209, label %sw.bb14
    i32 172, label %sw.bb20
    i32 202, label %sw.bb27
    i32 29, label %sw.bb34
    i32 240, label %sw.bb40
    i32 204, label %sw.bb48
  ]

sw.bb:                                            ; preds = %entry
  %3 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %evt, label %sw.bb.do.end63_crit_edge [
    i32 3790, label %sw.bb2
    i32 40654, label %sw.bb3
    i32 462, label %sw.bb.sw.epilog58_crit_edge
    i32 37326, label %sw.bb.sw.epilog58_crit_edge89
  ]

sw.bb.sw.epilog58_crit_edge89:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb.sw.epilog58_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb.do.end63_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end63

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb6:                                           ; preds = %entry
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %evt, label %sw.bb6.do.end63_crit_edge [
    i32 462, label %sw.bb7
    i32 37326, label %sw.bb8
    i32 3262, label %sw.bb9
    i32 4030, label %sw.bb10
    i32 3790, label %sw.bb6.sw.epilog58_crit_edge
    i32 40654, label %sw.bb6.sw.epilog58_crit_edge90
    i32 3310, label %sw.bb6.sw.epilog58_crit_edge91
    i32 4078, label %sw.bb6.sw.epilog58_crit_edge92
  ]

sw.bb6.sw.epilog58_crit_edge92:                   ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb6.sw.epilog58_crit_edge91:                   ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb6.sw.epilog58_crit_edge90:                   ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb6.sw.epilog58_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb6.do.end63_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end63

sw.bb7:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb8:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb9:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb10:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb14:                                          ; preds = %entry
  %5 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %evt, label %sw.bb14.do.end63_crit_edge [
    i32 37326, label %sw.bb15
    i32 3790, label %sw.bb14.sw.epilog58_crit_edge
    i32 40654, label %sw.bb14.sw.epilog58_crit_edge93
    i32 462, label %sw.bb14.sw.epilog58_crit_edge94
  ]

sw.bb14.sw.epilog58_crit_edge94:                  ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb14.sw.epilog58_crit_edge93:                  ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb14.sw.epilog58_crit_edge:                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb14.do.end63_crit_edge:                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end63

sw.bb15:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb20:                                          ; preds = %entry
  %6 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %evt, label %sw.bb20.do.end63_crit_edge [
    i32 40654, label %sw.bb21
    i32 462, label %sw.bb22
    i32 3790, label %sw.bb20.sw.epilog58_crit_edge
    i32 37326, label %sw.bb20.sw.epilog58_crit_edge95
    i32 3310, label %sw.bb20.sw.epilog58_crit_edge96
    i32 4030, label %sw.bb20.sw.epilog58_crit_edge97
  ]

sw.bb20.sw.epilog58_crit_edge97:                  ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb20.sw.epilog58_crit_edge96:                  ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb20.sw.epilog58_crit_edge95:                  ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb20.sw.epilog58_crit_edge:                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb20.do.end63_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end63

sw.bb21:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb22:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb27:                                          ; preds = %entry
  %7 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %evt, label %sw.bb27.do.end63_crit_edge [
    i32 3790, label %sw.bb28
    i32 37326, label %sw.bb29
    i32 462, label %sw.bb27.sw.epilog58_crit_edge
    i32 40654, label %sw.bb27.sw.epilog58_crit_edge98
  ]

sw.bb27.sw.epilog58_crit_edge98:                  ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb27.sw.epilog58_crit_edge:                    ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb27.do.end63_crit_edge:                       ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end63

sw.bb28:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb29:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb34:                                          ; preds = %entry
  %8 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %evt, label %sw.bb34.do.end63_crit_edge [
    i32 462, label %sw.bb35
    i32 3790, label %sw.bb34.sw.epilog58_crit_edge
    i32 40654, label %sw.bb34.sw.epilog58_crit_edge99
    i32 37326, label %sw.bb34.sw.epilog58_crit_edge100
  ]

sw.bb34.sw.epilog58_crit_edge100:                 ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb34.sw.epilog58_crit_edge99:                  ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb34.sw.epilog58_crit_edge:                    ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb34.do.end63_crit_edge:                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end63

sw.bb35:                                          ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb40:                                          ; preds = %entry
  %9 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %evt, label %sw.bb40.do.end63_crit_edge [
    i32 462, label %sw.bb41
    i32 37326, label %sw.bb42
    i32 4078, label %sw.bb43
    i32 4030, label %sw.bb40.sw.epilog58_crit_edge
    i32 3790, label %sw.bb40.sw.epilog58_crit_edge101
    i32 40654, label %sw.bb40.sw.epilog58_crit_edge102
  ]

sw.bb40.sw.epilog58_crit_edge102:                 ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb40.sw.epilog58_crit_edge101:                 ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb40.sw.epilog58_crit_edge:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb40.do.end63_crit_edge:                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end63

sw.bb41:                                          ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb42:                                          ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb43:                                          ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb48:                                          ; preds = %entry
  %10 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %evt, label %sw.bb48.do.end63_crit_edge [
    i32 462, label %sw.bb49
    i32 37326, label %sw.bb50
    i32 3310, label %sw.bb51
    i32 4030, label %sw.bb52
    i32 3262, label %sw.bb48.sw.epilog58_crit_edge
    i32 3790, label %sw.bb48.sw.epilog58_crit_edge103
    i32 40654, label %sw.bb48.sw.epilog58_crit_edge104
  ]

sw.bb48.sw.epilog58_crit_edge104:                 ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb48.sw.epilog58_crit_edge103:                 ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb48.sw.epilog58_crit_edge:                    ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb48.do.end63_crit_edge:                       ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end63

sw.bb49:                                          ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb50:                                          ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb51:                                          ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

sw.bb52:                                          ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog58

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %1) #18
  br label %sw.epilog58

sw.epilog58:                                      ; preds = %do.end, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48.sw.epilog58_crit_edge, %sw.bb48.sw.epilog58_crit_edge103, %sw.bb48.sw.epilog58_crit_edge104, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40.sw.epilog58_crit_edge, %sw.bb40.sw.epilog58_crit_edge101, %sw.bb40.sw.epilog58_crit_edge102, %sw.bb35, %sw.bb34.sw.epilog58_crit_edge, %sw.bb34.sw.epilog58_crit_edge99, %sw.bb34.sw.epilog58_crit_edge100, %sw.bb29, %sw.bb28, %sw.bb27.sw.epilog58_crit_edge, %sw.bb27.sw.epilog58_crit_edge98, %sw.bb22, %sw.bb21, %sw.bb20.sw.epilog58_crit_edge, %sw.bb20.sw.epilog58_crit_edge95, %sw.bb20.sw.epilog58_crit_edge96, %sw.bb20.sw.epilog58_crit_edge97, %sw.bb15, %sw.bb14.sw.epilog58_crit_edge, %sw.bb14.sw.epilog58_crit_edge93, %sw.bb14.sw.epilog58_crit_edge94, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6.sw.epilog58_crit_edge, %sw.bb6.sw.epilog58_crit_edge90, %sw.bb6.sw.epilog58_crit_edge91, %sw.bb6.sw.epilog58_crit_edge92, %sw.bb3, %sw.bb2, %sw.bb.sw.epilog58_crit_edge, %sw.bb.sw.epilog58_crit_edge89
  %state.0 = phi i32 [ %1, %do.end ], [ 204, %sw.bb48.sw.epilog58_crit_edge ], [ 204, %sw.bb48.sw.epilog58_crit_edge103 ], [ 204, %sw.bb48.sw.epilog58_crit_edge104 ], [ 240, %sw.bb52 ], [ 170, %sw.bb51 ], [ 29, %sw.bb50 ], [ 209, %sw.bb49 ], [ 240, %sw.bb40.sw.epilog58_crit_edge ], [ 240, %sw.bb40.sw.epilog58_crit_edge101 ], [ 240, %sw.bb40.sw.epilog58_crit_edge102 ], [ 170, %sw.bb43 ], [ 29, %sw.bb42 ], [ 209, %sw.bb41 ], [ 29, %sw.bb34.sw.epilog58_crit_edge ], [ 29, %sw.bb34.sw.epilog58_crit_edge99 ], [ 29, %sw.bb34.sw.epilog58_crit_edge100 ], [ 221, %sw.bb35 ], [ 202, %sw.bb27.sw.epilog58_crit_edge ], [ 202, %sw.bb27.sw.epilog58_crit_edge98 ], [ 221, %sw.bb29 ], [ 170, %sw.bb28 ], [ 172, %sw.bb20.sw.epilog58_crit_edge ], [ 172, %sw.bb20.sw.epilog58_crit_edge95 ], [ 172, %sw.bb20.sw.epilog58_crit_edge96 ], [ 172, %sw.bb20.sw.epilog58_crit_edge97 ], [ 221, %sw.bb22 ], [ 170, %sw.bb21 ], [ 209, %sw.bb14.sw.epilog58_crit_edge ], [ 209, %sw.bb14.sw.epilog58_crit_edge93 ], [ 209, %sw.bb14.sw.epilog58_crit_edge94 ], [ 221, %sw.bb15 ], [ 170, %sw.bb6.sw.epilog58_crit_edge ], [ 170, %sw.bb6.sw.epilog58_crit_edge90 ], [ 170, %sw.bb6.sw.epilog58_crit_edge91 ], [ 170, %sw.bb6.sw.epilog58_crit_edge92 ], [ 240, %sw.bb10 ], [ 204, %sw.bb9 ], [ 29, %sw.bb8 ], [ 209, %sw.bb7 ], [ 221, %sw.bb.sw.epilog58_crit_edge ], [ 221, %sw.bb.sw.epilog58_crit_edge89 ], [ 202, %sw.bb3 ], [ 172, %sw.bb2 ]
  %peer_id = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 19
  %11 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state1, align 4
  tail call fastcc void @trace_tipc_node_fsm(ptr noundef %peer_id, i32 noundef %12, i32 noundef %state.0, i32 noundef %evt)
  %13 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %state.0, ptr %state1, align 4
  br label %cleanup

do.end63:                                         ; preds = %sw.bb48.do.end63_crit_edge, %sw.bb40.do.end63_crit_edge, %sw.bb34.do.end63_crit_edge, %sw.bb27.do.end63_crit_edge, %sw.bb20.do.end63_crit_edge, %sw.bb14.do.end63_crit_edge, %sw.bb6.do.end63_crit_edge, %sw.bb.do.end63_crit_edge
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %evt, i32 noundef %1) #18
  %peer_id66 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 19
  %14 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state1, align 4
  tail call fastcc void @trace_tipc_node_fsm(ptr noundef %peer_id66, i32 noundef %15, i32 noundef %1, i32 noundef %evt)
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %sw.epilog58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_build_reset_msg(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @node_lost_contact(ptr noundef %n, ptr noundef %inputq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_sks = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @node_lost_contact.__UNIQUE_ID_ddebug604, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@node_lost_contact, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @node_lost_contact.__UNIQUE_ID_ddebug604, ptr noundef nonnull @.str.58, i32 noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 30000
  %delete_at = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 26
  %3 = ptrtoint ptr %delete_at to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %delete_at, align 4
  tail call fastcc void @trace_tipc_node_lost_contact(ptr noundef %n)
  %net = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 3
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %bc_entry = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 7
  %6 = ptrtoint ptr %bc_entry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bc_entry, align 4
  tail call void @tipc_bcast_remove_peer(ptr noundef %5, ptr noundef %7) #14
  %namedq = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 7, i32 4
  tail call void @skb_queue_purge(ptr noundef %namedq) #14
  %arrayidx = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %do.end.for.inc_crit_edge, label %if.then7

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call i32 @tipc_link_fsm_evt(ptr noundef nonnull %9, i32 noundef -99545378) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %do.end.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool6.not.1 = icmp eq ptr %11, null
  br i1 %tobool6.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then7.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then7.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %call8.1 = tail call i32 @tipc_link_fsm_evt(ptr noundef nonnull %11, i32 noundef -99545378) #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then7.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %tobool6.not.2 = icmp eq ptr %13, null
  br i1 %tobool6.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then7.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then7.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  %call8.2 = tail call i32 @tipc_link_fsm_evt(ptr noundef nonnull %13, i32 noundef -99545378) #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then7.2, %for.inc.1.for.inc.2_crit_edge
  %action_flags = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 8
  %14 = ptrtoint ptr %action_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %action_flags, align 4
  %or = or i32 %15, 8
  store i32 %or, ptr %action_flags, align 4
  %peer_net = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 27
  %16 = ptrtoint ptr %peer_net to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %peer_net, align 4
  %peer_hash_mix = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 28
  %17 = ptrtoint ptr %peer_hash_mix to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %peer_hash_mix, align 4
  %18 = ptrtoint ptr %conn_sks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %conn_sks, align 4
  %cmp17.not71 = icmp eq ptr %19, %conn_sks
  br i1 %cmp17.not71, label %for.inc.2.for.end40_crit_edge, label %for.inc.2.for.body20_crit_edge

for.inc.2.for.body20_crit_edge:                   ; preds = %for.inc.2
  br label %for.body20

for.inc.2.for.end40_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end40

for.body20:                                       ; preds = %list_del.exit.for.body20_crit_edge, %for.inc.2.for.body20_crit_edge
  %.pn.in72 = phi ptr [ %.pn75, %list_del.exit.for.body20_crit_edge ], [ %19, %for.inc.2.for.body20_crit_edge ]
  %conn.074 = getelementptr i8, ptr %.pn.in72, i32 -12
  %20 = ptrtoint ptr %.pn.in72 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn75 = load ptr, ptr %.pn.in72, align 4
  %21 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %23 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %22, i32 noundef %23) #14
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %node_addr.i, align 4
  %peer_node = getelementptr i8, ptr %.pn.in72, i32 -4
  %26 = ptrtoint ptr %peer_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %peer_node, align 4
  %28 = ptrtoint ptr %conn.074 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %conn.074, align 4
  %peer_port = getelementptr i8, ptr %.pn.in72, i32 -8
  %30 = ptrtoint ptr %peer_port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %peer_port, align 4
  %call23 = tail call ptr @tipc_msg_create(i32 noundef 3, i32 noundef 0, i32 noundef 24, i32 noundef 0, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef 3) #14
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %for.body20.if.end32_crit_edge, label %if.then31, !prof !238

for.body20.if.end32_crit_edge:                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then31:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @skb_queue_tail(ptr noundef %inputq, ptr noundef nonnull %call23) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %for.body20.if.end32_crit_edge
  %call.i.i66 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in72) #14
  br i1 %call.i.i66, label %if.end.i.i, label %if.end32.list_del.exit_crit_edge

if.end32.list_del.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in72, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %.pn.in72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %.pn.in72, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end32.list_del.exit_crit_edge
  %38 = ptrtoint ptr %.pn.in72 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in72, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in72, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %conn.074) #14
  %cmp17.not = icmp eq ptr %.pn75, %conn_sks
  br i1 %cmp17.not, label %list_del.exit.for.end40_crit_edge, label %list_del.exit.for.body20_crit_edge

list_del.exit.for.body20_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body20

list_del.exit.for.end40_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end40

for.end40:                                        ; preds = %list_del.exit.for.end40_crit_edge, %for.inc.2.for.end40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_bcast_dec_bearer_dst_cnt(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @tipc_link_rcv_nxt(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_tnl_prepare(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_node_fsm(ptr noundef %name, i32 noundef %os, i32 noundef %ns, i32 noundef %evt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_fsm, i32 0, i32 1), ptr blockaddress(@trace_tipc_node_fsm, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !250

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !241

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !264
  %call42 = tail call i32 @__traceiter_tipc_node_fsm(ptr noundef null, ptr noundef %name, i32 noundef %os, i32 noundef %ns, i32 noundef %evt) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !265
  %13 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !241

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_fsm, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_fsm, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tipc_node_fsm.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_tipc_node_fsm.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 393, ptr noundef nonnull @.str.41) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !254
  %31 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_node_fsm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_node_lost_contact(ptr noundef %n) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_lost_contact, i32 0, i32 1), ptr blockaddress(@trace_tipc_node_lost_contact, %do.body)) #14
          to label %if.end49 [label %do.body], !srcloc !250

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !241

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !266
  %call43 = tail call i32 @__traceiter_tipc_node_lost_contact(ptr noundef null, ptr noundef %n, i1 noundef zeroext true, ptr noundef nonnull @.str.15) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !267
  %13 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !241

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_lost_contact, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_lost_contact, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_node_lost_contact.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_tipc_node_lost_contact.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 356, ptr noundef nonnull @.str.41) #14
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !254
  %31 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_bcast_remove_peer(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_msg_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_node_lost_contact(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_node_link_down(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_nit_active(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_clone_to_loopback(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_sk_mcast_rcv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_msg_assemble(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_bcast_rcv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_build_state_msg(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_node_reset_links(ptr noundef %n) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_reset_links, i32 0, i32 1), ptr blockaddress(@trace_tipc_node_reset_links, %do.body)) #14
          to label %if.end49 [label %do.body], !srcloc !250

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !241

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !268
  %call43 = tail call i32 @__traceiter_tipc_node_reset_links(ptr noundef null, ptr noundef %n, i1 noundef zeroext true, ptr noundef nonnull @.str.15) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !269
  %13 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !241

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_reset_links, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_reset_links, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_node_reset_links.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_tipc_node_reset_links.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 360, ptr noundef nonnull @.str.41) #14
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !254
  %31 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_node_reset_links(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_bcast_sync_rcv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_skb_dump(ptr noundef %skb, ptr noundef %header) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_skb_dump, i32 0, i32 1), ptr blockaddress(@trace_tipc_skb_dump, %do.body)) #14
          to label %if.end49 [label %do.body], !srcloc !250

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !241

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !270
  %call43 = tail call i32 @__traceiter_tipc_skb_dump(ptr noundef null, ptr noundef %skb, i1 noundef zeroext false, ptr noundef %header) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !271
  %13 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !241

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_skb_dump, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_skb_dump, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_skb_dump.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_tipc_skb_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 159, ptr noundef nonnull @.str.41) #14
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !254
  %31 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
define internal fastcc void @trace_tipc_node_check_state(ptr noundef %n) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_check_state, i32 0, i32 1), ptr blockaddress(@trace_tipc_node_check_state, %do.body)) #14
          to label %if.end49 [label %do.body], !srcloc !250

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !241

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !272
  %call43 = tail call i32 @__traceiter_tipc_node_check_state(ptr noundef null, ptr noundef %n, i1 noundef zeroext true, ptr noundef nonnull @.str.15) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !273
  %13 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !241

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_check_state, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_check_state, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_node_check_state.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_tipc_node_check_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 361, ptr noundef nonnull @.str.41) #14
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !254
  %31 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_link_validate_msg(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_link_dump(ptr noundef %l) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_dump, i32 0, i32 1), ptr blockaddress(@trace_tipc_link_dump, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !250

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !241

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !274
  %call42 = tail call i32 @__traceiter_tipc_link_dump(ptr noundef null, ptr noundef %l, i16 noundef zeroext 0, ptr noundef nonnull @.str.66) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !275
  %13 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !241

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_dump, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_link_dump, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_link_dump.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_tipc_link_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 270, ptr noundef nonnull @.str.41) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !254
  %31 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
define internal fastcc void @tipc_skb_queue_splice_tail_init(ptr noundef %list, ptr noundef %head) unnamed_addr #4 align 64 {
entry:
  %tmp = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tmp) #14
  %0 = getelementptr inbounds i8, ptr %tmp, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp, ptr %tmp, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %tmp, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tmp, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %tmp, i32 0, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i, align 4
  %lock = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %cmp.i.not.i = icmp eq ptr %6, %list
  br i1 %cmp.i.not.i, label %entry.skb_queue_splice_tail_init.exit_crit_edge, label %if.then.i

entry.skb_queue_splice_tail_init.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_queue_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.anon.90, ptr %list, i32 0, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.83, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %8, ptr %prev5.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %6, ptr %8, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %tmp, ptr %10, align 8
  store volatile ptr %10, ptr %prev.i, align 4
  %qlen.i5 = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %14 = ptrtoint ptr %qlen.i5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i5, align 4
  %16 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %17, %15
  store i32 %add.i, ptr %qlen.i, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list, ptr %list, align 4
  store ptr %list, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i5, align 4
  br label %skb_queue_splice_tail_init.exit

skb_queue_splice_tail_init.exit:                  ; preds = %if.then.i, %entry.skb_queue_splice_tail_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %head, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #14
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tmp, align 4
  %cmp.i.not.i.i = icmp eq ptr %20, %tmp
  br i1 %cmp.i.not.i.i, label %skb_queue_splice_tail_init.exit.tipc_skb_queue_splice_tail.exit_crit_edge, label %if.then.i.i

skb_queue_splice_tail_init.exit.tipc_skb_queue_splice_tail.exit_crit_edge: ; preds = %skb_queue_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_skb_queue_splice_tail.exit

if.then.i.i:                                      ; preds = %skb_queue_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.anon.90, ptr %head, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %prev5.i.i.i = getelementptr inbounds %struct.anon.83, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %prev5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %22, ptr %prev5.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %20, ptr %22, align 8
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %head, ptr %24, align 8
  store volatile ptr %24, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qlen.i, align 4
  %qlen1.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %head, i32 0, i32 1
  %30 = ptrtoint ptr %qlen1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qlen1.i.i, align 4
  %add.i.i = add i32 %31, %29
  store i32 %add.i.i, ptr %qlen1.i.i, align 4
  br label %tipc_skb_queue_splice_tail.exit

tipc_skb_queue_splice_tail.exit:                  ; preds = %if.then.i.i, %skb_queue_splice_tail_init.exit.tipc_skb_queue_splice_tail.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tmp) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_link_inputq(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_node_link_failover(ptr noundef %n, ptr noundef %l, ptr noundef %tnl, ptr noundef %xmitq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @tipc_link_is_up(ptr noundef %tnl) #14
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %l, null
  br i1 %tobool.not, label %if.end10.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call1 = tail call zeroext i1 @tipc_link_is_reset(ptr noundef nonnull %l) #14
  br i1 %call1, label %if.then8.critedge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then8.critedge:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call4.c = tail call i32 @tipc_link_fsm_evt(ptr noundef %tnl, i32 noundef 203214558) #14
  tail call fastcc void @tipc_node_fsm_evt(ptr noundef %n, i32 noundef 3310)
  %call5.c = tail call zeroext i16 @tipc_link_rcv_nxt(ptr noundef %tnl) #14
  %add.c = add i16 %call5.c, 32766
  %sync_point.c = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 13
  %0 = ptrtoint ptr %sync_point.c to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %add.c, ptr %sync_point.c, align 2
  tail call void @tipc_link_failover_prepare(ptr noundef nonnull %l, ptr noundef %tnl, ptr noundef %xmitq) #14
  %call9 = tail call i32 @tipc_link_fsm_evt(ptr noundef nonnull %l, i32 noundef -99546130) #14
  br label %if.end10

if.end10.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call4.c20 = tail call i32 @tipc_link_fsm_evt(ptr noundef %tnl, i32 noundef 203214558) #14
  tail call fastcc void @tipc_node_fsm_evt(ptr noundef %n, i32 noundef 3310)
  %call5.c21 = tail call zeroext i16 @tipc_link_rcv_nxt(ptr noundef %tnl) #14
  %add.c22 = add i16 %call5.c21, 32766
  %sync_point.c23 = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 13
  %1 = ptrtoint ptr %sync_point.c23 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %add.c22, ptr %sync_point.c23, align 2
  tail call void @tipc_link_failover_prepare(ptr noundef null, ptr noundef %tnl, ptr noundef %xmitq) #14
  br label %if.end10

if.end10:                                         ; preds = %if.end10.critedge, %if.then8.critedge
  tail call fastcc void @tipc_node_fsm_evt(ptr noundef %n, i32 noundef 4030)
  br label %return

return:                                           ; preds = %if.end10, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tipc_node_link_up(ptr noundef %n, i32 noundef %bearer_id, ptr noundef %xmitq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %active_links = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 5
  %arrayidx2 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %active_links to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_links, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i = icmp eq i32 %1, -1
  br i1 %cmp.i, label %entry.node_active_link.exit_crit_edge, label %if.end.i, !prof !238

entry.node_active_link.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %node_active_link.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx2.i = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 %1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2.i, align 4
  br label %node_active_link.exit

node_active_link.exit:                            ; preds = %if.end.i, %entry.node_active_link.exit_crit_edge
  %retval.0.i132 = phi ptr [ %3, %if.end.i ], [ null, %entry.node_active_link.exit_crit_edge ]
  %arrayidx3 = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 %bearer_id
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %node_active_link.exit.cleanup_crit_edge, label %lor.lhs.false

node_active_link.exit.cleanup_crit_edge:          ; preds = %node_active_link.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %node_active_link.exit
  %call4 = tail call zeroext i1 @tipc_link_is_up(ptr noundef nonnull %5) #14
  br i1 %call4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call5 = tail call i32 @tipc_link_fsm_evt(ptr noundef nonnull %5, i32 noundef 247573278) #14
  %call6 = tail call zeroext i1 @tipc_link_is_up(ptr noundef nonnull %5) #14
  br i1 %call6, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %working_links = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 15
  %6 = ptrtoint ptr %working_links to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %working_links, align 4
  %inc = add i16 %7, 1
  store i16 %inc, ptr %working_links, align 4
  %action_flags = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 8
  %8 = ptrtoint ptr %action_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %action_flags, align 4
  %or = or i32 %9, 64
  store i32 %or, ptr %action_flags, align 4
  %call9 = tail call i32 @tipc_link_id(ptr noundef nonnull %5) #14
  %link_id = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 18
  %10 = ptrtoint ptr %link_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call9, ptr %link_id, align 4
  %call10 = tail call i32 @tipc_link_mss(ptr noundef nonnull %5) #14
  %mtu = getelementptr %struct.tipc_node, ptr %n, i32 0, i32 6, i32 %bearer_id, i32 2
  %11 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call10, ptr %mtu, align 4
  %net = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 3
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n, align 4
  tail call void @tipc_bearer_add_dest(ptr noundef %13, i32 noundef %bearer_id, i32 noundef %15) #14
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  tail call void @tipc_bcast_inc_bearer_dst_cnt(ptr noundef %17, i32 noundef %bearer_id) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__tipc_node_link_up.__UNIQUE_ID_ddebug598, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__tipc_node_link_up, %if.then18)) #14
          to label %do.end [label %if.then18], !srcloc !250

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = tail call ptr @tipc_link_name(ptr noundef nonnull %5) #14
  %call20 = tail call zeroext i8 @tipc_link_plane(ptr noundef nonnull %5) #14
  %conv = zext i8 %call20 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__tipc_node_link_up.__UNIQUE_ID_ddebug598, ptr noundef nonnull @.str.70, ptr noundef %call19, i32 noundef %conv) #14
  br label %do.end

do.end:                                           ; preds = %if.then18, %if.end8
  tail call fastcc void @trace_tipc_node_link_up(ptr noundef %n)
  %call22 = tail call i32 @tipc_link_build_state_msg(ptr noundef nonnull %5, ptr noundef %xmitq) #14
  %tobool23.not = icmp eq ptr %retval.0.i132, null
  br i1 %tobool23.not, label %if.then24, label %if.end28

if.then24:                                        ; preds = %do.end
  %18 = ptrtoint ptr %active_links to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bearer_id, ptr %active_links, align 4
  %19 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %bearer_id, ptr %arrayidx2, align 4
  %state1.i = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 10
  %20 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state1.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %21, label %do.end.i [
    i32 221, label %if.then24.tipc_node_fsm_evt.exit_crit_edge
    i32 170, label %sw.bb6.i
    i32 209, label %sw.bb14.i
    i32 172, label %if.then24.tipc_node_fsm_evt.exit_crit_edge136
    i32 202, label %sw.bb27.i
    i32 29, label %sw.bb34.i
    i32 240, label %sw.bb40.i
    i32 204, label %sw.bb48.i
  ]

if.then24.tipc_node_fsm_evt.exit_crit_edge136:    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit

if.then24.tipc_node_fsm_evt.exit_crit_edge:       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit

sw.bb6.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit

sw.bb14.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit

sw.bb27.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit

sw.bb34.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit

sw.bb40.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit

sw.bb48.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %tipc_node_fsm_evt.exit

do.end.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %21) #18
  br label %tipc_node_fsm_evt.exit

tipc_node_fsm_evt.exit:                           ; preds = %do.end.i, %sw.bb48.i, %sw.bb40.i, %sw.bb34.i, %sw.bb27.i, %sw.bb14.i, %sw.bb6.i, %if.then24.tipc_node_fsm_evt.exit_crit_edge, %if.then24.tipc_node_fsm_evt.exit_crit_edge136
  %state.0.i = phi i32 [ %21, %do.end.i ], [ %21, %sw.bb48.i ], [ %21, %sw.bb40.i ], [ %21, %sw.bb34.i ], [ 170, %sw.bb27.i ], [ %21, %sw.bb14.i ], [ %21, %sw.bb6.i ], [ 172, %if.then24.tipc_node_fsm_evt.exit_crit_edge ], [ 172, %if.then24.tipc_node_fsm_evt.exit_crit_edge136 ]
  %peer_id.i = getelementptr inbounds %struct.tipc_node, ptr %n, i32 0, i32 19
  %23 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state1.i, align 4
  tail call fastcc void @trace_tipc_node_fsm(ptr noundef %peer_id.i, i32 noundef %24, i32 noundef %state.0.i, i32 noundef 3790) #14
  %25 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %state.0.i, ptr %state1.i, align 4
  %26 = ptrtoint ptr %action_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %action_flags, align 4
  %or26 = or i32 %27, 16
  store i32 %or26, ptr %action_flags, align 4
  tail call void @tipc_link_set_active(ptr noundef nonnull %5, i1 noundef zeroext true) #14
  %28 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net, align 4
  tail call void @tipc_bcast_add_peer(ptr noundef %29, ptr noundef nonnull %5, ptr noundef %xmitq) #14
  br label %cleanup

if.end28:                                         ; preds = %do.end
  %call29 = tail call i32 @tipc_link_prio(ptr noundef nonnull %5) #14
  %call30 = tail call i32 @tipc_link_prio(ptr noundef nonnull %retval.0.i132) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %call30)
  %cmp = icmp sgt i32 %call29, %call30
  br i1 %cmp, label %do.body33, label %if.else

do.body33:                                        ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__tipc_node_link_up.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__tipc_node_link_up, %if.then45)) #14
          to label %do.end49 [label %if.then45], !srcloc !250

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #16
  %call46 = tail call ptr @tipc_link_name(ptr noundef nonnull %retval.0.i132) #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__tipc_node_link_up.__UNIQUE_ID_ddebug599, ptr noundef nonnull @.str.72, ptr noundef %call46) #14
  br label %do.end49

do.end49:                                         ; preds = %if.then45, %do.body33
  %30 = ptrtoint ptr %active_links to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bearer_id, ptr %active_links, align 4
  %31 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %bearer_id, ptr %arrayidx2, align 4
  tail call void @tipc_link_set_active(ptr noundef nonnull %5, i1 noundef zeroext true) #14
  tail call void @tipc_link_set_active(ptr noundef nonnull %retval.0.i132, i1 noundef zeroext false) #14
  br label %if.end74

if.else:                                          ; preds = %if.end28
  %call50 = tail call i32 @tipc_link_prio(ptr noundef nonnull %5) #14
  %call51 = tail call i32 @tipc_link_prio(ptr noundef nonnull %retval.0.i132) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call50, i32 %call51)
  %cmp52 = icmp eq i32 %call50, %call51
  br i1 %cmp52, label %if.then54, label %do.body56

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @tipc_link_set_active(ptr noundef nonnull %5, i1 noundef zeroext true) #14
  %32 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %bearer_id, ptr %arrayidx2, align 4
  br label %if.end74

do.body56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__tipc_node_link_up.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__tipc_node_link_up, %if.then68)) #14
          to label %if.end74 [label %if.then68], !srcloc !250

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #16
  %call69 = tail call ptr @tipc_link_name(ptr noundef nonnull %5) #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__tipc_node_link_up.__UNIQUE_ID_ddebug600, ptr noundef nonnull @.str.74, ptr noundef %call69) #14
  br label %if.end74

if.end74:                                         ; preds = %if.then68, %do.body56, %if.then54, %do.end49
  tail call void @tipc_link_tnl_prepare(ptr noundef nonnull %retval.0.i132, ptr noundef nonnull %5, i32 noundef 0, ptr noundef %xmitq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %tipc_node_fsm_evt.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %node_active_link.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_link_is_synching(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_skb_dump(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_node_check_state(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_link_dump(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_failover_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_bearer_add_dest(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_bcast_inc_bearer_dst_cnt(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_node_link_up(ptr noundef %n) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_link_up, i32 0, i32 1), ptr blockaddress(@trace_tipc_node_link_up, %do.body)) #14
          to label %if.end49 [label %do.body], !srcloc !250

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !241

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  %call43 = tail call i32 @__traceiter_tipc_node_link_up(ptr noundef null, ptr noundef %n, i1 noundef zeroext true, ptr noundef nonnull @.str.15) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  %13 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !241

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !228) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_link_up, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_node_link_up, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tipc_node_link_up.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_tipc_node_link_up.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 358, ptr noundef nonnull @.str.41) #14
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !254
  %31 = tail call i32 @llvm.read_register.i32(metadata !228) #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_link_set_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_bcast_add_peer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_node_link_up(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_monitor_get_threshold(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_aead_key_validate(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_crypto_key_init(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_crypto_key_distr(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_crypto_rekeying_sched(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !20, !21, !23, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !107, !109, !111, !113, !114, !115, !117, !118, !120, !121, !123, !124, !126, !128, !129, !131, !133, !134, !135, !136, !137, !139, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !155, !156, !157, !158, !160, !161, !163, !164, !166, !167, !168, !170, !171, !173, !175, !177, !178, !179, !180, !182, !183, !185, !187, !189, !191, !192, !194, !195, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !216, !218, !220, !222, !224, !226}
!llvm.named.register.sp = !{!228}
!llvm.module.flags = !{!229, !230, !231, !232, !233, !234, !235, !236}
!llvm.ident = !{!237}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/tipc/node.c", i32 497, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/tipc/node.c", i32 521, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/tipc/node.c", i32 532, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tipc_node_create._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @tipc_node_create._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/tipc/node.c", i32 538, i32 3}
!13 = !{ptr @tipc_node_create._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @tipc_node_create._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @tipc_node_create.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../net/tipc/node.c", i32 554, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @tipc_node_create.__key.9, !19, !"__key", i1 false, i1 false}
!19 = !{!"../net/tipc/node.c", i32 564, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tipc_node_create.__key.11, !22, !"__key", i1 false, i1 false}
!22 = !{!"../net/tipc/node.c", i32 572, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/tipc/node.c", i32 579, i32 2}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/tipc/node.c", i32 586, i32 2}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/tipc/node.c", i32 590, i32 34}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/tipc/node.c", i32 648, i32 3}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tipc_node_subscribe._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @tipc_node_subscribe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/tipc/node.c", i32 666, i32 3}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @tipc_node_unsubscribe._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @tipc_node_unsubscribe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/tipc/node.c", i32 686, i32 3}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tipc_node_add_conn._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @tipc_node_add_conn._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/tipc/node.c", i32 1188, i32 4}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tipc_node_check_dest._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @tipc_node_check_dest._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/tipc/node.c", i32 1286, i32 43}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/tipc/node.c", i32 1314, i32 2}
!54 = !{ptr @tipc_node_xmit.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../net/tipc/node.c", i32 1694, i32 3}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../net/tipc/node.c", i32 1793, i32 2}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/tipc/node.c", i32 2206, i32 2}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../net/tipc/node.c", i32 2290, i32 2}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../net/tipc/node.c", i32 2337, i32 2}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../net/tipc/node.c", i32 2584, i32 3}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../net/tipc/node.c", i32 2717, i32 3}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/tipc/node.c", i32 3082, i32 27}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/tipc/node.c", i32 3086, i32 26}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/tipc/node.c", i32 3087, i32 34}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/tipc/node.c", i32 3088, i32 34}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/tipc/node.c", i32 3091, i32 34}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/tipc/node.c", i32 3096, i32 34}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/tipc/node.c", i32 3101, i32 34}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/tipc/node.c", i32 3102, i32 34}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/tipc/node.c", i32 3103, i32 34}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/tipc/node.c", i32 3105, i32 34}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/tipc/node.c", i32 3107, i32 34}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/tipc/node.c", i32 3110, i32 34}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/tipc/node.c", i32 3119, i32 34}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../net/tipc/node.c", i32 3132, i32 2}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../net/tipc/node.c", i32 3139, i32 3}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../net/tipc/node.c", i32 339, i32 2}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!103 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../net/tipc/node.c", i32 361, i32 2}
!107 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!108 = !{!"../net/tipc/node.c", i32 452, i32 2}
!109 = !{ptr @skb_queue_head_init.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!111 = distinct !{null, !112, !"__already_done", i1 false, i1 false}
!112 = !{!"../net/tipc/trace.h", i32 354, i32 1}
!113 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!114 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!117 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../net/tipc/trace.h", i32 355, i32 1}
!120 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../net/tipc/trace.h", i32 357, i32 1}
!123 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../net/tipc/node.c", i32 773, i32 2}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../net/tipc/trace.h", i32 273, i32 1}
!128 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!129 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/tipc/node.c", i32 1071, i32 37}
!131 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../net/tipc/node.c", i32 991, i32 2}
!133 = !{ptr @.str.46, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.47, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @__tipc_node_link_down.__UNIQUE_ID_ddebug601, !132, !"__UNIQUE_ID_ddebug601", i1 false, i1 false}
!136 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.49, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/tipc/node.c", i32 1019, i32 43}
!139 = !{ptr @.str.50, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/tipc/node.c", i32 1037, i32 42}
!141 = !{ptr @.str.51, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../net/tipc/node.c", i32 1499, i32 3}
!143 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @tipc_node_fsm_evt._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @tipc_node_fsm_evt._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.54, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/tipc/node.c", i32 1507, i32 2}
!148 = !{ptr @tipc_node_fsm_evt._entry.53, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @tipc_node_fsm_evt._entry_ptr.55, !147, !"_entry_ptr", i1 false, i1 false}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../net/tipc/trace.h", i32 393, i32 1}
!152 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!153 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/tipc/node.c", i32 1520, i32 2}
!155 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @node_lost_contact.__UNIQUE_ID_ddebug604, !154, !"__UNIQUE_ID_ddebug604", i1 false, i1 false}
!157 = !{ptr @.str.58, !154, !"<string literal>", i1 false, i1 false}
!158 = distinct !{null, !159, !"__already_done", i1 false, i1 false}
!159 = !{!"../net/tipc/trace.h", i32 356, i32 1}
!160 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!161 = distinct !{null, !162, !"__already_done", i1 false, i1 false}
!162 = !{!"../net/tipc/trace.h", i32 359, i32 1}
!163 = distinct !{null, !162, !"__warned", i1 false, i1 false}
!164 = distinct !{null, !165, !"__warned", i1 false, i1 false}
!165 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!166 = !{ptr @.str.59, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.60, !165, !"<string literal>", i1 false, i1 false}
!168 = distinct !{null, !169, !"__warned", i1 false, i1 false}
!169 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!170 = !{ptr @.str.61, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @tipc_lxc_xmit.__key, !172, !"__key", i1 false, i1 false}
!172 = !{!"../net/tipc/node.c", i32 1635, i32 4}
!173 = !{ptr @tipc_lxc_xmit.__key.62, !174, !"__key", i1 false, i1 false}
!174 = !{!"../net/tipc/node.c", i32 1660, i32 3}
!175 = !{ptr @.str.63, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/tipc/node.c", i32 1324, i32 2}
!177 = !{ptr @.str.64, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @tipc_node_reset_links._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @tipc_node_reset_links._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = distinct !{null, !181, !"__already_done", i1 false, i1 false}
!181 = !{!"../net/tipc/trace.h", i32 360, i32 1}
!182 = distinct !{null, !181, !"__warned", i1 false, i1 false}
!183 = !{ptr @.str.65, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/tipc/node.c", i32 1934, i32 35}
!185 = !{ptr @.str.66, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../net/tipc/node.c", i32 1955, i32 35}
!187 = !{ptr @.str.67, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/tipc/node.c", i32 1989, i32 9}
!189 = distinct !{null, !190, !"__already_done", i1 false, i1 false}
!190 = !{!"../net/tipc/trace.h", i32 159, i32 1}
!191 = distinct !{null, !190, !"__warned", i1 false, i1 false}
!192 = distinct !{null, !193, !"__already_done", i1 false, i1 false}
!193 = !{!"../net/tipc/trace.h", i32 361, i32 1}
!194 = distinct !{null, !193, !"__warned", i1 false, i1 false}
!195 = distinct !{null, !196, !"__already_done", i1 false, i1 false}
!196 = !{!"../net/tipc/trace.h", i32 270, i32 1}
!197 = distinct !{null, !196, !"__warned", i1 false, i1 false}
!198 = !{ptr @.str.68, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../net/tipc/node.c", i32 864, i32 2}
!200 = !{ptr @.str.69, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @__tipc_node_link_up.__UNIQUE_ID_ddebug598, !199, !"__UNIQUE_ID_ddebug598", i1 false, i1 false}
!202 = !{ptr @.str.70, !199, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.71, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../net/tipc/node.c", i32 884, i32 3}
!205 = !{ptr @__tipc_node_link_up.__UNIQUE_ID_ddebug599, !204, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!206 = !{ptr @.str.72, !204, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.73, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../net/tipc/node.c", i32 893, i32 3}
!209 = !{ptr @__tipc_node_link_up.__UNIQUE_ID_ddebug600, !208, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!210 = !{ptr @.str.74, !208, !"<string literal>", i1 false, i1 false}
!211 = distinct !{null, !212, !"__already_done", i1 false, i1 false}
!212 = !{!"../net/tipc/trace.h", i32 358, i32 1}
!213 = distinct !{null, !212, !"__warned", i1 false, i1 false}
!214 = !{ptr @.str.75, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../include/net/netlink.h", i32 991, i32 3}
!216 = distinct !{null, !217, !"__warned", i1 false, i1 false}
!217 = !{!"../net/tipc/node.c", i32 2385, i32 2}
!218 = !{ptr @__tipc_nl_node_set_key.__msg, !219, !"__msg", i1 false, i1 false}
!219 = !{!"../net/tipc/node.c", i32 2971, i32 3}
!220 = !{ptr @__tipc_nl_node_set_key.__msg.76, !221, !"__msg", i1 false, i1 false}
!221 = !{!"../net/tipc/node.c", i32 3015, i32 3}
!222 = !{ptr @__tipc_nl_node_set_key.__msg.77, !223, !"__msg", i1 false, i1 false}
!223 = !{!"../net/tipc/node.c", i32 3020, i32 4}
!224 = !{ptr @nla_parse_nested.__msg, !225, !"__msg", i1 false, i1 false}
!225 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!226 = distinct !{null, !227, !"__warned", i1 false, i1 false}
!227 = !{!"../net/tipc/node.c", i32 3049, i32 2}
!228 = !{!"sp"}
!229 = !{i32 1, !"wchar_size", i32 2}
!230 = !{i32 1, !"min_enum_size", i32 4}
!231 = !{i32 8, !"branch-target-enforcement", i32 0}
!232 = !{i32 8, !"sign-return-address", i32 0}
!233 = !{i32 8, !"sign-return-address-all", i32 0}
!234 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!235 = !{i32 7, !"uwtable", i32 1}
!236 = !{i32 7, !"frame-pointer", i32 2}
!237 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!238 = !{!"branch_weights", i32 1, i32 2000}
!239 = !{i64 2148477083}
!240 = !{i64 2148391547, i64 2148391579, i64 2148391608, i64 2148391642, i64 2148391673, i64 2148391696}
!241 = !{!"branch_weights", i32 2000, i32 1}
!242 = !{i64 2150082107}
!243 = !{i64 2150131650}
!244 = !{i8 0, i8 2}
!245 = !{i64 871288, i64 871312, i64 871333, i64 871350, i64 871367}
!246 = !{i64 2150131916}
!247 = !{i64 2148389082, i64 2148389114, i64 2148389143, i64 2148389177, i64 2148389208, i64 2148389231}
!248 = !{i64 2151695818}
!249 = !{i64 2151615382}
!250 = !{i64 2148837976, i64 2148837981, i64 2148837994, i64 2148838038, i64 2148838072, i64 2148838093}
!251 = !{i64 2157900944}
!252 = !{i64 2157901169}
!253 = !{i64 2150140209}
!254 = !{i64 2150141245}
!255 = !{!"auto-init"}
!256 = !{i64 2157811420}
!257 = !{i64 2157811649}
!258 = !{i64 2157921897}
!259 = !{i64 2157922122}
!260 = !{i64 2157956278}
!261 = !{i64 2157956505}
!262 = !{i64 2157994387}
!263 = !{i64 2157994618}
!264 = !{i64 2158066486}
!265 = !{i64 2158066709}
!266 = !{i64 2157939023}
!267 = !{i64 2157939260}
!268 = !{i64 2158011636}
!269 = !{i64 2158011871}
!270 = !{i64 2157420885}
!271 = !{i64 2157421108}
!272 = !{i64 2158028993}
!273 = !{i64 2158029228}
!274 = !{i64 2157756473}
!275 = !{i64 2157756700}
!276 = !{i64 2157973263}
!277 = !{i64 2157973490}
