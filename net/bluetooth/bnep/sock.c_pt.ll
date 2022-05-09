; ModuleID = '/llk/IR_all_yes/net/bluetooth/bnep/sock.c_pt.bc'
source_filename = "../net/bluetooth/bnep/sock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.140, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.140 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.18, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.115, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.115 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.113, i32, %struct.spinlock }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { ptr, ptr }
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
%struct.bt_sock_list = type { %struct.hlist_head, %struct.rwlock_t, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.25 }
%union.anon.25 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
%union.anon.122 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.bnep_connlist_req = type { i32, ptr }
%struct.bnep_connadd_req = type { i32, i32, i16, [16 x i8] }
%struct.bnep_conndel_req = type { i32, [6 x i8] }
%struct.bnep_conninfo = type { i32, i16, i16, [6 x i8], [16 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@bnep_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 984, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, ptr null, [32 x i8] c"BNEP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@bnep_sock_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 31, ptr @bnep_sock_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Can't register BNEP socket\0A\00", [36 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bnep\00", [27 x i8] zeroinitializer }, align 32
@bnep_sk_list = internal global { %struct.bt_sock_list, [44 x i8] } { %struct.bt_sock_list { %struct.hlist_head zeroinitializer, %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } }, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to create BNEP proc file\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BNEP socket layer initialized\0A\00", [33 x i8] zeroinitializer }, align 32
@bnep_sock_create.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnep_sock_create\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/bluetooth/bnep/sock.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sock %p\0A\00", [23 x i8] zeroinitializer }, align 32
@bnep_sock_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 31, ptr null, ptr @bnep_sock_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr null, ptr @bnep_sock_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @sock_no_sendmsg, ptr @sock_no_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bnep_sock_release.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.5, ptr @.str.8, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bnep_sock_release\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sock %p sk %p\0A\00", [17 x i8] zeroinitializer }, align 32
@do_bnep_sock_ioctl.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"do_bnep_sock_ioctl\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cmd %x arg %p\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bnep_sk_list.lock\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1074021064, i64 1074021065, i64 2147762898, i64 2147762899, i64 2147762900]
@___asan_gen_.15 = private unnamed_addr constant [11 x i8] c"bnep_proto\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 192, i32 21 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"bnep_sock_family_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 227, i32 38 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 243, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 247, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"bnep_sk_list\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 33, i32 28 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 249, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 254, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 203, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"bnep_sock_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 172, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 41, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 63, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 156, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [29 x i8] c"../net/bluetooth/bnep/sock.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 34, i32 10 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @bnep_sock_cleanup, ptr @bnep_proto, ptr @bnep_sock_family_ops, ptr @.str, ptr @.str.1, ptr @bnep_sk_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bnep_sock_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnep_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnep_sock_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnep_sk_list to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnep_sock_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnep_sock_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @bnep_proto, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @bt_sock_register(i32 noundef 4, ptr noundef nonnull @bnep_sock_family_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str) #6
  br label %error

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @bt_procfs_init(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.1, ptr noundef nonnull @bnep_sk_list, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2) #6
  tail call void @bt_sock_unregister(i32 noundef 4) #6
  br label %error

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.3) #6
  br label %cleanup

error:                                            ; preds = %if.then7, %if.then3
  %err.0 = phi i32 [ %call1, %if.then3 ], [ %call5, %if.then7 ]
  tail call void @proto_unregister(ptr noundef nonnull @bnep_proto) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_register(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_procfs_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_unregister(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @bnep_sock_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @bt_procfs_cleanup(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.1) #6
  tail call void @bt_sock_unregister(i32 noundef 4) #6
  tail call void @proto_unregister(ptr noundef nonnull @bnep_proto) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_procfs_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnep_sock_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_sock_create.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_sock_create, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_sock_create.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.6, ptr noundef %sock) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp.not = icmp eq i16 %1, 3
  br i1 %cmp.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %call6 = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 31, i32 noundef 2592, ptr noundef nonnull @bnep_proto, i32 noundef %kern) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call6) #6
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bnep_sock_ops, ptr %ops, align 4
  %3 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %sock, align 128
  %4 = getelementptr inbounds %struct.sock_common, ptr %call6, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and.i.i = and i32 %6, -257
  store i32 %and.i.i, ptr %4, align 4
  %conv10 = trunc i32 %protocol to i16
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call6, i32 0, i32 46
  %7 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv10, ptr %sk_protocol, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call6, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store volatile i8 2, ptr %skc_state, align 2
  tail call void @bt_sock_link(ptr noundef nonnull @bnep_sk_list, ptr noundef nonnull %call6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -94, %do.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnep_sock_release(ptr noundef %sock) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_sock_release.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_sock_release, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_sock_release.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.8, ptr noundef %sock, ptr noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  tail call void @bt_sock_unlink(ptr noundef nonnull @bnep_sk_list, ptr noundef nonnull %1) #6
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #6
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %or.i.i.i = or i32 %4, 1
  store i32 %or.i.i.i, ptr %2, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %5 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sk_socket.i.i, align 8
  %6 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %6, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #6
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #6
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #6, !srcloc !50
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !51

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #6
  br label %cleanup

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @sk_free(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_bind(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_getname(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnep_sock_ioctl(ptr nocapture noundef readnone %sock, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %call = tail call fastcc i32 @do_bnep_sock_ioctl(i32 noundef %cmd, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendmsg(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_bnep_sock_ioctl(i32 noundef %cmd, ptr noundef %argp) unnamed_addr #3 align 64 {
entry:
  %cl = alloca %struct.bnep_connlist_req, align 4
  %ca = alloca %struct.bnep_connadd_req, align 4
  %cd = alloca %struct.bnep_conndel_req, align 4
  %ci = alloca %struct.bnep_conninfo, align 4
  %supp_feat = alloca i32, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cl) #6
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cl, align 4, !annotation !53
  %1 = getelementptr inbounds %struct.bnep_connlist_req, ptr %cl, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ca) #6
  %3 = call ptr @memset(ptr %ca, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cd) #6
  %4 = call ptr @memset(ptr %cd, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ci) #6
  %5 = call ptr @memset(ptr %ci, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supp_feat) #6
  %6 = ptrtoint ptr %supp_feat to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %supp_feat, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #6
  %7 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %err, align 4, !annotation !53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_bnep_sock_ioctl.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_bnep_sock_ioctl, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_bnep_sock_ioctl.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.10, i32 noundef %cmd, ptr noundef %argp) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end.cleanup_crit_edge [
    i32 1074021064, label %sw.bb
    i32 1074021065, label %sw.bb27
    i32 -2147204398, label %if.end59.i.i37
    i32 -2147204397, label %if.end59.i.i73
    i32 -2147204396, label %if.end59.i.i109
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %call3 = tail call zeroext i1 @capable(i32 noundef 12) #6
  br i1 %call3, label %if.end59.i.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59.i.i:                                     ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argp, i32 28, i32 -1226833920) #9
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !51

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ca, i32 noundef 28) #6
  %10 = call i32 @llvm.read_register.i32(metadata !38) #6
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !54
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ca, ptr noundef %argp, i32 noundef 28) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #6, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !51

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i122 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 28, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 28, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 28, %res.0.i.i122
  %add.ptr.i.i = getelementptr i8, ptr %ca, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i122)
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  %14 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ca, align 4
  %call11 = call ptr @sockfd_lookup(i32 noundef %15, ptr noundef nonnull %err) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %err, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %sk = getelementptr inbounds %struct.socket, ptr %call11, i32 0, i32 4
  %18 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk, align 16
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp.not = icmp eq i8 %21, 1
  br i1 %cmp.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %file = getelementptr inbounds %struct.socket, ptr %call11, i32 0, i32 3
  %22 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %23) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %arrayidx = getelementptr inbounds %struct.bnep_connadd_req, ptr %ca, i32 0, i32 3, i32 15
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx, align 1
  %call18 = call i32 @bnep_add_connection(ptr noundef nonnull %ca, ptr noundef nonnull %call11) #6
  %25 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call18, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end59.i.i4, label %if.else

if.end59.i.i4:                                    ; preds = %if.end17
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #6
  %call.i.i5 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i5, label %if.end59.i.i4.if.then23_crit_edge, label %copy_to_user.exit

if.end59.i.i4.if.then23_crit_edge:                ; preds = %if.end59.i.i4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

copy_to_user.exit:                                ; preds = %if.end59.i.i4
  %call.i.i.i9 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ca, i32 noundef 28) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %argp, ptr noundef nonnull %ca, i32 noundef 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool22.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool22.not, label %copy_to_user.exit.if.end26_crit_edge, label %copy_to_user.exit.if.then23_crit_edge

