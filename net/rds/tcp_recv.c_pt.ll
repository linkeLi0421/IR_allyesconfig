; ModuleID = '/llk/IR_all_yes/net/rds/tcp_recv.c_pt.bc'
source_filename = "../net/rds/tcp_recv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.rds_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.rds_tcp_statistics = type { i64, i64, i64, i64, i64 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rds_tcp_incoming = type { %struct.rds_incoming, %struct.sk_buff_head }
%struct.rds_incoming = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.rds_header, i32, %struct.in6_addr, %struct.rds_inc_usercopy, [4 x i64] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rds_header = type { i64, i64, i32, i16, i16, i8, i8, [4 x i8], i16, [16 x i8] }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.rds_inc_usercopy = type { i64, i64 }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.47, %union.anon.48 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%struct.sk_buff = type { %union.anon.51, %union.anon.54, %union.anon.55, [48 x i8], %union.anon.56, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.58, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr, %union.anon.53 }
%union.anon.53 = type { ptr }
%union.anon.54 = type { ptr }
%union.anon.55 = type { i64 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { i32, ptr }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.60, i32, i32, i32, i16, i16, %union.anon.62, i32, %union.anon.63, %union.anon.64, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.60 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i32 }
%union.anon.64 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.read_descriptor_t = type { i32, i32, %union.anon.120, i32 }
%union.anon.120 = type { ptr }
%struct.rds_tcp_desc_arg = type { ptr, i32 }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rds_tcp_connection = type { %struct.list_head, i8, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
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
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
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
%struct.rds_cong_map = type { %struct.rb_node, %struct.in6_addr, %struct.wait_queue_head, %struct.list_head, [2 x i32] }
%struct.rb_node = type { i32, ptr, ptr }

@rds_tcp_inc_free.__UNIQUE_ID_ddebug644 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rds_tcp\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rds_tcp_inc_free\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/rds/tcp_recv.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): freeing tinc %p inc %p\0A\00", [34 x i8] zeroinitializer }, align 32
@rds_tcp_incoming_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rds_stats = external dso_local global %struct.rds_statistics, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rds_tcp_recv_path.__UNIQUE_ID_ddebug659 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rds_tcp_recv_path\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): recv worker path [%d] tc %p sock %p\0A\00", [53 x i8] zeroinitializer }, align 32
@rds_tcp_data_ready.__UNIQUE_ID_ddebug660 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rds_tcp_data_ready\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(): data ready sk %p\0A\00", [40 x i8] zeroinitializer }, align 32
@rds_tcp_stats = external dso_local global %struct.rds_tcp_statistics, section ".data..percpu", align 8
@rds_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rds_tcp_incoming\00", [47 x i8] zeroinitializer }, align 32
@rds_tcp_inc_purge.__UNIQUE_ID_ddebug643 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rds_tcp_inc_purge\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): purging tinc %p inc %p\0A\00", [34 x i8] zeroinitializer }, align 32
@rds_tcp_read_sock.__UNIQUE_ID_ddebug658 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rds_tcp_read_sock\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(): tcp_read_sock for tc %p gfp 0x%x returned %d\0A\00", [44 x i8] zeroinitializer }, align 32
@rds_tcp_data_recv.__UNIQUE_ID_ddebug649 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rds_tcp_data_recv\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s(): tcp data tc %p skb %p offset %u len %zu\0A\00", [49 x i8] zeroinitializer }, align 32
@rds_tcp_data_recv.__UNIQUE_ID_ddebug650 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): allocated tinc %p\0A\00", [39 x i8] zeroinitializer }, align 32
@rds_tcp_data_recv.__UNIQUE_ID_ddebug653 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.16, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): copying %zu header from skb %p\0A\00", [58 x i8] zeroinitializer }, align 32
@rds_tcp_data_recv.__UNIQUE_ID_ddebug656 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.17, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s(): skb %p data %p len %d off %u to_copy %zu -> clone %p data %p len %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rds_tcp_data_recv.__UNIQUE_ID_ddebug657 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.18, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s(): returning len %zu left %zu skb len %d rx queue depth %d\0A\00", [33 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 55, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"rds_tcp_incoming_slab\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 40, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 296, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 312, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 338, i32 44 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 46, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 277, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 164, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 180, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 195, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 226, i32 4 }
@___asan_gen_.81 = private constant [22 x i8] c"../net/rds/tcp_recv.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 255, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1984, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 695, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 723, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rds_tcp_incoming_slab, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @skb_queue_head_init.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_incoming_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_tcp_inc_free(ptr noundef %inc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_inc_purge.__UNIQUE_ID_ddebug643, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_inc_free, %if.then.i)) #6
          to label %rds_tcp_inc_purge.exit [label %if.then.i], !srcloc !62

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_inc_purge.__UNIQUE_ID_ddebug643, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef %inc, ptr noundef %inc) #6
  br label %rds_tcp_inc_purge.exit

rds_tcp_inc_purge.exit:                           ; preds = %if.then.i, %entry
  %ti_skb_list.i = getelementptr inbounds %struct.rds_tcp_incoming, ptr %inc, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %ti_skb_list.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_inc_free.__UNIQUE_ID_ddebug644, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_inc_free, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !62

