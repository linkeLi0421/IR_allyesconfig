; ModuleID = '/llk/IR_all_yes/net/tipc/topsrv.c_pt.bc'
source_filename = "../net/tipc/topsrv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.tipc_conn = type { %struct.kref, i32, ptr, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.outqueue_entry = type { i8, %struct.tipc_event, %struct.list_head }
%struct.tipc_event = type { i32, i32, i32, %struct.tipc_socket_addr, %struct.tipc_subscr }
%struct.tipc_socket_addr = type { i32, i32 }
%struct.tipc_subscr = type { %struct.tipc_service_range, i32, i32, [8 x i8] }
%struct.tipc_service_range = type { i32, i32, i32 }
%struct.tipc_topsrv = type { %struct.idr, %struct.spinlock, i32, ptr, %struct.work_struct, ptr, ptr, ptr, [32 x i8] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tipc_subscription = type { %struct.tipc_subscr, %struct.tipc_event, %struct.kref, ptr, %struct.timer_list, %struct.list_head, %struct.list_head, i32, i8, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sockaddr_tipc = type { i16, i8, i8, %union.anon.147 }
%union.anon.147 = type { %struct.tipc_service_range }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.131, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.132, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.133, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
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
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.131 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.132 = type { ptr }
%union.anon.133 = type { ptr }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.126, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.126 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.81, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.79 }
%union.anon.20 = type { ptr }
%union.anon.79 = type { i64 }
%union.anon.81 = type { ptr }
%struct.kvec = type { ptr, i32 }
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

@tipc_net_id = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tipc_conn_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&con->outqueue_lock\00", [44 x i8] zeroinitializer }, align 32
@tipc_conn_alloc.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&con->sub_lock\00", [17 x i8] zeroinitializer }, align 32
@tipc_conn_alloc.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&con->swork)\00", [33 x i8] zeroinitializer }, align 32
@tipc_conn_alloc.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&con->rwork)\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/tipc/topsrv.c\00", [46 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@tipc_conn_rcv_sub._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.12, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014tipc: Subscription rejected, max (%u)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tipc_conn_rcv_sub\00", [46 x i8] zeroinitializer }, align 32
@tipc_conn_rcv_sub._entry_ptr = internal global ptr @tipc_conn_rcv_sub._entry, section ".printk_index", align 4
@__const.tipc_topsrv_start.name = private unnamed_addr constant [16 x i8] c"topology_server\00", align 1
@tipc_topsrv_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&srv->awork)\00", [33 x i8] zeroinitializer }, align 32
@tipc_topsrv_start.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&srv->idr_lock\00", [17 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tipc_rcv\00", [23 x i8] zeroinitializer }, align 32
@tipc_topsrv_work_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.12, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013tipc: can't start tipc receive workqueue\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tipc_topsrv_work_start\00", [41 x i8] zeroinitializer }, align 32
@tipc_topsrv_work_start._entry_ptr = internal global ptr @tipc_topsrv_work_start._entry, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tipc_send\00", [22 x i8] zeroinitializer }, align 32
@tipc_topsrv_work_start._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.12, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013tipc: can't start tipc send workqueue\0A\00", [55 x i8] zeroinitializer }, align 32
@tipc_topsrv_work_start._entry_ptr.26 = internal global ptr @tipc_topsrv_work_start._entry.24, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 28, i64 4294967285]
@___asan_gen_.32 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 45, i32 7 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 695, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 723, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 191, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 192, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 193, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 194, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 277, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1984, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 372, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 655, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 661, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 378, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 621, i32 14 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 623, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 627, i32 15 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [21 x i8] c"../net/tipc/topsrv.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 629, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @tipc_conn_rcv_sub._entry, ptr @tipc_conn_rcv_sub._entry_ptr, ptr @tipc_topsrv_work_start._entry, ptr @tipc_topsrv_work_start._entry.24, ptr @tipc_topsrv_work_start._entry_ptr, ptr @tipc_topsrv_work_start._entry_ptr.26, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tipc_conn_alloc.__key, ptr @.str.5, ptr @tipc_conn_alloc.__key.6, ptr @.str.7, ptr @tipc_conn_alloc.__key.8, ptr @.str.9, ptr @tipc_conn_alloc.__key.10, ptr @.str.11, ptr @.str.12, ptr @skb_queue_head_init.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @tipc_topsrv_start.__key, ptr @.str.16, ptr @tipc_topsrv_start.__key.17, ptr @.str.18, ptr @xa_init_flags.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_conn_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_conn_alloc.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_conn_alloc.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_conn_alloc.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_conn_rcv_sub._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_topsrv_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_topsrv_start.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_topsrv_work_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_topsrv_work_start._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_topsrv_queue_evt(ptr noundef %net, i32 noundef %conid, i32 noundef %event, ptr nocapture noundef readonly %evt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #10
  %topsrv.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 22
  %0 = ptrtoint ptr %topsrv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %topsrv.i, align 4
  %call1 = tail call fastcc ptr @tipc_conn_lookup(ptr noundef %1, i32 noundef %conid)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %connected.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

connected.exit:                                   ; preds = %entry
  %flags.i = getelementptr inbounds %struct.tipc_conn, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.i.not = icmp eq i32 %4, 0
  br i1 %tobool1.i.not, label %connected.exit.err_crit_edge, label %if.end4

connected.exit.err_crit_edge:                     ; preds = %connected.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end4:                                          ; preds = %connected.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2592, i32 noundef 60) #13
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %if.end4.err_crit_edge, label %if.end8

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %event)
  %cmp = icmp eq i32 %event, 3
  %frombool = zext i1 %cmp to i8
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %call7.i, align 8
  %evt9 = getelementptr inbounds %struct.outqueue_entry, ptr %call7.i, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %evt9, ptr %evt, i32 48)
  %outqueue_lock = getelementptr inbounds %struct.tipc_conn, ptr %call1, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %outqueue_lock) #10
  %list = getelementptr inbounds %struct.outqueue_entry, ptr %call7.i, i32 0, i32 2
  %outqueue = getelementptr inbounds %struct.tipc_conn, ptr %call1, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.tipc_conn, ptr %call1, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %9, ptr noundef %outqueue) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_add_tail.exit_crit_edge

if.end8.list_add_tail.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %outqueue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.outqueue_entry, ptr %call7.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 8
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end8.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %outqueue_lock) #10
  %send_wq = getelementptr inbounds %struct.tipc_topsrv, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %send_wq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %send_wq, align 4
  %swork = getelementptr inbounds %struct.tipc_conn, ptr %call1, i32 0, i32 10
  %call.i26 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %swork) #10
  br i1 %call.i26, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.err_crit_edge

list_add_tail.exit.err_crit_edge:                 ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err:                                              ; preds = %list_add_tail.exit.err_crit_edge, %if.end4.err_crit_edge, %connected.exit.err_crit_edge
  tail call fastcc void @conn_put(ptr noundef nonnull %call1)
  br label %cleanup

cleanup:                                          ; preds = %err, %list_add_tail.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_conn_lookup(ptr noundef %s, i32 noundef %conid) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idr_lock = getelementptr inbounds %struct.tipc_topsrv, ptr %s, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %idr_lock) #10
  %call = tail call ptr @idr_find(ptr noundef %s, i32 noundef %conid) #10
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %connected.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