copy_to_user.exit.if.then23_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

copy_to_user.exit.if.end26_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then23:                                        ; preds = %copy_to_user.exit.if.then23_crit_edge, %if.end59.i.i4.if.then23_crit_edge
  %26 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -14, ptr %err, align 4
  br label %if.end26

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %file25 = getelementptr inbounds %struct.socket, ptr %call11, i32 0, i32 3
  %27 = ptrtoint ptr %file25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %file25, align 4
  call void @fput(ptr noundef %28) #6
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23, %copy_to_user.exit.if.end26_crit_edge
  %29 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %err, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %do.end
  %call28 = tail call zeroext i1 @capable(i32 noundef 12) #6
  br i1 %call28, label %if.end59.i.i14, label %sw.bb27.cleanup_crit_edge

sw.bb27.cleanup_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59.i.i14:                                   ; preds = %sw.bb27
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #6
  %call.i.i15 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i15, label %if.end59.i.i14.if.then11.i.i31_crit_edge, label %land.lhs.true.i.i18

if.end59.i.i14.if.then11.i.i31_crit_edge:         ; preds = %if.end59.i.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i31

land.lhs.true.i.i18:                              ; preds = %if.end59.i.i14
  %31 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argp, i32 12, i32 -1226833920) #9, !srcloc !57
  %asmresult.i.i16 = extractvalue { i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i16)
  %cmp.i6.i17 = icmp eq i32 %asmresult.i.i16, 0
  br i1 %cmp.i6.i17, label %if.end.i.i28, label %land.lhs.true.i.i18.if.then11.i.i31_crit_edge, !prof !51

