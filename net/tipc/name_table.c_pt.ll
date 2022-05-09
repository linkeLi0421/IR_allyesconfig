; ModuleID = '/llk/IR_all_yes/net/tipc/name_table.c_pt.bc'
source_filename = "../net/tipc/name_table.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tipc_uaddr = type { i16, i8, i8, %union.anon.147 }
%union.anon.147 = type { %struct.anon.148 }
%struct.anon.148 = type { %struct.tipc_service_addr, i32 }
%struct.tipc_service_addr = type { i32, i32 }
%struct.publication = type { %struct.tipc_service_range, %struct.tipc_socket_addr, i16, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.tipc_service_range = type { i32, i32, i32 }
%struct.tipc_socket_addr = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.tipc_net = type { [16 x i8], i32, i32, i32, [33 x i8], i32, i32, i8, %struct.spinlock, [512 x %struct.hlist_head], %struct.list_head, i32, i32, [3 x ptr], i32, [4 x ptr], %struct.spinlock, ptr, ptr, %struct.rhashtable, %struct.spinlock, ptr, ptr, %struct.atomic_t, i16, %struct.packet_type, ptr, %struct.work_struct, %struct.atomic_t }
%struct.hlist_head = type { ptr }
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
%struct.tipc_service = type { i32, i32, %struct.rb_root, %struct.hlist_node, %struct.list_head, %struct.spinlock, %struct.callback_head }
%struct.rb_root = type { ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.service_range = type { i32, i32, %struct.rb_node, i32, %struct.list_head, %struct.list_head }
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
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.tipc_dest = type { %struct.list_head, i32, i32 }
%struct.name_table = type { [1024 x %struct.hlist_head], %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, i32, i32 }
%struct.tipc_subscription = type { %struct.tipc_subscr, %struct.tipc_event, %struct.kref, ptr, %struct.timer_list, %struct.list_head, %struct.list_head, i32, i8, %struct.spinlock }
%struct.tipc_subscr = type { %struct.tipc_service_range, i32, i32, [8 x i8] }
%struct.tipc_event = type { i32, i32, i32, %struct.tipc_socket_addr, %struct.tipc_subscr }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@tipc_nametbl_remove_publ._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013tipc: Failed to remove unknown binding: %u,%u,%u/%u:%u/%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tipc_nametbl_remove_publ\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/tipc/name_table.c\00", [42 x i8] zeroinitializer }, align 32
@tipc_nametbl_remove_publ._entry_ptr = internal global ptr @tipc_nametbl_remove_publ._entry, section ".printk_index", align 4
@tipc_nametbl_publish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014tipc: Bind failed, max limit %u reached\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tipc_nametbl_publish\00", [43 x i8] zeroinitializer }, align 32
@tipc_nametbl_publish._entry_ptr = internal global ptr @tipc_nametbl_publish._entry, section ".printk_index", align 4
@tipc_nametbl_subscribe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014tipc: Failed to subscribe for {%u,%u,%u}\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tipc_nametbl_subscribe\00", [41 x i8] zeroinitializer }, align 32
@tipc_nametbl_subscribe._entry_ptr = internal global ptr @tipc_nametbl_subscribe._entry, section ".printk_index", align 4
@tipc_nametbl_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&nt->cluster_scope_lock\00", [40 x i8] zeroinitializer }, align 32
@tipc_nametbl_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&tn->nametbl_lock\00", [46 x i8] zeroinitializer }, align 32
@tipc_nametbl_stop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@tipc_service_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_service_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014tipc: Service creation failed, no memory\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tipc_service_create\00", [44 x i8] zeroinitializer }, align 32
@tipc_service_create._entry_ptr = internal global ptr @tipc_service_create._entry, section ".printk_index", align 4
@tipc_service_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&service->lock\00", [17 x i8] zeroinitializer }, align 32
@tipc_service_insert_publ.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tipc\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tipc_service_insert_publ\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to bind duplicate %u,%u,%u/%u:%u/%u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"tipc: Failed to bind duplicate %u,%u,%u/%u:%u/%u\0A\00", [46 x i8] zeroinitializer }, align 32
@tipc_service_insert_publ._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014tipc: Failed to bind to %u,%u,%u\0A\00", [60 x i8] zeroinitializer }, align 32
@tipc_service_insert_publ._entry_ptr = internal global ptr @tipc_service_insert_publ._entry, section ".printk_index", align 4
@tipc_net_id = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@tipc_nl_service_list.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_genl_family = external dso_local global %struct.genl_family, align 4
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 541, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 772, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 846, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 900, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 902, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 946, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 266, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 270, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 352, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private constant [25 x i8] c"../net/tipc/name_table.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 371, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 45, i32 7 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 695, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 723, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 991, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @tipc_nametbl_publish._entry, ptr @tipc_nametbl_publish._entry_ptr, ptr @tipc_nametbl_remove_publ._entry, ptr @tipc_nametbl_remove_publ._entry_ptr, ptr @tipc_nametbl_subscribe._entry, ptr @tipc_nametbl_subscribe._entry_ptr, ptr @tipc_service_create._entry, ptr @tipc_service_create._entry_ptr, ptr @tipc_service_insert_publ._entry, ptr @tipc_service_insert_publ._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tipc_nametbl_init.__key, ptr @.str.7, ptr @tipc_nametbl_init.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @tipc_service_create.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nametbl_remove_publ._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nametbl_publish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nametbl_subscribe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nametbl_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nametbl_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_service_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_service_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_service_insert_publ._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tipc_nametbl_insert_publ(ptr noundef %net, ptr nocapture noundef readonly %ua, ptr nocapture noundef readonly %sk, i32 noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 80) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3
  %2 = call ptr @memcpy(ptr %call7.i.i.i, ptr %1, i32 12)
  %sk1.i = getelementptr inbounds %struct.publication, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %sk to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %sk, align 4
  %5 = ptrtoint ptr %sk1.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %sk1.i, align 4
  %scope.i = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 2
  %6 = ptrtoint ptr %scope.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %scope.i, align 1
  %conv.i = sext i8 %7 to i16
  %scope2.i = getelementptr inbounds %struct.publication, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %scope2.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %scope2.i, align 4
  %key3.i = getelementptr inbounds %struct.publication, ptr %call7.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %key3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %key, ptr %key3.i, align 8
  %binding_sock.i = getelementptr inbounds %struct.publication, ptr %call7.i.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %binding_sock.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %binding_sock.i, ptr %binding_sock.i, align 8
  %prev.i.i = getelementptr inbounds %struct.publication, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %binding_sock.i, ptr %prev.i.i, align 4
  %binding_node.i = getelementptr inbounds %struct.publication, ptr %call7.i.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %binding_node.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %binding_node.i, ptr %binding_node.i, align 8
  %prev.i15.i = getelementptr inbounds %struct.publication, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev.i15.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %binding_node.i, ptr %prev.i15.i, align 4
  %local_publ.i = getelementptr inbounds %struct.publication, ptr %call7.i.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %local_publ.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %local_publ.i, ptr %local_publ.i, align 8
  %prev.i16.i = getelementptr inbounds %struct.publication, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %prev.i16.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %local_publ.i, ptr %prev.i16.i, align 4
  %all_publ.i = getelementptr inbounds %struct.publication, ptr %call7.i.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %all_publ.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %all_publ.i, ptr %all_publ.i, align 8
  %prev.i17.i = getelementptr inbounds %struct.publication, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %prev.i17.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %all_publ.i, ptr %prev.i17.i, align 4
  %list.i = getelementptr inbounds %struct.publication, ptr %call7.i.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i18.i = getelementptr inbounds %struct.publication, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %prev.i18.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list.i, ptr %prev.i18.i, align 4
  %call1 = tail call fastcc ptr @tipc_service_find(ptr noundef %net, ptr noundef %ua)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end5, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end5:                                          ; preds = %if.end
  %call4 = tail call fastcc ptr @tipc_service_create(ptr noundef %net, ptr noundef %ua)
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.end5.land.lhs.true_crit_edge

if.end5.land.lhs.true_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end5.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %sc.022 = phi ptr [ %call4, %if.end5.land.lhs.true_crit_edge ], [ %call1, %if.end.land.lhs.true_crit_edge ]
  %call7 = tail call fastcc zeroext i1 @tipc_service_insert_publ(ptr noundef %net, ptr noundef nonnull %sc.022, ptr noundef nonnull %call7.i.i.i)
  br i1 %call7, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end9 ], [ %call7.i.i.i, %land.lhs.true.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_service_find(ptr noundef %net, ptr nocapture noundef readonly %ua) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #11
  %nametbl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 21
  %0 = ptrtoint ptr %nametbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nametbl.i, align 4
  %2 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and.i = and i32 %4, 1023
  %arrayidx = getelementptr [1024 x %struct.hlist_head], ptr %1, i32 0, i32 %and.i
  %call2 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b43 = load i1, ptr @tipc_service_find.__warned, align 1
  br i1 %.b43, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tipc_service_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 469, ptr noundef nonnull @.str.10) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %6, null
  %add.ptr = getelementptr i8, ptr %6, i32 -12
  %tobool14.not4750 = icmp eq ptr %add.ptr, null
  %tobool14.not47 = or i1 %tobool12.not, %tobool14.not4750
  br i1 %tobool14.not47, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %service.048 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr30, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %service.048 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %service.048, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp = icmp eq i32 %10, %8
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %service_list = getelementptr inbounds %struct.tipc_service, ptr %service.048, i32 0, i32 3
  %11 = ptrtoint ptr %service_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %service_list, align 4
  %tobool26.not = icmp eq ptr %12, null
  %add.ptr30 = getelementptr i8, ptr %12, i32 -12
  %tobool14.not51 = icmp eq ptr %add.ptr30, null
  %tobool14.not = or i1 %tobool26.not, %tobool14.not51
  br i1 %tobool14.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %service.0.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %service.048, %for.body.cleanup_crit_edge ]
  ret ptr %service.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_service_create(ptr noundef %net, ptr nocapture noundef readonly %ua) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #11
  %nametbl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 21
  %0 = ptrtoint ptr %nametbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nametbl.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 80) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #15
  br label %cleanup

do.body3:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.tipc_service, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @tipc_service_create.__key, i16 noundef signext 3) #11
  %3 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call7.i.i, align 8
  %ranges = getelementptr inbounds %struct.tipc_service, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ranges to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ranges, align 8
  %service_list = getelementptr inbounds %struct.tipc_service, ptr %call7.i.i, i32 0, i32 3
  %pprev.i = getelementptr inbounds %struct.tipc_service, ptr %call7.i.i, i32 0, i32 3, i32 1
  %subscriptions = getelementptr inbounds %struct.tipc_service, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %subscriptions to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %subscriptions, ptr %subscriptions, align 4
  %prev.i = getelementptr inbounds %struct.tipc_service, ptr %call7.i.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %subscriptions, ptr %prev.i, align 8
  %and.i = and i32 %5, 1023
  %arrayidx = getelementptr [1024 x %struct.hlist_head], ptr %1, i32 0, i32 %and.i
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %service_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %service_list, align 4
  %13 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %arrayidx, ptr %pprev.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !72
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %service_list, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.body3.cleanup_crit_edge, label %do.body49.i

do.body3.cleanup_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body49.i:                                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %service_list, ptr %pprev51.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body49.i, %do.body3.cleanup_crit_edge, %do.end
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tipc_service_insert_publ(ptr noundef %net, ptr noundef %sc, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 1
  %node1 = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node1, align 4
  %key2 = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %key2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key2, align 4
  %lock = getelementptr inbounds %struct.tipc_service, ptr %sc, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %lower2.i = getelementptr inbounds %struct.tipc_service_range, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %lower2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lower2.i, align 4
  %upper4.i = getelementptr inbounds %struct.tipc_service_range, ptr %p, i32 0, i32 2
  %6 = ptrtoint ptr %upper4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %upper4.i, align 4
  %ranges.i = getelementptr inbounds %struct.tipc_service, ptr %sc, i32 0, i32 2
  %8 = ptrtoint ptr %ranges.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ranges.i, align 4
  %tobool.not59.i = icmp eq ptr %9, null
  br i1 %tobool.not59.i, label %entry.while.end.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i:                                     ; preds = %if.end11.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %10 = phi ptr [ %21, %if.end11.i.while.body.i_crit_edge ], [ %9, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %10, i32 -8
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %12)
  %cmp.i = icmp eq i32 %5, %12
  br i1 %cmp.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %upper6.i = getelementptr i8, ptr %10, i32 -4
  %13 = ptrtoint ptr %upper6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %upper6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %14)
  %cmp7.i = icmp eq i32 %7, %14
  br i1 %cmp7.i, label %tipc_service_create_range.exit, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %max.i = getelementptr i8, ptr %10, i32 12
  %15 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %7)
  %cmp8.i = icmp ult i32 %16, %7
  br i1 %cmp8.i, label %if.then9.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %7, ptr %max.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end.i.if.end11.i_crit_edge
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %19)
  %cmp13.not.i = icmp ugt i32 %5, %19
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  %n.1.i = select i1 %cmp13.not.i, ptr %rb_right.i, ptr %rb_left.i
  %20 = ptrtoint ptr %n.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %n.1.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end11.i.while.body.i_crit_edge

if.end11.i.while.body.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le.i = ptrtoint ptr %10 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %entry.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %entry.while.end.i_crit_edge ]
  %n.0.lcssa.i = phi ptr [ %n.1.i, %while.cond.while.end_crit_edge.i ], [ %ranges.i, %entry.while.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 2848, i32 noundef 40) #14
  %tobool16.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool16.not.i, label %while.end.i.do.end73_crit_edge, label %tipc_service_create_range.exit.thread134

while.end.i.do.end73_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end73

tipc_service_create_range.exit.thread134:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %5, ptr %call7.i.i.i, align 8
  %upper20.i = getelementptr inbounds %struct.service_range, ptr %call7.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %upper20.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %7, ptr %upper20.i, align 4
  %max21.i = getelementptr inbounds %struct.service_range, ptr %call7.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %max21.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %7, ptr %max21.i, align 4
  %local_publ.i = getelementptr inbounds %struct.service_range, ptr %call7.i.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %local_publ.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %local_publ.i, ptr %local_publ.i, align 8
  %prev.i.i = getelementptr inbounds %struct.service_range, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %local_publ.i, ptr %prev.i.i, align 4
  %all_publ.i = getelementptr inbounds %struct.service_range, ptr %call7.i.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %all_publ.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %all_publ.i, ptr %all_publ.i, align 8
  %prev.i56.i = getelementptr inbounds %struct.service_range, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %prev.i56.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %all_publ.i, ptr %prev.i56.i, align 4
  %tree_node.i = getelementptr inbounds %struct.service_range, ptr %call7.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %tree_node.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %parent.0.lcssa.i, ptr %tree_node.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.service_range, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.service_range, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %rb_left.i.i, align 8
  %33 = ptrtoint ptr %n.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %tree_node.i, ptr %n.0.lcssa.i, align 4
  tail call void @__rb_insert_augmented(ptr noundef %tree_node.i, ptr noundef %ranges.i, ptr noundef nonnull @sr_callbacks_rotate) #11
  br label %if.end

tipc_service_create_range.exit:                   ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %tipc_service_create_range.exit.do.end73_crit_edge, label %tipc_service_create_range.exit.if.end_crit_edge

tipc_service_create_range.exit.if.end_crit_edge:  ; preds = %tipc_service_create_range.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

tipc_service_create_range.exit.do.end73_crit_edge: ; preds = %tipc_service_create_range.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end73

if.end:                                           ; preds = %tipc_service_create_range.exit.if.end_crit_edge, %tipc_service_create_range.exit.thread134
  %retval.0.i122137 = phi ptr [ %call7.i.i.i, %tipc_service_create_range.exit.thread134 ], [ %add.ptr.i, %tipc_service_create_range.exit.if.end_crit_edge ]
  %all_publ = getelementptr inbounds %struct.service_range, ptr %retval.0.i122137, i32 0, i32 5
  %34 = ptrtoint ptr %all_publ to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %all_publ, align 4
  %cmp.i123 = icmp eq ptr %35, %all_publ
  br i1 %cmp.i123, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn148 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %35, %if.end.for.body_crit_edge ]
  %key9 = getelementptr i8, ptr %.pn148, i32 -32
  %36 = ptrtoint ptr %key9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %key9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %3)
  %cmp10 = icmp eq i32 %37, %3
  br i1 %cmp10, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %node12 = getelementptr i8, ptr %.pn148, i32 -40
  %38 = ptrtoint ptr %node12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %node12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool13.not = icmp eq i32 %39, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %1)
  %cmp16 = icmp eq i32 %39, %1
  %or.cond = select i1 %tobool13.not, i1 true, i1 %cmp16
  br i1 %or.cond, label %do.body, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tipc_service_insert_publ.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tipc_service_insert_publ, %if.then25)) #11
          to label %do.end73 [label %if.then25], !srcloc !73

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %p, align 4
  %42 = ptrtoint ptr %lower2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lower2.i, align 4
  %44 = ptrtoint ptr %upper4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %upper4.i, align 4
  %46 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sk, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tipc_service_insert_publ.__UNIQUE_ID_ddebug520, ptr noundef nonnull @.str.17, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %1, i32 noundef %47, i32 noundef %3) #11
  br label %do.end73

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %48 = ptrtoint ptr %.pn148 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn = load ptr, ptr %.pn148, align 4
  %cmp.not = icmp eq ptr %.pn, %all_publ
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %49 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %node1, align 4
  %call.i.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #11
  %node_addr.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %node_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %50)
  %cmp.i124 = icmp ne i32 %52, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i125 = icmp ne i32 %50, 0
  %tobool40.not = and i1 %tobool.not.i125, %cmp.i124
  br i1 %tobool40.not, label %for.end.if.end43_crit_edge, label %if.then41

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then41:                                        ; preds = %for.end
  %local_publ = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 7
  %local_publ42 = getelementptr inbounds %struct.service_range, ptr %retval.0.i122137, i32 0, i32 4
  %53 = ptrtoint ptr %local_publ42 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %local_publ42, align 4
  %call.i.i126 = tail call zeroext i1 @__list_add_valid(ptr noundef %local_publ, ptr noundef %local_publ42, ptr noundef %54) #11
  br i1 %call.i.i126, label %if.end.i.i, label %if.then41.if.end43_crit_edge

if.then41.if.end43_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.end.i.i:                                       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %local_publ, ptr %prev1.i.i, align 4
  %56 = ptrtoint ptr %local_publ to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %local_publ, align 4
  %prev3.i.i = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 7, i32 1
  %57 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %local_publ42, ptr %prev3.i.i, align 4
  %58 = ptrtoint ptr %local_publ42 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %local_publ, ptr %local_publ42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end.i.i, %if.then41.if.end43_crit_edge, %for.end.if.end43_crit_edge
  %all_publ44 = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 8
  %59 = ptrtoint ptr %all_publ to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %all_publ, align 4
  %call.i.i127 = tail call zeroext i1 @__list_add_valid(ptr noundef %all_publ44, ptr noundef %all_publ, ptr noundef %60) #11
  br i1 %call.i.i127, label %if.end.i.i130, label %if.end43.list_add.exit131_crit_edge

if.end43.list_add.exit131_crit_edge:              ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit131

if.end.i.i130:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i128 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i128 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %all_publ44, ptr %prev1.i.i128, align 4
  %62 = ptrtoint ptr %all_publ44 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %60, ptr %all_publ44, align 4
  %prev3.i.i129 = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 8, i32 1
  %63 = ptrtoint ptr %prev3.i.i129 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %all_publ, ptr %prev3.i.i129, align 4
  %64 = ptrtoint ptr %all_publ to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %all_publ44, ptr %all_publ, align 4
  br label %list_add.exit131

list_add.exit131:                                 ; preds = %if.end.i.i130, %if.end43.list_add.exit131_crit_edge
  %publ_cnt = getelementptr inbounds %struct.tipc_service, ptr %sc, i32 0, i32 1
  %65 = ptrtoint ptr %publ_cnt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %publ_cnt, align 4
  %inc = add i32 %66, 1
  store i32 %inc, ptr %publ_cnt, align 4
  %id = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 4
  %67 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %id, align 4
  %subscriptions = getelementptr inbounds %struct.tipc_service, ptr %sc, i32 0, i32 4
  %68 = ptrtoint ptr %subscriptions to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %subscriptions, align 4
  %cmp57.not149 = icmp eq ptr %69, %subscriptions
  br i1 %cmp57.not149, label %list_add.exit131.if.end82_crit_edge, label %list_add.exit131.for.body60_crit_edge

list_add.exit131.for.body60_crit_edge:            ; preds = %list_add.exit131
  br label %for.body60

list_add.exit131.if.end82_crit_edge:              ; preds = %list_add.exit131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %list_add.exit131.for.body60_crit_edge
  %.pn120.in150 = phi ptr [ %.pn120, %for.body60.for.body60_crit_edge ], [ %69, %list_add.exit131.for.body60_crit_edge ]
  %sub.0 = getelementptr i8, ptr %.pn120.in150, i32 -132
  %70 = ptrtoint ptr %.pn120.in150 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn120 = load ptr, ptr %.pn120.in150, align 4
  tail call void @tipc_sub_report_overlap(ptr noundef %sub.0, ptr noundef %p, i32 noundef 1, i1 noundef zeroext %cmp.i123) #11
  %cmp57.not = icmp eq ptr %.pn120, %subscriptions
  br i1 %cmp57.not, label %for.body60.if.end82_crit_edge, label %for.body60.for.body60_crit_edge

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body60

for.body60.if.end82_crit_edge:                    ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

do.end73:                                         ; preds = %if.then25, %do.body, %tipc_service_create_range.exit.do.end73_crit_edge, %while.end.i.do.end73_crit_edge
  %71 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %p, align 4
  %73 = ptrtoint ptr %lower2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lower2.i, align 4
  %75 = ptrtoint ptr %upper4.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %upper4.i, align 4
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %72, i32 noundef %74, i32 noundef %76) #15
  br label %if.end82

if.end82:                                         ; preds = %do.end73, %for.body60.if.end82_crit_edge, %list_add.exit131.if.end82_crit_edge
  %res.0.off0141 = phi i1 [ false, %do.end73 ], [ true, %list_add.exit131.if.end82_crit_edge ], [ true, %for.body60.if.end82_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  ret i1 %res.0.off0141
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tipc_nametbl_remove_publ(ptr noundef %net, ptr nocapture noundef readonly %ua, ptr nocapture noundef readonly %sk, i32 noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_service_find(ptr noundef %net, ptr noundef %ua)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end52_crit_edge, label %if.end

entry.do.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.tipc_service, ptr %call, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %ranges.i = getelementptr inbounds %struct.tipc_service, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %ranges.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ranges.i, align 4
  %lower.i = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lower.i, align 4
  %upper.i = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %upper.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %upper.i, align 4
  %tobool.not.i.i86 = icmp eq ptr %1, null
  br i1 %tobool.not.i.i86, label %if.end.exit.thread113_crit_edge, label %lor.lhs.false.i.i

if.end.exit.thread113_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread113

lor.lhs.false.i.i:                                ; preds = %if.end
  %max.i.i = getelementptr i8, ptr %1, i32 12
  %6 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp.i.i = icmp ult i32 %7, %3
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.exit.thread113_crit_edge, label %lor.lhs.false.i.i.while.cond.i.i_crit_edge

lor.lhs.false.i.i.while.cond.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  br label %while.cond.i.i

lor.lhs.false.i.i.exit.thread113_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread113

while.cond.i.i:                                   ; preds = %while.cond.i.i.backedge, %lor.lhs.false.i.i.while.cond.i.i_crit_edge
  %n.addr.0.i.i = phi ptr [ %n.addr.0.i.i.be, %while.cond.i.i.backedge ], [ %1, %lor.lhs.false.i.i.while.cond.i.i_crit_edge ]
  %rb_left.i.i87 = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %rb_left.i.i87 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rb_left.i.i87, align 4
  %tobool2.not.i.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i.i, label %while.cond.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i

while.cond.i.i.if.end9.i.i_crit_edge:             ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

land.lhs.true.i.i:                                ; preds = %while.cond.i.i
  %max6.i.i = getelementptr i8, ptr %9, i32 12
  %10 = ptrtoint ptr %max6.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp7.not.i.i = icmp ult i32 %11, %3
  br i1 %cmp7.not.i.i, label %land.lhs.true.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge

land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.backedge

land.lhs.true.i.i.if.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %land.lhs.true.i.i.if.end9.i.i_crit_edge, %while.cond.i.i.if.end9.i.i_crit_edge
  %add.ptr12.i.i = getelementptr i8, ptr %n.addr.0.i.i, i32 -8
  %12 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp13.not.i.i = icmp ugt i32 %13, %5
  br i1 %cmp13.not.i.i, label %if.end9.i.i.exit.thread113_crit_edge, label %land.lhs.true14.i.i

if.end9.i.i.exit.thread113_crit_edge:             ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread113

land.lhs.true14.i.i:                              ; preds = %if.end9.i.i
  %upper.i.i = getelementptr i8, ptr %n.addr.0.i.i, i32 -4
  %14 = ptrtoint ptr %upper.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %upper.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %3)
  %cmp15.not.i.i = icmp ult i32 %15, %3
  br i1 %cmp15.not.i.i, label %if.end17.i.i, label %service_range_match_first.exit.i

if.end17.i.i:                                     ; preds = %land.lhs.true14.i.i
  %rb_right.i.i88 = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %rb_right.i.i88 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rb_right.i.i88, align 4
  %tobool21.not.i.i = icmp eq ptr %17, null
  br i1 %tobool21.not.i.i, label %if.end17.i.i.exit.thread113_crit_edge, label %land.lhs.true22.i.i

if.end17.i.i.exit.thread113_crit_edge:            ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread113

land.lhs.true22.i.i:                              ; preds = %if.end17.i.i
  %max26.i.i = getelementptr i8, ptr %17, i32 12
  %18 = ptrtoint ptr %max26.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max26.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %3)
  %cmp27.not.i.i = icmp ult i32 %19, %3
  br i1 %cmp27.not.i.i, label %land.lhs.true22.i.i.exit.thread113_crit_edge, label %land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge

land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.backedge

land.lhs.true22.i.i.exit.thread113_crit_edge:     ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread113

while.cond.i.i.backedge:                          ; preds = %land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge, %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge
  %n.addr.0.i.i.be = phi ptr [ %9, %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge ], [ %17, %land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge ]
  br label %while.cond.i.i

service_range_match_first.exit.i:                 ; preds = %land.lhs.true14.i.i
  %add.ptr12.i.i.le = getelementptr i8, ptr %n.addr.0.i.i, i32 -8
  %tobool.not53.i = icmp eq ptr %add.ptr12.i.i.le, null
  br i1 %tobool.not53.i, label %service_range_match_first.exit.i.exit.thread113_crit_edge, label %service_range_match_first.exit.i.for.body.i_crit_edge

service_range_match_first.exit.i.for.body.i_crit_edge: ; preds = %service_range_match_first.exit.i
  br label %for.body.i

service_range_match_first.exit.i.exit.thread113_crit_edge: ; preds = %service_range_match_first.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread113

for.body.i:                                       ; preds = %service_range_match_next.exit.i.for.body.i_crit_edge, %service_range_match_first.exit.i.for.body.i_crit_edge
  %sr.054.i = phi ptr [ %add.ptr12.i24.le.i, %service_range_match_next.exit.i.for.body.i_crit_edge ], [ %add.ptr12.i.i.le, %service_range_match_first.exit.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %sr.054.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sr.054.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %3)
  %cmp.i = icmp eq i32 %21, %3
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %upper3.i = getelementptr inbounds %struct.service_range, ptr %sr.054.i, i32 0, i32 1
  %22 = ptrtoint ptr %upper3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %upper3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %5)
  %cmp5.i = icmp eq i32 %23, %5
  br i1 %cmp5.i, label %if.end4, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %tree_node.i = getelementptr inbounds %struct.service_range, ptr %sr.054.i, i32 0, i32 2
  br label %while.cond.i20.i

while.cond.i20.i:                                 ; preds = %land.lhs.true14.i28.i.while.cond.i20.i_crit_edge, %for.inc.i
  %n.addr.0.i18.i = phi ptr [ %tree_node.i, %for.inc.i ], [ %45, %land.lhs.true14.i28.i.while.cond.i20.i_crit_edge ]
  %tobool.not.i19.i = icmp eq ptr %n.addr.0.i18.i, null
  br i1 %tobool.not.i19.i, label %while.cond.i20.i.exit.thread113_crit_edge, label %while.body.i.i

while.cond.i20.i.exit.thread113_crit_edge:        ; preds = %while.cond.i20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread113

while.body.i.i:                                   ; preds = %while.cond.i20.i
  %rb_right.i21.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i18.i, i32 0, i32 1
  %24 = ptrtoint ptr %rb_right.i21.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rb_right.i21.i, align 4
  %tobool1.not.i.i89 = icmp eq ptr %25, null
  br i1 %tobool1.not.i.i89, label %while.body.i.i.while.cond2.i.i.preheader_crit_edge, label %land.lhs.true.i23.i

while.body.i.i.while.cond2.i.i.preheader_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i.i.preheader

while.cond2.i.i.preheader:                        ; preds = %land.lhs.true.i23.i.while.cond2.i.i.preheader_crit_edge, %while.body.i.i.while.cond2.i.i.preheader_crit_edge
  br label %while.cond2.i.i

land.lhs.true.i23.i:                              ; preds = %while.body.i.i
  %max.i22.i = getelementptr i8, ptr %25, i32 12
  %26 = ptrtoint ptr %max.i22.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max.i22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %3)
  %cmp.not.i.i = icmp ult i32 %27, %3
  br i1 %cmp.not.i.i, label %land.lhs.true.i23.i.while.cond2.i.i.preheader_crit_edge, label %land.lhs.true.i23.i.while.cond.i.i.i_crit_edge

land.lhs.true.i23.i.while.cond.i.i.i_crit_edge:   ; preds = %land.lhs.true.i23.i
  br label %while.cond.i.i.i

land.lhs.true.i23.i.while.cond2.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i.i.preheader

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i.backedge, %land.lhs.true.i23.i.while.cond.i.i.i_crit_edge
  %n.addr.0.i.i.i = phi ptr [ %n.addr.0.i.i.i.be, %while.cond.i.i.i.backedge ], [ %25, %land.lhs.true.i23.i.while.cond.i.i.i_crit_edge ]
  %rb_left.i.i.i90 = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %rb_left.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rb_left.i.i.i90, align 4
  %tobool2.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool2.not.i.i.i, label %while.cond.i.i.i.if.end9.i.i.i_crit_edge, label %land.lhs.true.i.i.i

while.cond.i.i.i.if.end9.i.i.i_crit_edge:         ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i.i

land.lhs.true.i.i.i:                              ; preds = %while.cond.i.i.i
  %max6.i.i.i = getelementptr i8, ptr %29, i32 12
  %30 = ptrtoint ptr %max6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max6.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %3)
  %cmp7.not.i.i.i = icmp ult i32 %31, %3
  br i1 %cmp7.not.i.i.i, label %land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge, label %land.lhs.true.i.i.i.while.cond.i.i.i.backedge_crit_edge

land.lhs.true.i.i.i.while.cond.i.i.i.backedge_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.i.backedge

land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i.i

if.end9.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge, %while.cond.i.i.i.if.end9.i.i.i_crit_edge
  %add.ptr12.i.i.i = getelementptr i8, ptr %n.addr.0.i.i.i, i32 -8
  %32 = ptrtoint ptr %add.ptr12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr12.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %5)
  %cmp13.not.i.i.i = icmp ugt i32 %33, %5
  br i1 %cmp13.not.i.i.i, label %if.end9.i.i.i.exit.thread113_crit_edge, label %land.lhs.true14.i.i.i

if.end9.i.i.i.exit.thread113_crit_edge:           ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread113

land.lhs.true14.i.i.i:                            ; preds = %if.end9.i.i.i
  %upper.i.i.i = getelementptr i8, ptr %n.addr.0.i.i.i, i32 -4
  %34 = ptrtoint ptr %upper.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %upper.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %3)
  %cmp15.not.i.i.i = icmp ult i32 %35, %3
  br i1 %cmp15.not.i.i.i, label %if.end17.i.i.i, label %land.lhs.true14.i.i.i.service_range_match_next.exit.i_crit_edge

