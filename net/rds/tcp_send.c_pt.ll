; ModuleID = '/llk/IR_all_yes/net/rds/tcp_send.c_pt.bc'
source_filename = "../net/rds/tcp_send.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.rds_tcp_statistics = type { i64, i64, i64, i64, i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rds_tcp_connection = type { %struct.list_head, i8, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.kvec = type { ptr, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.50, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.47, %union.anon.48 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.50 = type { ptr }
%struct.rds_message = type { %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.rds_incoming, i64, %struct.in6_addr, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i64, i32, i32, ptr, %struct.anon.166, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rds_incoming = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.rds_header, i32, %struct.in6_addr, %struct.rds_inc_usercopy, [4 x i64] }
%struct.rds_header = type { i64, i64, i32, i16, i16, i8, i8, [4 x i8], i16, [16 x i8] }
%struct.rds_inc_usercopy = type { i64, i64 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.anon.166 = type { %struct.rm_atomic_op, %struct.rm_rdma_op, %struct.rm_data_op }
%struct.rm_atomic_op = type { i32, %union.anon.167, i32, i64, i8, ptr, ptr, ptr }
%union.anon.167 = type { %struct.anon.168 }
%struct.anon.168 = type { i64, i64, i64, i64 }
%struct.rm_rdma_op = type { i32, i64, i8, i32, i32, i32, ptr, ptr, ptr, i64, ptr }
%struct.rm_data_op = type { i8, i32, i32, i32, i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.118, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.119, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.41, %union.anon.43, %union.anon.44, i16, i8, i8, i32, %union.anon.46, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.41 = type { i64 }
%union.anon.43 = type { i32 }
%union.anon.44 = type { i32 }
%union.anon.46 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.81 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.118 = type { ptr }
%union.anon.119 = type { ptr }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rds_connection = type { %struct.hlist_node, %struct.in6_addr, %struct.in6_addr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.possible_net_t, i8, %struct.list_head, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.128, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.128 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@rds_tcp_xmit.__UNIQUE_ID_ddebug643 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rds_tcp\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rds_tcp_xmit\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/rds/tcp_send.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): rm %p tcp nxt %u ack_seq %llu\0A\00", [59 x i8] zeroinitializer }, align 32
@rds_tcp_xmit.__UNIQUE_ID_ddebug644 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): tcp sendpage %p:%u:%u ret %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rds_tcp_stats = external dso_local global %struct.rds_tcp_statistics, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rds_tcp_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014RDS/tcp: send to %pI6c on cp [%d]returned %d, disconnecting and reconnecting\0A\00", [48 x i8] zeroinitializer }, align 32
@rds_tcp_xmit._entry_ptr = internal global ptr @rds_tcp_xmit._entry, section ".printk_index", align 4
@rds_tcp_write_space.__UNIQUE_ID_ddebug645 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rds_tcp_write_space\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): write_space for tc %p\0A\00", [35 x i8] zeroinitializer }, align 32
@rds_tcp_write_space.__UNIQUE_ID_ddebug646 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(): tcp una %u\0A\00", [46 x i8] zeroinitializer }, align 32
@rds_wq = external dso_local local_unnamed_addr global ptr, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 95, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 123, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 151, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 192, i32 2 }
@___asan_gen_.40 = private constant [22 x i8] c"../net/rds/tcp_send.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 196, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 695, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 723, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @rds_tcp_xmit._entry, ptr @rds_tcp_xmit._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_tcp_xmit_path_prepare(ptr nocapture noundef readonly %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 13
  %0 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp_transport_data, align 8
  %t_sock = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %t_sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk, align 16
  tail call void @tcp_sock_set_cork(ptr noundef %5, i1 noundef zeroext true) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_cork(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_tcp_xmit_path_complete(ptr nocapture noundef readonly %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 13
  %0 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp_transport_data, align 8
  %t_sock = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %t_sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk, align 16
  tail call void @tcp_sock_set_cork(ptr noundef %5, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_tcp_xmit(ptr noundef %conn, ptr noundef %rm, i32 noundef %hdr_off, i32 noundef %sg, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  %vec.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_conn_path = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %i_conn_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_conn_path, align 8
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hdr_off)
  %cmp = icmp eq i32 %hdr_off, 0
  br i1 %cmp, label %if.then, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then:                                          ; preds = %entry
  %call = tail call i32 @rds_tcp_write_seq(ptr noundef %3) #7
  %t_last_sent_nxt = getelementptr inbounds %struct.rds_tcp_connection, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %t_last_sent_nxt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %t_last_sent_nxt, align 4
  %h_len = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4, i32 2
  %5 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %h_len, align 8
  %add3 = add i32 %call, 47
  %sub = add i32 %add3, %6
  %conv = zext i32 %sub to i64
  %m_ack_seq = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 4
  %7 = ptrtoint ptr %m_ack_seq to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %m_ack_seq, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !37
  %m_flags = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %m_flags) #7
  %8 = ptrtoint ptr %m_ack_seq to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_ack_seq, align 8
  %10 = trunc i64 %9 to i32
  %conv9 = add i32 %10, 1
  %t_last_expected_una = getelementptr inbounds %struct.rds_tcp_connection, ptr %3, i32 0, i32 17
  %11 = ptrtoint ptr %t_last_expected_una to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv9, ptr %t_last_expected_una, align 4
  %12 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %m_flags, align 4
  %14 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.then.do.body17_crit_edge, label %if.then12

if.then.do.body17_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %h_flags = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4, i32 5
  %15 = ptrtoint ptr %h_flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %h_flags, align 8
  %17 = or i8 %16, 4
  store i8 %17, ptr %h_flags, align 8
  br label %do.body17

do.body17:                                        ; preds = %if.then12, %if.then.do.body17_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_xmit.__UNIQUE_ID_ddebug643, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_xmit, %if.end28.thread)) #7
          to label %if.end28 [label %if.end28.thread], !srcloc !38