if.then:                                          ; preds = %rds_tcp_inc_purge.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_inc_free.__UNIQUE_ID_ddebug644, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %inc, ptr noundef %inc) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %rds_tcp_inc_purge.exit
  %0 = load ptr, ptr @rds_tcp_incoming_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %inc) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_tcp_inc_copy_to_user(ptr noundef readonly %inc, ptr noundef %to) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup37_crit_edge, label %if.end

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

if.end:                                           ; preds = %entry
  %ti_skb_list = getelementptr inbounds %struct.rds_tcp_incoming, ptr %inc, i32 0, i32 1
  %2 = ptrtoint ptr %ti_skb_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %skb.073 = load ptr, ptr %ti_skb_list, align 8
  %cmp.not74 = icmp eq ptr %skb.073, %ti_skb_list
  br i1 %cmp.not74, label %if.end.cleanup37_crit_edge, label %if.end.for.cond2.preheader_crit_edge

if.end.for.cond2.preheader_crit_edge:             ; preds = %if.end
  br label %for.cond2.preheader

if.end.cleanup37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

for.cond.loopexit:                                ; preds = %for.cond2.for.cond.loopexit_crit_edge, %for.cond2.preheader.for.cond.loopexit_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.075, %for.cond2.preheader.for.cond.loopexit_crit_edge ], [ %add27, %for.cond2.for.cond.loopexit_crit_edge ]
  %3 = ptrtoint ptr %skb.076 to i32
  call void @__asan_load4_noabort(i32 %3)
  %skb.0 = load ptr, ptr %skb.076, align 8
  %cmp.not = icmp eq ptr %skb.0, %ti_skb_list
  br i1 %cmp.not, label %for.cond.loopexit.cleanup37_crit_edge, label %for.cond.loopexit.for.cond2.preheader_crit_edge

for.cond.loopexit.for.cond2.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond2.preheader

for.cond.loopexit.cleanup37_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

for.cond2.preheader:                              ; preds = %for.cond.loopexit.for.cond2.preheader_crit_edge, %if.end.for.cond2.preheader_crit_edge
  %skb.076 = phi ptr [ %skb.0, %for.cond.loopexit.for.cond2.preheader_crit_edge ], [ %skb.073, %if.end.for.cond2.preheader_crit_edge ]
  %ret.075 = phi i32 [ %ret.1.lcssa, %for.cond.loopexit.for.cond2.preheader_crit_edge ], [ 0, %if.end.for.cond2.preheader_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.076, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp370.not = icmp eq i32 %5, 0
  br i1 %cmp370.not, label %for.cond2.preheader.for.cond.loopexit_crit_edge, label %for.cond2.preheader.for.body4_crit_edge

for.cond2.preheader.for.body4_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body4

for.cond2.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit

for.cond2:                                        ; preds = %do.body
  %add32 = add i32 %11, %skb_off.071
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %cmp3 = icmp ugt i32 %7, %add32
  br i1 %cmp3, label %for.cond2.for.body4_crit_edge, label %for.cond2.for.cond.loopexit_crit_edge

for.cond2.for.cond.loopexit_crit_edge:            ; preds = %for.cond2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit

for.cond2.for.body4_crit_edge:                    ; preds = %for.cond2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4

for.body4:                                        ; preds = %for.cond2.for.body4_crit_edge, %for.cond2.preheader.for.body4_crit_edge
  %8 = phi i32 [ %7, %for.cond2.for.body4_crit_edge ], [ %5, %for.cond2.preheader.for.body4_crit_edge ]
  %ret.172 = phi i32 [ %add27, %for.cond2.for.body4_crit_edge ], [ %ret.075, %for.cond2.preheader.for.body4_crit_edge ]
  %skb_off.071 = phi i32 [ %add32, %for.cond2.for.body4_crit_edge ], [ 0, %for.cond2.preheader.for.body4_crit_edge ]
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 8
  %sub = sub i32 %8, %skb_off.071
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %sub)
  %call9 = tail call i32 @skb_copy_datagram_iter(ptr noundef %skb.076, i32 noundef %skb_off.071, ptr noundef %to, i32 noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body, label %for.body4.cleanup37_crit_edge

for.body4.cleanup37_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

do.body:                                          ; preds = %for.body4
  %conv = zext i32 %11 to i64
  %12 = tail call i32 @llvm.read_register.i32(metadata !52) #6
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %15, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !63
  %16 = tail call i32 @llvm.read_register.i32(metadata !52) #6
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %add = add i32 %21, ptrtoint (ptr @rds_stats to i32)
  %22 = inttoptr i32 %add to ptr
  %s_copy_to_user = getelementptr inbounds %struct.rds_statistics, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %s_copy_to_user to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %s_copy_to_user, align 8
  %add21 = add i64 %24, %conv
  store i64 %add21, ptr %s_copy_to_user, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !64
  %25 = tail call i32 @llvm.read_register.i32(metadata !52) #6
  %and.i.i.i58 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i58 to ptr
  %preempt_count.i.i59 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i59, align 4
  %sub.i = add i32 %28, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i59, align 4
  %add27 = add i32 %11, %ret.172
  %29 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool29.not = icmp eq i32 %30, 0
  br i1 %tobool29.not, label %do.body.cleanup37_crit_edge, label %for.cond2

do.body.cleanup37_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

cleanup37:                                        ; preds = %do.body.cleanup37_crit_edge, %for.body4.cleanup37_crit_edge, %for.cond.loopexit.cleanup37_crit_edge, %if.end.cleanup37_crit_edge, %entry.cleanup37_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup37_crit_edge ], [ 0, %if.end.cleanup37_crit_edge ], [ %add27, %do.body.cleanup37_crit_edge ], [ -14, %for.body4.cleanup37_crit_edge ], [ %ret.1.lcssa, %for.cond.loopexit.cleanup37_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_tcp_recv_path(ptr noundef %cp) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.read_descriptor_t, align 4
  %arg.i = alloca %struct.rds_tcp_desc_arg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 13
  %0 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp_transport_data, align 8
  %t_sock = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %t_sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_sock, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_recv_path.__UNIQUE_ID_ddebug659, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_recv_path, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cp_index = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 26
  %4 = ptrtoint ptr %cp_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cp_index, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_recv_path.__UNIQUE_ID_ddebug659, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %5, ptr noundef %1, ptr noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sk = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 16
  tail call void @lock_sock_nested(ptr noundef %7, i32 noundef 0) #6
  %8 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cp_transport_data, align 8
  %t_sock.i = getelementptr inbounds %struct.rds_tcp_connection, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %t_sock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t_sock.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #6
  %12 = getelementptr inbounds %struct.read_descriptor_t, ptr %desc.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.read_descriptor_t, ptr %desc.i, i32 0, i32 2
  %14 = getelementptr inbounds %struct.read_descriptor_t, ptr %desc.i, i32 0, i32 3
  %15 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %desc.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #6
  %16 = getelementptr inbounds %struct.rds_tcp_desc_arg, ptr %arg.i, i32 0, i32 1
  %17 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cp, ptr %arg.i, align 4
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3264, ptr %16, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arg.i, ptr %13, align 4
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %14, align 4
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %12, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %11, i32 0, i32 4
  %22 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk.i, align 16
  %call.i = call i32 @tcp_read_sock(ptr noundef %23, ptr noundef nonnull %desc.i, ptr noundef nonnull @rds_tcp_data_recv) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_read_sock.__UNIQUE_ID_ddebug658, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_recv_path, %if.then.i)) #6
          to label %rds_tcp_read_sock.exit [label %if.then.i], !srcloc !62

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %14, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_read_sock.__UNIQUE_ID_ddebug658, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, ptr noundef %9, i32 noundef 3264, i32 noundef %25) #6
  br label %rds_tcp_read_sock.exit