connected.exit:                                   ; preds = %entry
  %flags.i = getelementptr inbounds %struct.tipc_conn, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.i.not = icmp eq i32 %2, 0
  br i1 %tobool1.i.not, label %connected.exit.if.then_crit_edge, label %lor.lhs.false

connected.exit.if.then_crit_edge:                 ; preds = %connected.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %connected.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call, i32 noundef 4) #10
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %call, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false
  %5 = phi i32 [ %4, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %6 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %5, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %9 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 %8, i32 %add.i.i.i.i, ptr nonnull elementtype(i32) %call) #10, !srcloc !65
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %8
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !66

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %11, 1
  %12 = or i32 %add5.i.i.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !66

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 0) #10
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %14 = phi i32 [ %11, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.i.i.i.i.not = icmp eq i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.if.then_crit_edge, label %kref_get_unless_zero.exit.if.end_crit_edge

kref_get_unless_zero.exit.if.end_crit_edge:       ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

kref_get_unless_zero.exit.if.then_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %kref_get_unless_zero.exit.if.then_crit_edge, %connected.exit.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %kref_get_unless_zero.exit.if.end_crit_edge
  %con.0 = phi ptr [ %call, %kref_get_unless_zero.exit.if.end_crit_edge ], [ null, %if.then ]
  call void @_raw_spin_unlock_bh(ptr noundef %idr_lock) #10
  ret ptr %con.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @conn_put(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %con, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %con, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %con, ptr %con, i32 1, ptr elementtype(i32) %con) #10, !srcloc !68
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !66

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %con, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  %server.i.i = getelementptr inbounds %struct.tipc_conn, ptr %con, i32 0, i32 4
  %1 = ptrtoint ptr %server.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %server.i.i, align 4
  %idr_lock.i.i = getelementptr inbounds %struct.tipc_topsrv, ptr %2, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %idr_lock.i.i) #10
  %conid.i.i = getelementptr inbounds %struct.tipc_conn, ptr %con, i32 0, i32 1
  %3 = ptrtoint ptr %conid.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %conid.i.i, align 4
  %call.i.i = tail call ptr @idr_remove(ptr noundef %2, i32 noundef %4) #10
  %idr_in_use.i.i = getelementptr inbounds %struct.tipc_topsrv, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %idr_in_use.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idr_in_use.i.i, align 4
  %dec.i.i = add i32 %6, -1
  store i32 %dec.i.i, ptr %idr_in_use.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %idr_lock.i.i) #10
  %sock.i.i = getelementptr inbounds %struct.tipc_conn, ptr %con, i32 0, i32 2
  %7 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sock.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sock_release(ptr noundef nonnull %8) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %outqueue_lock.i.i = getelementptr inbounds %struct.tipc_conn, ptr %con, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %outqueue_lock.i.i) #10
  %outqueue.i.i = getelementptr inbounds %struct.tipc_conn, ptr %con, i32 0, i32 8
  %9 = ptrtoint ptr %outqueue.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %outqueue.i.i, align 4
  %cmp.not35.i.i = icmp eq ptr %10, %outqueue.i.i
  br i1 %cmp.not35.i.i, label %if.end.i.i.tipc_conn_kref_release.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.tipc_conn_kref_release.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_conn_kref_release.exit.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %.pn.in36.i.i = phi ptr [ %.pn.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %10, %if.end.i.i.for.body.i.i_crit_edge ]
  %e.0.i.i = getelementptr i8, ptr %.pn.in36.i.i, i32 -52
  %11 = ptrtoint ptr %.pn.in36.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i = load ptr, ptr %.pn.in36.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in36.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i.i, align 4
  %14 = ptrtoint ptr %.pn.in36.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn.in36.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %18 = ptrtoint ptr %.pn.in36.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in36.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %e.0.i.i) #10
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %outqueue.i.i
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.tipc_conn_kref_release.exit.i_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

list_del.exit.i.i.tipc_conn_kref_release.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_conn_kref_release.exit.i

tipc_conn_kref_release.exit.i:                    ; preds = %list_del.exit.i.i.tipc_conn_kref_release.exit.i_crit_edge, %if.end.i.i.tipc_conn_kref_release.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %outqueue_lock.i.i) #10
  tail call void @kfree(ptr noundef %con) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %tipc_conn_kref_release.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_topsrv_kern_subscr(ptr noundef %net, i32 noundef %port, i32 noundef %type, i32 noundef %lower, i32 noundef %upper, i32 noundef %filter, ptr nocapture noundef writeonly %conid) local_unnamed_addr #0 align 64 {