if.end28.thread:                                  ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call i32 @rds_tcp_write_seq(ptr noundef %3) #7
  %18 = ptrtoint ptr %m_ack_seq to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %m_ack_seq, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_xmit.__UNIQUE_ID_ddebug643, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %rm, i32 noundef %call23, i64 noundef %19) #7
  br label %if.then31

if.end28:                                         ; preds = %do.body17, %entry.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %hdr_off)
  %cmp29 = icmp ult i32 %hdr_off, 48
  br i1 %cmp29, label %if.end28.if.then31_crit_edge, label %if.end28.if.end47_crit_edge

if.end28.if.end47_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end28.if.then31_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then31:                                        ; preds = %if.end28.if.then31_crit_edge, %if.end28.thread
  %t_sock = getelementptr inbounds %struct.rds_tcp_connection, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %t_sock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %t_sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk, align 16
  %sk_socket = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 71
  %24 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk_socket, align 8
  %flags = getelementptr inbounds %struct.socket, ptr %25, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #7
  %26 = ptrtoint ptr %t_sock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %t_sock, align 4
  %i_hdr34 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4
  %add.ptr = getelementptr i8, ptr %i_hdr34, i32 %hdr_off
  %sub35 = sub nuw nsw i32 48, %hdr_off
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vec.i) #7
  %28 = getelementptr inbounds %struct.kvec, ptr %vec.i, i32 0, i32 1
  %29 = ptrtoint ptr %vec.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr, ptr %vec.i, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub35, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #7
  %31 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %32 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.47, %union.anon.48 }, %union.anon.50, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i, i32 0, i32 7
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16448, ptr %32, align 4
  %call.i = call i32 @kernel_sendmsg(ptr noundef %27, ptr noundef nonnull %msg.i, ptr noundef nonnull %vec.i, i32 noundef 1, i32 noundef %sub35) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp37 = icmp slt i32 %call.i, 0
  br i1 %cmp37, label %if.then31.if.then122_crit_edge, label %if.end40

if.then31.if.then122_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then122

if.end40:                                         ; preds = %if.then31
  %add42 = add nuw i32 %call.i, %hdr_off
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %add42)
  %cmp43.not = icmp eq i32 %add42, 48
  br i1 %cmp43.not, label %if.end40.if.end47_crit_edge, label %if.end40.out_crit_edge

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end47:                                         ; preds = %if.end40.if.end47_crit_edge, %if.end28.if.end47_crit_edge
  %done.0 = phi i32 [ %call.i, %if.end40.if.end47_crit_edge ], [ 0, %if.end28.if.end47_crit_edge ]
  %op_nents = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 1
  %34 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %op_nents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %sg)
  %cmp52266 = icmp ugt i32 %35, %sg
  br i1 %cmp52266, label %while.body.lr.ph, label %if.end47.out_crit_edge

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