rds_tcp_read_sock.exit:                           ; preds = %if.then.i, %do.end
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %14, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #6
  %28 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk, align 16
  call void @release_sock(ptr noundef %29) #6
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_tcp_data_ready(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.read_descriptor_t, align 4
  %arg.i = alloca %struct.rds_tcp_desc_arg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_data_ready.__UNIQUE_ID_ddebug660, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_data_ready, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_data_ready.__UNIQUE_ID_ddebug660, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef %sk) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #6
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %2 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_data_ready, align 8
  br label %out

if.end5:                                          ; preds = %do.end
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp_transport_data, align 8
  %t_orig_data_ready = getelementptr inbounds %struct.rds_tcp_connection, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %t_orig_data_ready to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t_orig_data_ready, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !52) #6
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %11, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !65
  %12 = tail call i32 @llvm.read_register.i32(metadata !52) #6
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
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  %inc = add i64 %20, 1
  store i64 %inc, ptr %18, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !66
  %21 = tail call i32 @llvm.read_register.i32(metadata !52) #6
  %and.i.i.i39 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i39 to ptr
  %preempt_count.i.i40 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i40, align 4
  %sub.i = add i32 %24, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i40, align 4
  %25 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cp_transport_data, align 8
  %t_sock.i = getelementptr inbounds %struct.rds_tcp_connection, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %t_sock.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %t_sock.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #6
  %29 = getelementptr inbounds %struct.read_descriptor_t, ptr %desc.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.read_descriptor_t, ptr %desc.i, i32 0, i32 2
  %31 = getelementptr inbounds %struct.read_descriptor_t, ptr %desc.i, i32 0, i32 3
  %32 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %desc.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #6
  %33 = getelementptr inbounds %struct.rds_tcp_desc_arg, ptr %arg.i, i32 0, i32 1
  %34 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %1, ptr %arg.i, align 4
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2592, ptr %33, align 4
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arg.i, ptr %30, align 4
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %31, align 4
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %29, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %28, i32 0, i32 4
  %39 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sk.i, align 16
  %call.i41 = call i32 @tcp_read_sock(ptr noundef %40, ptr noundef nonnull %desc.i, ptr noundef nonnull @rds_tcp_data_recv) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_read_sock.__UNIQUE_ID_ddebug658, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_data_ready, %if.then.i42)) #6
          to label %rds_tcp_read_sock.exit [label %if.then.i42], !srcloc !62

if.then.i42:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %31, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_read_sock.__UNIQUE_ID_ddebug658, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, ptr noundef %26, i32 noundef 2592, i32 noundef %42) #6
  br label %rds_tcp_read_sock.exit

rds_tcp_read_sock.exit:                           ; preds = %if.then.i42, %if.end5
  %43 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %31, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %44)
  %cmp = icmp eq i32 %44, -12
  br i1 %cmp, label %if.then23, label %rds_tcp_read_sock.exit.out_crit_edge