land.lhs.true.i.i18.if.then11.i.i31_crit_edge:    ; preds = %land.lhs.true.i.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i31

if.end.i.i28:                                     ; preds = %land.lhs.true.i.i18
  %call.i.i.i19 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cd, i32 noundef 12) #6
  %32 = call i32 @llvm.read_register.i32(metadata !38) #6
  %and.i.i.i.i.i.i20 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i.i20 to ptr
  %cpu_domain.i.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i21) #5, !srcloc !54
  %and.i.i.i.i22 = and i32 %34, -13
  %or.i.i.i.i23 = or i32 %and.i.i.i.i22, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i23) #6, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %call1.i.i.i24 = call i32 @arm_copy_from_user(ptr noundef nonnull %cd, ptr noundef %argp, i32 noundef 12) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #6, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i24)
  %tobool4.not.i.i27 = icmp eq i32 %call1.i.i.i24, 0
  br i1 %tobool4.not.i.i27, label %if.end34, label %if.end.i.i28.if.then11.i.i31_crit_edge, !prof !51

if.end.i.i28.if.then11.i.i31_crit_edge:           ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i31

if.then11.i.i31:                                  ; preds = %if.end.i.i28.if.then11.i.i31_crit_edge, %land.lhs.true.i.i18.if.then11.i.i31_crit_edge, %if.end59.i.i14.if.then11.i.i31_crit_edge
  %res.0.i.i26129 = phi i32 [ %call1.i.i.i24, %if.end.i.i28.if.then11.i.i31_crit_edge ], [ 12, %if.end59.i.i14.if.then11.i.i31_crit_edge ], [ 12, %land.lhs.true.i.i18.if.then11.i.i31_crit_edge ]
  %sub.i.i29 = sub i32 12, %res.0.i.i26129
  %add.ptr.i.i30 = getelementptr i8, ptr %cd, i32 %sub.i.i29
  %35 = call ptr @memset(ptr %add.ptr.i.i30, i32 0, i32 %res.0.i.i26129)
  br label %cleanup

if.end34:                                         ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = call i32 @bnep_del_connection(ptr noundef nonnull %cd) #6
  br label %cleanup

if.end59.i.i37:                                   ; preds = %do.end
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #6
  %call.i.i38 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i38, label %if.end59.i.i37.if.then11.i.i54_crit_edge, label %land.lhs.true.i.i41

if.end59.i.i37.if.then11.i.i54_crit_edge:         ; preds = %if.end59.i.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i54