while.body.lr.ph:                                 ; preds = %if.end47
  %36 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %op_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp48 = icmp ugt i32 %37, 1
  %cond = select i1 %cmp48, i32 163840, i32 0
  %op_sg = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 6
  %t_sock56 = getelementptr inbounds %struct.rds_tcp_connection, ptr %3, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %sg.addr.0270 = phi i32 [ %sg, %while.body.lr.ph ], [ %spec.select226, %cleanup.while.body_crit_edge ]
  %off.addr.0269 = phi i32 [ %off, %while.body.lr.ph ], [ %spec.select, %cleanup.while.body_crit_edge ]
  %done.1268 = phi i32 [ %done.0, %while.body.lr.ph ], [ %add104, %cleanup.while.body_crit_edge ]
  %more.0267 = phi i32 [ %cond, %while.body.lr.ph ], [ %more.1, %cleanup.while.body_crit_edge ]
  %38 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %op_sg, align 8
  %arrayidx = getelementptr %struct.scatterlist, ptr %39, i32 %sg.addr.0270
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %and.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !39

do.body2.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !40
  unreachable

sg_page.exit:                                     ; preds = %while.body
  %42 = ptrtoint ptr %t_sock56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %t_sock56, align 4
  %ops = getelementptr inbounds %struct.socket, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops, align 4
  %sendpage = getelementptr inbounds %struct.proto_ops, ptr %45, i32 0, i32 19
  %46 = ptrtoint ptr %sendpage to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sendpage, align 4
  %or55 = or i32 %more.0267, 16448
  %and.i = and i32 %41, -4
  %48 = inttoptr i32 %and.i to ptr
  %offset = getelementptr %struct.scatterlist, ptr %39, i32 %sg.addr.0270, i32 1
  %49 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset, align 4
  %add63 = add i32 %50, %off.addr.0269
  %length = getelementptr %struct.scatterlist, ptr %39, i32 %sg.addr.0270, i32 2
  %51 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length, align 4
  %sub67 = sub i32 %52, %off.addr.0269
  %call68 = call i32 %47(ptr noundef %43, ptr noundef %48, i32 noundef %add63, i32 noundef %sub67, i32 noundef %or55) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_xmit.__UNIQUE_ID_ddebug644, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_xmit, %if.then81)) #7
          to label %do.end98 [label %if.then81], !srcloc !38

if.then81:                                        ; preds = %sg_page.exit
  %53 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %op_sg, align 8
  %arrayidx84 = getelementptr %struct.scatterlist, ptr %54, i32 %sg.addr.0270
  %55 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx84, align 4
  %and.i.i233 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i233)
  %tobool.i.not.i234 = icmp eq i32 %and.i.i233, 0
  br i1 %tobool.i.not.i234, label %sg_page.exit237, label %do.body2.i235, !prof !39

do.body2.i235:                                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !40
  unreachable

sg_page.exit237:                                  ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  %and.i236 = and i32 %56, -4
  %57 = inttoptr i32 %and.i236 to ptr
  %offset89 = getelementptr %struct.scatterlist, ptr %54, i32 %sg.addr.0270, i32 1
  %58 = ptrtoint ptr %offset89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset89, align 4
  %add90 = add i32 %59, %off.addr.0269
  %length94 = getelementptr %struct.scatterlist, ptr %54, i32 %sg.addr.0270, i32 2
  %60 = ptrtoint ptr %length94 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length94, align 4
  %sub95 = sub i32 %61, %off.addr.0269
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_xmit.__UNIQUE_ID_ddebug644, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %57, i32 noundef %add90, i32 noundef %sub95, i32 noundef %call68) #7
  br label %do.end98

do.end98:                                         ; preds = %sg_page.exit237, %sg_page.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call68)
  %cmp99 = icmp slt i32 %call68, 1
  br i1 %cmp99, label %do.end98.if.then122_crit_edge, label %cleanup

do.end98.if.then122_crit_edge:                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then122