land.lhs.true14.i.i.i.service_range_match_next.exit.i_crit_edge: ; preds = %land.lhs.true14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %service_range_match_next.exit.i

if.end17.i.i.i:                                   ; preds = %land.lhs.true14.i.i.i
  %rb_right.i.i.i91 = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %rb_right.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rb_right.i.i.i91, align 4
  %tobool21.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool21.not.i.i.i, label %if.end17.i.i.i.exit.thread113_crit_edge, label %land.lhs.true22.i.i.i

if.end17.i.i.i.exit.thread113_crit_edge:          ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread113

land.lhs.true22.i.i.i:                            ; preds = %if.end17.i.i.i
  %max26.i.i.i = getelementptr i8, ptr %37, i32 12
  %38 = ptrtoint ptr %max26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max26.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %3)
  %cmp27.not.i.i.i = icmp ult i32 %39, %3
  br i1 %cmp27.not.i.i.i, label %land.lhs.true22.i.i.i.exit.thread113_crit_edge, label %land.lhs.true22.i.i.i.while.cond.i.i.i.backedge_crit_edge

land.lhs.true22.i.i.i.while.cond.i.i.i.backedge_crit_edge: ; preds = %land.lhs.true22.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.i.backedge

land.lhs.true22.i.i.i.exit.thread113_crit_edge:   ; preds = %land.lhs.true22.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread113

while.cond.i.i.i.backedge:                        ; preds = %land.lhs.true22.i.i.i.while.cond.i.i.i.backedge_crit_edge, %land.lhs.true.i.i.i.while.cond.i.i.i.backedge_crit_edge
  %n.addr.0.i.i.i.be = phi ptr [ %29, %land.lhs.true.i.i.i.while.cond.i.i.i.backedge_crit_edge ], [ %37, %land.lhs.true22.i.i.i.while.cond.i.i.i.backedge_crit_edge ]
  br label %while.cond.i.i.i

while.cond2.i.i:                                  ; preds = %land.rhs.i.i.while.cond2.i.i_crit_edge, %while.cond2.i.i.preheader
  %n.addr.1.i.i = phi ptr [ %42, %land.rhs.i.i.while.cond2.i.i_crit_edge ], [ %n.addr.0.i18.i, %while.cond2.i.i.preheader ]
  %40 = ptrtoint ptr %n.addr.1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n.addr.1.i.i, align 4
  %and.i.i92 = and i32 %41, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i92)
  %tobool3.not.i.i = icmp eq i32 %and.i.i92, 0
  br i1 %tobool3.not.i.i, label %while.cond2.i.i.exit.thread113_crit_edge, label %land.rhs.i.i

while.cond2.i.i.exit.thread113_crit_edge:         ; preds = %while.cond2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread113

land.rhs.i.i:                                     ; preds = %while.cond2.i.i
  %42 = inttoptr i32 %and.i.i92 to ptr
  %rb_right4.i.i = getelementptr inbounds %struct.rb_node, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %rb_right4.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rb_right4.i.i, align 4
  %cmp5.i.i = icmp eq ptr %n.addr.1.i.i, %44
  br i1 %cmp5.i.i, label %land.rhs.i.i.while.cond2.i.i_crit_edge, label %if.end9.critedge.i.i

land.rhs.i.i.while.cond2.i.i_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i.i

if.end9.critedge.i.i:                             ; preds = %land.rhs.i.i
  %45 = inttoptr i32 %and.i.i92 to ptr
  %add.ptr12.i24.i = getelementptr i8, ptr %45, i32 -8
  %46 = ptrtoint ptr %add.ptr12.i24.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr12.i24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %5)
  %cmp13.not.i25.i = icmp ugt i32 %47, %5
  br i1 %cmp13.not.i25.i, label %if.end9.critedge.i.i.exit.thread113_crit_edge, label %land.lhs.true14.i28.i

if.end9.critedge.i.i.exit.thread113_crit_edge:    ; preds = %if.end9.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread113

land.lhs.true14.i28.i:                            ; preds = %if.end9.critedge.i.i
  %upper.i26.i = getelementptr i8, ptr %45, i32 -4
  %48 = ptrtoint ptr %upper.i26.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %upper.i26.i, align 4
  %cmp15.not.i27.i = icmp ult i32 %49, %3
  br i1 %cmp15.not.i27.i, label %land.lhs.true14.i28.i.while.cond.i20.i_crit_edge, label %service_range_match_next.exit.i.loopexit158

land.lhs.true14.i28.i.while.cond.i20.i_crit_edge: ; preds = %land.lhs.true14.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i20.i

service_range_match_next.exit.i.loopexit158:      ; preds = %land.lhs.true14.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = inttoptr i32 %and.i.i92 to ptr
  br label %service_range_match_next.exit.i

service_range_match_next.exit.i:                  ; preds = %service_range_match_next.exit.i.loopexit158, %land.lhs.true14.i.i.i.service_range_match_next.exit.i_crit_edge
  %.sink.i = phi ptr [ %50, %service_range_match_next.exit.i.loopexit158 ], [ %n.addr.0.i.i.i, %land.lhs.true14.i.i.i.service_range_match_next.exit.i_crit_edge ]
  %add.ptr12.i24.le.i = getelementptr i8, ptr %.sink.i, i32 -8
  %tobool.not.i93 = icmp eq ptr %add.ptr12.i24.le.i, null
  br i1 %tobool.not.i93, label %service_range_match_next.exit.i.exit.thread113_crit_edge, label %service_range_match_next.exit.i.for.body.i_crit_edge

service_range_match_next.exit.i.for.body.i_crit_edge: ; preds = %service_range_match_next.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

service_range_match_next.exit.i.exit.thread113_crit_edge: ; preds = %service_range_match_next.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread113

if.end4:                                          ; preds = %land.lhs.true.i
  %node1.i = getelementptr inbounds %struct.tipc_socket_addr, ptr %sk, i32 0, i32 1
  %51 = ptrtoint ptr %node1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %node1.i, align 4
  %all_publ.i = getelementptr inbounds %struct.service_range, ptr %sr.054.i, i32 0, i32 5
  %53 = ptrtoint ptr %all_publ.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn33.i = load ptr, ptr %all_publ.i, align 4
  %cmp.not34.i = icmp eq ptr %.pn33.i, %all_publ.i
  br i1 %cmp.not34.i, label %if.end4.exit.thread113_crit_edge, label %for.body.lr.ph.i

if.end4.exit.thread113_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread113

for.body.lr.ph.i:                                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i94 = icmp eq i32 %52, 0
  br label %for.body.i95

for.body.i95:                                     ; preds = %for.inc.i97.for.body.i95_crit_edge, %for.body.lr.ph.i
  %.pn35.i = phi ptr [ %.pn33.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i97.for.body.i95_crit_edge ]
  %key4.i = getelementptr i8, ptr %.pn35.i, i32 -32
  %54 = ptrtoint ptr %key4.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %key4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %key)
  %cmp5.not.i = icmp eq i32 %55, %key
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %for.body.i95.for.inc.i97_crit_edge

for.body.i95.for.inc.i97_crit_edge:               ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i97

lor.lhs.false.i:                                  ; preds = %for.body.i95
  br i1 %tobool.not.i94, label %lor.lhs.false.i.if.end.i_crit_edge, label %land.lhs.true.i96

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i96:                                ; preds = %lor.lhs.false.i
  %node7.i = getelementptr i8, ptr %.pn35.i, i32 -40
  %56 = ptrtoint ptr %node7.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %node7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %57)
  %cmp8.not.i = icmp eq i32 %52, %57
  br i1 %cmp8.not.i, label %land.lhs.true.i96.if.end.i_crit_edge, label %land.lhs.true.i96.for.inc.i97_crit_edge

land.lhs.true.i96.for.inc.i97_crit_edge:          ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i97

land.lhs.true.i96.if.end.i_crit_edge:             ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i96.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  %p.0.le.i = getelementptr i8, ptr %.pn35.i, i32 -56
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn35.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn35.i, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i.i, align 4
  %60 = ptrtoint ptr %.pn35.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %.pn35.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %64 = ptrtoint ptr %.pn35.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn35.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn35.i, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %local_publ.i = getelementptr i8, ptr %.pn35.i, i32 -8
  %call.i.i24.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %local_publ.i) #11
  br i1 %call.i.i24.i, label %if.end.i.i27.i, label %list_del.exit.i.tipc_service_remove_publ.exit_crit_edge

list_del.exit.i.tipc_service_remove_publ.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_service_remove_publ.exit

if.end.i.i27.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i25.i = getelementptr i8, ptr %.pn35.i, i32 -4
  %66 = ptrtoint ptr %prev.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i25.i, align 4
  %68 = ptrtoint ptr %local_publ.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %local_publ.i, align 4
  %prev1.i.i.i26.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev1.i.i.i26.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %69, ptr %67, align 4
  br label %tipc_service_remove_publ.exit

for.inc.i97:                                      ; preds = %land.lhs.true.i96.for.inc.i97_crit_edge, %for.body.i95.for.inc.i97_crit_edge
  %72 = ptrtoint ptr %.pn35.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn.i = load ptr, ptr %.pn35.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %all_publ.i
  br i1 %cmp.not.i, label %for.inc.i97.exit.thread113_crit_edge, label %for.inc.i97.for.body.i95_crit_edge

for.inc.i97.for.body.i95_crit_edge:               ; preds = %for.inc.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i95

for.inc.i97.exit.thread113_crit_edge:             ; preds = %for.inc.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread113

tipc_service_remove_publ.exit:                    ; preds = %if.end.i.i27.i, %list_del.exit.i.tipc_service_remove_publ.exit_crit_edge
  %73 = ptrtoint ptr %local_publ.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 256 to ptr), ptr %local_publ.i, align 4
  %prev.i28.i = getelementptr i8, ptr %.pn35.i, i32 -4
  %74 = ptrtoint ptr %prev.i28.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i28.i, align 4
  %tobool6.not = icmp eq ptr %p.0.le.i, null
  br i1 %tobool6.not, label %tipc_service_remove_publ.exit.exit.thread113_crit_edge, label %if.end8

tipc_service_remove_publ.exit.exit.thread113_crit_edge: ; preds = %tipc_service_remove_publ.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread113

if.end8:                                          ; preds = %tipc_service_remove_publ.exit
  %75 = ptrtoint ptr %all_publ.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %all_publ.i, align 4
  %cmp.i98 = icmp eq ptr %76, %all_publ.i
  %subscriptions = getelementptr inbounds %struct.tipc_service, ptr %call, i32 0, i32 4
  %77 = ptrtoint ptr %subscriptions to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %subscriptions, align 4
  %cmp.not136 = icmp eq ptr %78, %subscriptions
  br i1 %cmp.not136, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %.pn.in137 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %78, %if.end8.for.body_crit_edge ]
  %sub.0 = getelementptr i8, ptr %.pn.in137, i32 -132
  %79 = ptrtoint ptr %.pn.in137 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pn = load ptr, ptr %.pn.in137, align 4
  tail call void @tipc_sub_report_overlap(ptr noundef %sub.0, ptr noundef nonnull %p.0.le.i, i32 noundef 2, i1 noundef zeroext %cmp.i98) #11
  %cmp.not = icmp eq ptr %.pn, %subscriptions
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end8.for.end_crit_edge
  %80 = ptrtoint ptr %all_publ.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %all_publ.i, align 4
  %cmp.i99.not = icmp eq ptr %81, %all_publ.i
  br i1 %cmp.i99.not, label %if.then27, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then27:                                        ; preds = %for.end
  %tree_node = getelementptr inbounds %struct.service_range, ptr %sr.054.i, i32 0, i32 2
  %rb_right.i.i = getelementptr inbounds %struct.service_range, ptr %sr.054.i, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.service_range, ptr %sr.054.i, i32 0, i32 2, i32 2
  %84 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rb_left.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %85, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else6.i.i

if.then.i.i:                                      ; preds = %if.then27
  %86 = ptrtoint ptr %tree_node to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tree_node, align 4
  %and.i.i = and i32 %87, -4
  %88 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.__rb_change_child.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.__rb_change_child.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rb_change_child.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rb_left.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %90, %tree_node
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %88, i32 0, i32 1
  %spec.select.i.i.i = select i1 %cmp.i.i.i, ptr %rb_left.i.i.i, ptr %rb_right.i.i.i
  br label %__rb_change_child.exit.i.i

__rb_change_child.exit.i.i:                       ; preds = %if.then.i.i.i, %if.then.i.i.__rb_change_child.exit.i.i_crit_edge
  %rb_left.sink.i.i.i = phi ptr [ %ranges.i, %if.then.i.i.__rb_change_child.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %if.then.i.i.i ]
  %91 = ptrtoint ptr %rb_left.sink.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %83, ptr %rb_left.sink.i.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %83, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %__rb_change_child.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %87, ptr %83, align 4
  br label %if.end69.i.i

if.else.i.i:                                      ; preds = %__rb_change_child.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and4.i.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  %spec.select.i.i = select i1 %tobool5.not.i.i, ptr null, ptr %88
  br label %if.end69.i.i

if.else6.i.i:                                     ; preds = %if.then27
  %tobool7.not.i.i = icmp eq ptr %83, null
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.else12.i.i

if.then8.i.i:                                     ; preds = %if.else6.i.i
  %93 = ptrtoint ptr %tree_node to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tree_node, align 4
  %95 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %85, align 4
  %and11.i.i = and i32 %94, -4
  %96 = inttoptr i32 %and11.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool.not.i2.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool.not.i2.i.i, label %if.then8.i.i.__rb_change_child.exit9.i.i_crit_edge, label %if.then.i7.i.i

if.then8.i.i.__rb_change_child.exit9.i.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rb_change_child.exit9.i.i

if.then.i7.i.i:                                   ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i3.i.i = getelementptr inbounds %struct.rb_node, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %rb_left.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rb_left.i3.i.i, align 4
  %cmp.i4.i.i = icmp eq ptr %98, %tree_node
  %rb_right.i5.i.i = getelementptr inbounds %struct.rb_node, ptr %96, i32 0, i32 1
  %spec.select.i6.i.i = select i1 %cmp.i4.i.i, ptr %rb_left.i3.i.i, ptr %rb_right.i5.i.i
  br label %__rb_change_child.exit9.i.i

__rb_change_child.exit9.i.i:                      ; preds = %if.then.i7.i.i, %if.then8.i.i.__rb_change_child.exit9.i.i_crit_edge
  %rb_left.sink.i8.i.i = phi ptr [ %ranges.i, %if.then8.i.i.__rb_change_child.exit9.i.i_crit_edge ], [ %spec.select.i6.i.i, %if.then.i7.i.i ]
  %99 = ptrtoint ptr %rb_left.sink.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %85, ptr %rb_left.sink.i8.i.i, align 4
  br label %if.end69.i.i

if.else12.i.i:                                    ; preds = %if.else6.i.i
  %rb_left13.i.i = getelementptr inbounds %struct.rb_node, ptr %83, i32 0, i32 2
  %100 = ptrtoint ptr %rb_left13.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rb_left13.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %101, null
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %if.else12.i.i.do.body.i.i_crit_edge

if.else12.i.i.do.body.i.i_crit_edge:              ; preds = %if.else12.i.i
  br label %do.body.i.i

if.then15.i.i:                                    ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right16.i.i = getelementptr inbounds %struct.rb_node, ptr %83, i32 0, i32 1
  %102 = ptrtoint ptr %rb_right16.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rb_right16.i.i, align 4
  %max.i.i.i = getelementptr %struct.service_range, ptr %sr.054.i, i32 0, i32 3
  %104 = ptrtoint ptr %max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %max.i.i.i, align 4
  %max4.i.i.i = getelementptr i8, ptr %83, i32 12
  %106 = ptrtoint ptr %max4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %max4.i.i.i, align 4
  %.pre.i.i = ptrtoint ptr %83 to i32
  br label %if.end42.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.else12.i.i.do.body.i.i_crit_edge
  %tmp.0.i.i = phi ptr [ %108, %do.body.i.i.do.body.i.i_crit_edge ], [ %101, %if.else12.i.i.do.body.i.i_crit_edge ]
  %successor.0.i.i = phi ptr [ %tmp.0.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %83, %if.else12.i.i.do.body.i.i_crit_edge ]
  %rb_left18.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i, i32 0, i32 2
  %107 = ptrtoint ptr %rb_left18.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rb_left18.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %108, null
  br i1 %tobool19.not.i.i, label %do.end.i.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %rb_right20.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %rb_right20.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rb_right20.i.i, align 4
  %rb_left26.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i, i32 0, i32 2
  %111 = ptrtoint ptr %rb_left26.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %110, ptr %rb_left26.i.i, align 4
  store volatile ptr %83, ptr %rb_right20.i.i, align 4
  %112 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %83, align 4
  %and.i.i.i = and i32 %113, 1
  %114 = ptrtoint ptr %tmp.0.i.i to i32
  %or.i.i.i = or i32 %and.i.i.i, %114
  store i32 %or.i.i.i, ptr %83, align 4
  %max.i10.i.i = getelementptr %struct.service_range, ptr %sr.054.i, i32 0, i32 3
  %115 = ptrtoint ptr %max.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %max.i10.i.i, align 4
  %max4.i11.i.i = getelementptr i8, ptr %tmp.0.i.i, i32 12
  %117 = ptrtoint ptr %max4.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %max4.i11.i.i, align 4
  %cmp.not7.i.i.i = icmp eq ptr %successor.0.i.i, %tmp.0.i.i
  br i1 %cmp.not7.i.i.i, label %do.end.i.i.if.end42.i.i_crit_edge, label %do.end.i.i.while.body.i.i.i_crit_edge

do.end.i.i.while.body.i.i.i_crit_edge:            ; preds = %do.end.i.i
  br label %while.body.i.i.i

do.end.i.i.if.end42.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %do.end.i.i.while.body.i.i.i_crit_edge
  %rb.addr.08.i.i.i = phi ptr [ %135, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %successor.0.i.i, %do.end.i.i.while.body.i.i.i_crit_edge ]
  %upper.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 -4
  %118 = ptrtoint ptr %upper.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %upper.i.i.i.i, align 4
  %rb_left.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 8
  %120 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rb_left.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %121, null
  br i1 %tobool.not.i.i.i.i, label %while.body.i.i.i.if.end6.i.i.i.i_crit_edge, label %if.then.i.i.i.i

while.body.i.i.i.if.end6.i.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %max3.i.i.i.i = getelementptr i8, ptr %121, i32 12
  %122 = ptrtoint ptr %max3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %max3.i.i.i.i, align 4
  %124 = tail call i32 @llvm.umax.i32(i32 %123, i32 %119) #11
  br label %if.end6.i.i.i.i

if.end6.i.i.i.i:                                  ; preds = %if.then.i.i.i.i, %while.body.i.i.i.if.end6.i.i.i.i_crit_edge
  %max.0.i.i.i.i = phi i32 [ %119, %while.body.i.i.i.if.end6.i.i.i.i_crit_edge ], [ %124, %if.then.i.i.i.i ]
  %rb_right.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 4
  %125 = ptrtoint ptr %rb_right.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rb_right.i.i.i.i, align 4
  %tobool8.not.i.i.i.i = icmp eq ptr %126, null
  br i1 %tobool8.not.i.i.i.i, label %if.end6.i.i.i.i.if.end20.i.i.i.i_crit_edge, label %if.then9.i.i.i.i

if.end6.i.i.i.i.if.end20.i.i.i.i_crit_edge:       ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i.i.i.i

if.then9.i.i.i.i:                                 ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %max15.i.i.i.i = getelementptr i8, ptr %126, i32 12
  %127 = ptrtoint ptr %max15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %max15.i.i.i.i, align 4
  %129 = tail call i32 @llvm.umax.i32(i32 %128, i32 %max.0.i.i.i.i) #11
  br label %if.end20.i.i.i.i

if.end20.i.i.i.i:                                 ; preds = %if.then9.i.i.i.i, %if.end6.i.i.i.i.if.end20.i.i.i.i_crit_edge
  %max.1.i.i.i.i = phi i32 [ %max.0.i.i.i.i, %if.end6.i.i.i.i.if.end20.i.i.i.i_crit_edge ], [ %129, %if.then9.i.i.i.i ]
  %max22.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 12
  %130 = ptrtoint ptr %max22.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %max22.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %max.1.i.i.i.i)
  %cmp23.i.i.i.i = icmp eq i32 %131, %max.1.i.i.i.i
  br i1 %cmp23.i.i.i.i, label %if.end20.i.i.i.i.if.end42.i.i_crit_edge, label %cleanup.i.i.i

if.end20.i.i.i.i.if.end42.i.i_crit_edge:          ; preds = %if.end20.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i.i

cleanup.i.i.i:                                    ; preds = %if.end20.i.i.i.i
  %132 = ptrtoint ptr %max22.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %max.1.i.i.i.i, ptr %max22.i.i.i.i, align 4
  %133 = ptrtoint ptr %rb.addr.08.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rb.addr.08.i.i.i, align 4
  %and.i12.i.i = and i32 %134, -4
  %135 = inttoptr i32 %and.i12.i.i to ptr
  %cmp.not.i.i.i = icmp eq ptr %tmp.0.i.i, %135
  br i1 %cmp.not.i.i.i, label %cleanup.i.i.i.if.end42.i.i_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i.i

cleanup.i.i.i.if.end42.i.i_crit_edge:             ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %cleanup.i.i.i.if.end42.i.i_crit_edge, %if.end20.i.i.i.i.if.end42.i.i_crit_edge, %do.end.i.i.if.end42.i.i_crit_edge, %if.then15.i.i
  %.pre-phi.i.i = phi i32 [ %114, %do.end.i.i.if.end42.i.i_crit_edge ], [ %.pre.i.i, %if.then15.i.i ], [ %114, %if.end20.i.i.i.i.if.end42.i.i_crit_edge ], [ %114, %cleanup.i.i.i.if.end42.i.i_crit_edge ]
  %parent.0.i.i = phi ptr [ %tmp.0.i.i, %do.end.i.i.if.end42.i.i_crit_edge ], [ %83, %if.then15.i.i ], [ %successor.0.i.i, %if.end20.i.i.i.i.if.end42.i.i_crit_edge ], [ %successor.0.i.i, %cleanup.i.i.i.if.end42.i.i_crit_edge ]
  %successor.1.i.i = phi ptr [ %tmp.0.i.i, %do.end.i.i.if.end42.i.i_crit_edge ], [ %83, %if.then15.i.i ], [ %tmp.0.i.i, %if.end20.i.i.i.i.if.end42.i.i_crit_edge ], [ %tmp.0.i.i, %cleanup.i.i.i.if.end42.i.i_crit_edge ]
  %child2.0.i.i = phi ptr [ %110, %do.end.i.i.if.end42.i.i_crit_edge ], [ %103, %if.then15.i.i ], [ %110, %if.end20.i.i.i.i.if.end42.i.i_crit_edge ], [ %110, %cleanup.i.i.i.if.end42.i.i_crit_edge ]
  %136 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rb_left.i.i, align 4
  %rb_left49.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i, i32 0, i32 2
  %138 = ptrtoint ptr %rb_left49.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %137, ptr %rb_left49.i.i, align 4
  %139 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %137, align 4
  %and.i13.i.i = and i32 %140, 1
  %or.i14.i.i = or i32 %and.i13.i.i, %.pre-phi.i.i
  store i32 %or.i14.i.i, ptr %137, align 4
  %141 = ptrtoint ptr %tree_node to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %tree_node, align 4
  %and55.i.i = and i32 %142, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i)
  %tobool.not.i15.i.i = icmp eq i32 %and55.i.i, 0
  br i1 %tobool.not.i15.i.i, label %if.end42.i.i.__rb_change_child.exit22.i.i_crit_edge, label %if.then.i20.i.i

if.end42.i.i.__rb_change_child.exit22.i.i_crit_edge: ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rb_change_child.exit22.i.i

if.then.i20.i.i:                                  ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %143 = inttoptr i32 %and55.i.i to ptr
  %rb_left.i16.i.i = getelementptr inbounds %struct.rb_node, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %rb_left.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rb_left.i16.i.i, align 4
  %cmp.i17.i.i = icmp eq ptr %145, %tree_node
  %rb_right.i18.i.i = getelementptr inbounds %struct.rb_node, ptr %143, i32 0, i32 1
  %spec.select.i19.i.i = select i1 %cmp.i17.i.i, ptr %rb_left.i16.i.i, ptr %rb_right.i18.i.i
  br label %__rb_change_child.exit22.i.i

__rb_change_child.exit22.i.i:                     ; preds = %if.then.i20.i.i, %if.end42.i.i.__rb_change_child.exit22.i.i_crit_edge
  %rb_left.sink.i21.i.i = phi ptr [ %ranges.i, %if.end42.i.i.__rb_change_child.exit22.i.i_crit_edge ], [ %spec.select.i19.i.i, %if.then.i20.i.i ]
  %146 = ptrtoint ptr %rb_left.sink.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %successor.1.i.i, ptr %rb_left.sink.i21.i.i, align 4
  %tobool56.not.i.i = icmp eq ptr %child2.0.i.i, null
  br i1 %tobool56.not.i.i, label %if.else58.i.i, label %if.then57.i.i

if.then57.i.i:                                    ; preds = %__rb_change_child.exit22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %147 = ptrtoint ptr %parent.0.i.i to i32
  %or.i23.i.i = or i32 %147, 1
  %148 = ptrtoint ptr %child2.0.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %or.i23.i.i, ptr %child2.0.i.i, align 4
  br label %if.end66.i.i

if.else58.i.i:                                    ; preds = %__rb_change_child.exit22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %149 = ptrtoint ptr %successor.1.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %successor.1.i.i, align 4
  %and60.i.i = and i32 %150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i)
  %tobool61.not.i.i = icmp eq i32 %and60.i.i, 0
  %spec.select1.i.i = select i1 %tobool61.not.i.i, ptr null, ptr %parent.0.i.i
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.else58.i.i, %if.then57.i.i
  %rebalance.1.i.i = phi ptr [ null, %if.then57.i.i ], [ %spec.select1.i.i, %if.else58.i.i ]
  %151 = ptrtoint ptr %successor.1.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %142, ptr %successor.1.i.i, align 4
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.end66.i.i, %__rb_change_child.exit9.i.i, %if.else.i.i, %if.then2.i.i
  %tmp.1.i.i = phi ptr [ %successor.1.i.i, %if.end66.i.i ], [ %96, %__rb_change_child.exit9.i.i ], [ %88, %if.else.i.i ], [ %88, %if.then2.i.i ]
  %rebalance.2.i.i = phi ptr [ %rebalance.1.i.i, %if.end66.i.i ], [ null, %__rb_change_child.exit9.i.i ], [ %spec.select.i.i, %if.else.i.i ], [ null, %if.then2.i.i ]
  %cmp.not7.i24.i.i = icmp eq ptr %tmp.1.i.i, null
  br i1 %cmp.not7.i24.i.i, label %if.end69.i.i.__rb_erase_augmented.exit.i_crit_edge, label %if.end69.i.i.while.body.i29.i.i_crit_edge

if.end69.i.i.while.body.i29.i.i_crit_edge:        ; preds = %if.end69.i.i
  br label %while.body.i29.i.i

if.end69.i.i.__rb_erase_augmented.exit.i_crit_edge: ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rb_erase_augmented.exit.i

while.body.i29.i.i:                               ; preds = %cleanup.i44.i.i.while.body.i29.i.i_crit_edge, %if.end69.i.i.while.body.i29.i.i_crit_edge
  %rb.addr.08.i25.i.i = phi ptr [ %169, %cleanup.i44.i.i.while.body.i29.i.i_crit_edge ], [ %tmp.1.i.i, %if.end69.i.i.while.body.i29.i.i_crit_edge ]
  %upper.i.i26.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i, i32 -4
  %152 = ptrtoint ptr %upper.i.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %upper.i.i26.i.i, align 4
  %rb_left.i.i27.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i, i32 8
  %154 = ptrtoint ptr %rb_left.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rb_left.i.i27.i.i, align 4
  %tobool.not.i.i28.i.i = icmp eq ptr %155, null
  br i1 %tobool.not.i.i28.i.i, label %while.body.i29.i.i.if.end6.i.i35.i.i_crit_edge, label %if.then.i.i31.i.i

while.body.i29.i.i.if.end6.i.i35.i.i_crit_edge:   ; preds = %while.body.i29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i.i35.i.i

if.then.i.i31.i.i:                                ; preds = %while.body.i29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %max3.i.i30.i.i = getelementptr i8, ptr %155, i32 12
  %156 = ptrtoint ptr %max3.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %max3.i.i30.i.i, align 4
  %158 = tail call i32 @llvm.umax.i32(i32 %157, i32 %153) #11
  br label %if.end6.i.i35.i.i

if.end6.i.i35.i.i:                                ; preds = %if.then.i.i31.i.i, %while.body.i29.i.i.if.end6.i.i35.i.i_crit_edge
  %max.0.i.i32.i.i = phi i32 [ %153, %while.body.i29.i.i.if.end6.i.i35.i.i_crit_edge ], [ %158, %if.then.i.i31.i.i ]
  %rb_right.i.i33.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i, i32 4
  %159 = ptrtoint ptr %rb_right.i.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %rb_right.i.i33.i.i, align 4
  %tobool8.not.i.i34.i.i = icmp eq ptr %160, null
  br i1 %tobool8.not.i.i34.i.i, label %if.end6.i.i35.i.i.if.end20.i.i41.i.i_crit_edge, label %if.then9.i.i37.i.i

if.end6.i.i35.i.i.if.end20.i.i41.i.i_crit_edge:   ; preds = %if.end6.i.i35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i.i41.i.i

if.then9.i.i37.i.i:                               ; preds = %if.end6.i.i35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %max15.i.i36.i.i = getelementptr i8, ptr %160, i32 12
  %161 = ptrtoint ptr %max15.i.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %max15.i.i36.i.i, align 4
  %163 = tail call i32 @llvm.umax.i32(i32 %162, i32 %max.0.i.i32.i.i) #11
  br label %if.end20.i.i41.i.i

if.end20.i.i41.i.i:                               ; preds = %if.then9.i.i37.i.i, %if.end6.i.i35.i.i.if.end20.i.i41.i.i_crit_edge
  %max.1.i.i38.i.i = phi i32 [ %max.0.i.i32.i.i, %if.end6.i.i35.i.i.if.end20.i.i41.i.i_crit_edge ], [ %163, %if.then9.i.i37.i.i ]
  %max22.i.i39.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i, i32 12
  %164 = ptrtoint ptr %max22.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %max22.i.i39.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %max.1.i.i38.i.i)
  %cmp23.i.i40.i.i = icmp eq i32 %165, %max.1.i.i38.i.i
  br i1 %cmp23.i.i40.i.i, label %if.end20.i.i41.i.i.__rb_erase_augmented.exit.i_crit_edge, label %cleanup.i44.i.i

if.end20.i.i41.i.i.__rb_erase_augmented.exit.i_crit_edge: ; preds = %if.end20.i.i41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rb_erase_augmented.exit.i

cleanup.i44.i.i:                                  ; preds = %if.end20.i.i41.i.i
  %166 = ptrtoint ptr %max22.i.i39.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %max.1.i.i38.i.i, ptr %max22.i.i39.i.i, align 4
  %167 = ptrtoint ptr %rb.addr.08.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %rb.addr.08.i25.i.i, align 4
  %and.i42.i.i = and i32 %168, -4
  %169 = inttoptr i32 %and.i42.i.i to ptr
  %cmp.not.i43.i.i = icmp eq i32 %and.i42.i.i, 0
  br i1 %cmp.not.i43.i.i, label %cleanup.i44.i.i.__rb_erase_augmented.exit.i_crit_edge, label %cleanup.i44.i.i.while.body.i29.i.i_crit_edge

cleanup.i44.i.i.while.body.i29.i.i_crit_edge:     ; preds = %cleanup.i44.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i29.i.i

cleanup.i44.i.i.__rb_erase_augmented.exit.i_crit_edge: ; preds = %cleanup.i44.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rb_erase_augmented.exit.i