rds_tcp_read_sock.exit.out_crit_edge:             ; preds = %rds_tcp_read_sock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then23:                                        ; preds = %rds_tcp_read_sock.exit
  %45 = call i32 @llvm.read_register.i32(metadata !52) #6
  %and.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %48, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !67
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.then23.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then23.rcu_read_lock.exit_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then23
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then23.rcu_read_lock.exit_crit_edge
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  %c_net.i.i = getelementptr inbounds %struct.rds_connection, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %c_net.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %c_net.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.net, ptr %52, i32 0, i32 14, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %count.i.i, i32 noundef 4) #6
  %53 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i.not.i = icmp eq i32 %54, 0
  br i1 %cmp.i.not.i, label %rcu_read_lock.exit.if.end27_crit_edge, label %lor.rhs.i

rcu_read_lock.exit.if.end27_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

lor.rhs.i:                                        ; preds = %rcu_read_lock.exit
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %50, i32 0, i32 8
  %55 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %c_trans.i, align 4
  %t_unloading.i = getelementptr inbounds %struct.rds_transport, ptr %56, i32 0, i32 27
  %57 = ptrtoint ptr %t_unloading.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %t_unloading.i, align 4
  %tobool2.not.i = icmp eq ptr %58, null
  br i1 %tobool2.not.i, label %lor.rhs.i.if.then25_crit_edge, label %rds_destroy_pending.exit

lor.rhs.i.if.then25_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25

rds_destroy_pending.exit:                         ; preds = %lor.rhs.i
  %call5.i = call zeroext i1 %58(ptr noundef %50) #6
  br i1 %call5.i, label %rds_destroy_pending.exit.if.end27_crit_edge, label %rds_destroy_pending.exit.if.then25_crit_edge

rds_destroy_pending.exit.if.then25_crit_edge:     ; preds = %rds_destroy_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25

rds_destroy_pending.exit.if.end27_crit_edge:      ; preds = %rds_destroy_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then25:                                        ; preds = %rds_destroy_pending.exit.if.then25_crit_edge, %lor.rhs.i.if.then25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_wq to i32))
  %59 = load ptr, ptr @rds_wq, align 4
  %cp_recv_w = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 19
  %call.i43 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %cp_recv_w, i32 noundef 0) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %rds_destroy_pending.exit.if.end27_crit_edge, %rcu_read_lock.exit.if.end27_crit_edge
  %call.i44 = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i44, label %if.end27.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i47

if.end27.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i47:                                ; preds = %if.end27
  %call1.i45 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool.not.i46, label %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i49

land.lhs.true.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i49:                               ; preds = %land.lhs.true.i47
  %.b4.i48 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48, label %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, label %if.then.i50

land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i50:                                      ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i50, %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, %if.end27.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !68
  %60 = call i32 @llvm.read_register.i32(metadata !52) #6
  %and.i.i.i.i.i51 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i51 to ptr
  %preempt_count.i.i.i.i52 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i52, align 4
  %sub.i.i.i = add i32 %63, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i52, align 4
  call void @rcu_read_unlock_strict() #6
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit, %rds_tcp_read_sock.exit.out_crit_edge, %if.then4
  %ready.0 = phi ptr [ %7, %rcu_read_unlock.exit ], [ %7, %rds_tcp_read_sock.exit.out_crit_edge ], [ %3, %if.then4 ]
  call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #6
  call void %ready.0(ptr noundef %sk) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_tcp_recv_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.8, i32 noundef 200, i32 noundef 0, i32 noundef 0, ptr noundef null) #6
  store ptr %call, ptr @rds_tcp_incoming_slab, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_tcp_recv_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rds_tcp_incoming_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_read_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_tcp_data_recv(ptr nocapture noundef %desc, ptr noundef %skb, i32 noundef %offset, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arg1 = getelementptr inbounds %struct.read_descriptor_t, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %arg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp_transport_data, align 8
  %t_tinc = getelementptr inbounds %struct.rds_tcp_connection, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %t_tinc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t_tinc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_data_recv.__UNIQUE_ID_ddebug649, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_data_recv, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_data_recv.__UNIQUE_ID_ddebug649, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef %5, ptr noundef %skb, i32 noundef %offset, i32 noundef %len) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool4.not264 = icmp eq i32 %len, 0
  br i1 %tobool4.not264, label %do.end.do.body133_crit_edge, label %while.body.lr.ph

do.end.do.body133_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body133

while.body.lr.ph:                                 ; preds = %do.end
  %gfp = getelementptr inbounds %struct.rds_tcp_desc_arg, ptr %1, i32 0, i32 1
  %t_tinc_hdr_rem = getelementptr inbounds %struct.rds_tcp_connection, ptr %5, i32 0, i32 9
  %t_tinc_data_rem = getelementptr inbounds %struct.rds_tcp_connection, ptr %5, i32 0, i32 10
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %len101 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end132.while.body_crit_edge, %while.body.lr.ph
  %offset.addr.0268 = phi i32 [ %offset, %while.body.lr.ph ], [ %offset.addr.2, %if.end132.while.body_crit_edge ]
  %tinc.0267 = phi ptr [ %7, %while.body.lr.ph ], [ %tinc.2, %if.end132.while.body_crit_edge ]
  %left.0265 = phi i32 [ %len, %while.body.lr.ph ], [ %left.2, %if.end132.while.body_crit_edge ]
  %tobool5.not = icmp eq ptr %tinc.0267, null
  br i1 %tobool5.not, label %if.then6, label %while.body.land.lhs.true_crit_edge

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then6:                                         ; preds = %while.body
  %8 = load ptr, ptr @rds_tcp_incoming_slab, align 4
  %9 = ptrtoint ptr %gfp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gfp, align 4
  %call7 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef %10) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then6.do.body133.sink.split_crit_edge, label %if.end10