cleanup:                                          ; preds = %do.end98
  %add103 = add i32 %call68, %off.addr.0269
  %add104 = add i32 %call68, %done.1268
  %62 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %op_sg, align 8
  %length108 = getelementptr %struct.scatterlist, ptr %63, i32 %sg.addr.0270, i32 2
  %64 = ptrtoint ptr %length108 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length108, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add103, i32 %65)
  %cmp109 = icmp eq i32 %add103, %65
  %spec.select = select i1 %cmp109, i32 0, i32 %add103
  %inc = zext i1 %cmp109 to i32
  %spec.select226 = add nuw i32 %sg.addr.0270, %inc
  %66 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %op_nents, align 4
  %sub115 = add i32 %67, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select226, i32 %sub115)
  %cmp116 = icmp eq i32 %spec.select226, %sub115
  %more.1 = select i1 %cmp116, i32 0, i32 %more.0267
  %cmp52 = icmp ult i32 %spec.select226, %67
  br i1 %cmp52, label %cleanup.while.body_crit_edge, label %cleanup.if.end155_crit_edge

cleanup.if.end155_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

out:                                              ; preds = %if.end47.out_crit_edge, %if.end40.out_crit_edge
  %ret.2 = phi i32 [ %call.i, %if.end40.out_crit_edge ], [ %done.0, %if.end47.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp120 = icmp eq i32 %ret.2, 0
  br i1 %cmp120, label %out.if.else_crit_edge, label %out.if.end155_crit_edge

out.if.end155_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

out.if.else_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then122:                                       ; preds = %do.end98.if.then122_crit_edge, %if.then31.if.then122_crit_edge
  %ret.2.ph = phi i32 [ %call.i, %if.then31.if.then122_crit_edge ], [ %call68, %do.end98.if.then122_crit_edge ]
  %done.3.ph = phi i32 [ 0, %if.then31.if.then122_crit_edge ], [ %done.1268, %do.end98.if.then122_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %ret.2.ph)
  %cmp123 = icmp eq i32 %ret.2.ph, -11
  br i1 %cmp123, label %do.body127, label %if.then122.if.else_crit_edge

if.then122.if.else_crit_edge:                     ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

do.body127:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #9
  %68 = call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %71, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !41
  %72 = call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i238 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i238 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cpu, align 4
  %arrayidx137 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx137, align 4
  %add138 = add i32 %77, ptrtoint (ptr @rds_tcp_stats to i32)
  %78 = inttoptr i32 %add138 to ptr
  %s_tcp_sndbuf_full = getelementptr inbounds %struct.rds_tcp_statistics, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %s_tcp_sndbuf_full to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %s_tcp_sndbuf_full, align 8
  %inc139 = add i64 %80, 1
  store i64 %inc139, ptr %s_tcp_sndbuf_full, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !42
  %81 = call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i231 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i231 to ptr
  %preempt_count.i.i232 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i232 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i232, align 4
  %sub.i = add i32 %84, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i232, align 4
  br label %if.end155

if.else:                                          ; preds = %if.then122.if.else_crit_edge, %out.if.else_crit_edge
  %ret.2251258 = phi i32 [ %ret.2.ph, %if.then122.if.else_crit_edge ], [ 0, %out.if.else_crit_edge ]
  %done.3253257 = phi i32 [ %done.3.ph, %if.then122.if.else_crit_edge ], [ %ret.2, %out.if.else_crit_edge ]
  %cp_state.i = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i, i32 noundef 4) #7
  %85 = ptrtoint ptr %cp_state.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %cp_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %86)
  %cmp.i.not = icmp eq i32 %86, 3
  br i1 %cmp.i.not, label %do.end150, label %if.else.if.end155_crit_edge

if.else.if.end155_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

do.end150:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 2
  %cp_index = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 26
  %87 = ptrtoint ptr %cp_index to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cp_index, align 4
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %c_faddr, i32 noundef %88, i32 noundef %ret.2251258) #10
  call void @rds_conn_path_drop(ptr noundef %1, i1 noundef zeroext false) #7
  br label %if.end155

