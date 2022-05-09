; ModuleID = '/llk/IR_all_yes/net/rds/tcp_connect.c_pt.bc'
source_filename = "../net/rds/tcp_connect.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rds_tcp_connection = type { %struct.list_head, i8, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, i32, i32 }
%struct.rds_connection = type { %struct.hlist_node, %struct.in6_addr, %struct.in6_addr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.possible_net_t, i8, %struct.list_head, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.70 = type { %struct.hlist_head, %struct.spinlock, i32 }
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

@rds_tcp_state_change.__UNIQUE_ID_ddebug643 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rds_tcp\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rds_tcp_state_change\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/rds/tcp_connect.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): sock %p state_change to %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rds_tcp_conn_path_connect.__UNIQUE_ID_ddebug644 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rds_tcp_conn_path_connect\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): bind failed with %d at address %pI6c\0A\00", [52 x i8] zeroinitializer }, align 32
@rds_tcp_conn_path_connect.__UNIQUE_ID_ddebug645 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): connect to address %pI6c returned %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rds_tcp_conn_path_shutdown.__UNIQUE_ID_ddebug646 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rds_tcp_conn_path_shutdown\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): shutting down conn %p tc %p sock %p\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 7, i64 8]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 55, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 147, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 175, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [25 x i8] c"../net/rds/tcp_connect.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 206, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_tcp_state_change(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #4
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %2 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_state_change, align 4
  br label %out

if.end:                                           ; preds = %entry
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp_transport_data, align 8
  %t_orig_state_change = getelementptr inbounds %struct.rds_tcp_connection, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %t_orig_state_change to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t_orig_state_change, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_state_change.__UNIQUE_ID_ddebug643, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_state_change, %if.then4)) #4
          to label %do.end [label %if.then4], !srcloc !26

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %t_sock = getelementptr inbounds %struct.rds_tcp_connection, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %t_sock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %t_sock, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_state_change.__UNIQUE_ID_ddebug643, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %9, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  %skc_state7 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %12 = ptrtoint ptr %skc_state7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state7, align 2
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %do.end.out_crit_edge [
    i8 7, label %do.end.sw.bb17_crit_edge
    i8 8, label %do.end.sw.bb17_crit_edge34
    i8 1, label %sw.bb9
  ]

do.end.sw.bb17_crit_edge34:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb17

do.end.sw.bb17_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb17

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

sw.bb9:                                           ; preds = %do.end
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %16, i32 0, i32 1
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %16, i32 0, i32 2
  %call11 = tail call i32 @rds_addr_cmp(ptr noundef %c_laddr, ptr noundef %c_faddr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp = icmp sgt i32 %call11, -1
  br i1 %cmp, label %land.lhs.true, label %sw.bb9.if.else_crit_edge

sw.bb9.if.else_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb9
  %cp_state.i = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cp_state.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %cp_state.i, i32 1, i32 3, i32 1) #4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %cp_state.i, ptr %cp_state.i, i32 1, i32 5, ptr elementtype(i32) %cp_state.i) #4, !srcloc !28
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %17, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %rds_conn_path_transition.exit, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i.i

rds_conn_path_transition.exit:                    ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %17, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !29
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult3.i.i.i.i)
  %cmp.i.not = icmp eq i32 %asmresult3.i.i.i.i, 1
  br i1 %cmp.i.not, label %if.then15, label %rds_conn_path_transition.exit.if.else_crit_edge

rds_conn_path_transition.exit.if.else_crit_edge:  ; preds = %rds_conn_path_transition.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then15:                                        ; preds = %rds_conn_path_transition.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rds_conn_path_drop(ptr noundef nonnull %1, i1 noundef zeroext false) #4
  br label %out

if.else:                                          ; preds = %rds_conn_path_transition.exit.if.else_crit_edge, %sw.bb9.if.else_crit_edge
  tail call void @rds_connect_path_complete(ptr noundef nonnull %1, i32 noundef 1) #4
  br label %out

sw.bb17:                                          ; preds = %do.end.sw.bb17_crit_edge, %do.end.sw.bb17_crit_edge34
  tail call void @rds_conn_path_drop(ptr noundef nonnull %1, i1 noundef zeroext false) #4
  br label %out