__rb_erase_augmented.exit.i:                      ; preds = %cleanup.i44.i.i.__rb_erase_augmented.exit.i_crit_edge, %if.end20.i.i41.i.i.__rb_erase_augmented.exit.i_crit_edge, %if.end69.i.i.__rb_erase_augmented.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %rebalance.2.i.i, null
  br i1 %tobool.not.i, label %__rb_erase_augmented.exit.i.rb_erase_augmented.exit_crit_edge, label %if.then.i

__rb_erase_augmented.exit.i.rb_erase_augmented.exit_crit_edge: ; preds = %__rb_erase_augmented.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rb_erase_augmented.exit

if.then.i:                                        ; preds = %__rb_erase_augmented.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__rb_erase_color(ptr noundef nonnull %rebalance.2.i.i, ptr noundef %ranges.i, ptr noundef nonnull @sr_callbacks_rotate) #11
  br label %rb_erase_augmented.exit

rb_erase_augmented.exit:                          ; preds = %if.then.i, %__rb_erase_augmented.exit.i.rb_erase_augmented.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %sr.054.i) #11
  br label %do.end

do.end:                                           ; preds = %rb_erase_augmented.exit, %for.end.do.end_crit_edge
  %170 = ptrtoint ptr %ranges.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile ptr, ptr %ranges.i, align 4
  %cmp31 = icmp eq ptr %171, null
  br i1 %cmp31, label %land.lhs.true, label %do.end.exit_crit_edge

do.end.exit_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

land.lhs.true:                                    ; preds = %do.end
  %172 = ptrtoint ptr %subscriptions to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile ptr, ptr %subscriptions, align 4
  %cmp.i101.not = icmp eq ptr %173, %subscriptions
  br i1 %cmp.i101.not, label %if.then35, label %land.lhs.true.exit_crit_edge

land.lhs.true.exit_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then35:                                        ; preds = %land.lhs.true
  %pprev.i.i = getelementptr inbounds %struct.tipc_service, ptr %call, i32 0, i32 3, i32 1
  %174 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %175, null
  br i1 %tobool.not.i.not.i, label %if.then35.hlist_del_init_rcu.exit_crit_edge, label %if.then.i103

if.then35.hlist_del_init_rcu.exit_crit_edge:      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_init_rcu.exit

if.then.i103:                                     ; preds = %if.then35
  %service_list36 = getelementptr inbounds %struct.tipc_service, ptr %call, i32 0, i32 3
  %176 = ptrtoint ptr %service_list36 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %service_list36, align 4
  %178 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %177, ptr %175, align 4
  %tobool.not.i7.i = icmp eq ptr %177, null
  br i1 %tobool.not.i7.i, label %if.then.i103.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i103.__hlist_del.exit.i_crit_edge:        ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %177, i32 0, i32 1
  %179 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %175, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i103.__hlist_del.exit.i_crit_edge
  %180 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %if.then35.hlist_del_init_rcu.exit_crit_edge
  %rcu = getelementptr inbounds %struct.tipc_service, ptr %call, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 72 to ptr)) #11
  br label %exit

exit.thread113:                                   ; preds = %tipc_service_remove_publ.exit.exit.thread113_crit_edge, %for.inc.i97.exit.thread113_crit_edge, %if.end4.exit.thread113_crit_edge, %service_range_match_next.exit.i.exit.thread113_crit_edge, %if.end9.critedge.i.i.exit.thread113_crit_edge, %while.cond2.i.i.exit.thread113_crit_edge, %land.lhs.true22.i.i.i.exit.thread113_crit_edge, %if.end17.i.i.i.exit.thread113_crit_edge, %if.end9.i.i.i.exit.thread113_crit_edge, %while.cond.i20.i.exit.thread113_crit_edge, %service_range_match_first.exit.i.exit.thread113_crit_edge, %land.lhs.true22.i.i.exit.thread113_crit_edge, %if.end17.i.i.exit.thread113_crit_edge, %if.end9.i.i.exit.thread113_crit_edge, %lor.lhs.false.i.i.exit.thread113_crit_edge, %if.end.exit.thread113_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %do.end52

exit:                                             ; preds = %hlist_del_init_rcu.exit, %land.lhs.true.exit_crit_edge, %do.end.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %if.end55

do.end52:                                         ; preds = %exit.thread113, %entry.do.end52_crit_edge
  %181 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %181, align 4
  %lower = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3, i32 0, i32 0, i32 1
  %184 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %lower, align 4
  %upper = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3, i32 0, i32 1
  %186 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %upper, align 4
  %node = getelementptr inbounds %struct.tipc_socket_addr, ptr %sk, i32 0, i32 1
  %188 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %node, align 4
  %190 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %sk, align 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %183, i32 noundef %185, i32 noundef %187, i32 noundef %189, i32 noundef %191, i32 noundef %key) #15
  br label %if.end55

if.end55:                                         ; preds = %do.end52, %exit
  %p.1111 = phi ptr [ null, %do.end52 ], [ %p.0.le.i, %exit ]
  ret ptr %p.1111
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_sub_report_overlap(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_nametbl_lookup_anycast(ptr noundef %net, ptr nocapture noundef readonly %ua, ptr nocapture noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_net(ptr noundef %net)
  %legacy_addr_format = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %legacy_addr_format to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %legacy_addr_format, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  %call.i85 = tail call fastcc ptr @tipc_net(ptr noundef %net) #11
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i85, i32 0, i32 1
  %2 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node_addr.i, align 4
  %instance = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %instance, align 4
  %node = getelementptr inbounds %struct.tipc_socket_addr, ptr %sk, i32 0, i32 1
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node, align 4
  %call3 = tail call zeroext i1 @tipc_in_scope(i1 noundef zeroext %tobool, i32 noundef %7, i32 noundef %3) #11
  br i1 %call3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call4 = tail call fastcc ptr @tipc_service_find(ptr noundef %net, ptr noundef %ua)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %rcu_read_lock.exit.exit_crit_edge, label %if.end10, !prof !76

rcu_read_lock.exit.exit_crit_edge:                ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end10:                                         ; preds = %rcu_read_lock.exit
  %lock = getelementptr inbounds %struct.tipc_service, ptr %call4, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %ranges = getelementptr inbounds %struct.tipc_service, ptr %call4, i32 0, i32 2
  %12 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ranges, align 4
  %tobool.not.i86 = icmp eq ptr %13, null
  br i1 %tobool.not.i86, label %if.end10.for.end_crit_edge, label %lor.lhs.false.i

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

lor.lhs.false.i:                                  ; preds = %if.end10
  %max.i = getelementptr i8, ptr %13, i32 12
  %14 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %5)
  %cmp.i = icmp ult i32 %15, %5
  br i1 %cmp.i, label %lor.lhs.false.i.for.end_crit_edge, label %lor.lhs.false.i.while.cond.i_crit_edge

lor.lhs.false.i.while.cond.i_crit_edge:           ; preds = %lor.lhs.false.i
  br label %while.cond.i

lor.lhs.false.i.for.end_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

while.cond.i:                                     ; preds = %while.cond.i.backedge, %lor.lhs.false.i.while.cond.i_crit_edge
  %n.addr.0.i = phi ptr [ %n.addr.0.i.be, %while.cond.i.backedge ], [ %13, %lor.lhs.false.i.while.cond.i_crit_edge ]
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rb_left.i, align 4
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %while.cond.i.if.end9.i_crit_edge, label %land.lhs.true.i87

while.cond.i.if.end9.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i87:                                ; preds = %while.cond.i
  %max6.i = getelementptr i8, ptr %17, i32 12
  %18 = ptrtoint ptr %max6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %5)
  %cmp7.not.i = icmp ult i32 %19, %5
  br i1 %cmp7.not.i, label %land.lhs.true.i87.if.end9.i_crit_edge, label %land.lhs.true.i87.while.cond.i.backedge_crit_edge

land.lhs.true.i87.while.cond.i.backedge_crit_edge: ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.backedge

land.lhs.true.i87.if.end9.i_crit_edge:            ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.end9.i:                                        ; preds = %land.lhs.true.i87.if.end9.i_crit_edge, %while.cond.i.if.end9.i_crit_edge
  %add.ptr12.i = getelementptr i8, ptr %n.addr.0.i, i32 -8
  %20 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %5)
  %cmp13.not.i = icmp ugt i32 %21, %5
  br i1 %cmp13.not.i, label %if.end9.i.for.end_crit_edge, label %land.lhs.true14.i

if.end9.i.for.end_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true14.i:                                ; preds = %if.end9.i
  %upper.i = getelementptr i8, ptr %n.addr.0.i, i32 -4
  %22 = ptrtoint ptr %upper.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %upper.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %5)
  %cmp15.not.i = icmp ult i32 %23, %5
  br i1 %cmp15.not.i, label %if.end17.i, label %service_range_match_first.exit

if.end17.i:                                       ; preds = %land.lhs.true14.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rb_right.i, align 4
  %tobool21.not.i = icmp eq ptr %25, null
  br i1 %tobool21.not.i, label %if.end17.i.for.end_crit_edge, label %land.lhs.true22.i

if.end17.i.for.end_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true22.i:                                ; preds = %if.end17.i
  %max26.i = getelementptr i8, ptr %25, i32 12
  %26 = ptrtoint ptr %max26.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max26.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %5)
  %cmp27.not.i = icmp ult i32 %27, %5
  br i1 %cmp27.not.i, label %land.lhs.true22.i.for.end_crit_edge, label %land.lhs.true22.i.while.cond.i.backedge_crit_edge

land.lhs.true22.i.while.cond.i.backedge_crit_edge: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.backedge

land.lhs.true22.i.for.end_crit_edge:              ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

while.cond.i.backedge:                            ; preds = %land.lhs.true22.i.while.cond.i.backedge_crit_edge, %land.lhs.true.i87.while.cond.i.backedge_crit_edge
  %n.addr.0.i.be = phi ptr [ %17, %land.lhs.true.i87.while.cond.i.backedge_crit_edge ], [ %25, %land.lhs.true22.i.while.cond.i.backedge_crit_edge ]
  br label %while.cond.i

service_range_match_first.exit:                   ; preds = %land.lhs.true14.i
  %add.ptr12.i.le = getelementptr i8, ptr %n.addr.0.i, i32 -8
  %tobool12.not165 = icmp eq ptr %add.ptr12.i.le, null
  br i1 %tobool12.not165, label %service_range_match_first.exit.for.end_crit_edge, label %for.body.lr.ph

service_range_match_first.exit.for.end_crit_edge: ; preds = %service_range_match_first.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %service_range_match_first.exit
  %28 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %node, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %3)
  %cmp = icmp eq i32 %29, %3
  br label %for.body

for.body:                                         ; preds = %service_range_match_next.exit.for.body_crit_edge, %for.body.lr.ph
  %r.0166 = phi ptr [ %add.ptr12.i.le, %for.body.lr.ph ], [ %add.ptr12.i117.le, %service_range_match_next.exit.for.body_crit_edge ]
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %for.body
  %local_publ = getelementptr inbounds %struct.service_range, ptr %r.0166, i32 0, i32 4
  %30 = ptrtoint ptr %local_publ to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %local_publ, align 4
  %cmp.i88.not = icmp eq ptr %31, %local_publ
  br i1 %cmp.i88.not, label %for.inc, label %if.end18

if.end18:                                         ; preds = %if.then14
  %add.ptr = getelementptr i8, ptr %31, i32 -48
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %31) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end18.__list_del_entry.exit.i_crit_edge

if.end18.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end18.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.service_range, ptr %r.0166, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %31, ptr noundef %39, ptr noundef %local_publ) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end44_crit_edge

__list_del_entry.exit.i.if.end44_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %31, ptr %prev.i2.i, align 4
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %local_publ, ptr %31, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %31, ptr %39, align 4
  br label %if.end44

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool23.not = icmp eq i32 %29, 0
  %or.cond = select i1 %tobool, i1 %tobool23.not, i1 false
  br i1 %or.cond, label %land.lhs.true24, label %if.else.if.else36_crit_edge

if.else.if.else36_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else36

land.lhs.true24:                                  ; preds = %if.else
  %local_publ25 = getelementptr i8, ptr %n.addr.0.i, i32 16
  %44 = ptrtoint ptr %local_publ25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %local_publ25, align 4
  %cmp.i89.not = icmp eq ptr %45, %local_publ25
  br i1 %cmp.i89.not, label %land.lhs.true24.if.else36_crit_edge, label %if.then28

land.lhs.true24.if.else36_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else36

if.then28:                                        ; preds = %land.lhs.true24
  %add.ptr33 = getelementptr i8, ptr %45, i32 -48
  %call.i.i91 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %45) #11
  br i1 %call.i.i91, label %if.end.i.i94, label %if.then28.__list_del_entry.exit.i97_crit_edge

if.then28.__list_del_entry.exit.i97_crit_edge:    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i97

if.end.i.i94:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i92 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i92 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i92, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  %prev1.i.i.i93 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i93, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %__list_del_entry.exit.i97

__list_del_entry.exit.i97:                        ; preds = %if.end.i.i94, %if.then28.__list_del_entry.exit.i97_crit_edge
  %prev.i2.i95 = getelementptr i8, ptr %n.addr.0.i, i32 20
  %52 = ptrtoint ptr %prev.i2.i95 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i2.i95, align 4
  %call.i.i.i96 = tail call zeroext i1 @__list_add_valid(ptr noundef %45, ptr noundef %53, ptr noundef %local_publ25) #11
  br i1 %call.i.i.i96, label %if.end.i.i.i99, label %__list_del_entry.exit.i97.if.end44_crit_edge

__list_del_entry.exit.i97.if.end44_crit_edge:     ; preds = %__list_del_entry.exit.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.end.i.i.i99:                                   ; preds = %__list_del_entry.exit.i97
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %prev.i2.i95 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %45, ptr %prev.i2.i95, align 4
  %55 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %local_publ25, ptr %45, align 4
  %prev3.i.i.i98 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %56 = ptrtoint ptr %prev3.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i.i98, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %45, ptr %53, align 4
  br label %if.end44

if.else36:                                        ; preds = %land.lhs.true24.if.else36_crit_edge, %if.else.if.else36_crit_edge
  %all_publ = getelementptr i8, ptr %n.addr.0.i, i32 24
  %58 = ptrtoint ptr %all_publ to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %all_publ, align 4
  %add.ptr40 = getelementptr i8, ptr %59, i32 -56
  %call.i.i101 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %59) #11
  br i1 %call.i.i101, label %if.end.i.i104, label %if.else36.__list_del_entry.exit.i107_crit_edge

if.else36.__list_del_entry.exit.i107_crit_edge:   ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i107

if.end.i.i104:                                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i102 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i102, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 4
  %prev1.i.i.i103 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i103, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %__list_del_entry.exit.i107

__list_del_entry.exit.i107:                       ; preds = %if.end.i.i104, %if.else36.__list_del_entry.exit.i107_crit_edge
  %prev.i2.i105 = getelementptr i8, ptr %n.addr.0.i, i32 28
  %66 = ptrtoint ptr %prev.i2.i105 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i2.i105, align 4
  %call.i.i.i106 = tail call zeroext i1 @__list_add_valid(ptr noundef %59, ptr noundef %67, ptr noundef %all_publ) #11
  br i1 %call.i.i.i106, label %if.end.i.i.i109, label %__list_del_entry.exit.i107.if.end44_crit_edge

__list_del_entry.exit.i107.if.end44_crit_edge:    ; preds = %__list_del_entry.exit.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.end.i.i.i109:                                  ; preds = %__list_del_entry.exit.i107
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %prev.i2.i105 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %59, ptr %prev.i2.i105, align 4
  %69 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %all_publ, ptr %59, align 4
  %prev3.i.i.i108 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %70 = ptrtoint ptr %prev3.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i.i108, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %59, ptr %67, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end.i.i.i109, %__list_del_entry.exit.i107.if.end44_crit_edge, %if.end.i.i.i99, %__list_del_entry.exit.i97.if.end44_crit_edge, %if.end.i.i.i, %__list_del_entry.exit.i.if.end44_crit_edge
  %p.0 = phi ptr [ %add.ptr, %__list_del_entry.exit.i.if.end44_crit_edge ], [ %add.ptr, %if.end.i.i.i ], [ %add.ptr33, %__list_del_entry.exit.i97.if.end44_crit_edge ], [ %add.ptr33, %if.end.i.i.i99 ], [ %add.ptr40, %__list_del_entry.exit.i107.if.end44_crit_edge ], [ %add.ptr40, %if.end.i.i.i109 ]
  %sk45 = getelementptr inbounds %struct.publication, ptr %p.0, i32 0, i32 1
  %72 = ptrtoint ptr %sk45 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %73 = load i64, ptr %sk45, align 4
  %74 = ptrtoint ptr %sk to i32
  call void @__asan_storeN_noabort(i32 %74, i32 8)
  store i64 %73, ptr %sk, align 4
  br label %for.end

for.inc:                                          ; preds = %if.then14
  %tree_node = getelementptr inbounds %struct.service_range, ptr %r.0166, i32 0, i32 2
  br label %while.cond.i113

while.cond.i113:                                  ; preds = %land.lhs.true14.i121.while.cond.i113_crit_edge, %for.inc
  %n.addr.0.i111 = phi ptr [ %tree_node, %for.inc ], [ %96, %land.lhs.true14.i121.while.cond.i113_crit_edge ]
  %tobool.not.i112 = icmp eq ptr %n.addr.0.i111, null
  br i1 %tobool.not.i112, label %while.cond.i113.for.end_crit_edge, label %while.body.i

while.cond.i113.for.end_crit_edge:                ; preds = %while.cond.i113
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

while.body.i:                                     ; preds = %while.cond.i113
  %rb_right.i114 = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i111, i32 0, i32 1
  %75 = ptrtoint ptr %rb_right.i114 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rb_right.i114, align 4
  %tobool1.not.i = icmp eq ptr %76, null
  br i1 %tobool1.not.i, label %while.body.i.while.cond2.i.preheader_crit_edge, label %land.lhs.true.i116

while.body.i.while.cond2.i.preheader_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i.preheader

while.cond2.i.preheader:                          ; preds = %land.lhs.true.i116.while.cond2.i.preheader_crit_edge, %while.body.i.while.cond2.i.preheader_crit_edge
  br label %while.cond2.i

land.lhs.true.i116:                               ; preds = %while.body.i
  %max.i115 = getelementptr i8, ptr %76, i32 12
  %77 = ptrtoint ptr %max.i115 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max.i115, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %5)
  %cmp.not.i = icmp ult i32 %78, %5
  br i1 %cmp.not.i, label %land.lhs.true.i116.while.cond2.i.preheader_crit_edge, label %land.lhs.true.i116.while.cond.i.i_crit_edge

land.lhs.true.i116.while.cond.i.i_crit_edge:      ; preds = %land.lhs.true.i116
  br label %while.cond.i.i

land.lhs.true.i116.while.cond2.i.preheader_crit_edge: ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i.preheader

while.cond.i.i:                                   ; preds = %while.cond.i.i.backedge, %land.lhs.true.i116.while.cond.i.i_crit_edge
  %n.addr.0.i.i = phi ptr [ %n.addr.0.i.i.be, %while.cond.i.i.backedge ], [ %76, %land.lhs.true.i116.while.cond.i.i_crit_edge ]
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rb_left.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %80, null
  br i1 %tobool2.not.i.i, label %while.cond.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i

while.cond.i.i.if.end9.i.i_crit_edge:             ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

land.lhs.true.i.i:                                ; preds = %while.cond.i.i
  %max6.i.i = getelementptr i8, ptr %80, i32 12
  %81 = ptrtoint ptr %max6.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %5)
  %cmp7.not.i.i = icmp ult i32 %82, %5
  br i1 %cmp7.not.i.i, label %land.lhs.true.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge

land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.backedge

land.lhs.true.i.i.if.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %land.lhs.true.i.i.if.end9.i.i_crit_edge, %while.cond.i.i.if.end9.i.i_crit_edge
  %add.ptr12.i.i = getelementptr i8, ptr %n.addr.0.i.i, i32 -8
  %83 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %5)
  %cmp13.not.i.i = icmp ugt i32 %84, %5
  br i1 %cmp13.not.i.i, label %if.end9.i.i.for.end_crit_edge, label %land.lhs.true14.i.i

if.end9.i.i.for.end_crit_edge:                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true14.i.i:                              ; preds = %if.end9.i.i
  %upper.i.i = getelementptr i8, ptr %n.addr.0.i.i, i32 -4
  %85 = ptrtoint ptr %upper.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %upper.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %5)
  %cmp15.not.i.i = icmp ult i32 %86, %5
  br i1 %cmp15.not.i.i, label %if.end17.i.i, label %land.lhs.true14.i.i.service_range_match_next.exit_crit_edge

land.lhs.true14.i.i.service_range_match_next.exit_crit_edge: ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %service_range_match_next.exit

if.end17.i.i:                                     ; preds = %land.lhs.true14.i.i
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rb_right.i.i, align 4
  %tobool21.not.i.i = icmp eq ptr %88, null
  br i1 %tobool21.not.i.i, label %if.end17.i.i.for.end_crit_edge, label %land.lhs.true22.i.i

if.end17.i.i.for.end_crit_edge:                   ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true22.i.i:                              ; preds = %if.end17.i.i
  %max26.i.i = getelementptr i8, ptr %88, i32 12
  %89 = ptrtoint ptr %max26.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %max26.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %5)
  %cmp27.not.i.i = icmp ult i32 %90, %5
  br i1 %cmp27.not.i.i, label %land.lhs.true22.i.i.for.end_crit_edge, label %land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge

land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.backedge

land.lhs.true22.i.i.for.end_crit_edge:            ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

while.cond.i.i.backedge:                          ; preds = %land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge, %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge
  %n.addr.0.i.i.be = phi ptr [ %80, %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge ], [ %88, %land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge ]
  br label %while.cond.i.i

while.cond2.i:                                    ; preds = %land.rhs.i.while.cond2.i_crit_edge, %while.cond2.i.preheader
  %n.addr.1.i = phi ptr [ %93, %land.rhs.i.while.cond2.i_crit_edge ], [ %n.addr.0.i111, %while.cond2.i.preheader ]
  %91 = ptrtoint ptr %n.addr.1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %n.addr.1.i, align 4
  %and.i = and i32 %92, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %while.cond2.i.for.end_crit_edge, label %land.rhs.i

while.cond2.i.for.end_crit_edge:                  ; preds = %while.cond2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs.i:                                       ; preds = %while.cond2.i
  %93 = inttoptr i32 %and.i to ptr
  %rb_right4.i = getelementptr inbounds %struct.rb_node, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %rb_right4.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rb_right4.i, align 4
  %cmp5.i = icmp eq ptr %n.addr.1.i, %95
  br i1 %cmp5.i, label %land.rhs.i.while.cond2.i_crit_edge, label %if.end9.critedge.i

land.rhs.i.while.cond2.i_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i

if.end9.critedge.i:                               ; preds = %land.rhs.i
  %96 = inttoptr i32 %and.i to ptr
  %add.ptr12.i117 = getelementptr i8, ptr %96, i32 -8
  %97 = ptrtoint ptr %add.ptr12.i117 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr12.i117, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %5)
  %cmp13.not.i118 = icmp ugt i32 %98, %5
  br i1 %cmp13.not.i118, label %if.end9.critedge.i.for.end_crit_edge, label %land.lhs.true14.i121

if.end9.critedge.i.for.end_crit_edge:             ; preds = %if.end9.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true14.i121:                             ; preds = %if.end9.critedge.i
  %upper.i119 = getelementptr i8, ptr %96, i32 -4
  %99 = ptrtoint ptr %upper.i119 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %upper.i119, align 4
  %cmp15.not.i120 = icmp ult i32 %100, %5
  br i1 %cmp15.not.i120, label %land.lhs.true14.i121.while.cond.i113_crit_edge, label %service_range_match_next.exit.loopexit189

land.lhs.true14.i121.while.cond.i113_crit_edge:   ; preds = %land.lhs.true14.i121
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i113

service_range_match_next.exit.loopexit189:        ; preds = %land.lhs.true14.i121
  call void @__sanitizer_cov_trace_pc() #13
  %101 = inttoptr i32 %and.i to ptr
  br label %service_range_match_next.exit

service_range_match_next.exit:                    ; preds = %service_range_match_next.exit.loopexit189, %land.lhs.true14.i.i.service_range_match_next.exit_crit_edge
  %.sink = phi ptr [ %101, %service_range_match_next.exit.loopexit189 ], [ %n.addr.0.i.i, %land.lhs.true14.i.i.service_range_match_next.exit_crit_edge ]
  %add.ptr12.i117.le = getelementptr i8, ptr %.sink, i32 -8
  %tobool12.not = icmp eq ptr %add.ptr12.i117.le, null
  br i1 %tobool12.not, label %service_range_match_next.exit.for.end_crit_edge, label %service_range_match_next.exit.for.body_crit_edge

service_range_match_next.exit.for.body_crit_edge: ; preds = %service_range_match_next.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

service_range_match_next.exit.for.end_crit_edge:  ; preds = %service_range_match_next.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %service_range_match_next.exit.for.end_crit_edge, %if.end9.critedge.i.for.end_crit_edge, %while.cond2.i.for.end_crit_edge, %land.lhs.true22.i.i.for.end_crit_edge, %if.end17.i.i.for.end_crit_edge, %if.end9.i.i.for.end_crit_edge, %while.cond.i113.for.end_crit_edge, %if.end44, %service_range_match_first.exit.for.end_crit_edge, %land.lhs.true22.i.for.end_crit_edge, %if.end17.i.for.end_crit_edge, %if.end9.i.for.end_crit_edge, %lor.lhs.false.i.for.end_crit_edge, %if.end10.for.end_crit_edge
  %tobool12.not141 = phi i1 [ true, %if.end44 ], [ false, %service_range_match_first.exit.for.end_crit_edge ], [ false, %lor.lhs.false.i.for.end_crit_edge ], [ false, %if.end10.for.end_crit_edge ], [ false, %while.cond2.i.for.end_crit_edge ], [ false, %if.end9.i.i.for.end_crit_edge ], [ false, %if.end17.i.i.for.end_crit_edge ], [ false, %land.lhs.true22.i.i.for.end_crit_edge ], [ false, %while.cond.i113.for.end_crit_edge ], [ false, %if.end9.critedge.i.for.end_crit_edge ], [ false, %service_range_match_next.exit.for.end_crit_edge ], [ false, %if.end9.i.for.end_crit_edge ], [ false, %if.end17.i.for.end_crit_edge ], [ false, %land.lhs.true22.i.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %exit

exit:                                             ; preds = %for.end, %rcu_read_lock.exit.exit_crit_edge
  %res.1.off0 = phi i1 [ false, %rcu_read_lock.exit.exit_crit_edge ], [ %tobool12.not141, %for.end ]
  %call.i125 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i125, label %exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i128

exit.rcu_read_unlock.exit_crit_edge:              ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i128:                               ; preds = %exit
  %call1.i126 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i126)
  %tobool.not.i127 = icmp eq i32 %call1.i126, 0
  br i1 %tobool.not.i127, label %land.lhs.true.i128.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i130

land.lhs.true.i128.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i130:                              ; preds = %land.lhs.true.i128
  %.b4.i129 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i129, label %land.lhs.true2.i130.rcu_read_unlock.exit_crit_edge, label %if.then.i131

land.lhs.true2.i130.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i130
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i131:                                     ; preds = %land.lhs.true2.i130
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i131, %land.lhs.true2.i130.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i128.rcu_read_unlock.exit_crit_edge, %exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !77
  %102 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i132 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i.i.i132 to ptr
  %preempt_count.i.i.i.i133 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i.i.i133, align 4
  %sub.i.i.i = add i32 %105, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i133, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %res.1.off0, %rcu_read_unlock.exit ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_net(ptr noundef %net) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 45, ptr noundef nonnull @.str.20) #11
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #11
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !77
  %9 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_in_scope(i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_nametbl_lookup_group(ptr noundef %net, ptr nocapture noundef readonly %ua, ptr noundef %dsts, ptr nocapture noundef %dstcnt, i32 noundef %exclude, i1 noundef zeroext %mcast) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i65 = tail call fastcc ptr @tipc_net(ptr noundef %net) #11
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i65, i32 0, i32 1
  %0 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_addr.i, align 4
  %instance = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %instance, align 4
  %4 = ptrtoint ptr %dstcnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dstcnt, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call fastcc ptr @tipc_service_find(ptr noundef %net, ptr noundef %ua)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %rcu_read_lock.exit.exit_crit_edge, label %if.end, !prof !76

rcu_read_lock.exit.exit_crit_edge:                ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end:                                           ; preds = %rcu_read_lock.exit
  %lock = getelementptr inbounds %struct.tipc_service, ptr %call1, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %ranges = getelementptr inbounds %struct.tipc_service, ptr %call1, i32 0, i32 2
  %9 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ranges, align 4
  %tobool.not.i66 = icmp eq ptr %10, null
  br i1 %tobool.not.i66, label %if.end.no_match_crit_edge, label %lor.lhs.false.i

if.end.no_match_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_match

lor.lhs.false.i:                                  ; preds = %if.end
  %max.i = getelementptr i8, ptr %10, i32 12
  %11 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp.i = icmp ult i32 %12, %3
  br i1 %cmp.i, label %lor.lhs.false.i.no_match_crit_edge, label %lor.lhs.false.i.while.cond.i_crit_edge

lor.lhs.false.i.while.cond.i_crit_edge:           ; preds = %lor.lhs.false.i
  br label %while.cond.i

lor.lhs.false.i.no_match_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_match

while.cond.i:                                     ; preds = %while.cond.i.backedge, %lor.lhs.false.i.while.cond.i_crit_edge
  %n.addr.0.i = phi ptr [ %n.addr.0.i.be, %while.cond.i.backedge ], [ %10, %lor.lhs.false.i.while.cond.i_crit_edge ]
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rb_left.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %while.cond.i.if.end9.i_crit_edge, label %land.lhs.true.i67

while.cond.i.if.end9.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i67:                                ; preds = %while.cond.i
  %max6.i = getelementptr i8, ptr %14, i32 12
  %15 = ptrtoint ptr %max6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %3)
  %cmp7.not.i = icmp ult i32 %16, %3
  br i1 %cmp7.not.i, label %land.lhs.true.i67.if.end9.i_crit_edge, label %land.lhs.true.i67.while.cond.i.backedge_crit_edge

land.lhs.true.i67.while.cond.i.backedge_crit_edge: ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.backedge

land.lhs.true.i67.if.end9.i_crit_edge:            ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.end9.i:                                        ; preds = %land.lhs.true.i67.if.end9.i_crit_edge, %while.cond.i.if.end9.i_crit_edge
  %add.ptr12.i = getelementptr i8, ptr %n.addr.0.i, i32 -8
  %17 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %3)
  %cmp13.not.i = icmp ugt i32 %18, %3
  br i1 %cmp13.not.i, label %if.end9.i.no_match_crit_edge, label %land.lhs.true14.i

if.end9.i.no_match_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_match

land.lhs.true14.i:                                ; preds = %if.end9.i
  %upper.i = getelementptr i8, ptr %n.addr.0.i, i32 -4
  %19 = ptrtoint ptr %upper.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %upper.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %3)
  %cmp15.not.i = icmp ult i32 %20, %3
  br i1 %cmp15.not.i, label %if.end17.i, label %service_range_match_first.exit

if.end17.i:                                       ; preds = %land.lhs.true14.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rb_right.i, align 4
  %tobool21.not.i = icmp eq ptr %22, null
  br i1 %tobool21.not.i, label %if.end17.i.no_match_crit_edge, label %land.lhs.true22.i

if.end17.i.no_match_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_match

land.lhs.true22.i:                                ; preds = %if.end17.i
  %max26.i = getelementptr i8, ptr %22, i32 12
  %23 = ptrtoint ptr %max26.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max26.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %3)
  %cmp27.not.i = icmp ult i32 %24, %3
  br i1 %cmp27.not.i, label %land.lhs.true22.i.no_match_crit_edge, label %land.lhs.true22.i.while.cond.i.backedge_crit_edge

land.lhs.true22.i.while.cond.i.backedge_crit_edge: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.backedge