if.then6.do.body133.sink.split_crit_edge:         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body133.sink.split

if.end10:                                         ; preds = %if.then6
  %11 = ptrtoint ptr %t_tinc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7, ptr %t_tinc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_data_recv.__UNIQUE_ID_ddebug650, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_data_recv, %if.then24)) #6
          to label %do.end27 [label %if.then24], !srcloc !62

if.then24:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_data_recv.__UNIQUE_ID_ddebug650, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, ptr noundef nonnull %call7) #6
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %if.end10
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %13, i32 0, i32 2
  tail call void @rds_inc_path_init(ptr noundef nonnull %call7, ptr noundef %3, ptr noundef %c_faddr) #6
  %call.i = tail call i64 @sched_clock() #6
  %i_rx_lat_trace = getelementptr inbounds %struct.rds_incoming, ptr %call7, i32 0, i32 8
  %14 = ptrtoint ptr %i_rx_lat_trace to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call.i, ptr %i_rx_lat_trace, align 8
  %ti_skb_list = getelementptr inbounds %struct.rds_tcp_incoming, ptr %call7, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.rds_tcp_incoming, ptr %call7, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %15 = ptrtoint ptr %ti_skb_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ti_skb_list, ptr %ti_skb_list, align 8
  %prev.i.i = getelementptr inbounds %struct.rds_tcp_incoming, ptr %call7, i32 0, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ti_skb_list, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.rds_tcp_incoming, ptr %call7, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %qlen.i.i, align 8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end27, %while.body.land.lhs.true_crit_edge
  %tinc.1 = phi ptr [ %tinc.0267, %while.body.land.lhs.true_crit_edge ], [ %call7, %do.end27 ]
  %18 = ptrtoint ptr %t_tinc_hdr_rem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %t_tinc_hdr_rem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool32.not = icmp eq i32 %19, 0
  br i1 %tobool32.not, label %land.lhs.true.land.lhs.true70_crit_edge, label %if.then33

land.lhs.true.land.lhs.true70_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true70

if.then33:                                        ; preds = %land.lhs.true
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %left.0265)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_data_recv.__UNIQUE_ID_ddebug653, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_data_recv, %if.then48)) #6
          to label %do.end51 [label %if.then48], !srcloc !62

if.then48:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_data_recv.__UNIQUE_ID_ddebug653, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13, i32 noundef %20, ptr noundef %skb) #6
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %if.then33
  %add.ptr = getelementptr %struct.rds_incoming, ptr %tinc.1, i32 0, i32 5
  %21 = ptrtoint ptr %t_tinc_hdr_rem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %t_tinc_hdr_rem, align 4
  %idx.neg = sub i32 0, %22
  %add.ptr54 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %call55 = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %offset.addr.0268, ptr noundef %add.ptr54, i32 noundef %20) #6
  %23 = ptrtoint ptr %t_tinc_hdr_rem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %t_tinc_hdr_rem, align 4
  %sub = sub i32 %24, %20
  store i32 %sub, ptr %t_tinc_hdr_rem, align 4
  %sub57 = sub i32 %left.0265, %20
  %add = add i32 %20, %offset.addr.0268
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %20)
  %cmp59 = icmp eq i32 %24, %20
  br i1 %cmp59, label %if.then60, label %do.end51.if.end68_crit_edge

do.end51.if.end68_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then60:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  %h_len = getelementptr inbounds %struct.rds_incoming, ptr %tinc.1, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %h_len, align 8
  %27 = ptrtoint ptr %t_tinc_data_rem to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %t_tinc_data_rem, align 4
  %call.i247 = tail call i64 @sched_clock() #6
  %arrayidx66 = getelementptr %struct.rds_incoming, ptr %tinc.1, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call.i247, ptr %arrayidx66, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then60, %do.end51.if.end68_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub57)
  %tobool69.not = icmp eq i32 %sub57, 0
  br i1 %tobool69.not, label %if.end68.if.end111_crit_edge, label %if.end68.land.lhs.true70_crit_edge

if.end68.land.lhs.true70_crit_edge:               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true70

if.end68.if.end111_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

land.lhs.true70:                                  ; preds = %if.end68.land.lhs.true70_crit_edge, %land.lhs.true.land.lhs.true70_crit_edge
  %offset.addr.1256 = phi i32 [ %add, %if.end68.land.lhs.true70_crit_edge ], [ %offset.addr.0268, %land.lhs.true.land.lhs.true70_crit_edge ]
  %left.1255 = phi i32 [ %sub57, %if.end68.land.lhs.true70_crit_edge ], [ %left.0265, %land.lhs.true.land.lhs.true70_crit_edge ]
  %29 = ptrtoint ptr %t_tinc_data_rem to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %t_tinc_data_rem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool72.not = icmp eq i32 %30, 0
  br i1 %tobool72.not, label %land.lhs.true70.if.end111_crit_edge, label %if.then73

land.lhs.true70.if.end111_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then73:                                        ; preds = %land.lhs.true70
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %left.1255)
  %32 = ptrtoint ptr %gfp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gfp, align 4
  %call82 = tail call ptr @pskb_extract(ptr noundef %skb, i32 noundef %offset.addr.1256, i32 noundef %31, i32 noundef %33) #6
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %if.then73.do.body133.sink.split_crit_edge, label %if.end86