out:                                              ; preds = %sw.bb17, %if.else, %if.then15, %do.end.out_crit_edge, %if.then
  %state_change.0 = phi ptr [ %7, %do.end.out_crit_edge ], [ %7, %if.then15 ], [ %7, %if.else ], [ %7, %sw.bb17 ], [ %3, %if.then ]
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #4
  tail call void %state_change.0(ptr noundef %sk) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_addr_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_path_drop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_connect_path_complete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_tcp_conn_path_connect(ptr noundef %cp) local_unnamed_addr #0 align 64 {
entry:
  %sock = alloca ptr, align 4
  %sin6 = alloca %struct.sockaddr_in6, align 4
  %sin = alloca %struct.sockaddr_in, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock) #4
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sock, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sin6) #4
  %1 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6, i32 0, i32 1
  %2 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6, i32 0, i32 2
  %3 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6, i32 0, i32 3
  %4 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6, i32 0, i32 4
  %5 = call ptr @memset(ptr %sin6, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin) #4
  %6 = getelementptr inbounds %struct.sockaddr_in, ptr %sin, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sockaddr_in, ptr %sin, i32 0, i32 2
  %8 = call ptr @memset(ptr %sin, i32 255, i32 16)
  %9 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cp, align 8
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 13
  %11 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cp_transport_data, align 8
  %cp_index = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 26
  %13 = ptrtoint ptr %cp_index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cp_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %c_npaths = getelementptr inbounds %struct.rds_connection, ptr %10, i32 0, i32 6
  %15 = ptrtoint ptr %c_npaths to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %c_npaths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp2 = icmp slt i32 %16, 2
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %t_conn_path_lock = getelementptr inbounds %struct.rds_tcp_connection, ptr %12, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %t_conn_path_lock, i32 noundef 0) #4
  %cp_state.i = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i, i32 noundef 4) #4
  %17 = ptrtoint ptr %cp_state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %cp_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp.i.not = icmp eq i32 %18, 3
  br i1 %cmp.i.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %t_conn_path_lock) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %10, i32 0, i32 1
  %19 = ptrtoint ptr %c_laddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_laddr, align 4
  %arrayidx2.i = getelementptr %struct.rds_connection, ptr %10, i32 0, i32 1, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %22, %20
  %arrayidx4.i = getelementptr %struct.rds_connection, ptr %10, i32 0, i32 1, i32 0, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %24, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i119 = icmp eq i32 %or5.i, 0
  %c_net.i = getelementptr inbounds %struct.rds_connection, ptr %10, i32 0, i32 13
  %25 = ptrtoint ptr %c_net.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %c_net.i, align 4
  br i1 %cmp.i119, label %if.end12, label %if.end12.thread

if.end12:                                         ; preds = %if.end5
  %call9 = call i32 @sock_create_kern(ptr noundef %26, i32 noundef 2, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %sock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp13 = icmp slt i32 %call9, 0
  br i1 %cmp13, label %if.end12.out_crit_edge, label %if.else19

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end12.thread:                                  ; preds = %if.end5
  %call11 = call i32 @sock_create_kern(ptr noundef %26, i32 noundef 10, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %sock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp13122 = icmp slt i32 %call11, 0
  br i1 %cmp13122, label %if.end12.thread.out_crit_edge, label %if.then17

if.end12.thread.out_crit_edge:                    ; preds = %if.end12.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then17:                                        ; preds = %if.end12.thread
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sock, align 4
  call void @rds_tcp_tune(ptr noundef %28) #4
  %29 = ptrtoint ptr %sin6 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 10, ptr %sin6, align 4
  %30 = call ptr @memcpy(ptr %3, ptr %c_laddr, i32 16)
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %1, align 2
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %2, align 4
  %c_dev_if = getelementptr inbounds %struct.rds_connection, ptr %10, i32 0, i32 3
  %33 = ptrtoint ptr %c_dev_if to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %c_dev_if, align 4
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %4, align 4
  br label %if.end21

if.else19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sock, align 4
  call void @rds_tcp_tune(ptr noundef %37) #4
  %38 = ptrtoint ptr %sin to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 2, ptr %sin, align 4
  %arrayidx = getelementptr %struct.rds_connection, ptr %10, i32 0, i32 1, i32 0, i32 0, i32 3
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %7, align 4
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %6, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then17
  %addrlen.0 = phi i32 [ 28, %if.then17 ], [ 16, %if.else19 ]
  %addr.0 = phi ptr [ %sin6, %if.then17 ], [ %sin, %if.else19 ]
  %43 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sock, align 4
  %ops = getelementptr inbounds %struct.socket, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops, align 4
  %bind = getelementptr inbounds %struct.proto_ops, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %bind to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bind, align 4
  %call22 = call i32 %48(ptr noundef %44, ptr noundef nonnull %addr.0, i32 noundef %addrlen.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end32, label %do.body

do.body:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_conn_path_connect.__UNIQUE_ID_ddebug644, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_conn_path_connect, %if.then29)) #4
          to label %out [label %if.then29], !srcloc !26

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_conn_path_connect.__UNIQUE_ID_ddebug644, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %call22, ptr noundef %c_laddr) #4
  br label %out