entry:
  %sub = alloca %struct.tipc_subscr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sub) #10
  %0 = getelementptr inbounds %struct.tipc_service_range, ptr %sub, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tipc_service_range, ptr %sub, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tipc_subscr, ptr %sub, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tipc_subscr, ptr %sub, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tipc_subscr, ptr %sub, i32 0, i32 3
  %5 = getelementptr inbounds i8, ptr %sub, i32 24
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %sub to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %type, ptr %sub, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lower, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %upper, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %filter, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %port, ptr %4, align 4
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #10
  %topsrv.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 22
  %13 = ptrtoint ptr %topsrv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %topsrv.i, align 4
  %call7 = tail call fastcc ptr @tipc_conn_alloc(ptr noundef %14)
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conid9 = getelementptr inbounds %struct.tipc_conn, ptr %call7, i32 0, i32 1
  %15 = ptrtoint ptr %conid9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %conid9, align 4
  %17 = ptrtoint ptr %conid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %conid, align 4
  %sock = getelementptr inbounds %struct.tipc_conn, ptr %call7, i32 0, i32 2
  %18 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sock, align 4
  %call.i21 = tail call fastcc ptr @tipc_net(ptr noundef %net) #10
  %topsrv.i22 = getelementptr inbounds %struct.tipc_net, ptr %call.i21, i32 0, i32 22
  %19 = ptrtoint ptr %topsrv.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %topsrv.i22, align 4
  %call11 = call fastcc i32 @tipc_conn_rcv_sub(ptr noundef %20, ptr noundef %call7, ptr noundef nonnull %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp = icmp sgt i32 %call11, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @conn_put(ptr noundef %call7)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end13 ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sub) #10
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_conn_alloc(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 212) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call7.i.i, align 8
  %outqueue = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %outqueue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %outqueue, ptr %outqueue, align 4
  %prev.i = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %outqueue, ptr %prev.i, align 8
  %sub_list = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %sub_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %sub_list, ptr %sub_list, align 4
  %prev.i62 = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %prev.i62 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sub_list, ptr %prev.i62, align 8
  %outqueue_lock = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %outqueue_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @tipc_conn_alloc.__key, i16 noundef signext 3) #10
  %sub_lock = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %sub_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @tipc_conn_alloc.__key.6, i16 noundef signext 3) #10
  %swork = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %swork, i32 noundef 0) #10
  %6 = ptrtoint ptr %swork to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %swork, align 8
  %lockdep_map = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @tipc_conn_alloc.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry11 = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i63 = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i63 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry11, ptr %prev.i63, align 8
  %func = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 10, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tipc_conn_send_work, ptr %func, align 4
  %rwork = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %rwork, i32 noundef 0) #10
  %10 = ptrtoint ptr %rwork to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %rwork, align 8
  %lockdep_map21 = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map21, ptr noundef nonnull @.str.11, ptr noundef nonnull @tipc_conn_alloc.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry23 = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i64 = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry23, ptr %prev.i64, align 8
  %func25 = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %func25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tipc_conn_recv_work, ptr %func25, align 4
  %idr_lock = getelementptr inbounds %struct.tipc_topsrv, ptr %s, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %idr_lock) #10
  %call28 = tail call i32 @idr_alloc(ptr noundef %s, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %idr_lock) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conid = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %conid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call28, ptr %conid, align 4
  %idr_in_use = getelementptr inbounds %struct.tipc_topsrv, ptr %s, i32 0, i32 2
  %15 = ptrtoint ptr %idr_in_use to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idr_in_use, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %idr_in_use, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %idr_lock) #10
  %flags = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #10
  %server = getelementptr inbounds %struct.tipc_conn, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %server to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %s, ptr %server, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then29, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then29 ], [ %call7.i.i, %if.end32 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_conn_rcv_sub(ptr nocapture noundef readonly %srv, ptr noundef %con, ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.tipc_topsrv, ptr %srv, i32 0, i32 3
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call = tail call fastcc ptr @tipc_net(ptr noundef %1)
  %filter = getelementptr inbounds %struct.tipc_subscr, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %filter, align 4
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %cond = select i1 %tobool.not, i32 %4, i32 %3
  %and3 = and i32 %cond, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and7 = and i32 %cond, -5
  %5 = tail call i32 @llvm.bswap.i32(i32 %and7)
  %cond19 = select i1 %tobool.not, i32 %5, i32 %and7
  %6 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond19, ptr %filter, align 4
  tail call fastcc void @tipc_conn_delete_sub(ptr noundef %con, ptr noundef %s)
  br label %cleanup

if.end:                                           ; preds = %entry
  %subscription_count = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %subscription_count, i32 noundef 4) #10
  %7 = ptrtoint ptr %subscription_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %subscription_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %8)
  %cmp = icmp sgt i32 %8, 65534
  br i1 %cmp, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 65535) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %9 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net, align 4
  %conid = getelementptr inbounds %struct.tipc_conn, ptr %con, i32 0, i32 1
  %11 = ptrtoint ptr %conid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %conid, align 4
  %call27 = tail call ptr @tipc_sub_subscribe(ptr noundef %10, ptr noundef %s, i32 noundef %12) #10
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %if.end30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %call.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscription_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %subscription_count, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %subscription_count, ptr %subscription_count, i32 1, ptr elementtype(i32) %subscription_count) #10, !srcloc !70
  %sub_lock = getelementptr inbounds %struct.tipc_conn, ptr %con, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sub_lock) #10
  %sub_list = getelementptr inbounds %struct.tipc_subscription, ptr %call27, i32 0, i32 6
  %sub_list32 = getelementptr inbounds %struct.tipc_conn, ptr %con, i32 0, i32 5
  %14 = ptrtoint ptr %sub_list32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sub_list32, align 4
  %call.i.i52 = tail call zeroext i1 @__list_add_valid(ptr noundef %sub_list, ptr noundef %sub_list32, ptr noundef %15) #10
  br i1 %call.i.i52, label %if.end.i.i, label %if.end30.list_add.exit_crit_edge

if.end30.list_add.exit_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sub_list, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %sub_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %sub_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.tipc_subscription, ptr %call27, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sub_list32, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %sub_list32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %sub_list, ptr %sub_list32, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end30.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sub_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.end25.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %do.end ], [ 0, %list_add.exit ], [ -1, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_topsrv_kern_unsubscr(ptr noundef %net, i32 noundef %conid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #10
  %topsrv.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 22
  %0 = ptrtoint ptr %topsrv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %topsrv.i, align 4
  %call1 = tail call fastcc ptr @tipc_conn_lookup(ptr noundef %1, i32 noundef %conid)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.tipc_conn, ptr %call1, i32 0, i32 3
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #10
  %server.i = getelementptr inbounds %struct.tipc_conn, ptr %call1, i32 0, i32 4
  %2 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %server.i, align 4
  %net.i = getelementptr inbounds %struct.tipc_topsrv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i, align 4
  %call.i7 = tail call fastcc ptr @tipc_net(ptr noundef %5) #10
  %sub_list1.i = getelementptr inbounds %struct.tipc_conn, ptr %call1, i32 0, i32 5
  %sub_lock.i = getelementptr inbounds %struct.tipc_conn, ptr %call1, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sub_lock.i) #10
  %6 = ptrtoint ptr %sub_list1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sub_list1.i, align 4
  %cmp.not37.i = icmp eq ptr %7, %sub_list1.i
  br i1 %cmp.not37.i, label %if.end.tipc_conn_delete_sub.exit_crit_edge, label %for.body.lr.ph.i

if.end.tipc_conn_delete_sub.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_conn_delete_sub.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %subscription_count.c32.i = getelementptr inbounds %struct.tipc_net, ptr %call.i7, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in38.i = phi ptr [ %7, %for.body.lr.ph.i ], [ %.pn40.i, %for.body.i.for.body.i_crit_edge ]
  %sub.039.i = getelementptr i8, ptr %.pn.in38.i, i32 -140
  %8 = ptrtoint ptr %.pn.in38.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn40.i = load ptr, ptr %.pn.in38.i, align 4
  tail call void @tipc_sub_unsubscribe(ptr noundef %sub.039.i) #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscription_count.c32.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %subscription_count.c32.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %subscription_count.c32.i, ptr %subscription_count.c32.i, i32 1, ptr elementtype(i32) %subscription_count.c32.i) #10, !srcloc !71
  %cmp.not.i = icmp eq ptr %.pn40.i, %sub_list1.i
  br i1 %cmp.not.i, label %for.body.i.tipc_conn_delete_sub.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.tipc_conn_delete_sub.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_conn_delete_sub.exit

tipc_conn_delete_sub.exit:                        ; preds = %for.body.i.tipc_conn_delete_sub.exit_crit_edge, %if.end.tipc_conn_delete_sub.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sub_lock.i) #10
  tail call fastcc void @conn_put(ptr noundef nonnull %call1)
  tail call fastcc void @conn_put(ptr noundef nonnull %call1)
  br label %cleanup

cleanup:                                          ; preds = %tipc_conn_delete_sub.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_conn_delete_sub(ptr noundef %con, ptr noundef readonly %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %server = getelementptr inbounds %struct.tipc_conn, ptr %con, i32 0, i32 4
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 4
  %net = getelementptr inbounds %struct.tipc_topsrv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %call = tail call fastcc ptr @tipc_net(ptr noundef %3)
  %sub_list1 = getelementptr inbounds %struct.tipc_conn, ptr %con, i32 0, i32 5
  %sub_lock = getelementptr inbounds %struct.tipc_conn, ptr %con, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sub_lock) #10
  %4 = ptrtoint ptr %sub_list1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sub_list1, align 4
  %cmp.not37 = icmp eq ptr %5, %sub_list1
  br i1 %cmp.not37, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %s, null
  %subscription_count.c32 = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in38 = phi ptr [ %5, %for.body.lr.ph ], [ %.pn40, %for.inc.for.body_crit_edge ]
  %sub.039 = getelementptr i8, ptr %.pn.in38, i32 -140
  %6 = ptrtoint ptr %.pn.in38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn40 = load ptr, ptr %.pn.in38, align 4
  br i1 %tobool.not, label %for.inc.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %s9 = getelementptr i8, ptr %.pn.in38, i32 -92
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(28) %s, ptr noundef dereferenceable(28) %s9, i32 28) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool11.not = icmp eq i32 %bcmp, 0
  br i1 %tobool11.not, label %for.end.critedge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc.critedge:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tipc_sub_unsubscribe(ptr noundef %sub.039) #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscription_count.c32, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %subscription_count.c32, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %subscription_count.c32, ptr %subscription_count.c32, i32 1, ptr elementtype(i32) %subscription_count.c32) #10, !srcloc !71
  br label %for.inc