if.then73.do.body133.sink.split_crit_edge:        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body133.sink.split

if.end86:                                         ; preds = %if.then73
  %ti_skb_list87 = getelementptr inbounds %struct.rds_tcp_incoming, ptr %tinc.1, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %ti_skb_list87, ptr noundef nonnull %call82) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_data_recv.__UNIQUE_ID_ddebug656, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_data_recv, %if.then100)) #6
          to label %do.end106 [label %if.then100], !srcloc !62

if.then100:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %36 = ptrtoint ptr %len101 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len101, align 4
  %data102 = getelementptr inbounds %struct.sk_buff, ptr %call82, i32 0, i32 19
  %38 = ptrtoint ptr %data102 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data102, align 4
  %len103 = getelementptr inbounds %struct.sk_buff, ptr %call82, i32 0, i32 6
  %40 = ptrtoint ptr %len103 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len103, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_data_recv.__UNIQUE_ID_ddebug656, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.13, ptr noundef %skb, ptr noundef %35, i32 noundef %37, i32 noundef %offset.addr.1256, i32 noundef %31, ptr noundef nonnull %call82, ptr noundef %39, i32 noundef %41) #6
  br label %do.end106

do.end106:                                        ; preds = %if.then100, %if.end86
  %42 = ptrtoint ptr %t_tinc_data_rem to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %t_tinc_data_rem, align 4
  %sub108 = sub i32 %43, %31
  store i32 %sub108, ptr %t_tinc_data_rem, align 4
  %sub109 = sub i32 %left.1255, %31
  %add110 = add i32 %31, %offset.addr.1256
  br label %if.end111

if.end111:                                        ; preds = %do.end106, %land.lhs.true70.if.end111_crit_edge, %if.end68.if.end111_crit_edge
  %left.2 = phi i32 [ %sub109, %do.end106 ], [ %left.1255, %land.lhs.true70.if.end111_crit_edge ], [ 0, %if.end68.if.end111_crit_edge ]
  %offset.addr.2 = phi i32 [ %add110, %do.end106 ], [ %offset.addr.1256, %land.lhs.true70.if.end111_crit_edge ], [ %add, %if.end68.if.end111_crit_edge ]
  %44 = ptrtoint ptr %t_tinc_hdr_rem to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %t_tinc_hdr_rem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp113 = icmp eq i32 %45, 0
  br i1 %cmp113, label %land.lhs.true114, label %if.end111.if.end132_crit_edge

if.end111.if.end132_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end132

land.lhs.true114:                                 ; preds = %if.end111
  %46 = ptrtoint ptr %t_tinc_data_rem to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %t_tinc_data_rem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp116 = icmp eq i32 %47, 0
  br i1 %cmp116, label %if.then117, label %land.lhs.true114.if.end132_crit_edge

land.lhs.true114.if.end132_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end132

if.then117:                                       ; preds = %land.lhs.true114
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 8
  %h_flags = getelementptr inbounds %struct.rds_incoming, ptr %tinc.1, i32 0, i32 4, i32 5
  %50 = ptrtoint ptr %h_flags to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %h_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %51)
  %cmp121 = icmp eq i8 %51, 1
  br i1 %cmp121, label %if.then123, label %if.else

if.then123:                                       ; preds = %if.then117
  %h_len.i = getelementptr inbounds %struct.rds_incoming, ptr %tinc.1, i32 0, i32 4, i32 2
  %52 = ptrtoint ptr %h_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %h_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %53)
  %cmp.not.i = icmp eq i32 %53, 8192
  br i1 %cmp.not.i, label %if.end.i, label %if.then123.if.end127_crit_edge

if.then123.if.end127_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.end.i:                                         ; preds = %if.then123
  %c_fcong.i = getelementptr inbounds %struct.rds_connection, ptr %49, i32 0, i32 10
  %54 = ptrtoint ptr %c_fcong.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %c_fcong.i, align 4
  %ti_skb_list.i = getelementptr inbounds %struct.rds_tcp_incoming, ptr %tinc.1, i32 0, i32 1
  %56 = ptrtoint ptr %ti_skb_list.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %skb.075.i = load ptr, ptr %ti_skb_list.i, align 8
  %cmp2.not76.i = icmp eq ptr %skb.075.i, %ti_skb_list.i
  br i1 %cmp2.not76.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.while.cond.preheader.i_crit_edge

if.end.i.while.cond.preheader.i_crit_edge:        ; preds = %if.end.i
  br label %while.cond.preheader.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.cond.loopexit.i:                              ; preds = %do.end34.i.for.cond.loopexit.i_crit_edge, %while.cond.preheader.i.for.cond.loopexit.i_crit_edge
  %map_off.1.lcssa.i = phi i32 [ %map_off.077.i, %while.cond.preheader.i.for.cond.loopexit.i_crit_edge ], [ %spec.select.i, %do.end34.i.for.cond.loopexit.i_crit_edge ]
  %map_page.1.lcssa.i = phi i32 [ %map_page.078.i, %while.cond.preheader.i.for.cond.loopexit.i_crit_edge ], [ %spec.select65.i, %do.end34.i.for.cond.loopexit.i_crit_edge ]
  %57 = ptrtoint ptr %skb.079.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %skb.0.i = load ptr, ptr %skb.079.i, align 8
  %cmp2.not.i = icmp eq ptr %skb.0.i, %ti_skb_list.i
  br i1 %cmp2.not.i, label %for.cond.loopexit.i.for.end.i_crit_edge, label %for.cond.loopexit.i.while.cond.preheader.i_crit_edge