if.end32:                                         ; preds = %if.end21
  br i1 %cmp.i119, label %if.else41, label %if.then34

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %sin6 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 10, ptr %sin6, align 4
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %10, i32 0, i32 2
  %50 = call ptr @memcpy(ptr %3, ptr %c_faddr, i32 16)
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 16385, ptr %1, align 2
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %2, align 4
  %c_dev_if39 = getelementptr inbounds %struct.rds_connection, ptr %10, i32 0, i32 3
  %53 = ptrtoint ptr %c_dev_if39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %c_dev_if39, align 4
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %4, align 4
  br label %if.end49

if.else41:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %56 = ptrtoint ptr %sin to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 2, ptr %sin, align 4
  %arrayidx45 = getelementptr %struct.rds_connection, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 3
  %57 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx45, align 4
  %59 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %7, align 4
  %60 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 16385, ptr %6, align 2
  br label %if.end49

if.end49:                                         ; preds = %if.else41, %if.then34
  %addrlen.1 = phi i32 [ 28, %if.then34 ], [ 16, %if.else41 ]
  %addr.1 = phi ptr [ %sin6, %if.then34 ], [ %sin, %if.else41 ]
  %61 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sock, align 4
  call void @rds_tcp_set_callbacks(ptr noundef %62, ptr noundef %cp) #4
  %63 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sock, align 4
  %ops50 = getelementptr inbounds %struct.socket, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %ops50 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops50, align 4
  %connect = getelementptr inbounds %struct.proto_ops, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %connect, align 4
  %call51 = call i32 %68(ptr noundef %64, ptr noundef nonnull %addr.1, i32 noundef %addrlen.1, i32 noundef 2048) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_conn_path_connect.__UNIQUE_ID_ddebug645, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_conn_path_connect, %if.then64)) #4
          to label %do.end68 [label %if.then64], !srcloc !26

if.then64:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  %c_faddr65 = getelementptr inbounds %struct.rds_connection, ptr %10, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_conn_path_connect.__UNIQUE_ID_ddebug645, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef %c_faddr65, i32 noundef %call51) #4
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call51)
  %cmp69 = icmp eq i32 %call51, -115
  %spec.store.select = select i1 %cmp69, i32 0, i32 %call51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp72 = icmp eq i32 %spec.store.select, 0
  %69 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sock, align 4
  br i1 %cmp72, label %if.then73, label %if.else74

if.then73:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #6
  call void @rds_tcp_keepalive(ptr noundef %70) #4
  %71 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %sock, align 4
  br label %out

if.else74:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cp_transport_data, align 8
  call void @rds_tcp_restore_callbacks(ptr noundef %70, ptr noundef %73) #4
  br label %out