for.inc:                                          ; preds = %for.inc.critedge, %lor.lhs.false.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn40, %sub_list1
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end.critedge:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tipc_sub_unsubscribe(ptr noundef %sub.039) #10
  %call.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscription_count.c32, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %subscription_count.c32, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %subscription_count.c32, ptr %subscription_count.c32, i32 1, ptr elementtype(i32) %subscription_count.c32) #10, !srcloc !71
  br label %for.end

for.end:                                          ; preds = %for.end.critedge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sub_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_topsrv_init_net(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  %lsock.i.i = alloca ptr, align 4
  %saddr.i.i = alloca %struct.sockaddr_tipc, align 4
  %name.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #10
  %0 = call ptr @memcpy(ptr %name.i, ptr @__const.tipc_topsrv_start.name, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 200) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.tipc_topsrv_start.exit_crit_edge, label %if.end.i

entry.tipc_topsrv_start.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_topsrv_start.exit

if.end.i:                                         ; preds = %entry
  %net2.i = getelementptr inbounds %struct.tipc_topsrv, ptr %call7.i.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %net2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %net, ptr %net2.i, align 4
  %awork.i = getelementptr inbounds %struct.tipc_topsrv, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %awork.i, i32 noundef 0) #10
  %3 = ptrtoint ptr %awork.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %awork.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.tipc_topsrv, ptr %call7.i.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @tipc_topsrv_start.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry6.i = getelementptr inbounds %struct.tipc_topsrv, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %entry6.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry6.i, ptr %entry6.i, align 4
  %prev.i.i = getelementptr inbounds %struct.tipc_topsrv, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry6.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.tipc_topsrv, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tipc_topsrv_accept, ptr %func.i, align 4
  %name8.i = getelementptr inbounds %struct.tipc_topsrv, ptr %call7.i.i.i, i32 0, i32 8
  %call10.i = call i32 @strscpy(ptr noundef %name8.i, ptr noundef nonnull %name.i, i32 noundef 32) #10
  %topsrv.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 22
  %7 = ptrtoint ptr %topsrv.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %topsrv.i, align 4
  %subscription_count.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 23
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %subscription_count.i, i32 noundef 4) #10
  %8 = ptrtoint ptr %subscription_count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %subscription_count.i, align 4
  %idr_lock.i = getelementptr inbounds %struct.tipc_topsrv, ptr %call7.i.i.i, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %idr_lock.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @tipc_topsrv_start.__key.17, i16 noundef signext 3) #10
  call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 67108868, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %xa_head.i.i.i.i, align 8
  %idr_base.i.i.i = getelementptr inbounds %struct.idr, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %idr_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idr_base.i.i.i, align 4
  %idr_next.i.i.i = getelementptr inbounds %struct.idr, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %idr_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %idr_next.i.i.i, align 8
  %idr_in_use.i = getelementptr inbounds %struct.tipc_topsrv, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %idr_in_use.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %idr_in_use.i, align 8
  %call.i.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.20, i32 noundef 655362, i32 noundef 1) #10
  %rcv_wq.i.i = getelementptr inbounds %struct.tipc_topsrv, ptr %call7.i.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %rcv_wq.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %rcv_wq.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #14
  br label %err_start.i

if.end.i.i:                                       ; preds = %if.end.i
  %call3.i.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.23, i32 noundef 655362, i32 noundef 1) #10
  %send_wq.i.i = getelementptr inbounds %struct.tipc_topsrv, ptr %call7.i.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %send_wq.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call3.i.i, ptr %send_wq.i.i, align 8
  %tobool5.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool5.not.i.i, label %do.end8.i.i, label %if.end17.i

do.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #14
  %16 = ptrtoint ptr %rcv_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rcv_wq.i.i, align 4
  call void @destroy_workqueue(ptr noundef %17) #10
  br label %err_start.i

if.end17.i:                                       ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lsock.i.i) #10
  %18 = ptrtoint ptr %lsock.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %lsock.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %saddr.i.i) #10
  %19 = getelementptr inbounds %struct.sockaddr_tipc, ptr %saddr.i.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.sockaddr_tipc, ptr %saddr.i.i, i32 0, i32 2
  %21 = getelementptr inbounds %struct.sockaddr_tipc, ptr %saddr.i.i, i32 0, i32 3
  %22 = getelementptr inbounds %struct.sockaddr_tipc, ptr %saddr.i.i, i32 0, i32 3, i32 0, i32 1
  %23 = getelementptr inbounds %struct.sockaddr_tipc, ptr %saddr.i.i, i32 0, i32 3, i32 0, i32 2
  %24 = call ptr @memset(ptr %saddr.i.i, i32 255, i32 16)
  %25 = ptrtoint ptr %net2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net2.i, align 4
  %call.i44.i = call i32 @sock_create_kern(ptr noundef %26, i32 noundef 30, i32 noundef 5, i32 noundef 0, ptr noundef nonnull %lsock.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %cmp.i.i = icmp slt i32 %call.i44.i, 0
  br i1 %cmp.i.i, label %if.end17.i.err_create.i_crit_edge, label %if.end.i46.i

if.end17.i.err_create.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_create.i

if.end.i46.i:                                     ; preds = %if.end17.i
  %27 = ptrtoint ptr %lsock.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lsock.i.i, align 4
  %listener.i.i = getelementptr inbounds %struct.tipc_topsrv, ptr %call7.i.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %listener.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %listener.i.i, align 4
  %sk1.i.i = getelementptr inbounds %struct.socket, ptr %28, i32 0, i32 4
  %30 = ptrtoint ptr %sk1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk1.i.i, align 16
  %sk_callback_lock.i.i = getelementptr inbounds %struct.sock, ptr %31, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i.i) #10
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %31, i32 0, i32 77
  %32 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @tipc_topsrv_listener_data_ready, ptr %sk_data_ready.i.i, align 8
  %sk_user_data.i.i = getelementptr inbounds %struct.sock, ptr %31, i32 0, i32 72
  %33 = ptrtoint ptr %sk_user_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i.i, ptr %sk_user_data.i.i, align 4
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i.i) #10
  call void @lock_sock_nested(ptr noundef %31, i32 noundef 0) #10
  %call3.i45.i = call i32 @tsk_set_importance(ptr noundef %31, i32 noundef 3) #10
  call void @release_sock(ptr noundef %31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i45.i)
  %cmp4.i.i = icmp slt i32 %call3.i45.i, 0
  br i1 %cmp4.i.i, label %if.end.i46.i.err.i.i_crit_edge, label %if.end6.i.i

if.end.i46.i.err.i.i_crit_edge:                   ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