land.lhs.true22.i.no_match_crit_edge:             ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_match

while.cond.i.backedge:                            ; preds = %land.lhs.true22.i.while.cond.i.backedge_crit_edge, %land.lhs.true.i67.while.cond.i.backedge_crit_edge
  %n.addr.0.i.be = phi ptr [ %14, %land.lhs.true.i67.while.cond.i.backedge_crit_edge ], [ %22, %land.lhs.true22.i.while.cond.i.backedge_crit_edge ]
  br label %while.cond.i

service_range_match_first.exit:                   ; preds = %land.lhs.true14.i
  %add.ptr12.i.le = getelementptr i8, ptr %n.addr.0.i, i32 -8
  %tobool6.not = icmp eq ptr %add.ptr12.i.le, null
  br i1 %tobool6.not, label %service_range_match_first.exit.no_match_crit_edge, label %if.end8

service_range_match_first.exit.no_match_crit_edge: ; preds = %service_range_match_first.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_match

if.end8:                                          ; preds = %service_range_match_first.exit
  %all_publ = getelementptr i8, ptr %n.addr.0.i, i32 24
  %25 = ptrtoint ptr %all_publ to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn93 = load ptr, ptr %all_publ, align 4
  %cmp.not94 = icmp eq ptr %.pn93, %all_publ
  br i1 %cmp.not94, label %if.end8.no_match_crit_edge, label %for.body.lr.ph

if.end8.no_match_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_match

for.body.lr.ph:                                   ; preds = %if.end8
  %scope13 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn95 = phi ptr [ %.pn93, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %scope = getelementptr i8, ptr %.pn95, i32 -36
  %26 = ptrtoint ptr %scope to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %scope, align 4
  %conv = zext i16 %27 to i32
  %28 = ptrtoint ptr %scope13 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %scope13, align 1
  %conv14 = sext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv14)
  %cmp15.not = icmp eq i32 %conv, %conv14
  br i1 %cmp15.not, label %if.end18, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end18:                                         ; preds = %for.body
  %sk = getelementptr i8, ptr %.pn95, i32 -44
  %30 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %exclude)
  %cmp19 = icmp eq i32 %31, %exclude
  br i1 %cmp19, label %land.lhs.true, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end18
  %node = getelementptr i8, ptr %.pn95, i32 -40
  %32 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %node, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %1)
  %cmp22 = icmp eq i32 %33, %1
  br i1 %cmp22, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end18.if.end25_crit_edge
  %node27 = getelementptr i8, ptr %.pn95, i32 -40
  %34 = ptrtoint ptr %node27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %node27, align 4
  %36 = ptrtoint ptr %dsts to i32
  call void @__asan_load4_noabort(i32 %36)
  %dst.015.i.i = load ptr, ptr %dsts, align 4
  %cmp.not16.i.i = icmp eq ptr %dst.015.i.i, %dsts
  br i1 %cmp.not16.i.i, label %if.end25.if.end.i_crit_edge, label %if.end25.for.body.i.i_crit_edge

if.end25.for.body.i.i_crit_edge:                  ; preds = %if.end25
  br label %for.body.i.i

if.end25.if.end.i_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end25.for.body.i.i_crit_edge
  %dst.017.i.i = phi ptr [ %dst.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %dst.015.i.i, %if.end25.for.body.i.i_crit_edge ]
  %node1.i.i = getelementptr inbounds %struct.tipc_dest, ptr %dst.017.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %node1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %node1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %35)
  %cmp2.i.i = icmp eq i32 %38, %35
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %port3.i.i = getelementptr inbounds %struct.tipc_dest, ptr %dst.017.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %31)
  %cmp4.i.i = icmp eq i32 %40, %31
  br i1 %cmp4.i.i, label %tipc_dest_find.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %41 = ptrtoint ptr %dst.017.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %dst.0.i.i = load ptr, ptr %dst.017.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %dst.0.i.i, %dsts
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

tipc_dest_find.exit.i:                            ; preds = %land.lhs.true.i.i
  %tobool.not.i68 = icmp eq ptr %dst.017.i.i, null
  br i1 %tobool.not.i68, label %tipc_dest_find.exit.i.if.end.i_crit_edge, label %tipc_dest_find.exit.i.tipc_dest_push.exit_crit_edge

tipc_dest_find.exit.i.tipc_dest_push.exit_crit_edge: ; preds = %tipc_dest_find.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_dest_push.exit

tipc_dest_find.exit.i.if.end.i_crit_edge:         ; preds = %tipc_dest_find.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %tipc_dest_find.exit.i.if.end.i_crit_edge, %for.inc.i.i.if.end.i_crit_edge, %if.end25.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 2592, i32 noundef 16) #14
  %tobool2.not.i69 = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not.i69, label %if.end.i.tipc_dest_push.exit_crit_edge, label %if.end7.i, !prof !76

if.end.i.tipc_dest_push.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_dest_push.exit

if.end7.i:                                        ; preds = %if.end.i
  %node8.i = getelementptr inbounds %struct.tipc_dest, ptr %call7.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %node8.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %35, ptr %node8.i, align 4
  %port9.i = getelementptr inbounds %struct.tipc_dest, ptr %call7.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %port9.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %31, ptr %port9.i, align 8
  %45 = ptrtoint ptr %dsts to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dsts, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %dsts, ptr noundef %46) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end7.i.tipc_dest_push.exit_crit_edge

if.end7.i.tipc_dest_push.exit_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_dest_push.exit

if.end.i.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dsts, ptr %prev3.i.i.i, align 4
  %50 = ptrtoint ptr %dsts to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call7.i.i, ptr %dsts, align 4
  br label %tipc_dest_push.exit

tipc_dest_push.exit:                              ; preds = %if.end.i.i.i, %if.end7.i.tipc_dest_push.exit_crit_edge, %if.end.i.tipc_dest_push.exit_crit_edge, %tipc_dest_find.exit.i.tipc_dest_push.exit_crit_edge
  %51 = ptrtoint ptr %dstcnt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dstcnt, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr %dstcnt, align 4
  br i1 %mcast, label %tipc_dest_push.exit.for.inc_crit_edge, label %if.end33

tipc_dest_push.exit.for.inc_crit_edge:            ; preds = %tipc_dest_push.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end33:                                         ; preds = %tipc_dest_push.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn95) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end33.__list_del_entry.exit.i_crit_edge

if.end33.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn95, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %55 = ptrtoint ptr %.pn95 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %.pn95, align 4
  %prev1.i.i.i71 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i71, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end33.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr i8, ptr %n.addr.0.i, i32 28
  %59 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i72 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn95, ptr noundef %60, ptr noundef %all_publ) #11
  br i1 %call.i.i.i72, label %if.end.i.i.i74, label %__list_del_entry.exit.i.no_match_crit_edge

__list_del_entry.exit.i.no_match_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_match

if.end.i.i.i74:                                   ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %.pn95, ptr %prev.i2.i, align 4
  %62 = ptrtoint ptr %.pn95 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %all_publ, ptr %.pn95, align 4
  %prev3.i.i.i73 = getelementptr inbounds %struct.list_head, ptr %.pn95, i32 0, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i73 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i.i73, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %.pn95, ptr %60, align 4
  br label %no_match

for.inc:                                          ; preds = %tipc_dest_push.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %65 = ptrtoint ptr %.pn95 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn = load ptr, ptr %.pn95, align 4
  %cmp.not = icmp eq ptr %.pn, %all_publ
  br i1 %cmp.not, label %for.inc.no_match_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.no_match_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_match

no_match:                                         ; preds = %for.inc.no_match_crit_edge, %if.end.i.i.i74, %__list_del_entry.exit.i.no_match_crit_edge, %if.end8.no_match_crit_edge, %service_range_match_first.exit.no_match_crit_edge, %land.lhs.true22.i.no_match_crit_edge, %if.end17.i.no_match_crit_edge, %if.end9.i.no_match_crit_edge, %lor.lhs.false.i.no_match_crit_edge, %if.end.no_match_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %exit

exit:                                             ; preds = %no_match, %rcu_read_lock.exit.exit_crit_edge
  %call.i75 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i75, label %exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i78

exit.rcu_read_unlock.exit_crit_edge:              ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i78:                                ; preds = %exit
  %call1.i76 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76)
  %tobool.not.i77 = icmp eq i32 %call1.i76, 0
  br i1 %tobool.not.i77, label %land.lhs.true.i78.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i80

land.lhs.true.i78.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i80:                               ; preds = %land.lhs.true.i78
  %.b4.i79 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i79, label %land.lhs.true2.i80.rcu_read_unlock.exit_crit_edge, label %if.then.i81

land.lhs.true2.i80.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i81:                                      ; preds = %land.lhs.true2.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i81, %land.lhs.true2.i80.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i78.rcu_read_unlock.exit_crit_edge, %exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !77
  %66 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i82 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i82 to ptr
  %preempt_count.i.i.i.i83 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i83, align 4
  %sub.i.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i83, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %70 = ptrtoint ptr %dsts to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %dsts, align 4
  %cmp.i84 = icmp ne ptr %71, %dsts
  ret i1 %cmp.i84
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_dest_push(ptr noundef %l, i32 noundef %node, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %0)
  %dst.015.i = load ptr, ptr %l, align 4
  %cmp.not16.i = icmp eq ptr %dst.015.i, %l
  br i1 %cmp.not16.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %dst.017.i = phi ptr [ %dst.0.i, %for.inc.i.for.body.i_crit_edge ], [ %dst.015.i, %entry.for.body.i_crit_edge ]
  %node1.i = getelementptr inbounds %struct.tipc_dest, ptr %dst.017.i, i32 0, i32 2
  %1 = ptrtoint ptr %node1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %node)
  %cmp2.i = icmp eq i32 %2, %node
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %port3.i = getelementptr inbounds %struct.tipc_dest, ptr %dst.017.i, i32 0, i32 1
  %3 = ptrtoint ptr %port3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %port)
  %cmp4.i = icmp eq i32 %4, %port
  br i1 %cmp4.i, label %tipc_dest_find.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %5 = ptrtoint ptr %dst.017.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %dst.0.i = load ptr, ptr %dst.017.i, align 4
  %cmp.not.i = icmp eq ptr %dst.0.i, %l
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

tipc_dest_find.exit:                              ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %dst.017.i, null
  br i1 %tobool.not, label %tipc_dest_find.exit.if.end_crit_edge, label %tipc_dest_find.exit.cleanup_crit_edge

tipc_dest_find.exit.cleanup_crit_edge:            ; preds = %tipc_dest_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

tipc_dest_find.exit.if.end_crit_edge:             ; preds = %tipc_dest_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %tipc_dest_find.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2592, i32 noundef 16) #14
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end7, !prof !76

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %node8 = getelementptr inbounds %struct.tipc_dest, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %node8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %node, ptr %node8, align 4
  %port9 = getelementptr inbounds %struct.tipc_dest, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %port9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %port, ptr %port9, align 8
  %9 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %l, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %l, ptr noundef %10) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %l, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i, ptr %l, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tipc_dest_find.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %tipc_dest_find.exit.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.end7.cleanup_crit_edge ], [ true, %if.end.i.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_nametbl_lookup_mcast_sockets(ptr noundef %net, ptr nocapture noundef readonly %ua, ptr noundef %dports) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %scope1 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 2
  %0 = ptrtoint ptr %scope1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %scope1, align 1
  %2 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call fastcc ptr @tipc_service_find(ptr noundef %net, ptr noundef %ua)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.exit_crit_edge, label %if.end

rcu_read_lock.exit.exit_crit_edge:                ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end:                                           ; preds = %rcu_read_lock.exit
  %lock = getelementptr inbounds %struct.tipc_service, ptr %call, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %ranges = getelementptr inbounds %struct.tipc_service, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ranges, align 4
  %lower = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lower, align 4
  %upper = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %upper, align 4
  %tobool.not.i44 = icmp eq ptr %7, null
  br i1 %tobool.not.i44, label %if.end.for.end27_crit_edge, label %lor.lhs.false.i

if.end.for.end27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

lor.lhs.false.i:                                  ; preds = %if.end
  %max.i = getelementptr i8, ptr %7, i32 12
  %12 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp.i = icmp ult i32 %13, %9
  br i1 %cmp.i, label %lor.lhs.false.i.for.end27_crit_edge, label %lor.lhs.false.i.while.cond.i_crit_edge

lor.lhs.false.i.while.cond.i_crit_edge:           ; preds = %lor.lhs.false.i
  br label %while.cond.i

lor.lhs.false.i.for.end27_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

while.cond.i:                                     ; preds = %while.cond.i.backedge, %lor.lhs.false.i.while.cond.i_crit_edge
  %n.addr.0.i = phi ptr [ %n.addr.0.i.be, %while.cond.i.backedge ], [ %7, %lor.lhs.false.i.while.cond.i_crit_edge ]
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rb_left.i, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %while.cond.i.if.end9.i_crit_edge, label %land.lhs.true.i45

while.cond.i.if.end9.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i45:                                ; preds = %while.cond.i
  %max6.i = getelementptr i8, ptr %15, i32 12
  %16 = ptrtoint ptr %max6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp7.not.i = icmp ult i32 %17, %9
  br i1 %cmp7.not.i, label %land.lhs.true.i45.if.end9.i_crit_edge, label %land.lhs.true.i45.while.cond.i.backedge_crit_edge

land.lhs.true.i45.while.cond.i.backedge_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.backedge

land.lhs.true.i45.if.end9.i_crit_edge:            ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.end9.i:                                        ; preds = %land.lhs.true.i45.if.end9.i_crit_edge, %while.cond.i.if.end9.i_crit_edge
  %add.ptr12.i = getelementptr i8, ptr %n.addr.0.i, i32 -8
  %18 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %11)
  %cmp13.not.i = icmp ugt i32 %19, %11
  br i1 %cmp13.not.i, label %if.end9.i.for.end27_crit_edge, label %land.lhs.true14.i

if.end9.i.for.end27_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

land.lhs.true14.i:                                ; preds = %if.end9.i
  %upper.i = getelementptr i8, ptr %n.addr.0.i, i32 -4
  %20 = ptrtoint ptr %upper.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %upper.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %9)
  %cmp15.not.i = icmp ult i32 %21, %9
  br i1 %cmp15.not.i, label %if.end17.i, label %service_range_match_first.exit

if.end17.i:                                       ; preds = %land.lhs.true14.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rb_right.i, align 4
  %tobool21.not.i = icmp eq ptr %23, null
  br i1 %tobool21.not.i, label %if.end17.i.for.end27_crit_edge, label %land.lhs.true22.i

if.end17.i.for.end27_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

land.lhs.true22.i:                                ; preds = %if.end17.i
  %max26.i = getelementptr i8, ptr %23, i32 12
  %24 = ptrtoint ptr %max26.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max26.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %9)
  %cmp27.not.i = icmp ult i32 %25, %9
  br i1 %cmp27.not.i, label %land.lhs.true22.i.for.end27_crit_edge, label %land.lhs.true22.i.while.cond.i.backedge_crit_edge

land.lhs.true22.i.while.cond.i.backedge_crit_edge: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.backedge

land.lhs.true22.i.for.end27_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

while.cond.i.backedge:                            ; preds = %land.lhs.true22.i.while.cond.i.backedge_crit_edge, %land.lhs.true.i45.while.cond.i.backedge_crit_edge
  %n.addr.0.i.be = phi ptr [ %15, %land.lhs.true.i45.while.cond.i.backedge_crit_edge ], [ %23, %land.lhs.true22.i.while.cond.i.backedge_crit_edge ]
  br label %while.cond.i

service_range_match_first.exit:                   ; preds = %land.lhs.true14.i
  %add.ptr12.i.le = getelementptr i8, ptr %n.addr.0.i, i32 -8
  %tobool3.not99 = icmp eq ptr %add.ptr12.i.le, null
  br i1 %tobool3.not99, label %service_range_match_first.exit.for.end27_crit_edge, label %for.body.lr.ph

service_range_match_first.exit.for.end27_crit_edge: ; preds = %service_range_match_first.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

for.body.lr.ph:                                   ; preds = %service_range_match_first.exit
  %26 = zext i8 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp13 = icmp eq i8 %1, 10
  br label %for.body

for.body:                                         ; preds = %service_range_match_next.exit.for.body_crit_edge, %for.body.lr.ph
  %sr.0100 = phi ptr [ %add.ptr12.i.le, %for.body.lr.ph ], [ %add.ptr12.i57.le, %service_range_match_next.exit.for.body_crit_edge ]
  %local_publ = getelementptr inbounds %struct.service_range, ptr %sr.0100, i32 0, i32 4
  %27 = ptrtoint ptr %local_publ to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn86 = load ptr, ptr %local_publ, align 4
  %cmp.not87 = icmp eq ptr %.pn86, %local_publ
  br i1 %cmp.not87, label %for.body.for.inc23_crit_edge, label %for.body.for.body7_crit_edge

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.body.for.inc23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc23

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %.pn88 = phi ptr [ %.pn, %for.inc.for.body7_crit_edge ], [ %.pn86, %for.body.for.body7_crit_edge ]
  %scope8 = getelementptr i8, ptr %.pn88, i32 -28
  %28 = ptrtoint ptr %scope8 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %scope8, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %26)
  %cmp10 = icmp eq i16 %29, %26
  %or.cond = or i1 %cmp13, %cmp10
  br i1 %or.cond, label %if.then15, label %for.body7.for.inc_crit_edge

for.body7.for.inc_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then15:                                        ; preds = %for.body7
  %sk = getelementptr i8, ptr %.pn88, i32 -36
  %30 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sk, align 4
  %32 = ptrtoint ptr %dports to i32
  call void @__asan_load4_noabort(i32 %32)
  %dst.015.i.i = load ptr, ptr %dports, align 4
  %cmp.not16.i.i = icmp eq ptr %dst.015.i.i, %dports
  br i1 %cmp.not16.i.i, label %if.then15.if.end.i_crit_edge, label %if.then15.for.body.i.i_crit_edge

if.then15.for.body.i.i_crit_edge:                 ; preds = %if.then15
  br label %for.body.i.i

if.then15.if.end.i_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then15.for.body.i.i_crit_edge
  %dst.017.i.i = phi ptr [ %dst.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %dst.015.i.i, %if.then15.for.body.i.i_crit_edge ]
  %node1.i.i = getelementptr inbounds %struct.tipc_dest, ptr %dst.017.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %node1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %node1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp2.i.i = icmp eq i32 %34, 0
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %port3.i.i = getelementptr inbounds %struct.tipc_dest, ptr %dst.017.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %31)
  %cmp4.i.i = icmp eq i32 %36, %31
  br i1 %cmp4.i.i, label %tipc_dest_find.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %37 = ptrtoint ptr %dst.017.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %dst.0.i.i = load ptr, ptr %dst.017.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %dst.0.i.i, %dports
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

tipc_dest_find.exit.i:                            ; preds = %land.lhs.true.i.i
  %tobool.not.i46 = icmp eq ptr %dst.017.i.i, null
  br i1 %tobool.not.i46, label %tipc_dest_find.exit.i.if.end.i_crit_edge, label %tipc_dest_find.exit.i.for.inc_crit_edge

tipc_dest_find.exit.i.for.inc_crit_edge:          ; preds = %tipc_dest_find.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

tipc_dest_find.exit.i.if.end.i_crit_edge:         ; preds = %tipc_dest_find.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %tipc_dest_find.exit.i.if.end.i_crit_edge, %for.inc.i.i.if.end.i_crit_edge, %if.then15.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 2592, i32 noundef 16) #14
  %tobool2.not.i47 = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not.i47, label %if.end.i.for.inc_crit_edge, label %if.end7.i, !prof !76

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end7.i:                                        ; preds = %if.end.i
  %node8.i = getelementptr inbounds %struct.tipc_dest, ptr %call7.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %node8.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %node8.i, align 4
  %port9.i = getelementptr inbounds %struct.tipc_dest, ptr %call7.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %port9.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %31, ptr %port9.i, align 8
  %41 = ptrtoint ptr %dports to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dports, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %dports, ptr noundef %42) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end7.i.for.inc_crit_edge

if.end7.i.for.inc_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i, ptr %prev1.i.i.i, align 4
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dports, ptr %prev3.i.i.i, align 4
  %46 = ptrtoint ptr %dports to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call7.i.i, ptr %dports, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %if.end7.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %tipc_dest_find.exit.i.for.inc_crit_edge, %for.body7.for.inc_crit_edge
  %47 = ptrtoint ptr %.pn88 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn = load ptr, ptr %.pn88, align 4
  %cmp.not = icmp eq ptr %.pn, %local_publ
  br i1 %cmp.not, label %for.inc.for.inc23_crit_edge, label %for.inc.for.body7_crit_edge

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7

for.inc.for.inc23_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc23

for.inc23:                                        ; preds = %for.inc.for.inc23_crit_edge, %for.body.for.inc23_crit_edge
  %tree_node = getelementptr inbounds %struct.service_range, ptr %sr.0100, i32 0, i32 2
  %48 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lower, align 4
  %50 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %upper, align 4
  br label %while.cond.i51

while.cond.i51:                                   ; preds = %land.lhs.true14.i61.while.cond.i51_crit_edge, %for.inc23
  %n.addr.0.i49 = phi ptr [ %tree_node, %for.inc23 ], [ %73, %land.lhs.true14.i61.while.cond.i51_crit_edge ]
  %tobool.not.i50 = icmp eq ptr %n.addr.0.i49, null
  br i1 %tobool.not.i50, label %while.cond.i51.for.end27_crit_edge, label %while.body.i

while.cond.i51.for.end27_crit_edge:               ; preds = %while.cond.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

while.body.i:                                     ; preds = %while.cond.i51
  %rb_right.i52 = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i49, i32 0, i32 1
  %52 = ptrtoint ptr %rb_right.i52 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rb_right.i52, align 4
  %tobool1.not.i = icmp eq ptr %53, null
  br i1 %tobool1.not.i, label %while.body.i.while.cond2.i.preheader_crit_edge, label %land.lhs.true.i54

while.body.i.while.cond2.i.preheader_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i.preheader

while.cond2.i.preheader:                          ; preds = %land.lhs.true.i54.while.cond2.i.preheader_crit_edge, %while.body.i.while.cond2.i.preheader_crit_edge
  br label %while.cond2.i

land.lhs.true.i54:                                ; preds = %while.body.i
  %max.i53 = getelementptr i8, ptr %53, i32 12
  %54 = ptrtoint ptr %max.i53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max.i53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %49)
  %cmp.not.i = icmp ult i32 %55, %49
  br i1 %cmp.not.i, label %land.lhs.true.i54.while.cond2.i.preheader_crit_edge, label %land.lhs.true.i54.while.cond.i.i_crit_edge

land.lhs.true.i54.while.cond.i.i_crit_edge:       ; preds = %land.lhs.true.i54
  br label %while.cond.i.i

land.lhs.true.i54.while.cond2.i.preheader_crit_edge: ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i.preheader

while.cond.i.i:                                   ; preds = %while.cond.i.i.backedge, %land.lhs.true.i54.while.cond.i.i_crit_edge
  %n.addr.0.i.i = phi ptr [ %n.addr.0.i.i.be, %while.cond.i.i.backedge ], [ %53, %land.lhs.true.i54.while.cond.i.i_crit_edge ]
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rb_left.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %57, null
  br i1 %tobool2.not.i.i, label %while.cond.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i55

while.cond.i.i.if.end9.i.i_crit_edge:             ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

land.lhs.true.i.i55:                              ; preds = %while.cond.i.i
  %max6.i.i = getelementptr i8, ptr %57, i32 12
  %58 = ptrtoint ptr %max6.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %49)
  %cmp7.not.i.i = icmp ult i32 %59, %49
  br i1 %cmp7.not.i.i, label %land.lhs.true.i.i55.if.end9.i.i_crit_edge, label %land.lhs.true.i.i55.while.cond.i.i.backedge_crit_edge

land.lhs.true.i.i55.while.cond.i.i.backedge_crit_edge: ; preds = %land.lhs.true.i.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.backedge

land.lhs.true.i.i55.if.end9.i.i_crit_edge:        ; preds = %land.lhs.true.i.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %land.lhs.true.i.i55.if.end9.i.i_crit_edge, %while.cond.i.i.if.end9.i.i_crit_edge
  %add.ptr12.i.i = getelementptr i8, ptr %n.addr.0.i.i, i32 -8
  %60 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %51)
  %cmp13.not.i.i = icmp ugt i32 %61, %51
  br i1 %cmp13.not.i.i, label %if.end9.i.i.for.end27_crit_edge, label %land.lhs.true14.i.i

if.end9.i.i.for.end27_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

land.lhs.true14.i.i:                              ; preds = %if.end9.i.i
  %upper.i.i = getelementptr i8, ptr %n.addr.0.i.i, i32 -4
  %62 = ptrtoint ptr %upper.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %upper.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %49)
  %cmp15.not.i.i = icmp ult i32 %63, %49
  br i1 %cmp15.not.i.i, label %if.end17.i.i, label %land.lhs.true14.i.i.service_range_match_next.exit_crit_edge

land.lhs.true14.i.i.service_range_match_next.exit_crit_edge: ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %service_range_match_next.exit

if.end17.i.i:                                     ; preds = %land.lhs.true14.i.i
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rb_right.i.i, align 4
  %tobool21.not.i.i = icmp eq ptr %65, null
  br i1 %tobool21.not.i.i, label %if.end17.i.i.for.end27_crit_edge, label %land.lhs.true22.i.i

if.end17.i.i.for.end27_crit_edge:                 ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

land.lhs.true22.i.i:                              ; preds = %if.end17.i.i
  %max26.i.i = getelementptr i8, ptr %65, i32 12
  %66 = ptrtoint ptr %max26.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max26.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %49)
  %cmp27.not.i.i = icmp ult i32 %67, %49
  br i1 %cmp27.not.i.i, label %land.lhs.true22.i.i.for.end27_crit_edge, label %land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge

land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.backedge

land.lhs.true22.i.i.for.end27_crit_edge:          ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

while.cond.i.i.backedge:                          ; preds = %land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge, %land.lhs.true.i.i55.while.cond.i.i.backedge_crit_edge
  %n.addr.0.i.i.be = phi ptr [ %57, %land.lhs.true.i.i55.while.cond.i.i.backedge_crit_edge ], [ %65, %land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge ]
  br label %while.cond.i.i

while.cond2.i:                                    ; preds = %land.rhs.i.while.cond2.i_crit_edge, %while.cond2.i.preheader
  %n.addr.1.i = phi ptr [ %70, %land.rhs.i.while.cond2.i_crit_edge ], [ %n.addr.0.i49, %while.cond2.i.preheader ]
  %68 = ptrtoint ptr %n.addr.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %n.addr.1.i, align 4
  %and.i = and i32 %69, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %while.cond2.i.for.end27_crit_edge, label %land.rhs.i

while.cond2.i.for.end27_crit_edge:                ; preds = %while.cond2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

land.rhs.i:                                       ; preds = %while.cond2.i
  %70 = inttoptr i32 %and.i to ptr
  %rb_right4.i = getelementptr inbounds %struct.rb_node, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %rb_right4.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rb_right4.i, align 4
  %cmp5.i = icmp eq ptr %n.addr.1.i, %72
  br i1 %cmp5.i, label %land.rhs.i.while.cond2.i_crit_edge, label %if.end9.critedge.i

land.rhs.i.while.cond2.i_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i

if.end9.critedge.i:                               ; preds = %land.rhs.i
  %73 = inttoptr i32 %and.i to ptr
  %add.ptr12.i57 = getelementptr i8, ptr %73, i32 -8
  %74 = ptrtoint ptr %add.ptr12.i57 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr12.i57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %51)
  %cmp13.not.i58 = icmp ugt i32 %75, %51
  br i1 %cmp13.not.i58, label %if.end9.critedge.i.for.end27_crit_edge, label %land.lhs.true14.i61

if.end9.critedge.i.for.end27_crit_edge:           ; preds = %if.end9.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

land.lhs.true14.i61:                              ; preds = %if.end9.critedge.i
  %upper.i59 = getelementptr i8, ptr %73, i32 -4
  %76 = ptrtoint ptr %upper.i59 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %upper.i59, align 4
  %cmp15.not.i60 = icmp ult i32 %77, %49
  br i1 %cmp15.not.i60, label %land.lhs.true14.i61.while.cond.i51_crit_edge, label %service_range_match_next.exit.loopexit115

land.lhs.true14.i61.while.cond.i51_crit_edge:     ; preds = %land.lhs.true14.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i51

service_range_match_next.exit.loopexit115:        ; preds = %land.lhs.true14.i61
  call void @__sanitizer_cov_trace_pc() #13
  %78 = inttoptr i32 %and.i to ptr
  br label %service_range_match_next.exit

service_range_match_next.exit:                    ; preds = %service_range_match_next.exit.loopexit115, %land.lhs.true14.i.i.service_range_match_next.exit_crit_edge
  %.sink = phi ptr [ %78, %service_range_match_next.exit.loopexit115 ], [ %n.addr.0.i.i, %land.lhs.true14.i.i.service_range_match_next.exit_crit_edge ]
  %add.ptr12.i57.le = getelementptr i8, ptr %.sink, i32 -8
  %tobool3.not = icmp eq ptr %add.ptr12.i57.le, null
  br i1 %tobool3.not, label %service_range_match_next.exit.for.end27_crit_edge, label %service_range_match_next.exit.for.body_crit_edge

service_range_match_next.exit.for.body_crit_edge: ; preds = %service_range_match_next.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

service_range_match_next.exit.for.end27_crit_edge: ; preds = %service_range_match_next.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

for.end27:                                        ; preds = %service_range_match_next.exit.for.end27_crit_edge, %if.end9.critedge.i.for.end27_crit_edge, %while.cond2.i.for.end27_crit_edge, %land.lhs.true22.i.i.for.end27_crit_edge, %if.end17.i.i.for.end27_crit_edge, %if.end9.i.i.for.end27_crit_edge, %while.cond.i51.for.end27_crit_edge, %service_range_match_first.exit.for.end27_crit_edge, %land.lhs.true22.i.for.end27_crit_edge, %if.end17.i.for.end27_crit_edge, %if.end9.i.for.end27_crit_edge, %lor.lhs.false.i.for.end27_crit_edge, %if.end.for.end27_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %exit

exit:                                             ; preds = %for.end27, %rcu_read_lock.exit.exit_crit_edge
  %call.i65 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i65, label %exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i68

exit.rcu_read_unlock.exit_crit_edge:              ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i68:                                ; preds = %exit
  %call1.i66 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool.not.i67 = icmp eq i32 %call1.i66, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i70

land.lhs.true.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i70:                               ; preds = %land.lhs.true.i68
  %.b4.i69 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69, label %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, label %if.then.i71