out:                                              ; preds = %if.else74, %if.then73, %if.then29, %do.body, %if.end12.thread.out_crit_edge, %if.end12.out_crit_edge
  %ret.1 = phi i32 [ %call9, %if.end12.out_crit_edge ], [ %call22, %if.then29 ], [ 0, %if.then73 ], [ %spec.store.select, %if.else74 ], [ %call11, %if.end12.thread.out_crit_edge ], [ %call22, %do.body ]
  call void @mutex_unlock(ptr noundef %t_conn_path_lock) #4
  %74 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sock, align 4
  %tobool78.not = icmp eq ptr %75, null
  br i1 %tobool78.not, label %out.cleanup_crit_edge, label %if.then79

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then79:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  call void @sock_release(ptr noundef nonnull %75) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %out.cleanup_crit_edge, %if.then3, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ -11, %land.lhs.true.cleanup_crit_edge ], [ %ret.1, %if.then79 ], [ %ret.1, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sin6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_kern(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_tune(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_set_callbacks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_keepalive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_restore_callbacks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_tcp_conn_path_shutdown(ptr nocapture noundef readonly %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 13
  %0 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp_transport_data, align 8
  %t_sock = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %t_sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_sock, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_conn_path_shutdown.__UNIQUE_ID_ddebug646, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_conn_path_shutdown, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !26

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_conn_path_shutdown.__UNIQUE_ID_ddebug646, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef %5, ptr noundef %1, ptr noundef %3) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end.if.end12_crit_edge, label %if.then4

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then4:                                         ; preds = %do.end
  %6 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cp, align 8
  %c_net.i.i = getelementptr inbounds %struct.rds_connection, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %c_net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %c_net.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 14, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i.i, i32 noundef 4) #4
  %10 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not.i = icmp eq i32 %11, 0
  br i1 %cmp.i.not.i, label %if.then4.if.then7_crit_edge, label %lor.rhs.i

if.then4.if.then7_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

lor.rhs.i:                                        ; preds = %if.then4
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %7, i32 0, i32 8
  %12 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %c_trans.i, align 4
  %t_unloading.i = getelementptr inbounds %struct.rds_transport, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %t_unloading.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %t_unloading.i, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %lor.rhs.i.if.end8_crit_edge, label %rds_destroy_pending.exit

lor.rhs.i.if.end8_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

rds_destroy_pending.exit:                         ; preds = %lor.rhs.i
  %call5.i = tail call zeroext i1 %15(ptr noundef %7) #4
  br i1 %call5.i, label %rds_destroy_pending.exit.if.then7_crit_edge, label %rds_destroy_pending.exit.if.end8_crit_edge

rds_destroy_pending.exit.if.end8_crit_edge:       ; preds = %rds_destroy_pending.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

rds_destroy_pending.exit.if.then7_crit_edge:      ; preds = %rds_destroy_pending.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.then7:                                         ; preds = %rds_destroy_pending.exit.if.then7_crit_edge, %if.then4.if.then7_crit_edge
  %sk = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk, align 16
  tail call void @sock_no_linger(ptr noundef %17) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %rds_destroy_pending.exit.if.end8_crit_edge, %lor.rhs.i.if.end8_crit_edge
  %ops = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %shutdown = getelementptr inbounds %struct.proto_ops, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shutdown, align 4
  %call9 = tail call i32 %21(ptr noundef nonnull %3, i32 noundef 3) #4
  %sk10 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %sk10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk10, align 16
  tail call void @lock_sock_nested(ptr noundef %23, i32 noundef 0) #4
  tail call void @rds_tcp_restore_callbacks(ptr noundef nonnull %3, ptr noundef %1) #4
  %24 = ptrtoint ptr %sk10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk10, align 16
  tail call void @release_sock(ptr noundef %25) #4
  tail call void @sock_release(ptr noundef nonnull %3) #4
  br label %if.end12

if.end12:                                         ; preds = %if.end8, %do.end.if.end12_crit_edge
  %t_tinc = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %t_tinc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %t_tinc, align 4
  %tobool13.not = icmp eq ptr %27, null
  br i1 %tobool13.not, label %if.end12.if.end17_crit_edge, label %if.then14

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rds_inc_put(ptr noundef nonnull %27) #4
  %28 = ptrtoint ptr %t_tinc to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %t_tinc, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  %t_tinc_hdr_rem = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %t_tinc_hdr_rem to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 48, ptr %t_tinc_hdr_rem, align 4
  %t_tinc_data_rem = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 10
  %30 = ptrtoint ptr %t_tinc_data_rem to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %t_tinc_data_rem, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_no_linger(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_inc_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/tcp_connect.c", i32 55, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rds_tcp_state_change.__UNIQUE_ID_ddebug643, !1, !"__UNIQUE_ID_ddebug643", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rds/tcp_connect.c", i32 147, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rds_tcp_conn_path_connect.__UNIQUE_ID_ddebug644, !7, !"__UNIQUE_ID_ddebug644", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/rds/tcp_connect.c", i32 175, i32 2}
!12 = !{ptr @rds_tcp_conn_path_connect.__UNIQUE_ID_ddebug645, !11, !"__UNIQUE_ID_ddebug645", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/rds/tcp_connect.c", i32 206, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rds_tcp_conn_path_shutdown.__UNIQUE_ID_ddebug646, !14, !"__UNIQUE_ID_ddebug646", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2148695910, i64 2148695915, i64 2148695928, i64 2148695972, i64 2148696006, i64 2148696027}
!27 = !{i64 2148315918}
!28 = !{i64 697831, i64 697855, i64 697876, i64 697893, i64 697910}
!29 = !{i64 2148316144}