if.end6.i.i:                                      ; preds = %if.end.i46.i
  %34 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 30, ptr %saddr.i.i, align 4
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %19, align 2
  %36 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %21, align 4
  %37 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %22, align 4
  %38 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %23, align 4
  %39 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %20, align 1
  %40 = ptrtoint ptr %lsock.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lsock.i.i, align 4
  %call9.i.i = call i32 @tipc_sk_bind(ptr noundef %41, ptr noundef nonnull %saddr.i.i, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %if.end6.i.i.err.i.i_crit_edge, label %if.end12.i.i

if.end6.i.i.err.i.i_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

if.end12.i.i:                                     ; preds = %if.end6.i.i
  %42 = ptrtoint ptr %lsock.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lsock.i.i, align 4
  %call13.i.i = call i32 @kernel_listen(ptr noundef %43, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp14.i.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp14.i.i, label %if.end12.i.i.err.i.i_crit_edge, label %tipc_topsrv_create_listener.exit.i

if.end12.i.i.err.i.i_crit_edge:                   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

err.i.i:                                          ; preds = %if.end12.i.i.err.i.i_crit_edge, %if.end6.i.i.err.i.i_crit_edge, %if.end.i46.i.err.i.i_crit_edge
  %44 = ptrtoint ptr %lsock.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lsock.i.i, align 4
  call void @sock_release(ptr noundef %45) #10
  br label %err_create.i

tipc_topsrv_create_listener.exit.i:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %lsock.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lsock.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.socket, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i.i, align 4
  %owner.i.i = getelementptr inbounds %struct.proto_ops, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %owner.i.i, align 4
  call void @module_put(ptr noundef %51) #10
  %sk_prot_creator.i.i = getelementptr inbounds %struct.sock, ptr %31, i32 0, i32 49
  %52 = ptrtoint ptr %sk_prot_creator.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sk_prot_creator.i.i, align 4
  %owner17.i.i = getelementptr inbounds %struct.proto, ptr %53, i32 0, i32 51
  %54 = ptrtoint ptr %owner17.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %owner17.i.i, align 4
  call void @module_put(ptr noundef %55) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lsock.i.i) #10
  br label %tipc_topsrv_start.exit

err_create.i:                                     ; preds = %err.i.i, %if.end17.i.err_create.i_crit_edge
  %retval.0.i47.ph.i = phi i32 [ %call.i44.i, %if.end17.i.err_create.i_crit_edge ], [ -22, %err.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lsock.i.i) #10
  %56 = ptrtoint ptr %rcv_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rcv_wq.i.i, align 4
  call void @destroy_workqueue(ptr noundef %57) #10
  %58 = ptrtoint ptr %send_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %send_wq.i.i, align 8
  call void @destroy_workqueue(ptr noundef %59) #10
  br label %err_start.i

err_start.i:                                      ; preds = %err_create.i, %do.end8.i.i, %do.end.i.i
  %ret.0.i = phi i32 [ %retval.0.i47.ph.i, %err_create.i ], [ -12, %do.end8.i.i ], [ -12, %do.end.i.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %tipc_topsrv_start.exit

tipc_topsrv_start.exit:                           ; preds = %err_start.i, %tipc_topsrv_create_listener.exit.i, %entry.tipc_topsrv_start.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %err_start.i ], [ -12, %entry.tipc_topsrv_start.exit_crit_edge ], [ 0, %tipc_topsrv_create_listener.exit.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_topsrv_exit_net(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #10
  %topsrv.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 22
  %0 = ptrtoint ptr %topsrv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %topsrv.i.i, align 4
  %listener.i = getelementptr inbounds %struct.tipc_topsrv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %listener.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %listener.i, align 4
  %idr_lock.i = getelementptr inbounds %struct.tipc_topsrv, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %idr_lock.i) #10
  %idr_in_use.i = getelementptr inbounds %struct.tipc_topsrv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %idr_in_use.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idr_in_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not23.i = icmp eq i32 %5, 0
  br i1 %tobool.not23.i, label %entry.tipc_topsrv_stop.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.tipc_topsrv_stop.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_topsrv_stop.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %id.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call1.i = tail call ptr @idr_find(ptr noundef %1, i32 noundef %id.024.i) #10
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %idr_lock.i) #10
  tail call fastcc void @tipc_conn_close(ptr noundef nonnull %call1.i) #10
  tail call void @_raw_spin_lock_bh(ptr noundef %idr_lock.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %id.024.i, 1
  %6 = ptrtoint ptr %idr_in_use.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idr_in_use.i, align 4
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %for.inc.i.tipc_topsrv_stop.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.tipc_topsrv_stop.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_topsrv_stop.exit

tipc_topsrv_stop.exit:                            ; preds = %for.inc.i.tipc_topsrv_stop.exit_crit_edge, %entry.tipc_topsrv_stop.exit_crit_edge
  %ops.i = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %owner.i = getelementptr inbounds %struct.proto_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %owner.i, align 4
  tail call void @__module_get(ptr noundef %11) #10
  %sk.i = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk.i, align 16
  %sk_prot_creator.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 49
  %14 = ptrtoint ptr %sk_prot_creator.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk_prot_creator.i, align 4
  %owner5.i = getelementptr inbounds %struct.proto, ptr %15, i32 0, i32 51
  %16 = ptrtoint ptr %owner5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner5.i, align 4
  tail call void @__module_get(ptr noundef %17) #10
  %18 = ptrtoint ptr %listener.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %listener.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %idr_lock.i) #10
  tail call void @sock_release(ptr noundef %3) #10
  %rcv_wq.i.i = getelementptr inbounds %struct.tipc_topsrv, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %rcv_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rcv_wq.i.i, align 4
  tail call void @destroy_workqueue(ptr noundef %20) #10
  %send_wq.i.i = getelementptr inbounds %struct.tipc_topsrv, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %send_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %send_wq.i.i, align 4
  tail call void @destroy_workqueue(ptr noundef %22) #10
  tail call void @idr_destroy(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_net(ptr noundef %net) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #10
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_conn_send_work(ptr noundef %work) #0 align 64 {
entry:
  %evtq.i.i = alloca %struct.sk_buff_head, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %iov.i = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -168
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %connected.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

connected.exit:                                   ; preds = %entry
  %flags.i = getelementptr i8, ptr %work, i32 -156
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.i.not = icmp eq i32 %2, 0
  br i1 %tobool1.i.not, label %connected.exit.if.end_crit_edge, label %if.then

connected.exit.if.end_crit_edge:                  ; preds = %connected.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %connected.exit
  %outqueue.i = getelementptr i8, ptr %work, i32 -52
  %server.i = getelementptr i8, ptr %work, i32 -152
  %3 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %server.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  %5 = call ptr @memset(ptr %msg.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i) #10
  %6 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov.i, align 4, !annotation !74
  %7 = getelementptr inbounds %struct.kvec, ptr %iov.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !74
  %outqueue_lock.i = getelementptr i8, ptr %work, i32 -44
  tail call void @_raw_spin_lock_bh(ptr noundef %outqueue_lock.i) #10
  %9 = ptrtoint ptr %outqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %outqueue.i, align 4
  %cmp.i.not51.i = icmp eq ptr %10, %outqueue.i
  br i1 %cmp.i.not51.i, label %if.then.while.end.i_crit_edge, label %while.body.lr.ph.i

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then
  %msg_flags.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 6
  %sock.i = getelementptr i8, ptr %work, i32 -160
  %net.i = getelementptr inbounds %struct.tipc_topsrv, ptr %4, i32 0, i32 3
  %lock.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %evtq.i.i, i32 0, i32 2
  %prev.i.i.i.i = getelementptr inbounds %struct.anon.90, ptr %evtq.i.i, i32 0, i32 1
  %qlen.i.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %evtq.i.i, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %11 = phi ptr [ %10, %while.body.lr.ph.i ], [ %54, %list_del.exit.i.while.body.i_crit_edge ]
  %count.052.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %count.1.i, %list_del.exit.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %11, i32 -52
  %evt1.i = getelementptr i8, ptr %11, i32 -48
  call void @_raw_spin_unlock_bh(ptr noundef %outqueue_lock.i) #10
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not.i = icmp eq i8 %13, 0
  br i1 %tobool3.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %s.i = getelementptr i8, ptr %11, i32 -28
  call fastcc void @tipc_conn_delete_sub(ptr noundef nonnull %add.ptr, ptr noundef %s.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %14 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %15 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 64, ptr %msg_flags.i, align 4
  %16 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %evt1.i, ptr %iov.i, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 48, ptr %7, align 4
  %18 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sock.i, align 4
  %tobool4.not.i = icmp eq ptr %19, null
  br i1 %tobool4.not.i, label %if.else16.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  %call7.i = call i32 @kernel_sendmsg(ptr noundef nonnull %19, ptr noundef nonnull %msg.i, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef 48) #10
  %20 = zext i32 %call7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7.i, label %if.else.i [
    i32 -11, label %if.then5.i.if.then9.i_crit_edge
    i32 0, label %if.then5.i.if.then9.i_crit_edge3
  ]

if.then5.i.if.then9.i_crit_edge3:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

if.then5.i.if.then9.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.then5.i.if.then9.i_crit_edge, %if.then5.i.if.then9.i_crit_edge3
  call void @__might_resched(ptr noundef nonnull @.str.12, i32 noundef 277, i32 noundef 0) #10
  %call.i.i = call i32 @__cond_resched() #10
  br label %tipc_conn_send_to_sock.exit

if.else.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp12.i = icmp slt i32 %call7.i, 0
  br i1 %cmp12.i, label %if.then13.i, label %if.else.i.if.end17.i_crit_edge

if.else.i.if.end17.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @tipc_conn_close(ptr noundef nonnull %add.ptr) #10
  br label %tipc_conn_send_to_sock.exit

if.else16.i:                                      ; preds = %if.end.i
  %21 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i, align 4
  %usr_handle.i.i = getelementptr i8, ptr %11, i32 -8
  %23 = ptrtoint ptr %usr_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %usr_handle.i.i, align 4
  %call.i.i.i = call fastcc ptr @tipc_net(ptr noundef %22) #10
  %node_addr.i.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %node_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %node_addr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %evtq.i.i) #10
  %27 = call ptr @memset(ptr %evtq.i.i, i32 255, i32 56)
  %call1.i.i = call ptr @tipc_msg_create(i32 noundef 15, i32 noundef 0, i32 noundef 40, i32 noundef 48, i32 noundef %26, i32 noundef %26, i32 noundef %24, i32 noundef %24, i32 noundef 0) #10
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %if.else16.i.tipc_topsrv_kern_evt.exit.i_crit_edge, label %if.end.i.i

if.else16.i.tipc_topsrv_kern_evt.exit.i_crit_edge: ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_topsrv_kern_evt.exit.i

if.end.i.i:                                       ; preds = %if.else16.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %or.i.i.i.i = or i32 %31, 524288
  store i32 %or.i.i.i.i, ptr %29, align 4
  %32 = load ptr, ptr %data.i.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = lshr i32 %34, 19
  %shl.i.i.i.i = and i32 %35, 60
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 %shl.i.i.i.i
  %36 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %evt1.i, i32 48)
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %37 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %38 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %evtq.i.i, ptr %call1.i.i, align 8
  %prev10.i.i.i.i.i = getelementptr inbounds %struct.anon.83, ptr %call1.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev10.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %evtq.i.i, ptr %prev10.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call1.i.i, ptr %prev.i.i.i.i, align 4
  %41 = ptrtoint ptr %evtq.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call1.i.i, ptr %evtq.i.i, align 4
  %42 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %loopback_dev.i.i.i = getelementptr inbounds %struct.net, ptr %22, i32 0, i32 27
  %43 = ptrtoint ptr %loopback_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %loopback_dev.i.i.i, align 4
  %call.i18.i.i = call zeroext i1 @dev_nit_active(ptr noundef %44) #10
  br i1 %call.i18.i.i, label %if.then.i.i.i, label %if.end.i.i.tipc_loopback_trace.exit.i.i_crit_edge, !prof !76

if.end.i.i.tipc_loopback_trace.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_loopback_trace.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @tipc_clone_to_loopback(ptr noundef %22, ptr noundef nonnull %evtq.i.i) #10
  br label %tipc_loopback_trace.exit.i.i

tipc_loopback_trace.exit.i.i:                     ; preds = %if.then.i.i.i, %if.end.i.i.tipc_loopback_trace.exit.i.i_crit_edge
  call void @tipc_sk_rcv(ptr noundef %22, ptr noundef nonnull %evtq.i.i) #10
  br label %tipc_topsrv_kern_evt.exit.i

tipc_topsrv_kern_evt.exit.i:                      ; preds = %tipc_loopback_trace.exit.i.i, %if.else16.i.tipc_topsrv_kern_evt.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %evtq.i.i) #10
  br label %if.end17.i