land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i71:                                      ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i71, %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, %exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !77
  %79 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i72 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i72 to ptr
  %preempt_count.i.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i.i.i73, align 4
  %sub.i.i.i = add i32 %82, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i73, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_nametbl_lookup_mcast_nodes(ptr noundef %net, ptr nocapture noundef readonly %ua, ptr noundef %nodes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call fastcc ptr @tipc_service_find(ptr noundef %net, ptr noundef %ua)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.exit_crit_edge, label %if.end

rcu_read_lock.exit.exit_crit_edge:                ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end:                                           ; preds = %rcu_read_lock.exit
  %lock = getelementptr inbounds %struct.tipc_service, ptr %call, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %ranges = getelementptr inbounds %struct.tipc_service, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ranges, align 4
  %lower = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lower, align 4
  %upper = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %upper, align 4
  %tobool.not.i30 = icmp eq ptr %5, null
  br i1 %tobool.not.i30, label %if.end.for.end16_crit_edge, label %lor.lhs.false.i

if.end.for.end16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

lor.lhs.false.i:                                  ; preds = %if.end
  %max.i = getelementptr i8, ptr %5, i32 12
  %10 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp.i = icmp ult i32 %11, %7
  br i1 %cmp.i, label %lor.lhs.false.i.for.end16_crit_edge, label %lor.lhs.false.i.while.cond.i_crit_edge

lor.lhs.false.i.while.cond.i_crit_edge:           ; preds = %lor.lhs.false.i
  br label %while.cond.i

lor.lhs.false.i.for.end16_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

while.cond.i:                                     ; preds = %while.cond.i.backedge, %lor.lhs.false.i.while.cond.i_crit_edge
  %n.addr.0.i = phi ptr [ %n.addr.0.i.be, %while.cond.i.backedge ], [ %5, %lor.lhs.false.i.while.cond.i_crit_edge ]
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rb_left.i, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %while.cond.i.if.end9.i_crit_edge, label %land.lhs.true.i31

while.cond.i.if.end9.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i31:                                ; preds = %while.cond.i
  %max6.i = getelementptr i8, ptr %13, i32 12
  %14 = ptrtoint ptr %max6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp7.not.i = icmp ult i32 %15, %7
  br i1 %cmp7.not.i, label %land.lhs.true.i31.if.end9.i_crit_edge, label %land.lhs.true.i31.while.cond.i.backedge_crit_edge

land.lhs.true.i31.while.cond.i.backedge_crit_edge: ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.backedge

land.lhs.true.i31.if.end9.i_crit_edge:            ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.end9.i:                                        ; preds = %land.lhs.true.i31.if.end9.i_crit_edge, %while.cond.i.if.end9.i_crit_edge
  %add.ptr12.i = getelementptr i8, ptr %n.addr.0.i, i32 -8
  %16 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp13.not.i = icmp ugt i32 %17, %9
  br i1 %cmp13.not.i, label %if.end9.i.for.end16_crit_edge, label %land.lhs.true14.i

if.end9.i.for.end16_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

land.lhs.true14.i:                                ; preds = %if.end9.i
  %upper.i = getelementptr i8, ptr %n.addr.0.i, i32 -4
  %18 = ptrtoint ptr %upper.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %upper.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %7)
  %cmp15.not.i = icmp ult i32 %19, %7
  br i1 %cmp15.not.i, label %if.end17.i, label %service_range_match_first.exit

if.end17.i:                                       ; preds = %land.lhs.true14.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rb_right.i, align 4
  %tobool21.not.i = icmp eq ptr %21, null
  br i1 %tobool21.not.i, label %if.end17.i.for.end16_crit_edge, label %land.lhs.true22.i

if.end17.i.for.end16_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

land.lhs.true22.i:                                ; preds = %if.end17.i
  %max26.i = getelementptr i8, ptr %21, i32 12
  %22 = ptrtoint ptr %max26.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max26.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %7)
  %cmp27.not.i = icmp ult i32 %23, %7
  br i1 %cmp27.not.i, label %land.lhs.true22.i.for.end16_crit_edge, label %land.lhs.true22.i.while.cond.i.backedge_crit_edge

land.lhs.true22.i.while.cond.i.backedge_crit_edge: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.backedge

land.lhs.true22.i.for.end16_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

while.cond.i.backedge:                            ; preds = %land.lhs.true22.i.while.cond.i.backedge_crit_edge, %land.lhs.true.i31.while.cond.i.backedge_crit_edge
  %n.addr.0.i.be = phi ptr [ %13, %land.lhs.true.i31.while.cond.i.backedge_crit_edge ], [ %21, %land.lhs.true22.i.while.cond.i.backedge_crit_edge ]
  br label %while.cond.i

service_range_match_first.exit:                   ; preds = %land.lhs.true14.i
  %add.ptr12.i.le = getelementptr i8, ptr %n.addr.0.i, i32 -8
  %tobool2.not79 = icmp eq ptr %add.ptr12.i.le, null
  br i1 %tobool2.not79, label %service_range_match_first.exit.for.end16_crit_edge, label %service_range_match_first.exit.for.body_crit_edge

service_range_match_first.exit.for.body_crit_edge: ; preds = %service_range_match_first.exit
  br label %for.body

service_range_match_first.exit.for.end16_crit_edge: ; preds = %service_range_match_first.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

for.body:                                         ; preds = %service_range_match_next.exit.for.body_crit_edge, %service_range_match_first.exit.for.body_crit_edge
  %sr.080 = phi ptr [ %add.ptr12.i38.le, %service_range_match_next.exit.for.body_crit_edge ], [ %add.ptr12.i.le, %service_range_match_first.exit.for.body_crit_edge ]
  %all_publ = getelementptr inbounds %struct.service_range, ptr %sr.080, i32 0, i32 5
  %24 = ptrtoint ptr %all_publ to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn66 = load ptr, ptr %all_publ, align 4
  %cmp.not67 = icmp eq ptr %.pn66, %all_publ
  br i1 %cmp.not67, label %for.body.for.inc12_crit_edge, label %for.body.for.body6_crit_edge

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body.for.inc12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc12

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %.pn68 = phi ptr [ %.pn, %for.body6.for.body6_crit_edge ], [ %.pn66, %for.body.for.body6_crit_edge ]
  %node = getelementptr i8, ptr %.pn68, i32 -40
  %25 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %node, align 4
  tail call void @tipc_nlist_add(ptr noundef %nodes, i32 noundef %26) #11
  %27 = ptrtoint ptr %.pn68 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn68, align 4
  %cmp.not = icmp eq ptr %.pn, %all_publ
  br i1 %cmp.not, label %for.body6.for.inc12_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body6

for.body6.for.inc12_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc12

for.inc12:                                        ; preds = %for.body6.for.inc12_crit_edge, %for.body.for.inc12_crit_edge
  %tree_node = getelementptr inbounds %struct.service_range, ptr %sr.080, i32 0, i32 2
  %28 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lower, align 4
  %30 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %upper, align 4
  br label %while.cond.i34

while.cond.i34:                                   ; preds = %land.lhs.true14.i42.while.cond.i34_crit_edge, %for.inc12
  %n.addr.0.i32 = phi ptr [ %tree_node, %for.inc12 ], [ %53, %land.lhs.true14.i42.while.cond.i34_crit_edge ]
  %tobool.not.i33 = icmp eq ptr %n.addr.0.i32, null
  br i1 %tobool.not.i33, label %while.cond.i34.for.end16_crit_edge, label %while.body.i

while.cond.i34.for.end16_crit_edge:               ; preds = %while.cond.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

while.body.i:                                     ; preds = %while.cond.i34
  %rb_right.i35 = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i32, i32 0, i32 1
  %32 = ptrtoint ptr %rb_right.i35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rb_right.i35, align 4
  %tobool1.not.i = icmp eq ptr %33, null
  br i1 %tobool1.not.i, label %while.body.i.while.cond2.i.preheader_crit_edge, label %land.lhs.true.i37

while.body.i.while.cond2.i.preheader_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i.preheader

while.cond2.i.preheader:                          ; preds = %land.lhs.true.i37.while.cond2.i.preheader_crit_edge, %while.body.i.while.cond2.i.preheader_crit_edge
  br label %while.cond2.i

land.lhs.true.i37:                                ; preds = %while.body.i
  %max.i36 = getelementptr i8, ptr %33, i32 12
  %34 = ptrtoint ptr %max.i36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max.i36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %29)
  %cmp.not.i = icmp ult i32 %35, %29
  br i1 %cmp.not.i, label %land.lhs.true.i37.while.cond2.i.preheader_crit_edge, label %land.lhs.true.i37.while.cond.i.i_crit_edge

land.lhs.true.i37.while.cond.i.i_crit_edge:       ; preds = %land.lhs.true.i37
  br label %while.cond.i.i

land.lhs.true.i37.while.cond2.i.preheader_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i.preheader

while.cond.i.i:                                   ; preds = %while.cond.i.i.backedge, %land.lhs.true.i37.while.cond.i.i_crit_edge
  %n.addr.0.i.i = phi ptr [ %n.addr.0.i.i.be, %while.cond.i.i.backedge ], [ %33, %land.lhs.true.i37.while.cond.i.i_crit_edge ]
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rb_left.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %37, null
  br i1 %tobool2.not.i.i, label %while.cond.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i

while.cond.i.i.if.end9.i.i_crit_edge:             ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

land.lhs.true.i.i:                                ; preds = %while.cond.i.i
  %max6.i.i = getelementptr i8, ptr %37, i32 12
  %38 = ptrtoint ptr %max6.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %29)
  %cmp7.not.i.i = icmp ult i32 %39, %29
  br i1 %cmp7.not.i.i, label %land.lhs.true.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge

land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.backedge

land.lhs.true.i.i.if.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %land.lhs.true.i.i.if.end9.i.i_crit_edge, %while.cond.i.i.if.end9.i.i_crit_edge
  %add.ptr12.i.i = getelementptr i8, ptr %n.addr.0.i.i, i32 -8
  %40 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %31)
  %cmp13.not.i.i = icmp ugt i32 %41, %31
  br i1 %cmp13.not.i.i, label %if.end9.i.i.for.end16_crit_edge, label %land.lhs.true14.i.i

if.end9.i.i.for.end16_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

land.lhs.true14.i.i:                              ; preds = %if.end9.i.i
  %upper.i.i = getelementptr i8, ptr %n.addr.0.i.i, i32 -4
  %42 = ptrtoint ptr %upper.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %upper.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %29)
  %cmp15.not.i.i = icmp ult i32 %43, %29
  br i1 %cmp15.not.i.i, label %if.end17.i.i, label %land.lhs.true14.i.i.service_range_match_next.exit_crit_edge

land.lhs.true14.i.i.service_range_match_next.exit_crit_edge: ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %service_range_match_next.exit

if.end17.i.i:                                     ; preds = %land.lhs.true14.i.i
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rb_right.i.i, align 4
  %tobool21.not.i.i = icmp eq ptr %45, null
  br i1 %tobool21.not.i.i, label %if.end17.i.i.for.end16_crit_edge, label %land.lhs.true22.i.i

if.end17.i.i.for.end16_crit_edge:                 ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

land.lhs.true22.i.i:                              ; preds = %if.end17.i.i
  %max26.i.i = getelementptr i8, ptr %45, i32 12
  %46 = ptrtoint ptr %max26.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max26.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %29)
  %cmp27.not.i.i = icmp ult i32 %47, %29
  br i1 %cmp27.not.i.i, label %land.lhs.true22.i.i.for.end16_crit_edge, label %land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge

land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.backedge

land.lhs.true22.i.i.for.end16_crit_edge:          ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

while.cond.i.i.backedge:                          ; preds = %land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge, %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge
  %n.addr.0.i.i.be = phi ptr [ %37, %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge ], [ %45, %land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge ]
  br label %while.cond.i.i

while.cond2.i:                                    ; preds = %land.rhs.i.while.cond2.i_crit_edge, %while.cond2.i.preheader
  %n.addr.1.i = phi ptr [ %50, %land.rhs.i.while.cond2.i_crit_edge ], [ %n.addr.0.i32, %while.cond2.i.preheader ]
  %48 = ptrtoint ptr %n.addr.1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n.addr.1.i, align 4
  %and.i = and i32 %49, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %while.cond2.i.for.end16_crit_edge, label %land.rhs.i

while.cond2.i.for.end16_crit_edge:                ; preds = %while.cond2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

land.rhs.i:                                       ; preds = %while.cond2.i
  %50 = inttoptr i32 %and.i to ptr
  %rb_right4.i = getelementptr inbounds %struct.rb_node, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %rb_right4.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rb_right4.i, align 4
  %cmp5.i = icmp eq ptr %n.addr.1.i, %52
  br i1 %cmp5.i, label %land.rhs.i.while.cond2.i_crit_edge, label %if.end9.critedge.i

land.rhs.i.while.cond2.i_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i

if.end9.critedge.i:                               ; preds = %land.rhs.i
  %53 = inttoptr i32 %and.i to ptr
  %add.ptr12.i38 = getelementptr i8, ptr %53, i32 -8
  %54 = ptrtoint ptr %add.ptr12.i38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr12.i38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %31)
  %cmp13.not.i39 = icmp ugt i32 %55, %31
  br i1 %cmp13.not.i39, label %if.end9.critedge.i.for.end16_crit_edge, label %land.lhs.true14.i42

if.end9.critedge.i.for.end16_crit_edge:           ; preds = %if.end9.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

land.lhs.true14.i42:                              ; preds = %if.end9.critedge.i
  %upper.i40 = getelementptr i8, ptr %53, i32 -4
  %56 = ptrtoint ptr %upper.i40 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %upper.i40, align 4
  %cmp15.not.i41 = icmp ult i32 %57, %29
  br i1 %cmp15.not.i41, label %land.lhs.true14.i42.while.cond.i34_crit_edge, label %service_range_match_next.exit.loopexit94

land.lhs.true14.i42.while.cond.i34_crit_edge:     ; preds = %land.lhs.true14.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i34

service_range_match_next.exit.loopexit94:         ; preds = %land.lhs.true14.i42
  call void @__sanitizer_cov_trace_pc() #13
  %58 = inttoptr i32 %and.i to ptr
  br label %service_range_match_next.exit

service_range_match_next.exit:                    ; preds = %service_range_match_next.exit.loopexit94, %land.lhs.true14.i.i.service_range_match_next.exit_crit_edge
  %.sink = phi ptr [ %58, %service_range_match_next.exit.loopexit94 ], [ %n.addr.0.i.i, %land.lhs.true14.i.i.service_range_match_next.exit_crit_edge ]
  %add.ptr12.i38.le = getelementptr i8, ptr %.sink, i32 -8
  %tobool2.not = icmp eq ptr %add.ptr12.i38.le, null
  br i1 %tobool2.not, label %service_range_match_next.exit.for.end16_crit_edge, label %service_range_match_next.exit.for.body_crit_edge

service_range_match_next.exit.for.body_crit_edge: ; preds = %service_range_match_next.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

service_range_match_next.exit.for.end16_crit_edge: ; preds = %service_range_match_next.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

for.end16:                                        ; preds = %service_range_match_next.exit.for.end16_crit_edge, %if.end9.critedge.i.for.end16_crit_edge, %while.cond2.i.for.end16_crit_edge, %land.lhs.true22.i.i.for.end16_crit_edge, %if.end17.i.i.for.end16_crit_edge, %if.end9.i.i.for.end16_crit_edge, %while.cond.i34.for.end16_crit_edge, %service_range_match_first.exit.for.end16_crit_edge, %land.lhs.true22.i.for.end16_crit_edge, %if.end17.i.for.end16_crit_edge, %if.end9.i.for.end16_crit_edge, %lor.lhs.false.i.for.end16_crit_edge, %if.end.for.end16_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %exit

exit:                                             ; preds = %for.end16, %rcu_read_lock.exit.exit_crit_edge
  %call.i46 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i46, label %exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i49

exit.rcu_read_unlock.exit_crit_edge:              ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i49:                                ; preds = %exit
  %call1.i47 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47)
  %tobool.not.i48 = icmp eq i32 %call1.i47, 0
  br i1 %tobool.not.i48, label %land.lhs.true.i49.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i51

land.lhs.true.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i51:                               ; preds = %land.lhs.true.i49
  %.b4.i50 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i50, label %land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge, label %if.then.i52

land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i52:                                      ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i52, %land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i49.rcu_read_unlock.exit_crit_edge, %exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !77
  %59 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i53 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i53 to ptr
  %preempt_count.i.i.i.i54 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i54, align 4
  %sub.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i54, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_nlist_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_nametbl_build_group(ptr noundef %net, ptr noundef %grp, ptr nocapture noundef readonly %ua) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call fastcc ptr @tipc_service_find(ptr noundef %net, ptr noundef %ua)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.exit_crit_edge, label %if.end

rcu_read_lock.exit.exit_crit_edge:                ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end:                                           ; preds = %rcu_read_lock.exit
  %lock = getelementptr inbounds %struct.tipc_service, ptr %call, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %ranges = getelementptr inbounds %struct.tipc_service, ptr %call, i32 0, i32 2
  %call1 = tail call ptr @rb_first(ptr noundef %ranges) #11
  %tobool2.not51 = icmp eq ptr %call1, null
  br i1 %tobool2.not51, label %if.end.for.end25_crit_edge, label %for.body.lr.ph

if.end.for.end25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end25

for.body.lr.ph:                                   ; preds = %if.end
  %scope10 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc23.for.body_crit_edge, %for.body.lr.ph
  %n.052 = phi ptr [ %call1, %for.body.lr.ph ], [ %call24, %for.inc23.for.body_crit_edge ]
  %all_publ = getelementptr i8, ptr %n.052, i32 24
  %4 = ptrtoint ptr %all_publ to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn48 = load ptr, ptr %all_publ, align 4
  %cmp.not49 = icmp eq ptr %.pn48, %all_publ
  br i1 %cmp.not49, label %for.body.for.inc23_crit_edge, label %for.body.for.body9_crit_edge

for.body.for.body9_crit_edge:                     ; preds = %for.body
  br label %for.body9

for.body.for.inc23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc23

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %for.body.for.body9_crit_edge
  %.pn50 = phi ptr [ %.pn, %for.inc.for.body9_crit_edge ], [ %.pn48, %for.body.for.body9_crit_edge ]
  %scope = getelementptr i8, ptr %.pn50, i32 -36
  %5 = ptrtoint ptr %scope to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %scope, align 4
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %scope10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %scope10, align 1
  %conv11 = sext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv11)
  %cmp12.not = icmp eq i32 %conv, %conv11
  br i1 %cmp12.not, label %if.end15, label %for.body9.for.inc_crit_edge

for.body9.for.inc_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end15:                                         ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #13
  %sk = getelementptr i8, ptr %.pn50, i32 -44
  %node = getelementptr i8, ptr %.pn50, i32 -40
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %node, align 4
  %11 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sk, align 4
  %lower = getelementptr i8, ptr %.pn50, i32 -52
  %13 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lower, align 4
  tail call void @tipc_group_add_member(ptr noundef %grp, i32 noundef %10, i32 noundef %12, i32 noundef %14) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body9.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn50, align 4
  %cmp.not = icmp eq ptr %.pn, %all_publ
  br i1 %cmp.not, label %for.inc.for.inc23_crit_edge, label %for.inc.for.body9_crit_edge

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body9

for.inc.for.inc23_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc23

for.inc23:                                        ; preds = %for.inc.for.inc23_crit_edge, %for.body.for.inc23_crit_edge
  %call24 = tail call ptr @rb_next(ptr noundef nonnull %n.052) #11
  %tobool2.not = icmp eq ptr %call24, null
  br i1 %tobool2.not, label %for.inc23.for.end25_crit_edge, label %for.inc23.for.body_crit_edge

for.inc23.for.body_crit_edge:                     ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc23.for.end25_crit_edge:                    ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end25

for.end25:                                        ; preds = %for.inc23.for.end25_crit_edge, %if.end.for.end25_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %exit

exit:                                             ; preds = %for.end25, %rcu_read_lock.exit.exit_crit_edge
  %call.i39 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i39, label %exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i42

exit.rcu_read_unlock.exit_crit_edge:              ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i42:                                ; preds = %exit
  %call1.i40 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40)
  %tobool.not.i41 = icmp eq i32 %call1.i40, 0
  br i1 %tobool.not.i41, label %land.lhs.true.i42.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i44

land.lhs.true.i42.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i44:                               ; preds = %land.lhs.true.i42
  %.b4.i43 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i43, label %land.lhs.true2.i44.rcu_read_unlock.exit_crit_edge, label %if.then.i45

land.lhs.true2.i44.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i45:                                      ; preds = %land.lhs.true2.i44
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i45, %land.lhs.true2.i44.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i42.rcu_read_unlock.exit_crit_edge, %exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !77
  %16 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i46 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i46 to ptr
  %preempt_count.i.i.i.i47 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i47, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i47, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_group_add_member(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tipc_nametbl_publish(ptr noundef %net, ptr nocapture noundef readonly %ua, ptr nocapture noundef readonly %sk, i32 noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #11
  %nametbl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 21
  %0 = ptrtoint ptr %nametbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nametbl.i, align 4
  %call1 = tail call fastcc ptr @tipc_net(ptr noundef %net)
  %nametbl_lock = getelementptr inbounds %struct.tipc_net, ptr %call1, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %nametbl_lock) #11
  %local_publ_count = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %local_publ_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %local_publ_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %3)
  %cmp = icmp ugt i32 %3, 65534
  br i1 %cmp, label %exit.thread, label %if.end

exit.thread:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 65535) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %nametbl_lock) #11
  br label %if.end12

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @tipc_nametbl_insert_publ(ptr noundef %net, ptr noundef %ua, ptr noundef %sk, i32 noundef %key)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.exit_crit_edge, label %if.then4

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %local_publ_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %local_publ_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %local_publ_count, align 4
  %call6 = tail call ptr @tipc_named_publish(ptr noundef %net, ptr noundef nonnull %call3) #11
  br label %exit

exit:                                             ; preds = %if.then4, %if.end.exit_crit_edge
  %skb.0 = phi ptr [ %call6, %if.then4 ], [ null, %if.end.exit_crit_edge ]
  %rc_dests8 = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %rc_dests8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rc_dests8, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %nametbl_lock) #11
  %tobool10.not = icmp eq ptr %skb.0, null
  br i1 %tobool10.not, label %exit.if.end12_crit_edge, label %if.then11

exit.if.end12_crit_edge:                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tipc_node_broadcast(ptr noundef %net, ptr noundef nonnull %skb.0, i32 noundef %7) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %exit.if.end12_crit_edge, %exit.thread
  %p.027 = phi ptr [ null, %exit.thread ], [ %call3, %if.then11 ], [ %call3, %exit.if.end12_crit_edge ]
  ret ptr %p.027
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_named_publish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_node_broadcast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_nametbl_withdraw(ptr noundef %net, ptr nocapture noundef readonly %ua, ptr nocapture noundef readonly %sk, i32 noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #11
  %nametbl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 21
  %0 = ptrtoint ptr %nametbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nametbl.i, align 4
  %call1 = tail call fastcc ptr @tipc_net(ptr noundef %net)
  %nametbl_lock = getelementptr inbounds %struct.tipc_net, ptr %call1, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %nametbl_lock) #11
  %call2 = tail call ptr @tipc_nametbl_remove_publ(ptr noundef %net, ptr noundef %ua, ptr noundef %sk, i32 noundef %key)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %entry
  %local_publ_count = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %local_publ_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %local_publ_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %local_publ_count, align 4
  %call3 = tail call ptr @tipc_named_withdraw(ptr noundef %net, ptr noundef nonnull %call2) #11
  %binding_sock = getelementptr inbounds %struct.publication, ptr %call2, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %binding_sock) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.publication, ptr %call2, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %binding_sock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %binding_sock, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %binding_sock to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %binding_sock, ptr %binding_sock, align 4
  %prev.i3.i = getelementptr inbounds %struct.publication, ptr %call2, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %binding_sock, ptr %prev.i3.i, align 4
  %rcu = getelementptr inbounds %struct.publication, ptr %call2, i32 0, i32 10
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 72 to ptr)) #11
  br label %if.end9

if.end9:                                          ; preds = %list_del_init.exit, %entry.if.end9_crit_edge
  %skb.0 = phi ptr [ %call3, %list_del_init.exit ], [ null, %entry.if.end9_crit_edge ]
  %rc_dests10 = getelementptr inbounds %struct.name_table, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %rc_dests10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rc_dests10, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %nametbl_lock) #11
  %tobool12.not = icmp eq ptr %skb.0, null
  br i1 %tobool12.not, label %if.end9.if.end14_crit_edge, label %if.then13

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tipc_node_broadcast(ptr noundef %net, ptr noundef nonnull %skb.0, i32 noundef %13) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end9.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_named_withdraw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_nametbl_subscribe(ptr noundef %sub) local_unnamed_addr #0 align 64 {
entry:
  %publ_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 3
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call = tail call fastcc ptr @tipc_net(ptr noundef %1)
  %2 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sub, align 4
  %lower = getelementptr inbounds %struct.tipc_service_range, ptr %sub, i32 0, i32 1
  %upper = getelementptr inbounds %struct.tipc_service_range, ptr %sub, i32 0, i32 2
  %nametbl_lock = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %nametbl_lock) #11
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %call.i.i = tail call fastcc ptr @tipc_net(ptr noundef %5) #11
  %nametbl.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 21
  %6 = ptrtoint ptr %nametbl.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nametbl.i.i, align 4
  %and.i.i = and i32 %3, 1023
  %arrayidx.i = getelementptr [1024 x %struct.hlist_head], ptr %7, i32 0, i32 %and.i.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b43.i = load i1, ptr @tipc_service_find.__warned, align 1
  br i1 %.b43.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tipc_service_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 469, ptr noundef nonnull @.str.10) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %9, null
  %add.ptr.i = getelementptr i8, ptr %9, i32 -12
  %tobool14.not4750.i = icmp eq ptr %add.ptr.i, null
  %tobool14.not47.i = or i1 %tobool12.not.i, %tobool14.not4750.i
  br i1 %tobool14.not47.i, label %do.end.i.if.then_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.then_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %service.048.i = phi ptr [ %add.ptr30.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %service.048.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %service.048.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp.i = icmp eq i32 %11, %3
  br i1 %cmp.i, label %for.body.i.if.then11_crit_edge, label %for.inc.i

for.body.i.if.then11_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

for.inc.i:                                        ; preds = %for.body.i
  %service_list.i = getelementptr inbounds %struct.tipc_service, ptr %service.048.i, i32 0, i32 3
  %12 = ptrtoint ptr %service_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %service_list.i, align 4
  %tobool26.not.i = icmp eq ptr %13, null
  %add.ptr30.i = getelementptr i8, ptr %13, i32 -12
  %tobool14.not51.i = icmp eq ptr %add.ptr30.i, null
  %tobool14.not.i = or i1 %tobool26.not.i, %tobool14.not51.i
  br i1 %tobool14.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %for.inc.i.if.then_crit_edge, %do.end.i.if.then_crit_edge
  %14 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net, align 4
  %call.i.i37 = tail call fastcc ptr @tipc_net(ptr noundef %15) #11
  %nametbl.i.i38 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i37, i32 0, i32 21
  %16 = ptrtoint ptr %nametbl.i.i38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nametbl.i.i38, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 2848, i32 noundef 80) #14
  %tobool.not.i39 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i39, label %do.end, label %do.body3.i

do.body3.i:                                       ; preds = %if.then
  %lock.i = getelementptr inbounds %struct.tipc_service, ptr %call7.i.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @tipc_service_create.__key, i16 noundef signext 3) #11
  %19 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %3, ptr %call7.i.i.i, align 8
  %ranges.i = getelementptr inbounds %struct.tipc_service, ptr %call7.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %ranges.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %ranges.i, align 8
  %service_list.i42 = getelementptr inbounds %struct.tipc_service, ptr %call7.i.i.i, i32 0, i32 3
  %pprev.i.i = getelementptr inbounds %struct.tipc_service, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %subscriptions.i = getelementptr inbounds %struct.tipc_service, ptr %call7.i.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %subscriptions.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %subscriptions.i, ptr %subscriptions.i, align 4
  %prev.i.i = getelementptr inbounds %struct.tipc_service, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %subscriptions.i, ptr %prev.i.i, align 8
  %arrayidx.i44 = getelementptr [1024 x %struct.hlist_head], ptr %17, i32 0, i32 %and.i.i
  %23 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i44, align 4
  %25 = ptrtoint ptr %service_list.i42 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %service_list.i42, align 4
  %26 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx.i44, ptr %pprev.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !72
  %27 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %service_list.i42, ptr %arrayidx.i44, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %do.body3.i.if.then11_crit_edge, label %do.body49.i.i

do.body3.i.if.then11_crit_edge:                   ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

do.body49.i.i:                                    ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %service_list.i42, ptr %pprev51.i.i, align 4
  br label %if.then11

if.then11:                                        ; preds = %do.body49.i.i, %do.body3.i.if.then11_crit_edge, %for.body.i.if.then11_crit_edge
  %sc.0.ph = phi ptr [ %call7.i.i.i, %do.body49.i.i ], [ %call7.i.i.i, %do.body3.i.if.then11_crit_edge ], [ %service.048.i, %for.body.i.if.then11_crit_edge ]
  %lock = getelementptr inbounds %struct.tipc_service, ptr %sc.0.ph, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %publ_list.i) #11
  %29 = getelementptr inbounds %struct.list_head, ptr %publ_list.i, i32 0, i32 1
  %filter1.i = getelementptr inbounds %struct.tipc_subscr, ptr %sub, i32 0, i32 2
  %30 = ptrtoint ptr %filter1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %filter1.i, align 4
  %32 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lower, align 4
  %34 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %upper, align 4
  tail call void @tipc_sub_get(ptr noundef %sub) #11
  %service_list.i45 = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 5
  %subscriptions.i46 = getelementptr inbounds %struct.tipc_service, ptr %sc.0.ph, i32 0, i32 4
  %36 = ptrtoint ptr %subscriptions.i46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %subscriptions.i46, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %service_list.i45, ptr noundef %subscriptions.i46, ptr noundef %37) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then11.list_add.exit.i_crit_edge

if.then11.list_add.exit.i_crit_edge:              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %service_list.i45, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %service_list.i45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %service_list.i45, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %subscriptions.i46, ptr %prev3.i.i.i, align 4
  %41 = ptrtoint ptr %subscriptions.i46 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %service_list.i45, ptr %subscriptions.i46, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.then11.list_add.exit.i_crit_edge
  %and.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i47 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i47, label %if.end.i, label %list_add.exit.i.tipc_service_subscribe.exit_crit_edge

list_add.exit.i.tipc_service_subscribe.exit_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_service_subscribe.exit

if.end.i:                                         ; preds = %list_add.exit.i
  %42 = ptrtoint ptr %publ_list.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %publ_list.i, ptr %publ_list.i, align 4
  %43 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %publ_list.i, ptr %29, align 4
  %ranges.i48 = getelementptr inbounds %struct.tipc_service, ptr %sc.0.ph, i32 0, i32 2
  %44 = ptrtoint ptr %ranges.i48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ranges.i48, align 4
  %tobool.not.i.i49 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i49, label %if.end.i.for.end34.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.for.end34.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %max.i.i = getelementptr i8, ptr %45, i32 12
  %46 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %33)
  %cmp.i.i = icmp ult i32 %47, %33
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.for.end34.i_crit_edge, label %lor.lhs.false.i.i.while.cond.i.i_crit_edge

lor.lhs.false.i.i.while.cond.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  br label %while.cond.i.i

lor.lhs.false.i.i.for.end34.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.backedge, %lor.lhs.false.i.i.while.cond.i.i_crit_edge
  %n.addr.0.i.i = phi ptr [ %n.addr.0.i.i.be, %while.cond.i.i.backedge ], [ %45, %lor.lhs.false.i.i.while.cond.i.i_crit_edge ]
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rb_left.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %49, null
  br i1 %tobool2.not.i.i, label %while.cond.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i

while.cond.i.i.if.end9.i.i_crit_edge:             ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

land.lhs.true.i.i:                                ; preds = %while.cond.i.i
  %max6.i.i = getelementptr i8, ptr %49, i32 12
  %50 = ptrtoint ptr %max6.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %33)
  %cmp7.not.i.i = icmp ult i32 %51, %33
  br i1 %cmp7.not.i.i, label %land.lhs.true.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge

land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.backedge

land.lhs.true.i.i.if.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %land.lhs.true.i.i.if.end9.i.i_crit_edge, %while.cond.i.i.if.end9.i.i_crit_edge
  %add.ptr12.i.i = getelementptr i8, ptr %n.addr.0.i.i, i32 -8
  %52 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %35)
  %cmp13.not.i.i = icmp ugt i32 %53, %35
  br i1 %cmp13.not.i.i, label %if.end9.i.i.for.end34.i_crit_edge, label %land.lhs.true14.i.i

if.end9.i.i.for.end34.i_crit_edge:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34.i

land.lhs.true14.i.i:                              ; preds = %if.end9.i.i
  %upper.i.i = getelementptr i8, ptr %n.addr.0.i.i, i32 -4
  %54 = ptrtoint ptr %upper.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %upper.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %33)
  %cmp15.not.i.i = icmp ult i32 %55, %33
  br i1 %cmp15.not.i.i, label %if.end17.i.i, label %service_range_match_first.exit.i

if.end17.i.i:                                     ; preds = %land.lhs.true14.i.i
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rb_right.i.i, align 4
  %tobool21.not.i.i = icmp eq ptr %57, null
  br i1 %tobool21.not.i.i, label %if.end17.i.i.for.end34.i_crit_edge, label %land.lhs.true22.i.i