if.end155:                                        ; preds = %do.end150, %if.else.if.end155_crit_edge, %do.body127, %out.if.end155_crit_edge, %cleanup.if.end155_crit_edge
  %done.3252 = phi i32 [ %done.3.ph, %do.body127 ], [ %done.3253257, %do.end150 ], [ %done.3253257, %if.else.if.end155_crit_edge ], [ %ret.2, %out.if.end155_crit_edge ], [ %add104, %cleanup.if.end155_crit_edge ]
  %ret.3 = phi i32 [ 0, %do.body127 ], [ %ret.2251258, %do.end150 ], [ %ret.2251258, %if.else.if.end155_crit_edge ], [ %ret.2, %out.if.end155_crit_edge ], [ %call68, %cleanup.if.end155_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.3252)
  %cmp156 = icmp eq i32 %done.3252, 0
  %spec.select227 = select i1 %cmp156, i32 %ret.3, i32 %done.3252
  ret i32 %spec.select227
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_tcp_write_seq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_path_drop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_tcp_write_space(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #7
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %2 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_write_space, align 4
  br label %out

if.end:                                           ; preds = %entry
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp_transport_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_write_space.__UNIQUE_ID_ddebug645, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_write_space, %if.then4)) #7
          to label %do.end [label %if.then4], !srcloc !38

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_write_space.__UNIQUE_ID_ddebug645, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  %t_orig_write_space = getelementptr inbounds %struct.rds_tcp_connection, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %t_orig_write_space to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t_orig_write_space, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %11, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !43
  %12 = tail call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add = add i32 %17, ptrtoint (ptr @rds_tcp_stats to i32)
  %18 = inttoptr i32 %add to ptr
  %s_tcp_write_space_calls = getelementptr inbounds %struct.rds_tcp_statistics, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %s_tcp_write_space_calls to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %s_tcp_write_space_calls, align 8
  %inc = add i64 %20, 1
  store i64 %inc, ptr %s_tcp_write_space_calls, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !44
  %21 = tail call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i70 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i70 to ptr
  %preempt_count.i.i71 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i71 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i71, align 4
  %sub.i = add i32 %24, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i71, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_write_space.__UNIQUE_ID_ddebug646, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_write_space, %if.then34)) #7
          to label %do.end38 [label %if.then34], !srcloc !38

if.then34:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call i32 @rds_tcp_snd_una(ptr noundef %5) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_write_space.__UNIQUE_ID_ddebug646, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %call35) #7
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %do.end
  %call39 = tail call i32 @rds_tcp_snd_una(ptr noundef %5) #7
  %t_last_seen_una = getelementptr inbounds %struct.rds_tcp_connection, ptr %5, i32 0, i32 18
  %25 = ptrtoint ptr %t_last_seen_una to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call39, ptr %t_last_seen_una, align 4
  %call40 = tail call i32 @rds_tcp_snd_una(ptr noundef %5) #7
  %conv = zext i32 %call40 to i64
  tail call void @rds_send_path_drop_acked(ptr noundef nonnull %1, i64 noundef %conv, ptr noundef nonnull @rds_tcp_is_acked) #7
  %26 = tail call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %do.end38.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end38.rcu_read_lock.exit_crit_edge:            ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end38
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end38.rcu_read_lock.exit_crit_edge
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc, i32 noundef 4) #7
  %30 = ptrtoint ptr %sk_wmem_alloc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %sk_wmem_alloc, align 4
  %shl = shl i32 %31, 1
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %32 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sk_sndbuf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %33)
  %cmp.not = icmp ugt i32 %shl, %33
  br i1 %cmp.not, label %rcu_read_lock.exit.if.end46_crit_edge, label %land.lhs.true

rcu_read_lock.exit.if.end46_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %c_net.i.i = getelementptr inbounds %struct.rds_connection, ptr %35, i32 0, i32 13
  %36 = ptrtoint ptr %c_net.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %c_net.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.net, ptr %37, i32 0, i32 14, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i.i, i32 noundef 4) #7
  %38 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.not.i = icmp eq i32 %39, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.if.end46_crit_edge, label %lor.rhs.i

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

lor.rhs.i:                                        ; preds = %land.lhs.true
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %35, i32 0, i32 8
  %40 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %c_trans.i, align 4
  %t_unloading.i = getelementptr inbounds %struct.rds_transport, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %t_unloading.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %t_unloading.i, align 4
  %tobool2.not.i = icmp eq ptr %43, null
  br i1 %tobool2.not.i, label %lor.rhs.i.if.then44_crit_edge, label %rds_destroy_pending.exit