if.end17.i:                                       ; preds = %tipc_topsrv_kern_evt.exit.i, %if.else.i.if.end17.i_crit_edge
  %inc.i = add i32 %count.052.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %inc.i)
  %cmp18.i = icmp sgt i32 %inc.i, 24
  br i1 %cmp18.i, label %if.then19.i, label %if.end17.i.if.end22.i_crit_edge

if.end17.i.if.end22.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__might_resched(ptr noundef nonnull @.str.12, i32 noundef 288, i32 noundef 0) #10
  %call.i49.i = call i32 @__cond_resched() #10
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %if.end17.i.if.end22.i_crit_edge
  %count.1.i = phi i32 [ 0, %if.then19.i ], [ %inc.i, %if.end17.i.if.end22.i_crit_edge ]
  call void @_raw_spin_lock_bh(ptr noundef %outqueue_lock.i) #10
  %call.i.i50.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #10
  br i1 %call.i.i50.i, label %if.end.i.i.i, label %if.end22.i.list_del.exit.i_crit_edge

if.end22.i.list_del.exit.i_crit_edge:             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i.i, align 4
  %47 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %11, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end22.i.list_del.exit.i_crit_edge
  %51 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %add.ptr.i) #10
  %53 = ptrtoint ptr %outqueue.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %outqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %54, %outqueue.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.while.end.i_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_del.exit.i.while.end.i_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %list_del.exit.i.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %outqueue_lock.i) #10
  br label %tipc_conn_send_to_sock.exit

tipc_conn_send_to_sock.exit:                      ; preds = %while.end.i, %if.then13.i, %if.then9.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  br label %if.end