if.end17.i.i.for.end34.i_crit_edge:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34.i

land.lhs.true22.i.i:                              ; preds = %if.end17.i.i
  %max26.i.i = getelementptr i8, ptr %57, i32 12
  %58 = ptrtoint ptr %max26.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max26.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %33)
  %cmp27.not.i.i = icmp ult i32 %59, %33
  br i1 %cmp27.not.i.i, label %land.lhs.true22.i.i.for.end34.i_crit_edge, label %land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge

land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.backedge

land.lhs.true22.i.i.for.end34.i_crit_edge:        ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34.i

while.cond.i.i.backedge:                          ; preds = %land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge, %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge
  %n.addr.0.i.i.be = phi ptr [ %49, %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge ], [ %57, %land.lhs.true22.i.i.while.cond.i.i.backedge_crit_edge ]
  br label %while.cond.i.i

service_range_match_first.exit.i:                 ; preds = %land.lhs.true14.i.i
  %add.ptr12.i.i.le = getelementptr i8, ptr %n.addr.0.i.i, i32 -8
  %tobool7.not142.i = icmp eq ptr %add.ptr12.i.i.le, null
  br i1 %tobool7.not142.i, label %service_range_match_first.exit.i.for.end34.i_crit_edge, label %for.body.lr.ph.i51

service_range_match_first.exit.i.for.end34.i_crit_edge: ; preds = %service_range_match_first.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34.i

for.body.lr.ph.i51:                               ; preds = %service_range_match_first.exit.i
  %and13.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i50 = icmp eq i32 %and13.i, 0
  br label %for.body.i52

for.body.i52:                                     ; preds = %service_range_match_next.exit.i.for.body.i52_crit_edge, %for.body.lr.ph.i51
  %sr.0143.i = phi ptr [ %add.ptr12.i.i.le, %for.body.lr.ph.i51 ], [ %add.ptr12.i105.le.i, %service_range_match_next.exit.i.for.body.i52_crit_edge ]
  %all_publ.i = getelementptr inbounds %struct.service_range, ptr %sr.0143.i, i32 0, i32 5
  %60 = ptrtoint ptr %all_publ.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn88126.i = load ptr, ptr %all_publ.i, align 4
  %cmp.not128.i = icmp eq ptr %.pn88126.i, %all_publ.i
  br i1 %cmp.not128.i, label %for.body.i52.for.inc32.i_crit_edge, label %for.body.i52.for.body12.i_crit_edge

for.body.i52.for.body12.i_crit_edge:              ; preds = %for.body.i52
  br label %for.body12.i

for.body.i52.for.inc32.i_crit_edge:               ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc32.i

for.body12.i:                                     ; preds = %for.inc.i53.for.body12.i_crit_edge, %for.body.i52.for.body12.i_crit_edge
  %.pn88130.i = phi ptr [ %.pn88.i, %for.inc.i53.for.body12.i_crit_edge ], [ %.pn88126.i, %for.body.i52.for.body12.i_crit_edge ]
  %first.0129.i = phi ptr [ %first.1.i, %for.inc.i53.for.body12.i_crit_edge ], [ null, %for.body.i52.for.body12.i_crit_edge ]
  %p.0131.i = getelementptr i8, ptr %.pn88130.i, i32 -56
  br i1 %tobool14.not.i50, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %for.body12.i
  %list.i = getelementptr i8, ptr %.pn88130.i, i32 8
  %61 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %29, align 4
  %call.i.i91.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %62, ptr noundef nonnull %publ_list.i) #11
  br i1 %call.i.i91.i, label %if.end.i.i93.i, label %if.then15.i.for.inc.i53_crit_edge

if.then15.i.for.inc.i53_crit_edge:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i53

if.end.i.i93.i:                                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %list.i, ptr %29, align 4
  %64 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %publ_list.i, ptr %list.i, align 4
  %prev3.i.i92.i = getelementptr i8, ptr %.pn88130.i, i32 12
  %65 = ptrtoint ptr %prev3.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i92.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %list.i, ptr %62, align 4
  br label %for.inc.i53

if.else.i:                                        ; preds = %for.body12.i
  %tobool16.not.i = icmp eq ptr %first.0129.i, null
  br i1 %tobool16.not.i, label %if.else.i.if.then20.i_crit_edge, label %lor.lhs.false.i

if.else.i.if.then20.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %id.i = getelementptr i8, ptr %.pn88130.i, i32 -28
  %67 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id.i, align 4
  %id17.i = getelementptr inbounds %struct.publication, ptr %first.0129.i, i32 0, i32 4
  %69 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %id17.i, align 4
  %sub18.i = sub i32 %68, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18.i)
  %cmp19.i = icmp slt i32 %sub18.i, 0
  br i1 %cmp19.i, label %lor.lhs.false.i.if.then20.i_crit_edge, label %lor.lhs.false.i.for.inc.i53_crit_edge

lor.lhs.false.i.for.inc.i53_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i53

lor.lhs.false.i.if.then20.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20.i

if.then20.i:                                      ; preds = %lor.lhs.false.i.if.then20.i_crit_edge, %if.else.i.if.then20.i_crit_edge
  br label %for.inc.i53

for.inc.i53:                                      ; preds = %if.then20.i, %lor.lhs.false.i.for.inc.i53_crit_edge, %if.end.i.i93.i, %if.then15.i.for.inc.i53_crit_edge
  %first.1.i = phi ptr [ %p.0131.i, %if.then20.i ], [ %first.0129.i, %lor.lhs.false.i.for.inc.i53_crit_edge ], [ %first.0129.i, %if.then15.i.for.inc.i53_crit_edge ], [ %first.0129.i, %if.end.i.i93.i ]
  %71 = ptrtoint ptr %.pn88130.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn88.i = load ptr, ptr %.pn88130.i, align 4
  %cmp.not.i = icmp eq ptr %.pn88.i, %all_publ.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i53.for.body12.i_crit_edge

for.inc.i53.for.body12.i_crit_edge:               ; preds = %for.inc.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12.i

for.end.i:                                        ; preds = %for.inc.i53
  %tobool28.not.i = icmp eq ptr %first.1.i, null
  br i1 %tobool28.not.i, label %for.end.i.for.inc32.i_crit_edge, label %if.then29.i

for.end.i.for.inc32.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc32.i

if.then29.i:                                      ; preds = %for.end.i
  %list30.i = getelementptr inbounds %struct.publication, ptr %first.1.i, i32 0, i32 9
  %72 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %29, align 4
  %call.i.i95.i = call zeroext i1 @__list_add_valid(ptr noundef %list30.i, ptr noundef %73, ptr noundef nonnull %publ_list.i) #11
  br i1 %call.i.i95.i, label %if.end.i.i97.i, label %if.then29.i.for.inc32.i_crit_edge

if.then29.i.for.inc32.i_crit_edge:                ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc32.i

if.end.i.i97.i:                                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %list30.i, ptr %29, align 4
  %75 = ptrtoint ptr %list30.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %publ_list.i, ptr %list30.i, align 4
  %prev3.i.i96.i = getelementptr inbounds %struct.publication, ptr %first.1.i, i32 0, i32 9, i32 1
  %76 = ptrtoint ptr %prev3.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev3.i.i96.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %list30.i, ptr %73, align 4
  br label %for.inc32.i

for.inc32.i:                                      ; preds = %if.end.i.i97.i, %if.then29.i.for.inc32.i_crit_edge, %for.end.i.for.inc32.i_crit_edge, %for.body.i52.for.inc32.i_crit_edge
  %tree_node.i = getelementptr inbounds %struct.service_range, ptr %sr.0143.i, i32 0, i32 2
  br label %while.cond.i101.i

while.cond.i101.i:                                ; preds = %land.lhs.true14.i109.i.while.cond.i101.i_crit_edge, %for.inc32.i
  %n.addr.0.i99.i = phi ptr [ %tree_node.i, %for.inc32.i ], [ %99, %land.lhs.true14.i109.i.while.cond.i101.i_crit_edge ]
  %tobool.not.i100.i = icmp eq ptr %n.addr.0.i99.i, null
  br i1 %tobool.not.i100.i, label %while.cond.i101.i.for.end34.i_crit_edge, label %while.body.i.i

while.cond.i101.i.for.end34.i_crit_edge:          ; preds = %while.cond.i101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34.i

while.body.i.i:                                   ; preds = %while.cond.i101.i
  %rb_right.i102.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i99.i, i32 0, i32 1
  %78 = ptrtoint ptr %rb_right.i102.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rb_right.i102.i, align 4
  %tobool1.not.i.i = icmp eq ptr %79, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.while.cond2.i.i.preheader_crit_edge, label %land.lhs.true.i104.i

while.body.i.i.while.cond2.i.i.preheader_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i.i.preheader

while.cond2.i.i.preheader:                        ; preds = %land.lhs.true.i104.i.while.cond2.i.i.preheader_crit_edge, %while.body.i.i.while.cond2.i.i.preheader_crit_edge
  br label %while.cond2.i.i

land.lhs.true.i104.i:                             ; preds = %while.body.i.i
  %max.i103.i = getelementptr i8, ptr %79, i32 12
  %80 = ptrtoint ptr %max.i103.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max.i103.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %33)
  %cmp.not.i.i = icmp ult i32 %81, %33
  br i1 %cmp.not.i.i, label %land.lhs.true.i104.i.while.cond2.i.i.preheader_crit_edge, label %land.lhs.true.i104.i.while.cond.i.i.i_crit_edge

land.lhs.true.i104.i.while.cond.i.i.i_crit_edge:  ; preds = %land.lhs.true.i104.i
  br label %while.cond.i.i.i

land.lhs.true.i104.i.while.cond2.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i104.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i.i.preheader

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i.backedge, %land.lhs.true.i104.i.while.cond.i.i.i_crit_edge
  %n.addr.0.i.i.i = phi ptr [ %n.addr.0.i.i.i.be, %while.cond.i.i.i.backedge ], [ %79, %land.lhs.true.i104.i.while.cond.i.i.i_crit_edge ]
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rb_left.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %83, null
  br i1 %tobool2.not.i.i.i, label %while.cond.i.i.i.if.end9.i.i.i_crit_edge, label %land.lhs.true.i.i.i

while.cond.i.i.i.if.end9.i.i.i_crit_edge:         ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i.i

land.lhs.true.i.i.i:                              ; preds = %while.cond.i.i.i
  %max6.i.i.i = getelementptr i8, ptr %83, i32 12
  %84 = ptrtoint ptr %max6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max6.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %33)
  %cmp7.not.i.i.i = icmp ult i32 %85, %33
  br i1 %cmp7.not.i.i.i, label %land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge, label %land.lhs.true.i.i.i.while.cond.i.i.i.backedge_crit_edge

land.lhs.true.i.i.i.while.cond.i.i.i.backedge_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.i.backedge

land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i.i

if.end9.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge, %while.cond.i.i.i.if.end9.i.i.i_crit_edge
  %add.ptr12.i.i.i = getelementptr i8, ptr %n.addr.0.i.i.i, i32 -8
  %86 = ptrtoint ptr %add.ptr12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr12.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %35)
  %cmp13.not.i.i.i = icmp ugt i32 %87, %35
  br i1 %cmp13.not.i.i.i, label %if.end9.i.i.i.for.end34.i_crit_edge, label %land.lhs.true14.i.i.i

if.end9.i.i.i.for.end34.i_crit_edge:              ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34.i

land.lhs.true14.i.i.i:                            ; preds = %if.end9.i.i.i
  %upper.i.i.i = getelementptr i8, ptr %n.addr.0.i.i.i, i32 -4
  %88 = ptrtoint ptr %upper.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %upper.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %33)
  %cmp15.not.i.i.i = icmp ult i32 %89, %33
  br i1 %cmp15.not.i.i.i, label %if.end17.i.i.i, label %land.lhs.true14.i.i.i.service_range_match_next.exit.i_crit_edge

land.lhs.true14.i.i.i.service_range_match_next.exit.i_crit_edge: ; preds = %land.lhs.true14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %service_range_match_next.exit.i

if.end17.i.i.i:                                   ; preds = %land.lhs.true14.i.i.i
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.0.i.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rb_right.i.i.i, align 4
  %tobool21.not.i.i.i = icmp eq ptr %91, null
  br i1 %tobool21.not.i.i.i, label %if.end17.i.i.i.for.end34.i_crit_edge, label %land.lhs.true22.i.i.i

if.end17.i.i.i.for.end34.i_crit_edge:             ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34.i

land.lhs.true22.i.i.i:                            ; preds = %if.end17.i.i.i
  %max26.i.i.i = getelementptr i8, ptr %91, i32 12
  %92 = ptrtoint ptr %max26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max26.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %33)
  %cmp27.not.i.i.i = icmp ult i32 %93, %33
  br i1 %cmp27.not.i.i.i, label %land.lhs.true22.i.i.i.for.end34.i_crit_edge, label %land.lhs.true22.i.i.i.while.cond.i.i.i.backedge_crit_edge

land.lhs.true22.i.i.i.while.cond.i.i.i.backedge_crit_edge: ; preds = %land.lhs.true22.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.i.backedge

land.lhs.true22.i.i.i.for.end34.i_crit_edge:      ; preds = %land.lhs.true22.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34.i

while.cond.i.i.i.backedge:                        ; preds = %land.lhs.true22.i.i.i.while.cond.i.i.i.backedge_crit_edge, %land.lhs.true.i.i.i.while.cond.i.i.i.backedge_crit_edge
  %n.addr.0.i.i.i.be = phi ptr [ %83, %land.lhs.true.i.i.i.while.cond.i.i.i.backedge_crit_edge ], [ %91, %land.lhs.true22.i.i.i.while.cond.i.i.i.backedge_crit_edge ]
  br label %while.cond.i.i.i

while.cond2.i.i:                                  ; preds = %land.rhs.i.i.while.cond2.i.i_crit_edge, %while.cond2.i.i.preheader
  %n.addr.1.i.i = phi ptr [ %96, %land.rhs.i.i.while.cond2.i.i_crit_edge ], [ %n.addr.0.i99.i, %while.cond2.i.i.preheader ]
  %94 = ptrtoint ptr %n.addr.1.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %n.addr.1.i.i, align 4
  %and.i.i54 = and i32 %95, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i54)
  %tobool3.not.i.i = icmp eq i32 %and.i.i54, 0
  br i1 %tobool3.not.i.i, label %while.cond2.i.i.for.end34.i_crit_edge, label %land.rhs.i.i

while.cond2.i.i.for.end34.i_crit_edge:            ; preds = %while.cond2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34.i

land.rhs.i.i:                                     ; preds = %while.cond2.i.i
  %96 = inttoptr i32 %and.i.i54 to ptr
  %rb_right4.i.i = getelementptr inbounds %struct.rb_node, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %rb_right4.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rb_right4.i.i, align 4
  %cmp5.i.i = icmp eq ptr %n.addr.1.i.i, %98
  br i1 %cmp5.i.i, label %land.rhs.i.i.while.cond2.i.i_crit_edge, label %if.end9.critedge.i.i

land.rhs.i.i.while.cond2.i.i_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i.i

if.end9.critedge.i.i:                             ; preds = %land.rhs.i.i
  %99 = inttoptr i32 %and.i.i54 to ptr
  %add.ptr12.i105.i = getelementptr i8, ptr %99, i32 -8
  %100 = ptrtoint ptr %add.ptr12.i105.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr12.i105.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %35)
  %cmp13.not.i106.i = icmp ugt i32 %101, %35
  br i1 %cmp13.not.i106.i, label %if.end9.critedge.i.i.for.end34.i_crit_edge, label %land.lhs.true14.i109.i

if.end9.critedge.i.i.for.end34.i_crit_edge:       ; preds = %if.end9.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34.i

land.lhs.true14.i109.i:                           ; preds = %if.end9.critedge.i.i
  %upper.i107.i = getelementptr i8, ptr %99, i32 -4
  %102 = ptrtoint ptr %upper.i107.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %upper.i107.i, align 4
  %cmp15.not.i108.i = icmp ult i32 %103, %33
  br i1 %cmp15.not.i108.i, label %land.lhs.true14.i109.i.while.cond.i101.i_crit_edge, label %service_range_match_next.exit.i.loopexit87

land.lhs.true14.i109.i.while.cond.i101.i_crit_edge: ; preds = %land.lhs.true14.i109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i101.i

service_range_match_next.exit.i.loopexit87:       ; preds = %land.lhs.true14.i109.i
  call void @__sanitizer_cov_trace_pc() #13
  %104 = inttoptr i32 %and.i.i54 to ptr
  br label %service_range_match_next.exit.i

service_range_match_next.exit.i:                  ; preds = %service_range_match_next.exit.i.loopexit87, %land.lhs.true14.i.i.i.service_range_match_next.exit.i_crit_edge
  %.sink.i = phi ptr [ %104, %service_range_match_next.exit.i.loopexit87 ], [ %n.addr.0.i.i.i, %land.lhs.true14.i.i.i.service_range_match_next.exit.i_crit_edge ]
  %add.ptr12.i105.le.i = getelementptr i8, ptr %.sink.i, i32 -8
  %tobool7.not.i = icmp eq ptr %add.ptr12.i105.le.i, null
  br i1 %tobool7.not.i, label %service_range_match_next.exit.i.for.end34.i_crit_edge, label %service_range_match_next.exit.i.for.body.i52_crit_edge

service_range_match_next.exit.i.for.body.i52_crit_edge: ; preds = %service_range_match_next.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i52

service_range_match_next.exit.i.for.end34.i_crit_edge: ; preds = %service_range_match_next.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34.i

for.end34.i:                                      ; preds = %service_range_match_next.exit.i.for.end34.i_crit_edge, %if.end9.critedge.i.i.for.end34.i_crit_edge, %while.cond2.i.i.for.end34.i_crit_edge, %land.lhs.true22.i.i.i.for.end34.i_crit_edge, %if.end17.i.i.i.for.end34.i_crit_edge, %if.end9.i.i.i.for.end34.i_crit_edge, %while.cond.i101.i.for.end34.i_crit_edge, %service_range_match_first.exit.i.for.end34.i_crit_edge, %land.lhs.true22.i.i.for.end34.i_crit_edge, %if.end17.i.i.for.end34.i_crit_edge, %if.end9.i.i.for.end34.i_crit_edge, %lor.lhs.false.i.i.for.end34.i_crit_edge, %if.end.i.for.end34.i_crit_edge
  call void @list_sort(ptr noundef null, ptr noundef nonnull %publ_list.i, ptr noundef nonnull @tipc_publ_sort) #11
  %105 = ptrtoint ptr %publ_list.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %publ_list.i, align 4
  %cmp46.not144.i = icmp eq ptr %106, %publ_list.i
  br i1 %cmp46.not144.i, label %for.end34.i.tipc_service_subscribe.exit_crit_edge, label %for.end34.i.for.body48.i_crit_edge

for.end34.i.for.body48.i_crit_edge:               ; preds = %for.end34.i
  br label %for.body48.i

for.end34.i.tipc_service_subscribe.exit_crit_edge: ; preds = %for.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_service_subscribe.exit

for.body48.i:                                     ; preds = %list_del_init.exit.i.for.body48.i_crit_edge, %for.end34.i.for.body48.i_crit_edge
  %.pn.in145.i = phi ptr [ %.pn.i, %list_del_init.exit.i.for.body48.i_crit_edge ], [ %106, %for.end34.i.for.body48.i_crit_edge ]
  %p.1.i = getelementptr i8, ptr %.pn.in145.i, i32 -64
  %107 = ptrtoint ptr %.pn.in145.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pn.i = load ptr, ptr %.pn.in145.i, align 4
  call void @tipc_sub_report_overlap(ptr noundef %sub, ptr noundef %p.1.i, i32 noundef 1, i1 noundef zeroext true) #11
  %call.i.i113.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in145.i) #11
  br i1 %call.i.i113.i, label %if.end.i.i114.i, label %for.body48.i.list_del_init.exit.i_crit_edge

for.body48.i.list_del_init.exit.i_crit_edge:      ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i114.i:                                  ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in145.i, i32 0, i32 1
  %108 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i.i.i, align 4
  %110 = ptrtoint ptr %.pn.in145.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %.pn.in145.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev1.i.i.i.i, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %111, ptr %109, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i114.i, %for.body48.i.list_del_init.exit.i_crit_edge
  %114 = ptrtoint ptr %.pn.in145.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %.pn.in145.i, ptr %.pn.in145.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in145.i, i32 0, i32 1
  %115 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %.pn.in145.i, ptr %prev.i3.i.i, align 4
  %cmp46.not.i = icmp eq ptr %.pn.i, %publ_list.i
  br i1 %cmp46.not.i, label %list_del_init.exit.i.tipc_service_subscribe.exit_crit_edge, label %list_del_init.exit.i.for.body48.i_crit_edge

list_del_init.exit.i.for.body48.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body48.i

list_del_init.exit.i.tipc_service_subscribe.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_service_subscribe.exit

tipc_service_subscribe.exit:                      ; preds = %list_del_init.exit.i.tipc_service_subscribe.exit_crit_edge, %for.end34.i.tipc_service_subscribe.exit_crit_edge, %list_add.exit.i.tipc_service_subscribe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %publ_list.i) #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %if.end20

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #15
  %116 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %lower, align 4
  %118 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %upper, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %3, i32 noundef %117, i32 noundef %119) #15
  br label %if.end20

if.end20:                                         ; preds = %do.end, %tipc_service_subscribe.exit
  %tobool10.not62 = phi i1 [ false, %do.end ], [ true, %tipc_service_subscribe.exit ]
  call void @_raw_spin_unlock_bh(ptr noundef %nametbl_lock) #11
  ret i1 %tobool10.not62
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_nametbl_unsubscribe(ptr noundef %sub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 3
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call = tail call fastcc ptr @tipc_net(ptr noundef %1)
  %2 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sub, align 4
  %nametbl_lock = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %nametbl_lock) #11
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %call.i.i = tail call fastcc ptr @tipc_net(ptr noundef %5) #11
  %nametbl.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 21
  %6 = ptrtoint ptr %nametbl.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nametbl.i.i, align 4
  %and.i.i = and i32 %3, 1023
  %arrayidx.i = getelementptr [1024 x %struct.hlist_head], ptr %7, i32 0, i32 %and.i.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b43.i = load i1, ptr @tipc_service_find.__warned, align 1
  br i1 %.b43.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tipc_service_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 469, ptr noundef nonnull @.str.10) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %9, null
  %add.ptr.i = getelementptr i8, ptr %9, i32 -12
  %tobool14.not4750.i = icmp eq ptr %add.ptr.i, null
  %tobool14.not47.i = or i1 %tobool12.not.i, %tobool14.not4750.i
  br i1 %tobool14.not47.i, label %do.end.i.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.exit_crit_edge:                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %service.048.i = phi ptr [ %add.ptr30.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %service.048.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %service.048.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp.i = icmp eq i32 %11, %3
  br i1 %cmp.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %service_list.i = getelementptr inbounds %struct.tipc_service, ptr %service.048.i, i32 0, i32 3
  %12 = ptrtoint ptr %service_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %service_list.i, align 4
  %tobool26.not.i = icmp eq ptr %13, null
  %add.ptr30.i = getelementptr i8, ptr %13, i32 -12
  %tobool14.not51.i = icmp eq ptr %add.ptr30.i, null
  %tobool14.not.i = or i1 %tobool26.not.i, %tobool14.not51.i
  br i1 %tobool14.not.i, label %for.inc.i.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.exit_crit_edge:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end:                                           ; preds = %for.body.i
  %lock = getelementptr inbounds %struct.tipc_service, ptr %service.048.i, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %service_list = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 5
  %call.i.i37 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %service_list) #11
  br i1 %call.i.i37, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %service_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %service_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %service_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %service_list, ptr %service_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %service_list, ptr %prev.i3.i, align 4
  tail call void @tipc_sub_put(ptr noundef %sub) #11
  %ranges = getelementptr inbounds %struct.tipc_service, ptr %service.048.i, i32 0, i32 2
  %22 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %ranges, align 4
  %cmp = icmp eq ptr %23, null
  br i1 %cmp, label %land.lhs.true, label %list_del_init.exit.if.end20_crit_edge

list_del_init.exit.if.end20_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true:                                    ; preds = %list_del_init.exit
  %subscriptions = getelementptr inbounds %struct.tipc_service, ptr %service.048.i, i32 0, i32 4
  %24 = ptrtoint ptr %subscriptions to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %subscriptions, align 4
  %cmp.i38.not = icmp eq ptr %25, %subscriptions
  br i1 %cmp.i38.not, label %if.then9, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then9:                                         ; preds = %land.lhs.true
  %pprev.i.i = getelementptr inbounds %struct.tipc_service, ptr %service.048.i, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.not.i, label %if.then9.hlist_del_init_rcu.exit_crit_edge, label %if.then.i39

if.then9.hlist_del_init_rcu.exit_crit_edge:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_init_rcu.exit

if.then.i39:                                      ; preds = %if.then9
  %service_list10 = getelementptr inbounds %struct.tipc_service, ptr %service.048.i, i32 0, i32 3
  %28 = ptrtoint ptr %service_list10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %service_list10, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %27, align 4
  %tobool.not.i7.i = icmp eq ptr %29, null
  br i1 %tobool.not.i7.i, label %if.then.i39.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i39.__hlist_del.exit.i_crit_edge:         ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %27, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i39.__hlist_del.exit.i_crit_edge
  %32 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %if.then9.hlist_del_init_rcu.exit_crit_edge
  %rcu = getelementptr inbounds %struct.tipc_service, ptr %service.048.i, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 72 to ptr)) #11
  br label %if.end20

if.end20:                                         ; preds = %hlist_del_init_rcu.exit, %land.lhs.true.if.end20_crit_edge, %list_del_init.exit.if.end20_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %exit

exit:                                             ; preds = %if.end20, %for.inc.i.exit_crit_edge, %do.end.i.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %nametbl_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_sub_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nametbl_init(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_net(ptr noundef %net)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4168) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = call ptr @memset(ptr %call7.i.i, i32 0, i32 4096)
  %node_scope = getelementptr inbounds %struct.name_table, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %node_scope to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %node_scope, ptr %node_scope, align 8
  %prev.i = getelementptr inbounds %struct.name_table, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %node_scope, ptr %prev.i, align 4
  %cluster_scope = getelementptr inbounds %struct.name_table, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %cluster_scope to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %cluster_scope, ptr %cluster_scope, align 8
  %prev.i16 = getelementptr inbounds %struct.name_table, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cluster_scope, ptr %prev.i16, align 4
  %cluster_scope_lock = getelementptr inbounds %struct.name_table, ptr %call7.i.i, i32 0, i32 3
  tail call void @__rwlock_init(ptr noundef %cluster_scope_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @tipc_nametbl_init.__key) #11
  %nametbl = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 21
  %6 = ptrtoint ptr %nametbl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %nametbl, align 4
  %nametbl_lock = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %nametbl_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @tipc_nametbl_init.__key.8, i16 noundef signext 3) #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.preheader ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_nametbl_stop(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #11
  %nametbl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 21
  %0 = ptrtoint ptr %nametbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nametbl.i, align 4
  %call1 = tail call fastcc ptr @tipc_net(ptr noundef %net)
  %nametbl_lock = getelementptr inbounds %struct.tipc_net, ptr %call1, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %nametbl_lock) #11
  br label %for.body

for.body:                                         ; preds = %for.inc38.for.body_crit_edge, %entry
  %i.065 = phi i32 [ 0, %entry ], [ %inc, %for.inc38.for.body_crit_edge ]
  %arrayidx = getelementptr [1024 x %struct.hlist_head], ptr %1, i32 0, i32 %i.065
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.not, label %for.body.for.inc38_crit_edge, label %if.end

for.body.for.inc38_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc38

if.end:                                           ; preds = %for.body
  %call5 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true9

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b54 = load i1, ptr @tipc_nametbl_stop.__warned, align 1
  br i1 %.b54, label %land.lhs.true9.do.end_crit_edge, label %if.then11

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tipc_nametbl_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 946, ptr noundef nonnull @.str.10) #11
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true9.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %tobool18.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -12
  %tobool21.not6369 = icmp eq ptr %add.ptr, null
  %tobool21.not63 = or i1 %tobool18.not, %tobool21.not6369
  br i1 %tobool21.not63, label %do.end.for.inc38_crit_edge, label %do.end.for.body22_crit_edge

do.end.for.body22_crit_edge:                      ; preds = %do.end
  br label %for.body22

do.end.for.inc38_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc38

for.body22:                                       ; preds = %tipc_service_delete.exit.for.body22_crit_edge, %do.end.for.body22_crit_edge
  %service.064 = phi ptr [ %add.ptr34, %tipc_service_delete.exit.for.body22_crit_edge ], [ %add.ptr, %do.end.for.body22_crit_edge ]
  %lock.i = getelementptr inbounds %struct.tipc_service, ptr %service.064, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %ranges.i = getelementptr inbounds %struct.tipc_service, ptr %service.064, i32 0, i32 2
  %call.i56 = tail call ptr @rb_first_postorder(ptr noundef %ranges.i) #11
  %tobool.not.i57 = icmp eq ptr %call.i56, null
  %add.ptr.i = getelementptr i8, ptr %call.i56, i32 -8
  %tobool3.not1320.i = icmp eq ptr %add.ptr.i, null
  %tobool3.not13.i = or i1 %tobool.not.i57, %tobool3.not1320.i
  br i1 %tobool3.not13.i, label %for.body22.for.end42.i_crit_edge, label %for.body22.land.rhs.i_crit_edge

for.body22.land.rhs.i_crit_edge:                  ; preds = %for.body22
  br label %land.rhs.i

for.body22.for.end42.i_crit_edge:                 ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end42.i

land.rhs.i:                                       ; preds = %rb_erase_augmented.exit.i.land.rhs.i_crit_edge, %for.body22.land.rhs.i_crit_edge
  %sr.014.i = phi ptr [ %add.ptr11.i, %rb_erase_augmented.exit.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %for.body22.land.rhs.i_crit_edge ]
  %tree_node.i = getelementptr inbounds %struct.service_range, ptr %sr.014.i, i32 0, i32 2
  %call5.i = tail call ptr @rb_next_postorder(ptr noundef %tree_node.i) #11
  %tobool7.not.i = icmp eq ptr %call5.i, null
  %add.ptr11.i = getelementptr i8, ptr %call5.i, i32 -8
  %all_publ.i = getelementptr inbounds %struct.service_range, ptr %sr.014.i, i32 0, i32 5
  %6 = ptrtoint ptr %all_publ.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %all_publ.i, align 4
  %cmp.not10.i = icmp eq ptr %7, %all_publ.i
  br i1 %cmp.not10.i, label %land.rhs.i.for.end.i_crit_edge, label %land.rhs.i.for.body28.i_crit_edge

land.rhs.i.for.body28.i_crit_edge:                ; preds = %land.rhs.i
  br label %for.body28.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body28.i:                                     ; preds = %if.end.i.for.body28.i_crit_edge, %land.rhs.i.for.body28.i_crit_edge
  %.pn.in11.i = phi ptr [ %.pn12.i, %if.end.i.for.body28.i_crit_edge ], [ %7, %land.rhs.i.for.body28.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn12.i = load ptr, ptr %.pn.in11.i, align 4
  %p.0.i = getelementptr i8, ptr %.pn.in11.i, i32 -56
  %key.i = getelementptr i8, ptr %.pn.in11.i, i32 -32
  %9 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key.i, align 4
  %node1.i.i = getelementptr i8, ptr %.pn.in11.i, i32 -40
  %11 = ptrtoint ptr %node1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %node1.i.i, align 4
  %13 = ptrtoint ptr %all_publ.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn33.i.i = load ptr, ptr %all_publ.i, align 4
  %cmp.not34.i.i = icmp eq ptr %.pn33.i.i, %all_publ.i
  br i1 %cmp.not34.i.i, label %for.body28.i.tipc_service_remove_publ.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.body28.i.tipc_service_remove_publ.exit.i_crit_edge: ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_service_remove_publ.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i3.i = icmp eq i32 %12, 0
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn35.i.i = phi ptr [ %.pn33.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %key4.i.i = getelementptr i8, ptr %.pn35.i.i, i32 -32
  %14 = ptrtoint ptr %key4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %10)
  %cmp5.not.i.i = icmp eq i32 %15, %10
  br i1 %cmp5.not.i.i, label %lor.lhs.false.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  br i1 %tobool.not.i3.i, label %lor.lhs.false.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %node7.i.i = getelementptr i8, ptr %.pn35.i.i, i32 -40
  %16 = ptrtoint ptr %node7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %17)
  %cmp8.not.i.i = icmp eq i32 %12, %17
  br i1 %cmp8.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %lor.lhs.false.i.i.if.end.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn35.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del.exit.i.i_crit_edge