land.lhs.true.i.i41:                              ; preds = %if.end59.i.i37
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argp, i32 8, i32 -1226833920) #9
  %asmresult.i.i39 = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i39)
  %cmp.i6.i40 = icmp eq i32 %asmresult.i.i39, 0
  br i1 %cmp.i6.i40, label %if.end.i.i51, label %land.lhs.true.i.i41.if.then11.i.i54_crit_edge, !prof !51

land.lhs.true.i.i41.if.then11.i.i54_crit_edge:    ; preds = %land.lhs.true.i.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i54

if.end.i.i51:                                     ; preds = %land.lhs.true.i.i41
  %call.i.i.i42 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cl, i32 noundef 8) #6
  %37 = call i32 @llvm.read_register.i32(metadata !38) #6
  %and.i.i.i.i.i.i43 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i43 to ptr
  %cpu_domain.i.i.i.i.i44 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i44) #5, !srcloc !54
  %and.i.i.i.i45 = and i32 %39, -13
  %or.i.i.i.i46 = or i32 %and.i.i.i.i45, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i46) #6, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %call1.i.i.i47 = call i32 @arm_copy_from_user(ptr noundef nonnull %cl, ptr noundef %argp, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #6, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i47)
  %tobool4.not.i.i50 = icmp eq i32 %call1.i.i.i47, 0
  br i1 %tobool4.not.i.i50, label %if.end40, label %if.end.i.i51.if.then11.i.i54_crit_edge, !prof !51

if.end.i.i51.if.then11.i.i54_crit_edge:           ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i54

if.then11.i.i54:                                  ; preds = %if.end.i.i51.if.then11.i.i54_crit_edge, %land.lhs.true.i.i41.if.then11.i.i54_crit_edge, %if.end59.i.i37.if.then11.i.i54_crit_edge
  %res.0.i.i49134 = phi i32 [ %call1.i.i.i47, %if.end.i.i51.if.then11.i.i54_crit_edge ], [ 8, %if.end59.i.i37.if.then11.i.i54_crit_edge ], [ 8, %land.lhs.true.i.i41.if.then11.i.i54_crit_edge ]
  %sub.i.i52 = sub i32 8, %res.0.i.i49134
  %add.ptr.i.i53 = getelementptr i8, ptr %cl, i32 %sub.i.i52
  %40 = call ptr @memset(ptr %add.ptr.i.i53, i32 0, i32 %res.0.i.i49134)
  br label %cleanup

if.end40:                                         ; preds = %if.end.i.i51
  %41 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp41 = icmp eq i32 %42, 0
  br i1 %cmp41, label %if.end40.cleanup_crit_edge, label %if.end44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %call45 = call i32 @bnep_get_connlist(ptr noundef nonnull %cl) #6
  %43 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call45, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end59.i.i60, label %if.end44.if.end50_crit_edge

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end59.i.i60:                                   ; preds = %if.end44
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #6
  %call.i.i61 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i61, label %if.end59.i.i60.cleanup_crit_edge, label %copy_to_user.exit69

if.end59.i.i60.cleanup_crit_edge:                 ; preds = %if.end59.i.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit69:                              ; preds = %if.end59.i.i60
  %call.i.i.i65 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cl, i32 noundef 8) #6
  %call.i12.i.i66 = call i32 @arm_copy_to_user(ptr noundef %argp, ptr noundef nonnull %cl, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i66)
  %tobool48.not = icmp eq i32 %call.i12.i.i66, 0
  br i1 %tobool48.not, label %copy_to_user.exit69.if.end50_crit_edge, label %copy_to_user.exit69.cleanup_crit_edge

copy_to_user.exit69.cleanup_crit_edge:            ; preds = %copy_to_user.exit69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit69.if.end50_crit_edge:           ; preds = %copy_to_user.exit69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end50:                                         ; preds = %copy_to_user.exit69.if.end50_crit_edge, %if.end44.if.end50_crit_edge
  %44 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %err, align 4
  br label %cleanup

if.end59.i.i73:                                   ; preds = %do.end
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #6
  %call.i.i74 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i74, label %if.end59.i.i73.if.then11.i.i90_crit_edge, label %land.lhs.true.i.i77

if.end59.i.i73.if.then11.i.i90_crit_edge:         ; preds = %if.end59.i.i73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i90