for.cond.loopexit.i.while.cond.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader.i

for.cond.loopexit.i.for.end.i_crit_edge:          ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

while.cond.preheader.i:                           ; preds = %for.cond.loopexit.i.while.cond.preheader.i_crit_edge, %if.end.i.while.cond.preheader.i_crit_edge
  %skb.079.i = phi ptr [ %skb.0.i, %for.cond.loopexit.i.while.cond.preheader.i_crit_edge ], [ %skb.075.i, %if.end.i.while.cond.preheader.i_crit_edge ]
  %map_page.078.i = phi i32 [ %map_page.1.lcssa.i, %for.cond.loopexit.i.while.cond.preheader.i_crit_edge ], [ 0, %if.end.i.while.cond.preheader.i_crit_edge ]
  %map_off.077.i = phi i32 [ %map_off.1.lcssa.i, %for.cond.loopexit.i.while.cond.preheader.i_crit_edge ], [ 0, %if.end.i.while.cond.preheader.i_crit_edge ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.079.i, i32 0, i32 6
  %58 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp370.not.i = icmp eq i32 %59, 0
  br i1 %cmp370.not.i, label %while.cond.preheader.i.for.cond.loopexit.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit.i

while.body.i:                                     ; preds = %do.end34.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %60 = phi i32 [ %66, %do.end34.i.while.body.i_crit_edge ], [ %59, %while.cond.preheader.i.while.body.i_crit_edge ]
  %map_page.173.i = phi i32 [ %spec.select65.i, %do.end34.i.while.body.i_crit_edge ], [ %map_page.078.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %map_off.172.i = phi i32 [ %spec.select.i, %do.end34.i.while.body.i_crit_edge ], [ %map_off.077.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %skb_off.071.i = phi i32 [ %add.i, %do.end34.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %sub.i = sub i32 4096, %map_off.172.i
  %sub5.i = sub i32 %60, %skb_off.071.i
  %61 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %sub5.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %map_page.173.i)
  %cmp7.i = icmp ugt i32 %map_page.173.i, 1
  br i1 %cmp7.i, label %do.body10.i, label %do.end16.i, !prof !69

do.body10.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/tcp_recv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 129, 0\0A.popsection", ""() #6, !srcloc !70
  unreachable

do.end16.i:                                       ; preds = %while.body.i
  %arrayidx.i = getelementptr %struct.rds_cong_map, ptr %55, i32 0, i32 4, i32 %map_page.173.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  %64 = inttoptr i32 %63 to ptr
  %add.ptr.i = getelementptr i8, ptr %64, i32 %map_off.172.i
  %call.i248 = tail call i32 @skb_copy_bits(ptr noundef %skb.079.i, i32 noundef %skb_off.071.i, ptr noundef %add.ptr.i, i32 noundef %61) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %cmp18.not.i = icmp eq i32 %call.i248, 0
  br i1 %cmp18.not.i, label %do.end34.i, label %do.body26.i, !prof !71

do.body26.i:                                      ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/tcp_recv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 135, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

do.end34.i:                                       ; preds = %do.end16.i
  %add.i = add i32 %61, %skb_off.071.i
  %add35.i = add i32 %61, %map_off.172.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add35.i)
  %cmp36.i = icmp eq i32 %add35.i, 4096
  %spec.select.i = select i1 %cmp36.i, i32 0, i32 %add35.i
  %inc.i = zext i1 %cmp36.i to i32
  %spec.select65.i = add nuw nsw i32 %map_page.173.i, %inc.i
  %65 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i, align 4
  %cmp3.i = icmp ugt i32 %66, %add.i
  br i1 %cmp3.i, label %do.end34.i.while.body.i_crit_edge, label %do.end34.i.for.cond.loopexit.i_crit_edge

do.end34.i.for.cond.loopexit.i_crit_edge:         ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit.i

do.end34.i.while.body.i_crit_edge:                ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

for.end.i:                                        ; preds = %for.cond.loopexit.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  tail call void @rds_cong_map_updated(ptr noundef %55, i64 noundef -1) #6
  br label %if.end127

if.else:                                          ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  %c_faddr124 = getelementptr inbounds %struct.rds_connection, ptr %49, i32 0, i32 2
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %49, i32 0, i32 1
  %67 = ptrtoint ptr %gfp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %gfp, align 4
  tail call void @rds_recv_incoming(ptr noundef %49, ptr noundef %c_faddr124, ptr noundef %c_laddr, ptr noundef nonnull %tinc.1, i32 noundef %68) #6
  br label %if.end127

if.end127:                                        ; preds = %if.else, %for.end.i, %if.then123.if.end127_crit_edge
  %69 = ptrtoint ptr %t_tinc_hdr_rem to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 48, ptr %t_tinc_hdr_rem, align 4
  %70 = ptrtoint ptr %t_tinc_data_rem to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %t_tinc_data_rem, align 4
  %71 = ptrtoint ptr %t_tinc to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %t_tinc, align 4
  tail call void @rds_inc_put(ptr noundef %tinc.1) #6
  br label %if.end132

if.end132:                                        ; preds = %if.end127, %land.lhs.true114.if.end132_crit_edge, %if.end111.if.end132_crit_edge
  %tinc.2 = phi ptr [ null, %if.end127 ], [ %tinc.1, %land.lhs.true114.if.end132_crit_edge ], [ %tinc.1, %if.end111.if.end132_crit_edge ]
  %tobool4.not = icmp eq i32 %left.2, 0
  br i1 %tobool4.not, label %if.end132.do.body133_crit_edge, label %if.end132.while.body_crit_edge

if.end132.while.body_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end132.do.body133_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body133

do.body133.sink.split:                            ; preds = %if.then73.do.body133.sink.split_crit_edge, %if.then6.do.body133.sink.split_crit_edge
  %left.3.ph = phi i32 [ %left.0265, %if.then6.do.body133.sink.split_crit_edge ], [ %left.1255, %if.then73.do.body133.sink.split_crit_edge ]
  %error = getelementptr inbounds %struct.read_descriptor_t, ptr %desc, i32 0, i32 3
  %72 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -12, ptr %error, align 4
  br label %do.body133

do.body133:                                       ; preds = %do.body133.sink.split, %if.end132.do.body133_crit_edge, %do.end.do.body133_crit_edge
  %left.3 = phi i32 [ 0, %do.end.do.body133_crit_edge ], [ %left.3.ph, %do.body133.sink.split ], [ 0, %if.end132.do.body133_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_data_recv.__UNIQUE_ID_ddebug657, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_data_recv, %if.then145)) #6
          to label %do.end150 [label %if.then145], !srcloc !62

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #8
  %len146 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %73 = ptrtoint ptr %len146 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len146, align 4
  %t_sock = getelementptr inbounds %struct.rds_tcp_connection, ptr %5, i32 0, i32 4
  %75 = ptrtoint ptr %t_sock to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %t_sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sk, align 16
  %qlen.i = getelementptr inbounds %struct.sock, ptr %78, i32 0, i32 8, i32 1
  %79 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %qlen.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_data_recv.__UNIQUE_ID_ddebug657, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, i32 noundef %len, i32 noundef %left.3, i32 noundef %74, i32 noundef %80) #6
  br label %do.end150