if.end.i.i.list_del.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn35.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i.i, align 4
  %20 = ptrtoint ptr %.pn35.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn35.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del.exit.i.i_crit_edge
  %24 = ptrtoint ptr %.pn35.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn35.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn35.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %local_publ.i.i = getelementptr i8, ptr %.pn35.i.i, i32 -8
  %call.i.i24.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %local_publ.i.i) #11
  br i1 %call.i.i24.i.i, label %if.end.i.i27.i.i, label %list_del.exit.i.i.list_del.exit29.i.i_crit_edge

list_del.exit.i.i.list_del.exit29.i.i_crit_edge:  ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit29.i.i

if.end.i.i27.i.i:                                 ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i25.i.i = getelementptr i8, ptr %.pn35.i.i, i32 -4
  %26 = ptrtoint ptr %prev.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i25.i.i, align 4
  %28 = ptrtoint ptr %local_publ.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %local_publ.i.i, align 4
  %prev1.i.i.i26.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i26.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i26.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit29.i.i

list_del.exit29.i.i:                              ; preds = %if.end.i.i27.i.i, %list_del.exit.i.i.list_del.exit29.i.i_crit_edge
  %32 = ptrtoint ptr %local_publ.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %local_publ.i.i, align 4
  %prev.i28.i.i = getelementptr i8, ptr %.pn35.i.i, i32 -4
  %33 = ptrtoint ptr %prev.i28.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i28.i.i, align 4
  br label %tipc_service_remove_publ.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %34 = ptrtoint ptr %.pn35.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn.i.i = load ptr, ptr %.pn35.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %all_publ.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.tipc_service_remove_publ.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.tipc_service_remove_publ.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_service_remove_publ.exit.i

tipc_service_remove_publ.exit.i:                  ; preds = %for.inc.i.i.tipc_service_remove_publ.exit.i_crit_edge, %list_del.exit29.i.i, %for.body28.i.tipc_service_remove_publ.exit.i_crit_edge
  %tobool30.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool30.not.i, label %tipc_service_remove_publ.exit.i.if.end.i_crit_edge, label %do.end.i

tipc_service_remove_publ.exit.i.if.end.i_crit_edge: ; preds = %tipc_service_remove_publ.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %tipc_service_remove_publ.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %rcu.i = getelementptr i8, ptr %.pn.in11.i, i32 16
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 72 to ptr)) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %tipc_service_remove_publ.exit.i.if.end.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn12.i, %all_publ.i
  br i1 %cmp.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body28.i_crit_edge

if.end.i.for.body28.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body28.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge
  %rb_right.i.i.i = getelementptr inbounds %struct.service_range, ptr %sr.014.i, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.service_range, ptr %sr.014.i, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rb_left.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.else6.i.i.i

if.then.i.i.i:                                    ; preds = %for.end.i
  %39 = ptrtoint ptr %tree_node.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tree_node.i, align 4
  %and.i.i.i = and i32 %40, -4
  %41 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.__rb_change_child.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then.i.i.i.__rb_change_child.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rb_change_child.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rb_left.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %43, %tree_node.i
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %41, i32 0, i32 1
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, ptr %rb_left.i.i.i.i, ptr %rb_right.i.i.i.i
  br label %__rb_change_child.exit.i.i.i

__rb_change_child.exit.i.i.i:                     ; preds = %if.then.i.i.i.i, %if.then.i.i.i.__rb_change_child.exit.i.i.i_crit_edge
  %rb_left.sink.i.i.i.i = phi ptr [ %ranges.i, %if.then.i.i.i.__rb_change_child.exit.i.i.i_crit_edge ], [ %spec.select.i.i.i.i, %if.then.i.i.i.i ]
  %44 = ptrtoint ptr %rb_left.sink.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %36, ptr %rb_left.sink.i.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool1.not.i.i.i, label %if.else.i.i.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %__rb_change_child.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %40, ptr %36, align 4
  br label %if.end69.i.i.i

if.else.i.i.i:                                    ; preds = %__rb_change_child.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and4.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool5.not.i.i.i, ptr null, ptr %41
  br label %if.end69.i.i.i

if.else6.i.i.i:                                   ; preds = %for.end.i
  %tobool7.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool7.not.i.i.i, label %if.then8.i.i.i, label %if.else12.i.i.i

if.then8.i.i.i:                                   ; preds = %if.else6.i.i.i
  %46 = ptrtoint ptr %tree_node.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tree_node.i, align 4
  %48 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %38, align 4
  %and11.i.i.i = and i32 %47, -4
  %49 = inttoptr i32 %and11.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i)
  %tobool.not.i2.i.i.i = icmp eq i32 %and11.i.i.i, 0
  br i1 %tobool.not.i2.i.i.i, label %if.then8.i.i.i.__rb_change_child.exit9.i.i.i_crit_edge, label %if.then.i7.i.i.i

if.then8.i.i.i.__rb_change_child.exit9.i.i.i_crit_edge: ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rb_change_child.exit9.i.i.i

if.then.i7.i.i.i:                                 ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i3.i.i.i = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %rb_left.i3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rb_left.i3.i.i.i, align 4
  %cmp.i4.i.i.i = icmp eq ptr %51, %tree_node.i
  %rb_right.i5.i.i.i = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 1
  %spec.select.i6.i.i.i = select i1 %cmp.i4.i.i.i, ptr %rb_left.i3.i.i.i, ptr %rb_right.i5.i.i.i
  br label %__rb_change_child.exit9.i.i.i

__rb_change_child.exit9.i.i.i:                    ; preds = %if.then.i7.i.i.i, %if.then8.i.i.i.__rb_change_child.exit9.i.i.i_crit_edge
  %rb_left.sink.i8.i.i.i = phi ptr [ %ranges.i, %if.then8.i.i.i.__rb_change_child.exit9.i.i.i_crit_edge ], [ %spec.select.i6.i.i.i, %if.then.i7.i.i.i ]
  %52 = ptrtoint ptr %rb_left.sink.i8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %38, ptr %rb_left.sink.i8.i.i.i, align 4
  br label %if.end69.i.i.i

if.else12.i.i.i:                                  ; preds = %if.else6.i.i.i
  %rb_left13.i.i.i = getelementptr inbounds %struct.rb_node, ptr %36, i32 0, i32 2
  %53 = ptrtoint ptr %rb_left13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rb_left13.i.i.i, align 4
  %tobool14.not.i.i.i = icmp eq ptr %54, null
  br i1 %tobool14.not.i.i.i, label %if.then15.i.i.i, label %if.else12.i.i.i.do.body.i.i.i_crit_edge

if.else12.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %if.else12.i.i.i
  br label %do.body.i.i.i

if.then15.i.i.i:                                  ; preds = %if.else12.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right16.i.i.i = getelementptr inbounds %struct.rb_node, ptr %36, i32 0, i32 1
  %55 = ptrtoint ptr %rb_right16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rb_right16.i.i.i, align 4
  %max.i.i.i.i = getelementptr %struct.service_range, ptr %sr.014.i, i32 0, i32 3
  %57 = ptrtoint ptr %max.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max.i.i.i.i, align 4
  %max4.i.i.i.i = getelementptr i8, ptr %36, i32 12
  %59 = ptrtoint ptr %max4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %max4.i.i.i.i, align 4
  %.pre.i.i.i = ptrtoint ptr %36 to i32
  br label %if.end42.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.else12.i.i.i.do.body.i.i.i_crit_edge
  %tmp.0.i.i.i = phi ptr [ %61, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ %54, %if.else12.i.i.i.do.body.i.i.i_crit_edge ]
  %successor.0.i.i.i = phi ptr [ %tmp.0.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ %36, %if.else12.i.i.i.do.body.i.i.i_crit_edge ]
  %rb_left18.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %rb_left18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rb_left18.i.i.i, align 4
  %tobool19.not.i.i.i = icmp eq ptr %61, null
  br i1 %tobool19.not.i.i.i, label %do.end.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %rb_right20.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %rb_right20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rb_right20.i.i.i, align 4
  %rb_left26.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %rb_left26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %63, ptr %rb_left26.i.i.i, align 4
  store volatile ptr %36, ptr %rb_right20.i.i.i, align 4
  %65 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %36, align 4
  %and.i.i.i.i = and i32 %66, 1
  %67 = ptrtoint ptr %tmp.0.i.i.i to i32
  %or.i.i.i.i = or i32 %and.i.i.i.i, %67
  store i32 %or.i.i.i.i, ptr %36, align 4
  %max.i10.i.i.i = getelementptr %struct.service_range, ptr %sr.014.i, i32 0, i32 3
  %68 = ptrtoint ptr %max.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max.i10.i.i.i, align 4
  %max4.i11.i.i.i = getelementptr i8, ptr %tmp.0.i.i.i, i32 12
  %70 = ptrtoint ptr %max4.i11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %max4.i11.i.i.i, align 4
  %cmp.not7.i.i.i.i = icmp eq ptr %successor.0.i.i.i, %tmp.0.i.i.i
  br i1 %cmp.not7.i.i.i.i, label %do.end.i.i.i.if.end42.i.i.i_crit_edge, label %do.end.i.i.i.while.body.i.i.i.i_crit_edge

do.end.i.i.i.while.body.i.i.i.i_crit_edge:        ; preds = %do.end.i.i.i
  br label %while.body.i.i.i.i

do.end.i.i.i.if.end42.i.i.i_crit_edge:            ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i.i.i

while.body.i.i.i.i:                               ; preds = %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge, %do.end.i.i.i.while.body.i.i.i.i_crit_edge
  %rb.addr.08.i.i.i.i = phi ptr [ %88, %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %successor.0.i.i.i, %do.end.i.i.i.while.body.i.i.i.i_crit_edge ]
  %upper.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i, i32 -4
  %71 = ptrtoint ptr %upper.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %upper.i.i.i.i.i, align 4
  %rb_left.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i, i32 8
  %73 = ptrtoint ptr %rb_left.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rb_left.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i.i.i.i, label %while.body.i.i.i.i.if.end6.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

while.body.i.i.i.i.if.end6.i.i.i.i.i_crit_edge:   ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %max3.i.i.i.i.i = getelementptr i8, ptr %74, i32 12
  %75 = ptrtoint ptr %max3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max3.i.i.i.i.i, align 4
  %77 = tail call i32 @llvm.umax.i32(i32 %76, i32 %72) #11
  br label %if.end6.i.i.i.i.i

if.end6.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i.i, %while.body.i.i.i.i.if.end6.i.i.i.i.i_crit_edge
  %max.0.i.i.i.i.i = phi i32 [ %72, %while.body.i.i.i.i.if.end6.i.i.i.i.i_crit_edge ], [ %77, %if.then.i.i.i.i.i ]
  %rb_right.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i, i32 4
  %78 = ptrtoint ptr %rb_right.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rb_right.i.i.i.i.i, align 4
  %tobool8.not.i.i.i.i.i = icmp eq ptr %79, null
  br i1 %tobool8.not.i.i.i.i.i, label %if.end6.i.i.i.i.i.if.end20.i.i.i.i.i_crit_edge, label %if.then9.i.i.i.i.i

if.end6.i.i.i.i.i.if.end20.i.i.i.i.i_crit_edge:   ; preds = %if.end6.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i.i.i.i.i

if.then9.i.i.i.i.i:                               ; preds = %if.end6.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %max15.i.i.i.i.i = getelementptr i8, ptr %79, i32 12
  %80 = ptrtoint ptr %max15.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max15.i.i.i.i.i, align 4
  %82 = tail call i32 @llvm.umax.i32(i32 %81, i32 %max.0.i.i.i.i.i) #11
  br label %if.end20.i.i.i.i.i

if.end20.i.i.i.i.i:                               ; preds = %if.then9.i.i.i.i.i, %if.end6.i.i.i.i.i.if.end20.i.i.i.i.i_crit_edge
  %max.1.i.i.i.i.i = phi i32 [ %max.0.i.i.i.i.i, %if.end6.i.i.i.i.i.if.end20.i.i.i.i.i_crit_edge ], [ %82, %if.then9.i.i.i.i.i ]
  %max22.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i, i32 12
  %83 = ptrtoint ptr %max22.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %max22.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %max.1.i.i.i.i.i)
  %cmp23.i.i.i.i.i = icmp eq i32 %84, %max.1.i.i.i.i.i
  br i1 %cmp23.i.i.i.i.i, label %if.end20.i.i.i.i.i.if.end42.i.i.i_crit_edge, label %cleanup.i.i.i.i

if.end20.i.i.i.i.i.if.end42.i.i.i_crit_edge:      ; preds = %if.end20.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i.i.i

cleanup.i.i.i.i:                                  ; preds = %if.end20.i.i.i.i.i
  %85 = ptrtoint ptr %max22.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %max.1.i.i.i.i.i, ptr %max22.i.i.i.i.i, align 4
  %86 = ptrtoint ptr %rb.addr.08.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rb.addr.08.i.i.i.i, align 4
  %and.i12.i.i.i = and i32 %87, -4
  %88 = inttoptr i32 %and.i12.i.i.i to ptr
  %cmp.not.i.i.i.i = icmp eq ptr %tmp.0.i.i.i, %88
  br i1 %cmp.not.i.i.i.i, label %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge, label %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge

cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge:     ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i.i.i

cleanup.i.i.i.i.if.end42.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge, %if.end20.i.i.i.i.i.if.end42.i.i.i_crit_edge, %do.end.i.i.i.if.end42.i.i.i_crit_edge, %if.then15.i.i.i
  %.pre-phi.i.i.i = phi i32 [ %67, %do.end.i.i.i.if.end42.i.i.i_crit_edge ], [ %.pre.i.i.i, %if.then15.i.i.i ], [ %67, %if.end20.i.i.i.i.i.if.end42.i.i.i_crit_edge ], [ %67, %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge ]
  %parent.0.i.i.i = phi ptr [ %tmp.0.i.i.i, %do.end.i.i.i.if.end42.i.i.i_crit_edge ], [ %36, %if.then15.i.i.i ], [ %successor.0.i.i.i, %if.end20.i.i.i.i.i.if.end42.i.i.i_crit_edge ], [ %successor.0.i.i.i, %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge ]
  %successor.1.i.i.i = phi ptr [ %tmp.0.i.i.i, %do.end.i.i.i.if.end42.i.i.i_crit_edge ], [ %36, %if.then15.i.i.i ], [ %tmp.0.i.i.i, %if.end20.i.i.i.i.i.if.end42.i.i.i_crit_edge ], [ %tmp.0.i.i.i, %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge ]
  %child2.0.i.i.i = phi ptr [ %63, %do.end.i.i.i.if.end42.i.i.i_crit_edge ], [ %56, %if.then15.i.i.i ], [ %63, %if.end20.i.i.i.i.i.if.end42.i.i.i_crit_edge ], [ %63, %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge ]
  %89 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rb_left.i.i.i, align 4
  %rb_left49.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %rb_left49.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %90, ptr %rb_left49.i.i.i, align 4
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %90, align 4
  %and.i13.i.i.i = and i32 %93, 1
  %or.i14.i.i.i = or i32 %and.i13.i.i.i, %.pre-phi.i.i.i
  store i32 %or.i14.i.i.i, ptr %90, align 4
  %94 = ptrtoint ptr %tree_node.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tree_node.i, align 4
  %and55.i.i.i = and i32 %95, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i.i)
  %tobool.not.i15.i.i.i = icmp eq i32 %and55.i.i.i, 0
  br i1 %tobool.not.i15.i.i.i, label %if.end42.i.i.i.__rb_change_child.exit22.i.i.i_crit_edge, label %if.then.i20.i.i.i

if.end42.i.i.i.__rb_change_child.exit22.i.i.i_crit_edge: ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rb_change_child.exit22.i.i.i

if.then.i20.i.i.i:                                ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = inttoptr i32 %and55.i.i.i to ptr
  %rb_left.i16.i.i.i = getelementptr inbounds %struct.rb_node, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %rb_left.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rb_left.i16.i.i.i, align 4
  %cmp.i17.i.i.i = icmp eq ptr %98, %tree_node.i
  %rb_right.i18.i.i.i = getelementptr inbounds %struct.rb_node, ptr %96, i32 0, i32 1
  %spec.select.i19.i.i.i = select i1 %cmp.i17.i.i.i, ptr %rb_left.i16.i.i.i, ptr %rb_right.i18.i.i.i
  br label %__rb_change_child.exit22.i.i.i

__rb_change_child.exit22.i.i.i:                   ; preds = %if.then.i20.i.i.i, %if.end42.i.i.i.__rb_change_child.exit22.i.i.i_crit_edge
  %rb_left.sink.i21.i.i.i = phi ptr [ %ranges.i, %if.end42.i.i.i.__rb_change_child.exit22.i.i.i_crit_edge ], [ %spec.select.i19.i.i.i, %if.then.i20.i.i.i ]
  %99 = ptrtoint ptr %rb_left.sink.i21.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %successor.1.i.i.i, ptr %rb_left.sink.i21.i.i.i, align 4
  %tobool56.not.i.i.i = icmp eq ptr %child2.0.i.i.i, null
  br i1 %tobool56.not.i.i.i, label %if.else58.i.i.i, label %if.then57.i.i.i

if.then57.i.i.i:                                  ; preds = %__rb_change_child.exit22.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %parent.0.i.i.i to i32
  %or.i23.i.i.i = or i32 %100, 1
  %101 = ptrtoint ptr %child2.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or.i23.i.i.i, ptr %child2.0.i.i.i, align 4
  br label %if.end66.i.i.i

if.else58.i.i.i:                                  ; preds = %__rb_change_child.exit22.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %successor.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %successor.1.i.i.i, align 4
  %and60.i.i.i = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i.i)
  %tobool61.not.i.i.i = icmp eq i32 %and60.i.i.i, 0
  %spec.select1.i.i.i = select i1 %tobool61.not.i.i.i, ptr null, ptr %parent.0.i.i.i
  br label %if.end66.i.i.i

if.end66.i.i.i:                                   ; preds = %if.else58.i.i.i, %if.then57.i.i.i
  %rebalance.1.i.i.i = phi ptr [ null, %if.then57.i.i.i ], [ %spec.select1.i.i.i, %if.else58.i.i.i ]
  %104 = ptrtoint ptr %successor.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %95, ptr %successor.1.i.i.i, align 4
  br label %if.end69.i.i.i

if.end69.i.i.i:                                   ; preds = %if.end66.i.i.i, %__rb_change_child.exit9.i.i.i, %if.else.i.i.i, %if.then2.i.i.i
  %tmp.1.i.i.i = phi ptr [ %successor.1.i.i.i, %if.end66.i.i.i ], [ %49, %__rb_change_child.exit9.i.i.i ], [ %41, %if.else.i.i.i ], [ %41, %if.then2.i.i.i ]
  %rebalance.2.i.i.i = phi ptr [ %rebalance.1.i.i.i, %if.end66.i.i.i ], [ null, %__rb_change_child.exit9.i.i.i ], [ %spec.select.i.i.i, %if.else.i.i.i ], [ null, %if.then2.i.i.i ]
  %cmp.not7.i24.i.i.i = icmp eq ptr %tmp.1.i.i.i, null
  br i1 %cmp.not7.i24.i.i.i, label %if.end69.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge, label %if.end69.i.i.i.while.body.i29.i.i.i_crit_edge

if.end69.i.i.i.while.body.i29.i.i.i_crit_edge:    ; preds = %if.end69.i.i.i
  br label %while.body.i29.i.i.i

if.end69.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge: ; preds = %if.end69.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rb_erase_augmented.exit.i.i

while.body.i29.i.i.i:                             ; preds = %cleanup.i44.i.i.i.while.body.i29.i.i.i_crit_edge, %if.end69.i.i.i.while.body.i29.i.i.i_crit_edge
  %rb.addr.08.i25.i.i.i = phi ptr [ %122, %cleanup.i44.i.i.i.while.body.i29.i.i.i_crit_edge ], [ %tmp.1.i.i.i, %if.end69.i.i.i.while.body.i29.i.i.i_crit_edge ]
  %upper.i.i26.i.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i.i, i32 -4
  %105 = ptrtoint ptr %upper.i.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %upper.i.i26.i.i.i, align 4
  %rb_left.i.i27.i.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i.i, i32 8
  %107 = ptrtoint ptr %rb_left.i.i27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rb_left.i.i27.i.i.i, align 4
  %tobool.not.i.i28.i.i.i = icmp eq ptr %108, null
  br i1 %tobool.not.i.i28.i.i.i, label %while.body.i29.i.i.i.if.end6.i.i35.i.i.i_crit_edge, label %if.then.i.i31.i.i.i

while.body.i29.i.i.i.if.end6.i.i35.i.i.i_crit_edge: ; preds = %while.body.i29.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i.i35.i.i.i

if.then.i.i31.i.i.i:                              ; preds = %while.body.i29.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %max3.i.i30.i.i.i = getelementptr i8, ptr %108, i32 12
  %109 = ptrtoint ptr %max3.i.i30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %max3.i.i30.i.i.i, align 4
  %111 = tail call i32 @llvm.umax.i32(i32 %110, i32 %106) #11
  br label %if.end6.i.i35.i.i.i

if.end6.i.i35.i.i.i:                              ; preds = %if.then.i.i31.i.i.i, %while.body.i29.i.i.i.if.end6.i.i35.i.i.i_crit_edge
  %max.0.i.i32.i.i.i = phi i32 [ %106, %while.body.i29.i.i.i.if.end6.i.i35.i.i.i_crit_edge ], [ %111, %if.then.i.i31.i.i.i ]
  %rb_right.i.i33.i.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i.i, i32 4
  %112 = ptrtoint ptr %rb_right.i.i33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rb_right.i.i33.i.i.i, align 4
  %tobool8.not.i.i34.i.i.i = icmp eq ptr %113, null
  br i1 %tobool8.not.i.i34.i.i.i, label %if.end6.i.i35.i.i.i.if.end20.i.i41.i.i.i_crit_edge, label %if.then9.i.i37.i.i.i

if.end6.i.i35.i.i.i.if.end20.i.i41.i.i.i_crit_edge: ; preds = %if.end6.i.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i.i41.i.i.i

if.then9.i.i37.i.i.i:                             ; preds = %if.end6.i.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %max15.i.i36.i.i.i = getelementptr i8, ptr %113, i32 12
  %114 = ptrtoint ptr %max15.i.i36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %max15.i.i36.i.i.i, align 4
  %116 = tail call i32 @llvm.umax.i32(i32 %115, i32 %max.0.i.i32.i.i.i) #11
  br label %if.end20.i.i41.i.i.i

if.end20.i.i41.i.i.i:                             ; preds = %if.then9.i.i37.i.i.i, %if.end6.i.i35.i.i.i.if.end20.i.i41.i.i.i_crit_edge
  %max.1.i.i38.i.i.i = phi i32 [ %max.0.i.i32.i.i.i, %if.end6.i.i35.i.i.i.if.end20.i.i41.i.i.i_crit_edge ], [ %116, %if.then9.i.i37.i.i.i ]
  %max22.i.i39.i.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i.i, i32 12
  %117 = ptrtoint ptr %max22.i.i39.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %max22.i.i39.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %max.1.i.i38.i.i.i)
  %cmp23.i.i40.i.i.i = icmp eq i32 %118, %max.1.i.i38.i.i.i
  br i1 %cmp23.i.i40.i.i.i, label %if.end20.i.i41.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge, label %cleanup.i44.i.i.i

if.end20.i.i41.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge: ; preds = %if.end20.i.i41.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rb_erase_augmented.exit.i.i

cleanup.i44.i.i.i:                                ; preds = %if.end20.i.i41.i.i.i
  %119 = ptrtoint ptr %max22.i.i39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %max.1.i.i38.i.i.i, ptr %max22.i.i39.i.i.i, align 4
  %120 = ptrtoint ptr %rb.addr.08.i25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rb.addr.08.i25.i.i.i, align 4
  %and.i42.i.i.i = and i32 %121, -4
  %122 = inttoptr i32 %and.i42.i.i.i to ptr
  %cmp.not.i43.i.i.i = icmp eq i32 %and.i42.i.i.i, 0
  br i1 %cmp.not.i43.i.i.i, label %cleanup.i44.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge, label %cleanup.i44.i.i.i.while.body.i29.i.i.i_crit_edge

cleanup.i44.i.i.i.while.body.i29.i.i.i_crit_edge: ; preds = %cleanup.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i29.i.i.i

cleanup.i44.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge: ; preds = %cleanup.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rb_erase_augmented.exit.i.i

__rb_erase_augmented.exit.i.i:                    ; preds = %cleanup.i44.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge, %if.end20.i.i41.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge, %if.end69.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %rebalance.2.i.i.i, null
  br i1 %tobool.not.i.i, label %__rb_erase_augmented.exit.i.i.rb_erase_augmented.exit.i_crit_edge, label %if.then.i.i

__rb_erase_augmented.exit.i.i.rb_erase_augmented.exit.i_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rb_erase_augmented.exit.i

if.then.i.i:                                      ; preds = %__rb_erase_augmented.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__rb_erase_color(ptr noundef nonnull %rebalance.2.i.i.i, ptr noundef %ranges.i, ptr noundef nonnull @sr_callbacks_rotate) #11
  br label %rb_erase_augmented.exit.i

rb_erase_augmented.exit.i:                        ; preds = %if.then.i.i, %__rb_erase_augmented.exit.i.i.rb_erase_augmented.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %sr.014.i) #11
  %tobool3.not22.i = icmp eq ptr %add.ptr11.i, null
  %tobool3.not.i = or i1 %tobool7.not.i, %tobool3.not22.i
  br i1 %tobool3.not.i, label %rb_erase_augmented.exit.i.for.end42.i_crit_edge, label %rb_erase_augmented.exit.i.land.rhs.i_crit_edge

rb_erase_augmented.exit.i.land.rhs.i_crit_edge:   ; preds = %rb_erase_augmented.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

rb_erase_augmented.exit.i.for.end42.i_crit_edge:  ; preds = %rb_erase_augmented.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end42.i

for.end42.i:                                      ; preds = %rb_erase_augmented.exit.i.for.end42.i_crit_edge, %for.body22.for.end42.i_crit_edge
  %pprev.i.i.i = getelementptr inbounds %struct.tipc_service, ptr %service.064, i32 0, i32 3, i32 1
  %123 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %124, null
  br i1 %tobool.not.i.not.i.i, label %for.end42.i.tipc_service_delete.exit_crit_edge, label %if.then.i4.i

for.end42.i.tipc_service_delete.exit_crit_edge:   ; preds = %for.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_service_delete.exit

if.then.i4.i:                                     ; preds = %for.end42.i
  %service_list.i = getelementptr inbounds %struct.tipc_service, ptr %service.064, i32 0, i32 3
  %125 = ptrtoint ptr %service_list.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %service_list.i, align 4
  %127 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %126, ptr %124, align 4
  %tobool.not.i7.i.i = icmp eq ptr %126, null
  br i1 %tobool.not.i7.i.i, label %if.then.i4.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i4.i.__hlist_del.exit.i.i_crit_edge:      ; preds = %if.then.i4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i4.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %126, i32 0, i32 1
  %128 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %124, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i4.i.__hlist_del.exit.i.i_crit_edge
  %129 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %tipc_service_delete.exit

tipc_service_delete.exit:                         ; preds = %__hlist_del.exit.i.i, %for.end42.i.tipc_service_delete.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  %rcu51.i = getelementptr inbounds %struct.tipc_service, ptr %service.064, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu51.i, ptr noundef nonnull inttoptr (i32 72 to ptr)) #11
  %service_list = getelementptr inbounds %struct.tipc_service, ptr %service.064, i32 0, i32 3
  %130 = ptrtoint ptr %service_list to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile ptr, ptr %service_list, align 4
  %tobool30.not = icmp eq ptr %131, null
  %add.ptr34 = getelementptr i8, ptr %131, i32 -12
  %tobool21.not71 = icmp eq ptr %add.ptr34, null
  %tobool21.not = or i1 %tobool30.not, %tobool21.not71
  br i1 %tobool21.not, label %tipc_service_delete.exit.for.inc38_crit_edge, label %tipc_service_delete.exit.for.body22_crit_edge

tipc_service_delete.exit.for.body22_crit_edge:    ; preds = %tipc_service_delete.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22

tipc_service_delete.exit.for.inc38_crit_edge:     ; preds = %tipc_service_delete.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc38

for.inc38:                                        ; preds = %tipc_service_delete.exit.for.inc38_crit_edge, %do.end.for.inc38_crit_edge, %for.body.for.inc38_crit_edge
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end39, label %for.inc38.for.body_crit_edge

for.inc38.for.body_crit_edge:                     ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end39:                                        ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %nametbl_lock) #11
  tail call void @synchronize_net() #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_name_table_dump(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i152.i.i.i = alloca i32, align 4
  %tmp.i150.i.i.i = alloca i32, align 4
  %tmp.i148.i.i.i = alloca i32, align 4
  %tmp.i146.i.i.i = alloca i32, align 4
  %tmp.i144.i.i.i = alloca i32, align 4
  %tmp.i142.i.i.i = alloca i32, align 4
  %tmp.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 12
  %16 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %portid, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %18 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nlmsg_seq, align 4
  %22 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call.i38 = tail call fastcc ptr @tipc_net(ptr noundef %4) #11
  %and.i.i = and i32 %7, 1023
  %nametbl.i = getelementptr inbounds %struct.tipc_net, ptr %call.i38, i32 0, i32 21
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc79.i.for.body.i_crit_edge, %rcu_read_lock.exit
  %last_type.0 = phi i32 [ %7, %rcu_read_lock.exit ], [ 0, %for.inc79.i.for.body.i_crit_edge ]
  %last_lower.0 = phi i32 [ %9, %rcu_read_lock.exit ], [ %last_lower.2, %for.inc79.i.for.body.i_crit_edge ]
  %last_key.0 = phi i32 [ %11, %rcu_read_lock.exit ], [ %last_key.6, %for.inc79.i.for.body.i_crit_edge ]
  %i.1175.i = phi i32 [ %and.i.i, %rcu_read_lock.exit ], [ %inc.i, %for.inc79.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %nametbl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nametbl.i, align 4
  %arrayidx.i = getelementptr [1024 x %struct.hlist_head], ptr %27, i32 0, i32 %i.1175.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_type.0)
  %tobool2.not.i = icmp eq i32 %last_type.0, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %for.body.i.if.then7.i_crit_edge

for.body.i.if.then7.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1175.i)
  %tobool3.not.i = icmp eq i32 %i.1175.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_key.0)
  %tobool4.not.i = icmp ne i32 %last_key.0, 0
  %or.cond = select i1 %tobool3.not.i, i1 %tobool4.not.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %last_lower.0, i32 %last_key.0)
  %cmp6.i = icmp eq i32 %last_lower.0, %last_key.0
  %or.cond91 = select i1 %or.cond, i1 %cmp6.i, i1 false
  br i1 %or.cond91, label %lor.lhs.false.i.if.then7.i_crit_edge, label %do.body.i

lor.lhs.false.i.if.then7.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7.i

if.then7.i:                                       ; preds = %lor.lhs.false.i.if.then7.i_crit_edge, %for.body.i.if.then7.i_crit_edge
  %call.i.i.i = call fastcc ptr @tipc_net(ptr noundef %4) #11
  %nametbl.i.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i, i32 0, i32 21
  %28 = ptrtoint ptr %nametbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nametbl.i.i.i, align 4
  %and.i.i.i = and i32 %last_type.0, 1023
  %arrayidx.i.i = getelementptr [1024 x %struct.hlist_head], ptr %29, i32 0, i32 %and.i.i.i
  %call2.i.i = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then7.i.do.end.i.i_crit_edge