land.lhs.true.i.i77:                              ; preds = %if.end59.i.i73
  %46 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argp, i32 32, i32 -1226833920) #9
  %asmresult.i.i75 = extractvalue { i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i75)
  %cmp.i6.i76 = icmp eq i32 %asmresult.i.i75, 0
  br i1 %cmp.i6.i76, label %if.end.i.i87, label %land.lhs.true.i.i77.if.then11.i.i90_crit_edge, !prof !51

land.lhs.true.i.i77.if.then11.i.i90_crit_edge:    ; preds = %land.lhs.true.i.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i90

if.end.i.i87:                                     ; preds = %land.lhs.true.i.i77
  %call.i.i.i78 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ci, i32 noundef 32) #6
  %47 = call i32 @llvm.read_register.i32(metadata !38) #6
  %and.i.i.i.i.i.i79 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i.i79 to ptr
  %cpu_domain.i.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 4
  %49 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i80) #5, !srcloc !54
  %and.i.i.i.i81 = and i32 %49, -13
  %or.i.i.i.i82 = or i32 %and.i.i.i.i81, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i82) #6, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %call1.i.i.i83 = call i32 @arm_copy_from_user(ptr noundef nonnull %ci, ptr noundef %argp, i32 noundef 32) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #6, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i83)
  %tobool4.not.i.i86 = icmp eq i32 %call1.i.i.i83, 0
  br i1 %tobool4.not.i.i86, label %if.end55, label %if.end.i.i87.if.then11.i.i90_crit_edge, !prof !51

if.end.i.i87.if.then11.i.i90_crit_edge:           ; preds = %if.end.i.i87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i90

if.then11.i.i90:                                  ; preds = %if.end.i.i87.if.then11.i.i90_crit_edge, %land.lhs.true.i.i77.if.then11.i.i90_crit_edge, %if.end59.i.i73.if.then11.i.i90_crit_edge
  %res.0.i.i85141 = phi i32 [ %call1.i.i.i83, %if.end.i.i87.if.then11.i.i90_crit_edge ], [ 32, %if.end59.i.i73.if.then11.i.i90_crit_edge ], [ 32, %land.lhs.true.i.i77.if.then11.i.i90_crit_edge ]
  %sub.i.i88 = sub i32 32, %res.0.i.i85141
  %add.ptr.i.i89 = getelementptr i8, ptr %ci, i32 %sub.i.i88
  %50 = call ptr @memset(ptr %add.ptr.i.i89, i32 0, i32 %res.0.i.i85141)
  br label %cleanup

if.end55:                                         ; preds = %if.end.i.i87
  %call56 = call i32 @bnep_get_conninfo(ptr noundef nonnull %ci) #6
  %51 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call56, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59.i.i96, label %if.end55.if.end62_crit_edge

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.end59.i.i96:                                   ; preds = %if.end55
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #6
  %call.i.i97 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i97, label %if.end59.i.i96.cleanup_crit_edge, label %copy_to_user.exit105

if.end59.i.i96.cleanup_crit_edge:                 ; preds = %if.end59.i.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit105:                             ; preds = %if.end59.i.i96
  %call.i.i.i101 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ci, i32 noundef 32) #6
  %call.i12.i.i102 = call i32 @arm_copy_to_user(ptr noundef %argp, ptr noundef nonnull %ci, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i102)
  %tobool60.not = icmp eq i32 %call.i12.i.i102, 0
  br i1 %tobool60.not, label %copy_to_user.exit105.if.end62_crit_edge, label %copy_to_user.exit105.cleanup_crit_edge

copy_to_user.exit105.cleanup_crit_edge:           ; preds = %copy_to_user.exit105
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit105.if.end62_crit_edge:          ; preds = %copy_to_user.exit105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.end62:                                         ; preds = %copy_to_user.exit105.if.end62_crit_edge, %if.end55.if.end62_crit_edge
  %52 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %err, align 4
  br label %cleanup

if.end59.i.i109:                                  ; preds = %do.end
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #6
  %call.i.i110 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i110, label %if.end59.i.i109.cleanup_crit_edge, label %if.end.i.i113

if.end59.i.i109.cleanup_crit_edge:                ; preds = %if.end59.i.i109
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i113:                                    ; preds = %if.end59.i.i109
  %54 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argp, i32 4, i32 -1226833920) #9, !srcloc !58
  %asmresult.i.i111 = extractvalue { i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i111)
  %cmp.i6.i112 = icmp eq i32 %asmresult.i.i111, 0
  br i1 %cmp.i6.i112, label %copy_to_user.exit118, label %if.end.i.i113.cleanup_crit_edge