lor.rhs.i.if.then44_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

rds_destroy_pending.exit:                         ; preds = %lor.rhs.i
  %call5.i = tail call zeroext i1 %43(ptr noundef %35) #7
  br i1 %call5.i, label %rds_destroy_pending.exit.if.end46_crit_edge, label %rds_destroy_pending.exit.if.then44_crit_edge

rds_destroy_pending.exit.if.then44_crit_edge:     ; preds = %rds_destroy_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

rds_destroy_pending.exit.if.end46_crit_edge:      ; preds = %rds_destroy_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then44:                                        ; preds = %rds_destroy_pending.exit.if.then44_crit_edge, %lor.rhs.i.if.then44_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_wq to i32))
  %44 = load ptr, ptr @rds_wq, align 4
  %cp_send_w = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 18
  %call.i75 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %cp_send_w, i32 noundef 0) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %rds_destroy_pending.exit.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %rcu_read_lock.exit.if.end46_crit_edge
  %call.i76 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i76, label %if.end46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i79

if.end46.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i79:                                ; preds = %if.end46
  %call1.i77 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool.not.i78 = icmp eq i32 %call1.i77, 0
  br i1 %tobool.not.i78, label %land.lhs.true.i79.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i81

land.lhs.true.i79.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i81:                               ; preds = %land.lhs.true.i79
  %.b4.i80 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i80, label %land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge, label %if.then.i82

land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i82:                                      ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i82, %land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i79.rcu_read_unlock.exit_crit_edge, %if.end46.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  %45 = tail call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i.i.i83 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i83 to ptr
  %preempt_count.i.i.i.i84 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i84, align 4
  %sub.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i84, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit, %if.then
  %write_space.0 = phi ptr [ %7, %rcu_read_unlock.exit ], [ %3, %if.then ]
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #7
  tail call void %write_space.0(ptr noundef %sk) #7
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %49 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sk_socket, align 8
  %tobool48.not = icmp eq ptr %50, null
  br i1 %tobool48.not, label %out.if.end51_crit_edge, label %if.then49

out.if.end51_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then49:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.socket, ptr %50, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #7
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %out.if.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_tcp_snd_una(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_send_path_drop_acked(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rds_tcp_is_acked(ptr noundef %rm, i64 noundef %ack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %m_flags = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 6
  %0 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %m_flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %m_ack_seq = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 4
  %3 = ptrtoint ptr %m_ack_seq to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %m_ack_seq, align 8
  %conv = trunc i64 %4 to i32
  %conv1 = trunc i64 %ack to i32
  %sub = sub i32 %conv, %conv1
  %sub.lobit = lshr i32 %sub, 31
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %sub.lobit, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !22, !23, !24, !26}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/tcp_send.c", i32 95, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rds_tcp_xmit.__UNIQUE_ID_ddebug643, !1, !"__UNIQUE_ID_ddebug643", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rds/tcp_send.c", i32 123, i32 3}
!8 = !{ptr @rds_tcp_xmit.__UNIQUE_ID_ddebug644, !7, !"__UNIQUE_ID_ddebug644", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/rds/tcp_send.c", i32 151, i32 5}
!11 = !{ptr @rds_tcp_xmit._entry, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @rds_tcp_xmit._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/rds/tcp_send.c", i32 192, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rds_tcp_write_space.__UNIQUE_ID_ddebug645, !14, !"__UNIQUE_ID_ddebug645", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/rds/tcp_send.c", i32 196, i32 2}
!19 = !{ptr @rds_tcp_write_space.__UNIQUE_ID_ddebug646, !18, !"__UNIQUE_ID_ddebug646", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2159399295}
!38 = !{i64 2148696468, i64 2148696473, i64 2148696486, i64 2148696530, i64 2148696564, i64 2148696585}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2154446514, i64 2154447006, i64 2154446551, i64 2154446607, i64 2154446641, i64 2154446665, i64 2154446706, i64 2154446727, i64 2154446755, i64 2154446789}
!41 = !{i64 2159407255}
!42 = !{i64 2159407428}
!43 = !{i64 2159413927}
!44 = !{i64 2159414100}
!45 = !{i64 2149349637}
!46 = !{i64 2149349903}