if.then7.i.do.end.i.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then7.i
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b43.i.i = load i1, ptr @tipc_service_find.__warned, align 1
  br i1 %.b43.i.i, label %land.lhs.true5.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tipc_service_find.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 469, ptr noundef nonnull @.str.10) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %if.then7.i.do.end.i.i_crit_edge
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %31, null
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 -12
  %tobool14.not4750.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool14.not47.i.i = or i1 %tobool12.not.i.i, %tobool14.not4750.i.i
  br i1 %tobool14.not47.i.i, label %do.end.i.i.if.then11_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.if.then11_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %service.048.i.i = phi ptr [ %add.ptr30.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %32 = ptrtoint ptr %service.048.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %service.048.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %last_type.0)
  %cmp.i.i = icmp eq i32 %33, %last_type.0
  br i1 %cmp.i.i, label %for.body.i.i.for.body53.i.preheader_crit_edge, label %for.inc.i.i

for.body.i.i.for.body53.i.preheader_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body53.i.preheader

for.inc.i.i:                                      ; preds = %for.body.i.i
  %service_list.i.i = getelementptr inbounds %struct.tipc_service, ptr %service.048.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %service_list.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %service_list.i.i, align 4
  %tobool26.not.i.i = icmp eq ptr %35, null
  %add.ptr30.i.i = getelementptr i8, ptr %35, i32 -12
  %tobool14.not51.i.i = icmp eq ptr %add.ptr30.i.i, null
  %tobool14.not.i.i = or i1 %tobool26.not.i.i, %tobool14.not51.i.i
  br i1 %tobool14.not.i.i, label %for.inc.i.i.if.then11_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.then11_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

do.body.i:                                        ; preds = %lor.lhs.false.i
  %call13.i = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true15.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true15.i:                                ; preds = %do.body.i
  %call16.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true15.i.do.end.i_crit_edge, label %land.lhs.true18.i

land.lhs.true15.i.do.end.i_crit_edge:             ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true18.i:                                ; preds = %land.lhs.true15.i
  %.b115.i = load i1, ptr @tipc_nl_service_list.__warned, align 1
  br i1 %.b115.i, label %land.lhs.true18.i.do.end.i_crit_edge, label %if.then20.i

land.lhs.true18.i.do.end.i_crit_edge:             ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then20.i:                                      ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tipc_nl_service_list.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1076, ptr noundef nonnull @.str.10) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then20.i, %land.lhs.true18.i.do.end.i_crit_edge, %land.lhs.true15.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool27.not.i = icmp eq ptr %37, null
  %add.ptr.i = getelementptr i8, ptr %37, i32 -12
  %tobool47.not132.i = icmp eq ptr %add.ptr.i, null
  %tobool47.not.i = or i1 %tobool27.not.i, %tobool47.not132.i
  br i1 %tobool47.not.i, label %do.end.i.for.inc79.i_crit_edge, label %do.end.i.for.body53.i.preheader_crit_edge

do.end.i.for.body53.i.preheader_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body53.i.preheader

do.end.i.for.inc79.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc79.i

for.body53.i.preheader:                           ; preds = %do.end.i.for.body53.i.preheader_crit_edge, %for.body.i.i.for.body53.i.preheader_crit_edge
  %service.1173.i.ph = phi ptr [ %add.ptr.i, %do.end.i.for.body53.i.preheader_crit_edge ], [ %service.048.i.i, %for.body.i.i.for.body53.i.preheader_crit_edge ]
  br label %for.body53.i

for.body53.i:                                     ; preds = %if.end58.i.for.body53.i_crit_edge, %for.body53.i.preheader
  %last_lower.1 = phi i32 [ 0, %if.end58.i.for.body53.i_crit_edge ], [ %last_lower.0, %for.body53.i.preheader ]
  %last_key.1 = phi i32 [ %last_key.5, %if.end58.i.for.body53.i_crit_edge ], [ %last_key.0, %for.body53.i.preheader ]
  %service.1173.i = phi ptr [ %add.ptr74.i, %if.end58.i.for.body53.i_crit_edge ], [ %service.1173.i.ph, %for.body53.i.preheader ]
  %lock.i = getelementptr inbounds %struct.tipc_service, ptr %service.1173.i, i32 0, i32 5
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %ranges.i.i = getelementptr inbounds %struct.tipc_service, ptr %service.1173.i, i32 0, i32 2
  %call.i.i = call ptr @rb_first(ptr noundef %ranges.i.i) #11
  %tobool.not41.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not41.i.i, label %for.body53.i.if.end58.i_crit_edge, label %for.body53.i.for.body.i120.i_crit_edge

for.body53.i.for.body.i120.i_crit_edge:           ; preds = %for.body53.i
  br label %for.body.i120.i

for.body53.i.if.end58.i_crit_edge:                ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

for.body.i120.i:                                  ; preds = %for.inc.i123.i.for.body.i120.i_crit_edge, %for.body53.i.for.body.i120.i_crit_edge
  %last_key.2 = phi i32 [ %last_key.3, %for.inc.i123.i.for.body.i120.i_crit_edge ], [ %last_key.1, %for.body53.i.for.body.i120.i_crit_edge ]
  %n.042.i.i = phi ptr [ %call6.i.i, %for.inc.i123.i.for.body.i120.i_crit_edge ], [ %call.i.i, %for.body53.i.for.body.i120.i_crit_edge ]
  %add.ptr.i118.i = getelementptr i8, ptr %n.042.i.i, i32 -8
  %38 = ptrtoint ptr %add.ptr.i118.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i118.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %last_lower.1)
  %cmp.i119.i = icmp ult i32 %39, %last_lower.1
  br i1 %cmp.i119.i, label %for.body.i120.i.for.inc.i123.i_crit_edge, label %if.end.i.i

for.body.i120.i.for.inc.i123.i_crit_edge:         ; preds = %for.body.i120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i123.i

if.end.i.i:                                       ; preds = %for.body.i120.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_key.2)
  %tobool.not.i.i.i = icmp eq i32 %last_key.2, 0
  %all_publ16.i.i.i = getelementptr i8, ptr %n.042.i.i, i32 24
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.end.i.i.for.cond.i.i.i_crit_edge

if.end.i.i.for.cond.i.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i.i.for.cond.i.i.i_crit_edge
  %.pn.in.i.i.i = phi ptr [ %.pn.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ %all_publ16.i.i.i, %if.end.i.i.for.cond.i.i.i_crit_edge ]
  %40 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %.pn.i.i.i, %all_publ16.i.i.i
  br i1 %cmp.i.i.i, label %tipc_nl_service_list.exit, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %key.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -32
  %41 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %key.i.i.i, align 4
  %cmp3.i.i.i = icmp eq i32 %42, %last_key.2
  br i1 %cmp3.i.i.i, label %for.body.i.i.i.if.end20.i.i.i_crit_edge, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i.i

for.body.i.i.i.if.end20.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %all_publ16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %all_publ16.i.i.i, align 4
  br label %if.end20.i.i.i

if.end20.i.i.i:                                   ; preds = %if.else.i.i.i, %for.body.i.i.i.if.end20.i.i.i_crit_edge
  %.pn.pn.i.i.i = phi ptr [ %44, %if.else.i.i.i ], [ %.pn.i.i.i, %for.body.i.i.i.if.end20.i.i.i_crit_edge ]
  %cmp24.not187.i.i.i = icmp eq ptr %.pn.pn.i.i.i, %all_publ16.i.i.i
  br i1 %cmp24.not187.i.i.i, label %if.end20.i.i.i.for.inc.i123.i_crit_edge, label %for.body26.lr.ph.i.i.i

if.end20.i.i.i.for.inc.i123.i_crit_edge:          ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i123.i

for.body26.lr.ph.i.i.i:                           ; preds = %if.end20.i.i.i
  %upper.i.i.i = getelementptr i8, ptr %n.042.i.i, i32 -4
  br label %for.body26.i.i.i

for.body26.i.i.i:                                 ; preds = %if.end77.i.i.i.for.body26.i.i.i_crit_edge, %for.body26.lr.ph.i.i.i
  %.pn.pn.pn188.i.i.i = phi ptr [ %.pn.pn.i.i.i, %for.body26.lr.ph.i.i.i ], [ %80, %if.end77.i.i.i.for.body26.i.i.i_crit_edge ]
  %key27.i.i.i = getelementptr i8, ptr %.pn.pn.pn188.i.i.i, i32 -32
  %45 = ptrtoint ptr %key27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %key27.i.i.i, align 4
  %call.i.i121.i = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %17, i32 noundef %21, ptr noundef nonnull @tipc_genl_family, i32 noundef 2, i8 noundef zeroext 16) #11
  %tobool28.not.i.i.i = icmp eq ptr %call.i.i121.i, null
  br i1 %tobool28.not.i.i.i, label %for.body26.i.i.i.if.end13.fold.split_crit_edge, label %if.end30.i.i.i

for.body26.i.i.i.if.end13.fold.split_crit_edge:   ; preds = %for.body26.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.fold.split

if.end30.i.i.i:                                   ; preds = %for.body26.i.i.i
  %47 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool33.not174.i.i.i = icmp eq ptr %48, null
  %tobool33.not.i.i.i = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool33.not174.i.i.i
  br i1 %tobool33.not.i.i.i, label %if.end30.i.i.i.if.then.i.i.i.i_crit_edge, label %if.end35.i.i.i

if.end30.i.i.i.if.then.i.i.i.i_crit_edge:         ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

if.end35.i.i.i:                                   ; preds = %if.end30.i.i.i
  %49 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i139.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i139.i.i.i)
  %cmp.i140.i.i.i = icmp slt i32 %call1.i139.i.i.i, 0
  %tobool38.not175.i.i.i = icmp eq ptr %50, null
  %tobool38.not.i.i.i = select i1 %cmp.i140.i.i.i, i1 true, i1 %tobool38.not175.i.i.i
  br i1 %tobool38.not.i.i.i, label %if.end35.i.i.i.if.then.i.i166.i.i.i_crit_edge, label %if.end40.i.i.i

if.end35.i.i.i.if.then.i.i166.i.i.i_crit_edge:    ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i166.i.i.i

if.end40.i.i.i:                                   ; preds = %if.end35.i.i.i
  %51 = ptrtoint ptr %service.1173.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %service.1173.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #11
  %53 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %tmp.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool43.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool43.not.i.i.i, label %if.end45.i.i.i, label %if.end40.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end40.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end40.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i.i

if.end45.i.i.i:                                   ; preds = %if.end40.i.i.i
  %54 = ptrtoint ptr %add.ptr.i118.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i118.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i142.i.i.i) #11
  %56 = ptrtoint ptr %tmp.i142.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tmp.i142.i.i.i, align 4
  %call.i143.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i142.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i142.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143.i.i.i)
  %tobool48.not.i.i.i = icmp eq i32 %call.i143.i.i.i, 0
  br i1 %tobool48.not.i.i.i, label %if.end50.i.i.i, label %if.end45.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end45.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end45.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i.i

if.end50.i.i.i:                                   ; preds = %if.end45.i.i.i
  %57 = ptrtoint ptr %upper.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %upper.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i144.i.i.i) #11
  %59 = ptrtoint ptr %tmp.i144.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %tmp.i144.i.i.i, align 4
  %call.i145.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i144.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i144.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145.i.i.i)
  %tobool53.not.i.i.i = icmp eq i32 %call.i145.i.i.i, 0
  br i1 %tobool53.not.i.i.i, label %if.end55.i.i.i, label %if.end50.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end50.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i.i

if.end55.i.i.i:                                   ; preds = %if.end50.i.i.i
  %scope.i.i.i = getelementptr i8, ptr %.pn.pn.pn188.i.i.i, i32 -36
  %60 = ptrtoint ptr %scope.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %scope.i.i.i, align 4
  %conv.i.i.i = zext i16 %61 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i146.i.i.i) #11
  %62 = ptrtoint ptr %tmp.i146.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv.i.i.i, ptr %tmp.i146.i.i.i, align 4
  %call.i147.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i146.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i146.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147.i.i.i)
  %tobool58.not.i.i.i = icmp eq i32 %call.i147.i.i.i, 0
  br i1 %tobool58.not.i.i.i, label %if.end60.i.i.i, label %if.end55.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end55.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i.i

if.end60.i.i.i:                                   ; preds = %if.end55.i.i.i
  %node.i.i.i = getelementptr i8, ptr %.pn.pn.pn188.i.i.i, i32 -40
  %63 = ptrtoint ptr %node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %node.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i148.i.i.i) #11
  %65 = ptrtoint ptr %tmp.i148.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %tmp.i148.i.i.i, align 4
  %call.i149.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i148.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i148.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149.i.i.i)
  %tobool63.not.i.i.i = icmp eq i32 %call.i149.i.i.i, 0
  br i1 %tobool63.not.i.i.i, label %if.end65.i.i.i, label %if.end60.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end60.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i.i

if.end65.i.i.i:                                   ; preds = %if.end60.i.i.i
  %sk.i.i.i = getelementptr i8, ptr %.pn.pn.pn188.i.i.i, i32 -44
  %66 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sk.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i150.i.i.i) #11
  %68 = ptrtoint ptr %tmp.i150.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %tmp.i150.i.i.i, align 4
  %call.i151.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i150.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i150.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151.i.i.i)
  %tobool69.not.i.i.i = icmp eq i32 %call.i151.i.i.i, 0
  br i1 %tobool69.not.i.i.i, label %if.end71.i.i.i, label %if.end65.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end65.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i.i

if.end71.i.i.i:                                   ; preds = %if.end65.i.i.i
  %69 = ptrtoint ptr %key27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %key27.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i152.i.i.i) #11
  %71 = ptrtoint ptr %tmp.i152.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %tmp.i152.i.i.i, align 4
  %call.i153.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i152.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i152.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153.i.i.i)
  %tobool75.not.i.i.i = icmp eq i32 %call.i153.i.i.i, 0
  br i1 %tobool75.not.i.i.i, label %if.end77.i.i.i, label %if.end71.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end71.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end71.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i.i

if.end77.i.i.i:                                   ; preds = %if.end71.i.i.i
  %72 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %74 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i.i.i.i, ptr %50, align 2
  %75 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i156.i.i.i = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast.i157.i.i.i = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i158.i.i.i = sub i32 %sub.ptr.lhs.cast.i156.i.i.i, %sub.ptr.rhs.cast.i157.i.i.i
  %conv.i159.i.i.i = trunc i32 %sub.ptr.sub.i158.i.i.i to i16
  %76 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i159.i.i.i, ptr %48, align 2
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %call.i.i121.i, i32 -20
  %77 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %78 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub.ptr.sub.i.i.i.i.i, ptr %add.ptr1.i.i.i.i, align 4
  %79 = ptrtoint ptr %.pn.pn.pn188.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %.pn.pn.pn188.i.i.i, align 4
  %cmp24.not.i.i.i = icmp eq ptr %80, %all_publ16.i.i.i
  br i1 %cmp24.not.i.i.i, label %if.end77.i.i.i.for.inc.i123.i_crit_edge, label %if.end77.i.i.i.for.body26.i.i.i_crit_edge

if.end77.i.i.i.for.body26.i.i.i_crit_edge:        ; preds = %if.end77.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body26.i.i.i

if.end77.i.i.i.for.inc.i123.i_crit_edge:          ; preds = %if.end77.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i123.i

if.then.i.i.i.i.i:                                ; preds = %if.end71.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end65.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end60.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end55.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end50.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end45.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end40.i.i.i.if.then.i.i.i.i.i_crit_edge
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %81 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp ugt ptr %82, %50
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.then.i.i.i.i.i.nla_nest_cancel.exit.i.i.i_crit_edge, !prof !76

if.then.i.i.i.i.i.nla_nest_cancel.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_nest_cancel.exit.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %nla_nest_cancel.exit.i.i.i

nla_nest_cancel.exit.i.i.i:                       ; preds = %do.end.i.i.i.i.i, %if.then.i.i.i.i.i.nla_nest_cancel.exit.i.i.i_crit_edge
  %83 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i160.i.i.i = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast.i.i161.i.i.i = ptrtoint ptr %84 to i32
  %sub.ptr.sub.i.i162.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i160.i.i.i, %sub.ptr.rhs.cast.i.i161.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i162.i.i.i) #11
  br label %if.then.i.i166.i.i.i

if.then.i.i166.i.i.i:                             ; preds = %nla_nest_cancel.exit.i.i.i, %if.end35.i.i.i.if.then.i.i166.i.i.i_crit_edge
  %data.i.i164.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %85 = ptrtoint ptr %data.i.i164.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i.i164.i.i.i, align 4
  %cmp.i.i165.i.i.i = icmp ugt ptr %86, %48
  br i1 %cmp.i.i165.i.i.i, label %do.end.i.i167.i.i.i, label %if.then.i.i166.i.i.i.nla_nest_cancel.exit172.i.i.i_crit_edge, !prof !76

if.then.i.i166.i.i.i.nla_nest_cancel.exit172.i.i.i_crit_edge: ; preds = %if.then.i.i166.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_nest_cancel.exit172.i.i.i

do.end.i.i167.i.i.i:                              ; preds = %if.then.i.i166.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %nla_nest_cancel.exit172.i.i.i

nla_nest_cancel.exit172.i.i.i:                    ; preds = %do.end.i.i167.i.i.i, %if.then.i.i166.i.i.i.nla_nest_cancel.exit172.i.i.i_crit_edge
  %87 = ptrtoint ptr %data.i.i164.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data.i.i164.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i168.i.i.i = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i.i169.i.i.i = ptrtoint ptr %88 to i32
  %sub.ptr.sub.i.i170.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i168.i.i.i, %sub.ptr.rhs.cast.i.i169.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i170.i.i.i) #11
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %nla_nest_cancel.exit172.i.i.i, %if.end30.i.i.i.if.then.i.i.i.i_crit_edge
  %add.ptr1.i173.i.i.i = getelementptr i8, ptr %call.i.i121.i, i32 -20
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %add.ptr1.i173.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i.i, label %if.then.i.i.i.i.if.end13.fold.split_crit_edge, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.if.end13.fold.split_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.fold.split

if.then.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %89 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i.i = icmp ugt ptr %90, %add.ptr1.i173.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %do.end.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge, !prof !76

if.then.i.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i.i.i

do.end.i.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.end.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge
  %91 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i.i = ptrtoint ptr %add.ptr1.i173.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i.i.i = ptrtoint ptr %92 to i32
  %sub.ptr.sub.i.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i.i.i) #11
  br label %if.end13.fold.split

for.inc.i123.i:                                   ; preds = %if.end77.i.i.i.for.inc.i123.i_crit_edge, %if.end20.i.i.i.for.inc.i123.i_crit_edge, %for.body.i120.i.for.inc.i123.i_crit_edge
  %last_key.3 = phi i32 [ %last_key.2, %for.body.i120.i.for.inc.i123.i_crit_edge ], [ 0, %if.end20.i.i.i.for.inc.i123.i_crit_edge ], [ 0, %if.end77.i.i.i.for.inc.i123.i_crit_edge ]
  %call6.i.i = call ptr @rb_next(ptr noundef nonnull %n.042.i.i) #11
  %tobool.not.i122.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool.not.i122.i, label %for.inc.i123.i.if.end58.i_crit_edge, label %for.inc.i123.i.for.body.i120.i_crit_edge

for.inc.i123.i.for.body.i120.i_crit_edge:         ; preds = %for.inc.i123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i120.i

for.inc.i123.i.if.end58.i_crit_edge:              ; preds = %for.inc.i123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

if.end58.i:                                       ; preds = %for.inc.i123.i.if.end58.i_crit_edge, %for.body53.i.if.end58.i_crit_edge
  %last_key.5 = phi i32 [ %last_key.1, %for.body53.i.if.end58.i_crit_edge ], [ %last_key.3, %for.inc.i123.i.if.end58.i_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  %service_list66.i = getelementptr inbounds %struct.tipc_service, ptr %service.1173.i, i32 0, i32 3
  %93 = ptrtoint ptr %service_list66.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %service_list66.i, align 4
  %tobool70.not.i = icmp eq ptr %94, null
  %add.ptr74.i = getelementptr i8, ptr %94, i32 -12
  %tobool52.not256.i = icmp eq ptr %add.ptr74.i, null
  %tobool52.not.i = or i1 %tobool70.not.i, %tobool52.not256.i
  br i1 %tobool52.not.i, label %if.end58.i.for.inc79.i_crit_edge, label %if.end58.i.for.body53.i_crit_edge

if.end58.i.for.body53.i_crit_edge:                ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body53.i

if.end58.i.for.inc79.i_crit_edge:                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc79.i

for.inc79.i:                                      ; preds = %if.end58.i.for.inc79.i_crit_edge, %do.end.i.for.inc79.i_crit_edge
  %last_lower.2 = phi i32 [ %last_lower.0, %do.end.i.for.inc79.i_crit_edge ], [ 0, %if.end58.i.for.inc79.i_crit_edge ]
  %last_key.6 = phi i32 [ %last_key.0, %do.end.i.for.inc79.i_crit_edge ], [ %last_key.5, %if.end58.i.for.inc79.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.1175.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.inc79.i.if.end13_crit_edge, label %for.inc79.i.for.body.i_crit_edge

for.inc79.i.for.body.i_crit_edge:                 ; preds = %for.inc79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc79.i.if.end13_crit_edge:                   ; preds = %for.inc79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

tipc_nl_service_list.exit:                        ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %add.ptr.i118.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr.i118.i, align 4
  %97 = ptrtoint ptr %service.1173.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %service.1173.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br label %if.then11

if.then11:                                        ; preds = %tipc_nl_service_list.exit, %for.inc.i.i.if.then11_crit_edge, %do.end.i.i.if.then11_crit_edge
  %last_key.780 = phi i32 [ %last_key.2, %tipc_nl_service_list.exit ], [ %last_key.0, %for.inc.i.i.if.then11_crit_edge ], [ %last_key.0, %do.end.i.i.if.then11_crit_edge ]
  %last_lower.378 = phi i32 [ %96, %tipc_nl_service_list.exit ], [ %last_lower.0, %for.inc.i.i.if.then11_crit_edge ], [ %last_lower.0, %do.end.i.i.if.then11_crit_edge ]
  %last_type.276 = phi i32 [ %98, %tipc_nl_service_list.exit ], [ %last_type.0, %for.inc.i.i.if.then11_crit_edge ], [ %last_type.0, %do.end.i.i.if.then11_crit_edge ]
  %prev_seq = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %99 = ptrtoint ptr %prev_seq to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %prev_seq, align 4
  br label %if.end13

if.end13.fold.split:                              ; preds = %if.end.i.i.i.i.i.i, %if.then.i.i.i.i.if.end13.fold.split_crit_edge, %for.body26.i.i.i.if.end13.fold.split_crit_edge
  %100 = ptrtoint ptr %add.ptr.i118.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr.i118.i, align 4
  %102 = ptrtoint ptr %service.1173.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %service.1173.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br label %if.end13

if.end13:                                         ; preds = %if.end13.fold.split, %if.then11, %for.inc79.i.if.end13_crit_edge
  %last_key.779 = phi i32 [ %last_key.780, %if.then11 ], [ %46, %if.end13.fold.split ], [ %last_key.6, %for.inc79.i.if.end13_crit_edge ]
  %last_lower.377 = phi i32 [ %last_lower.378, %if.then11 ], [ %101, %if.end13.fold.split ], [ %last_lower.2, %for.inc79.i.if.end13_crit_edge ]
  %last_type.275 = phi i32 [ %last_type.276, %if.then11 ], [ %103, %if.end13.fold.split ], [ 0, %for.inc79.i.if.end13_crit_edge ]
  %done.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.end13.fold.split ], [ 1, %for.inc79.i.if.end13_crit_edge ]
  %call.i40 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i40, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i43

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i43:                                ; preds = %if.end13
  %call1.i41 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !77
  %104 = call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i47 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i = add i32 %107, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i48, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %108 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %last_type.275, ptr %5, align 4
  %109 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %last_lower.377, ptr %arrayidx1, align 4
  %110 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %last_key.779, ptr %arrayidx2, align 4
  %111 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %done.0, ptr %arrayidx3, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %112 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %113, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tipc_dest_find(ptr noundef readonly %l, i32 noundef %node, i32 noundef %port) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %0)
  %dst.015 = load ptr, ptr %l, align 4
  %cmp.not16 = icmp eq ptr %dst.015, %l
  br i1 %cmp.not16, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %dst.017 = phi ptr [ %dst.0, %for.inc.for.body_crit_edge ], [ %dst.015, %entry.for.body_crit_edge ]
  %node1 = getelementptr inbounds %struct.tipc_dest, ptr %dst.017, i32 0, i32 2
  %1 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %node)
  %cmp2 = icmp eq i32 %2, %node
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %port3 = getelementptr inbounds %struct.tipc_dest, ptr %dst.017, i32 0, i32 1
  %3 = ptrtoint ptr %port3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %port)
  %cmp4 = icmp eq i32 %4, %port
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %dst.017 to i32
  call void @__asan_load4_noabort(i32 %5)
  %dst.0 = load ptr, ptr %dst.017, align 4
  %cmp.not = icmp eq ptr %dst.0, %l
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %dst.017, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_dest_pop(ptr noundef %l, ptr noundef writeonly %node, ptr noundef writeonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %l, align 4
  %cmp.i = icmp ne ptr %1, %l
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %port, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %port3 = getelementptr inbounds %struct.tipc_dest, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port3, align 4
  %4 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %port, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %node, null
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %node7 = getelementptr inbounds %struct.tipc_dest, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %node7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %node7, align 4
  %7 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %node, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_del.exit_crit_edge

if.end8.list_del.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end8.list_del.exit_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_dest_del(ptr noundef readonly %l, i32 noundef %node, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %0)
  %dst.015.i = load ptr, ptr %l, align 4
  %cmp.not16.i = icmp eq ptr %dst.015.i, %l
  br i1 %cmp.not16.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %dst.017.i = phi ptr [ %dst.0.i, %for.inc.i.for.body.i_crit_edge ], [ %dst.015.i, %entry.for.body.i_crit_edge ]
  %node1.i = getelementptr inbounds %struct.tipc_dest, ptr %dst.017.i, i32 0, i32 2
  %1 = ptrtoint ptr %node1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %node)
  %cmp2.i = icmp eq i32 %2, %node
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %port3.i = getelementptr inbounds %struct.tipc_dest, ptr %dst.017.i, i32 0, i32 1
  %3 = ptrtoint ptr %port3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %port)
  %cmp4.i = icmp eq i32 %4, %port
  br i1 %cmp4.i, label %tipc_dest_find.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %5 = ptrtoint ptr %dst.017.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %dst.0.i = load ptr, ptr %dst.017.i, align 4
  %cmp.not.i = icmp eq ptr %dst.0.i, %l
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

tipc_dest_find.exit:                              ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %dst.017.i, null
  br i1 %tobool.not, label %tipc_dest_find.exit.cleanup_crit_edge, label %if.end

tipc_dest_find.exit.cleanup_crit_edge:            ; preds = %tipc_dest_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %tipc_dest_find.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %dst.017.i) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dst.017.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %dst.017.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dst.017.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %dst.017.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %dst.017.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dst.017.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %dst.017.i) #11
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %tipc_dest_find.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %tobool.not5 = phi i1 [ false, %tipc_dest_find.exit.cleanup_crit_edge ], [ true, %list_del.exit ], [ false, %entry.cleanup_crit_edge ], [ false, %for.inc.i.cleanup_crit_edge ]
  ret i1 %tobool.not5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_dest_list_purge(ptr noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l, align 4
  %cmp.not18 = icmp eq ptr %1, %l
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %dst.019 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %dst.019 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %dst.019, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dst.019) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dst.019, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %dst.019 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dst.019, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %dst.019 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %dst.019, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dst.019, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %dst.019) #11
  %cmp.not = icmp eq ptr %tmp.0, %l
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_dest_list_len(ptr noundef readonly %l) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.cond_crit_edge ]
  %dst.0.in = phi ptr [ %l, %entry ], [ %dst.0, %for.cond.for.cond_crit_edge ]
  %0 = ptrtoint ptr %dst.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %dst.0 = load ptr, ptr %dst.0.in, align 4
  %cmp.not = icmp eq ptr %dst.0, %l
  %inc = add i32 %i.0, 1
  br i1 %cmp.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 %i.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_erase_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sr_callbacks_rotate(ptr nocapture noundef %rb_old, ptr nocapture noundef writeonly %rb_new) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max = getelementptr i8, ptr %rb_old, i32 12
  %0 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max, align 4
  %max4 = getelementptr i8, ptr %rb_new, i32 12
  %2 = ptrtoint ptr %max4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %max4, align 4
  %upper.i = getelementptr i8, ptr %rb_old, i32 -4
  %3 = ptrtoint ptr %upper.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %upper.i, align 4
  %rb_left.i = getelementptr i8, ptr %rb_old, i32 8
  %5 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.if.end6.i_crit_edge, label %if.then.i

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %max3.i = getelementptr i8, ptr %6, i32 12
  %7 = ptrtoint ptr %max3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max3.i, align 4
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 %4) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i, %entry.if.end6.i_crit_edge
  %max.0.i = phi i32 [ %4, %entry.if.end6.i_crit_edge ], [ %9, %if.then.i ]
  %rb_right.i = getelementptr i8, ptr %rb_old, i32 4
  %10 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_right.i, align 4
  %tobool8.not.i = icmp eq ptr %11, null
  br i1 %tobool8.not.i, label %if.end6.i.sr_callbacks_compute_max.exit_crit_edge, label %if.then9.i

if.end6.i.sr_callbacks_compute_max.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sr_callbacks_compute_max.exit

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %max15.i = getelementptr i8, ptr %11, i32 12
  %12 = ptrtoint ptr %max15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max15.i, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 %max.0.i) #11
  br label %sr_callbacks_compute_max.exit

sr_callbacks_compute_max.exit:                    ; preds = %if.then9.i, %if.end6.i.sr_callbacks_compute_max.exit_crit_edge
  %max.1.i = phi i32 [ %max.0.i, %if.end6.i.sr_callbacks_compute_max.exit_crit_edge ], [ %14, %if.then9.i ]
  %15 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %max.1.i, ptr %max, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_sub_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tipc_publ_sort(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr i8, ptr %b, i32 -36
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %id4 = getelementptr i8, ptr %a, i32 -36
  %2 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id4, align 4
  %sub = sub i32 %1, %3
  %sub.lobit = lshr i32 %sub, 31
  ret i32 %sub.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !29, !30, !31, !32, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/tipc/name_table.c", i32 541, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tipc_nametbl_remove_publ._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tipc_nametbl_remove_publ._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/tipc/name_table.c", i32 772, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tipc_nametbl_publish._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @tipc_nametbl_publish._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/tipc/name_table.c", i32 846, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @tipc_nametbl_subscribe._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @tipc_nametbl_subscribe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @tipc_nametbl_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../net/tipc/name_table.c", i32 900, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @tipc_nametbl_init.__key.8, !20, !"__key", i1 false, i1 false}
!20 = !{!"../net/tipc/name_table.c", i32 902, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/tipc/name_table.c", i32 946, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/tipc/name_table.c", i32 469, i32 2}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/tipc/name_table.c", i32 266, i32 3}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tipc_service_create._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @tipc_service_create._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @tipc_service_create.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../net/tipc/name_table.c", i32 270, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/tipc/name_table.c", i32 352, i32 4}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @tipc_service_insert_publ.__UNIQUE_ID_ddebug520, !36, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!40 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/tipc/name_table.c", i32 371, i32 3}
!43 = !{ptr @tipc_service_insert_publ._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tipc_service_insert_publ._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"sr_callbacks", i1 false, i1 false}
!46 = !{!"../net/tipc/name_table.c", i32 92, i32 1}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../net/tipc/name_table.c", i32 1076, i32 4}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/net/netlink.h", i32 991, i32 3}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2149478119}
!73 = !{i64 2148273566, i64 2148273571, i64 2148273584, i64 2148273628, i64 2148273662, i64 2148273683}
!74 = !{i8 0, i8 2}
!75 = !{i64 2149376508}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 2149376774}