if.end:                                           ; preds = %tipc_conn_send_to_sock.exit, %connected.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call fastcc void @conn_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_conn_recv_work(ptr noundef %work) #0 align 64 {
entry:
  %msg.i = alloca %struct.msghdr, align 8
  %s.i = alloca %struct.tipc_subscr, align 4
  %iov.i = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -72
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %entry.while.end_crit_edge, label %connected.exit.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

connected.exit.lr.ph:                             ; preds = %entry
  %flags.i = getelementptr i8, ptr %work, i32 -60
  %server.i = getelementptr i8, ptr %work, i32 -56
  %sock.i = getelementptr i8, ptr %work, i32 -64
  %0 = getelementptr inbounds %struct.kvec, ptr %iov.i, i32 0, i32 1
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.i.not22 = icmp eq i32 %3, 0
  br i1 %tobool1.i.not22, label %connected.exit.lr.ph.while.end_crit_edge, label %connected.exit.lr.ph.while.body_crit_edge

connected.exit.lr.ph.while.body_crit_edge:        ; preds = %connected.exit.lr.ph
  br label %while.body

connected.exit.lr.ph.while.end_crit_edge:         ; preds = %connected.exit.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %connected.exit.lr.ph.while.body_crit_edge
  %count.01823 = phi i32 [ %count.1, %if.end5.while.body_crit_edge ], [ 0, %connected.exit.lr.ph.while.body_crit_edge ]
  %4 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %server.i, align 4
  %6 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sock.i, align 4
  %sk1.i = getelementptr inbounds %struct.socket, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk1.i, align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  %10 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %s.i) #10
  %11 = call ptr @memset(ptr %s.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i) #10
  %12 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %s.i, ptr %iov.i, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 28, ptr %0, align 4
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %msg.i, align 8
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 0, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef 28) #10
  %15 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sock.i, align 4
  %call.i = call i32 @sock_recvmsg(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 64) #10
  %17 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call.i, label %tipc_conn_rcv_from_sock.exit [
    i32 -11, label %tipc_conn_rcv_from_sock.exit.thread11
    i32 28, label %connected.exit.i
  ]

tipc_conn_rcv_from_sock.exit.thread11:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %s.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  br label %while.end

connected.exit.i:                                 ; preds = %while.body
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 50
  call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool1.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool1.i.not.i, label %if.end10.thread.i, label %if.end10.i, !prof !76

if.end10.thread.i:                                ; preds = %connected.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  br label %tipc_conn_rcv_from_sock.exit.thread14

if.end10.i:                                       ; preds = %connected.exit.i
  %call9.i = call fastcc i32 @tipc_conn_rcv_sub(ptr noundef %5, ptr noundef nonnull %add.ptr, ptr noundef nonnull %s.i) #10
  call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool12.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool12.not.i, label %tipc_conn_rcv_from_sock.exit.thread, label %if.end10.i.tipc_conn_rcv_from_sock.exit.thread14_crit_edge

if.end10.i.tipc_conn_rcv_from_sock.exit.thread14_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_conn_rcv_from_sock.exit.thread14

tipc_conn_rcv_from_sock.exit.thread:              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %s.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  br label %if.end

tipc_conn_rcv_from_sock.exit.thread14:            ; preds = %if.end10.i.tipc_conn_rcv_from_sock.exit.thread14_crit_edge, %if.end10.thread.i
  call fastcc void @tipc_conn_close(ptr noundef nonnull %add.ptr) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %s.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  br label %while.end

tipc_conn_rcv_from_sock.exit:                     ; preds = %while.body
  call fastcc void @tipc_conn_close(ptr noundef nonnull %add.ptr) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %s.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %tipc_conn_rcv_from_sock.exit.if.end_crit_edge, label %tipc_conn_rcv_from_sock.exit.while.end_crit_edge

tipc_conn_rcv_from_sock.exit.while.end_crit_edge: ; preds = %tipc_conn_rcv_from_sock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

tipc_conn_rcv_from_sock.exit.if.end_crit_edge:    ; preds = %tipc_conn_rcv_from_sock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %tipc_conn_rcv_from_sock.exit.if.end_crit_edge, %tipc_conn_rcv_from_sock.exit.thread
  %inc = add i32 %count.01823, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %inc)
  %cmp = icmp sgt i32 %inc, 24
  br i1 %cmp, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__might_resched(ptr noundef nonnull @.str.12, i32 noundef 426, i32 noundef 0) #10
  %call.i8 = call i32 @__cond_resched() #10
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %count.1 = phi i32 [ 0, %if.then2 ], [ %inc, %if.end.if.end5_crit_edge ]
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i, align 4
  %23 = and i32 %22, 2
  %tobool1.i.not = icmp eq i32 %23, 0
  br i1 %tobool1.i.not, label %if.end5.while.end_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end5.while.end_crit_edge, %tipc_conn_rcv_from_sock.exit.while.end_crit_edge, %tipc_conn_rcv_from_sock.exit.thread14, %tipc_conn_rcv_from_sock.exit.thread11, %connected.exit.lr.ph.while.end_crit_edge, %entry.while.end_crit_edge
  call fastcc void @conn_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_conn_close(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sock = getelementptr inbounds %struct.tipc_conn, ptr %con, i32 0, i32 2
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock, align 4
  %sk1 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 16
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #10
  %flags = getelementptr inbounds %struct.tipc_conn, ptr %con, i32 0, i32 3
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then5.critedge, label %if.then

if.then:                                          ; preds = %entry
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 72
  %4 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %sk_user_data, align 4
  %server.i = getelementptr inbounds %struct.tipc_conn, ptr %con, i32 0, i32 4
  %5 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %server.i, align 4
  %net.i = getelementptr inbounds %struct.tipc_topsrv, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i, align 4
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %8) #10
  %sub_list1.i = getelementptr inbounds %struct.tipc_conn, ptr %con, i32 0, i32 5
  %sub_lock.i = getelementptr inbounds %struct.tipc_conn, ptr %con, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sub_lock.i) #10
  %9 = ptrtoint ptr %sub_list1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sub_list1.i, align 4
  %cmp.not37.i = icmp eq ptr %10, %sub_list1.i
  br i1 %cmp.not37.i, label %if.then.tipc_conn_delete_sub.exit_crit_edge, label %for.body.lr.ph.i

if.then.tipc_conn_delete_sub.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_conn_delete_sub.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %subscription_count.c32.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in38.i = phi ptr [ %10, %for.body.lr.ph.i ], [ %.pn40.i, %for.body.i.for.body.i_crit_edge ]
  %sub.039.i = getelementptr i8, ptr %.pn.in38.i, i32 -140
  %11 = ptrtoint ptr %.pn.in38.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn40.i = load ptr, ptr %.pn.in38.i, align 4
  tail call void @tipc_sub_unsubscribe(ptr noundef %sub.039.i) #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscription_count.c32.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %subscription_count.c32.i, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %subscription_count.c32.i, ptr %subscription_count.c32.i, i32 1, ptr elementtype(i32) %subscription_count.c32.i) #10, !srcloc !71
  %cmp.not.i = icmp eq ptr %.pn40.i, %sub_list1.i
  br i1 %cmp.not.i, label %for.body.i.tipc_conn_delete_sub.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.tipc_conn_delete_sub.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tipc_conn_delete_sub.exit