if.end.i.i113.cleanup_crit_edge:                  ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit118:                             ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i114 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %supp_feat, i32 noundef 4) #6
  %call.i12.i.i115 = call i32 @arm_copy_to_user(ptr noundef %argp, ptr noundef nonnull %supp_feat, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i115)
  %tobool65.not = icmp eq i32 %call.i12.i.i115, 0
  %spec.select = select i1 %tobool65.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit118, %if.end.i.i113.cleanup_crit_edge, %if.end59.i.i109.cleanup_crit_edge, %if.end62, %copy_to_user.exit105.cleanup_crit_edge, %if.end59.i.i96.cleanup_crit_edge, %if.then11.i.i90, %if.end50, %copy_to_user.exit69.cleanup_crit_edge, %if.end59.i.i60.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.then11.i.i54, %if.end34, %if.then11.i.i31, %sw.bb27.cleanup_crit_edge, %if.end26, %if.then16, %if.then13, %if.then11.i.i, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %53, %if.end62 ], [ %45, %if.end50 ], [ %call35, %if.end34 ], [ -77, %if.then16 ], [ %30, %if.end26 ], [ %17, %if.then13 ], [ -1, %sw.bb.cleanup_crit_edge ], [ -1, %sw.bb27.cleanup_crit_edge ], [ -22, %if.end40.cleanup_crit_edge ], [ -14, %copy_to_user.exit69.cleanup_crit_edge ], [ -14, %copy_to_user.exit105.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i31 ], [ -14, %if.then11.i.i54 ], [ -14, %if.end59.i.i60.cleanup_crit_edge ], [ -14, %if.then11.i.i90 ], [ -14, %if.end59.i.i96.cleanup_crit_edge ], [ -14, %if.end59.i.i109.cleanup_crit_edge ], [ -14, %if.end.i.i113.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit118 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supp_feat) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ci) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cd) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ca) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cl) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnep_add_connection(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnep_del_connection(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnep_get_connlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnep_get_conninfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !34, !36}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/bnep/sock.c", i32 243, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/bluetooth/bnep/sock.c", i32 247, i32 34}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/bluetooth/bnep/sock.c", i32 249, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/bnep/sock.c", i32 254, i32 2}
!8 = !{ptr @bnep_proto, !9, !"bnep_proto", i1 false, i1 false}
!9 = !{!"../net/bluetooth/bnep/sock.c", i32 192, i32 21}
!10 = !{ptr @bnep_sock_family_ops, !11, !"bnep_sock_family_ops", i1 false, i1 false}
!11 = !{!"../net/bluetooth/bnep/sock.c", i32 227, i32 38}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/bluetooth/bnep/sock.c", i32 203, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @bnep_sock_create.__UNIQUE_ID_ddebug461, !13, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!17 = !{ptr @bnep_sock_ops, !18, !"bnep_sock_ops", i1 false, i1 false}
!18 = !{!"../net/bluetooth/bnep/sock.c", i32 172, i32 31}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/bluetooth/bnep/sock.c", i32 41, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bnep_sock_release.__UNIQUE_ID_ddebug459, !20, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/bluetooth/bnep/sock.c", i32 63, i32 2}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @do_bnep_sock_ioctl.__UNIQUE_ID_ddebug460, !24, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!29 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/bluetooth/bnep/sock.c", i32 34, i32 10}
!36 = !{ptr @bnep_sk_list, !37, !"bnep_sk_list", i1 false, i1 false}
!37 = !{!"../net/bluetooth/bnep/sock.c", i32 33, i32 28}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2148936016, i64 2148936021, i64 2148936034, i64 2148936078, i64 2148936112, i64 2148936133}
!49 = !{i64 2148325617}
!50 = !{i64 2148240081, i64 2148240113, i64 2148240142, i64 2148240176, i64 2148240207, i64 2148240230}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2149443669}
!53 = !{!"auto-init"}
!54 = !{i64 4762840}
!55 = !{i64 4763037}
!56 = !{i64 2152248270}
!57 = !{i64 2152267285, i64 2152267310}
!58 = !{i64 2152267966, i64 2152267991}