do.end150:                                        ; preds = %if.then145, %do.body133
  %sub151 = sub i32 %len, %left.3
  ret i32 %sub151
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_inc_path_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pskb_extract(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_recv_incoming(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_inc_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_cong_map_updated(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
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
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !49, !51}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/tcp_recv.c", i32 55, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rds_tcp_inc_free.__UNIQUE_ID_ddebug644, !1, !"__UNIQUE_ID_ddebug644", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rds/tcp_recv.c", i32 296, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rds_tcp_recv_path.__UNIQUE_ID_ddebug659, !7, !"__UNIQUE_ID_ddebug659", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/rds/tcp_recv.c", i32 312, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rds_tcp_data_ready.__UNIQUE_ID_ddebug660, !11, !"__UNIQUE_ID_ddebug660", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/rds/tcp_recv.c", i32 338, i32 44}
!16 = !{ptr @rds_tcp_incoming_slab, !17, !"rds_tcp_incoming_slab", i1 false, i1 false}
!17 = !{!"../net/rds/tcp_recv.c", i32 40, i32 27}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/rds/tcp_recv.c", i32 46, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rds_tcp_inc_purge.__UNIQUE_ID_ddebug643, !19, !"__UNIQUE_ID_ddebug643", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/rds/tcp_recv.c", i32 277, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rds_tcp_read_sock.__UNIQUE_ID_ddebug658, !23, !"__UNIQUE_ID_ddebug658", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/rds/tcp_recv.c", i32 164, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rds_tcp_data_recv.__UNIQUE_ID_ddebug649, !27, !"__UNIQUE_ID_ddebug649", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/rds/tcp_recv.c", i32 180, i32 4}
!32 = !{ptr @rds_tcp_data_recv.__UNIQUE_ID_ddebug650, !31, !"__UNIQUE_ID_ddebug650", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/rds/tcp_recv.c", i32 195, i32 4}
!35 = !{ptr @rds_tcp_data_recv.__UNIQUE_ID_ddebug653, !34, !"__UNIQUE_ID_ddebug653", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/rds/tcp_recv.c", i32 226, i32 4}
!38 = !{ptr @rds_tcp_data_recv.__UNIQUE_ID_ddebug656, !37, !"__UNIQUE_ID_ddebug656", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/rds/tcp_recv.c", i32 255, i32 2}
!41 = !{ptr @rds_tcp_data_recv.__UNIQUE_ID_ddebug657, !40, !"__UNIQUE_ID_ddebug657", i1 false, i1 false}
!42 = !{ptr @skb_queue_head_init.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2148698982, i64 2148698987, i64 2148699000, i64 2148699044, i64 2148699078, i64 2148699099}
!63 = !{i64 2159412329}
!64 = !{i64 2159412502}
!65 = !{i64 2159450129}
!66 = !{i64 2159450302}
!67 = !{i64 2149924830}
!68 = !{i64 2149925096}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 2159416286, i64 2159416769, i64 2159416323, i64 2159416379, i64 2159416413, i64 2159416437, i64 2159416478, i64 2159416499, i64 2159416527, i64 2159416561}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2159417855, i64 2159418338, i64 2159417892, i64 2159417948, i64 2159417982, i64 2159418006, i64 2159418047, i64 2159418068, i64 2159418096, i64 2159418130}