tipc_conn_delete_sub.exit:                        ; preds = %for.body.i.tipc_conn_delete_sub.exit_crit_edge, %if.then.tipc_conn_delete_sub.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sub_lock.i) #10
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  %13 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sock, align 4
  %call8 = tail call i32 @kernel_sock_shutdown(ptr noundef %14, i32 noundef 2) #10
  tail call fastcc void @conn_put(ptr noundef %con)
  br label %cleanup

if.then5.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5.critedge, %tipc_conn_delete_sub.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_msg_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_sk_rcv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_nit_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_clone_to_loopback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recvmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_sub_subscribe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_sub_unsubscribe(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_topsrv_accept(ptr noundef %work) #0 align 64 {
entry:
  %newsock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -112
  %listener = getelementptr i8, ptr %work, i32 52
  %0 = ptrtoint ptr %listener to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %listener, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newsock) #10
  %2 = ptrtoint ptr %newsock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %newsock, align 4, !annotation !74
  %call23 = call i32 @kernel_accept(ptr noundef %1, ptr noundef nonnull %newsock, i32 noundef 2048) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %entry.cleanup_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.end5.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = call fastcc ptr @tipc_conn_alloc(ptr noundef %add.ptr)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %newsock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %newsock, align 4
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @sock_release(ptr noundef %4) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sk = getelementptr inbounds %struct.socket, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk, align 16
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 77
  %7 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tipc_conn_data_ready, ptr %sk_data_ready, align 8
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 78
  %8 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tipc_conn_write_space, ptr %sk_write_space, align 4
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 72
  %9 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %sk_user_data, align 4
  %10 = ptrtoint ptr %newsock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %newsock, align 4
  %sock = getelementptr inbounds %struct.tipc_conn, ptr %call1, i32 0, i32 2
  %12 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %sock, align 4
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  %13 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk_data_ready, align 8
  call void %14(ptr noundef %6) #10
  %call = call i32 @kernel_accept(ptr noundef %1, ptr noundef nonnull %newsock, i32 noundef 2048) #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end5.if.end_crit_edge

if.end5.if.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newsock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_accept(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_conn_data_ready(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end3_crit_edge, label %connected.exit

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

connected.exit:                                   ; preds = %entry
  %flags.i = getelementptr inbounds %struct.tipc_conn, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.i.not = icmp eq i32 %4, 0
  br i1 %tobool1.i.not, label %connected.exit.if.end3_crit_edge, label %if.then

connected.exit.if.end3_crit_edge:                 ; preds = %connected.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %connected.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !76

if.then.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.conn_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !66

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.conn_get.exit_crit_edge:        ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %conn_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef %.sink.i.i.i.i.i) #10
  br label %conn_get.exit

conn_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.conn_get.exit_crit_edge
  %server = getelementptr inbounds %struct.tipc_conn, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %server, align 4
  %rcv_wq = getelementptr inbounds %struct.tipc_topsrv, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %rcv_wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rcv_wq, align 4
  %rwork = getelementptr inbounds %struct.tipc_conn, ptr %1, i32 0, i32 7
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %rwork) #10
  br i1 %call.i, label %conn_get.exit.if.end3_crit_edge, label %if.then2

conn_get.exit.if.end3_crit_edge:                  ; preds = %conn_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %conn_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @conn_put(ptr noundef nonnull %1)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %conn_get.exit.if.end3_crit_edge, %connected.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_conn_write_space(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end3_crit_edge, label %connected.exit

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

connected.exit:                                   ; preds = %entry
  %flags.i = getelementptr inbounds %struct.tipc_conn, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.i.not = icmp eq i32 %4, 0
  br i1 %tobool1.i.not, label %connected.exit.if.end3_crit_edge, label %if.then

connected.exit.if.end3_crit_edge:                 ; preds = %connected.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %connected.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !76

if.then.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.conn_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !66

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.conn_get.exit_crit_edge:        ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %conn_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef %.sink.i.i.i.i.i) #10
  br label %conn_get.exit

conn_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.conn_get.exit_crit_edge
  %server = getelementptr inbounds %struct.tipc_conn, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %server, align 4
  %send_wq = getelementptr inbounds %struct.tipc_topsrv, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %send_wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %send_wq, align 4
  %swork = getelementptr inbounds %struct.tipc_conn, ptr %1, i32 0, i32 10
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %swork) #10
  br i1 %call.i, label %conn_get.exit.if.end3_crit_edge, label %if.then2

conn_get.exit.if.end3_crit_edge:                  ; preds = %conn_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %conn_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @conn_put(ptr noundef nonnull %1)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %conn_get.exit.if.end3_crit_edge, %connected.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_kern(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_topsrv_listener_data_ready(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %listener = getelementptr inbounds %struct.tipc_topsrv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %listener to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %listener, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rcv_wq = getelementptr inbounds %struct.tipc_topsrv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %rcv_wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rcv_wq, align 4
  %awork = getelementptr inbounds %struct.tipc_topsrv, ptr %1, i32 0, i32 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %awork) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tsk_set_importance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_sk_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_listen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !27, !28, !30, !31, !32, !33, !35, !36, !38, !39, !41, !42, !44, !46, !47, !48, !49, !51, !53, !54}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @tipc_conn_alloc.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../net/tipc/topsrv.c", i32 191, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @tipc_conn_alloc.__key.6, !15, !"__key", i1 false, i1 false}
!15 = !{!"../net/tipc/topsrv.c", i32 192, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @tipc_conn_alloc.__key.8, !18, !"__key", i1 false, i1 false}
!18 = !{!"../net/tipc/topsrv.c", i32 193, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tipc_conn_alloc.__key.10, !21, !"__key", i1 false, i1 false}
!21 = !{!"../net/tipc/topsrv.c", i32 194, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/tipc/topsrv.c", i32 277, i32 5}
!25 = !{ptr @skb_queue_head_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/tipc/topsrv.c", i32 372, i32 3}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @tipc_conn_rcv_sub._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @tipc_conn_rcv_sub._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @tipc_topsrv_start.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../net/tipc/topsrv.c", i32 655, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @tipc_topsrv_start.__key.17, !37, !"__key", i1 false, i1 false}
!37 = !{!"../net/tipc/topsrv.c", i32 661, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @xa_init_flags.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/tipc/topsrv.c", i32 621, i32 14}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/tipc/topsrv.c", i32 623, i32 3}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @tipc_topsrv_work_start._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @tipc_topsrv_work_start._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/tipc/topsrv.c", i32 627, i32 15}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/tipc/topsrv.c", i32 629, i32 3}
!53 = !{ptr @tipc_topsrv_work_start._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tipc_topsrv_work_start._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 816351, i64 816375, i64 816396, i64 816413, i64 816430}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 2148422146}
!68 = !{i64 2148336610, i64 2148336642, i64 2148336671, i64 2148336705, i64 2148336736, i64 2148336759}
!69 = !{i64 2150027170}
!70 = !{i64 2148332615, i64 2148332641, i64 2148332670, i64 2148332704, i64 2148332735, i64 2148332758}
!71 = !{i64 2148335080, i64 2148335106, i64 2148335135, i64 2148335169, i64 2148335200, i64 2148335223}
!72 = !{i64 2150076713}
!73 = !{i64 2150076979}
!74 = !{!"auto-init"}
!75 = !{i8 0, i8 2}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 2148334145, i64 2148334177, i64 2148334206, i64 2148334240, i64 2148334271, i64 2148334294}
