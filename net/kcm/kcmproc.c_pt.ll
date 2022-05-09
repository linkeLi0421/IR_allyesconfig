; ModuleID = '/llk/IR_all_yes/net/kcm/kcmproc.c_pt.bc'
source_filename = "../net/kcm/kcmproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.kcm_net = type { %struct.mutex, %struct.kcm_psock_stats, %struct.kcm_mux_stats, %struct.strp_aggr_stats, %struct.list_head, i32 }
%struct.kcm_psock_stats = type { i64, i64, i64, i64, i32 }
%struct.kcm_mux_stats = type { i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.strp_aggr_stats = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kcm_mux = type { %struct.list_head, %struct.callback_head, ptr, %struct.list_head, i32, %struct.list_head, i32, %struct.kcm_mux_stats, %struct.kcm_psock_stats, %struct.strp_aggr_stats, [64 x i8], %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sk_buff_head, [12 x i8], %struct.spinlock, %struct.list_head, %struct.list_head, [68 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.kcm_proc_mux_state = type { %struct.seq_net_private, i32 }
%struct.seq_net_private = type { ptr, ptr }
%struct.kcm_psock = type { ptr, %struct.strparser, ptr, i32, i8, ptr, ptr, ptr, %struct.list_head, %struct.kcm_psock_stats, %struct.list_head, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, i64, i64 }
%struct.strparser = type { ptr, i8, ptr, ptr, i32, %struct.delayed_work, %struct.work_struct, %struct.strp_stats, %struct.strp_callbacks }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.strp_stats = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.strp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.174, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.175, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.176, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.170, [0 x i32], %union.anon.171, i16, i16, %union.anon.172, %struct.refcount_struct, [0 x i32], %union.anon.173 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.141 }
%union.anon.141 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.170 = type { i32 }
%union.anon.171 = type { %struct.hlist_node }
%union.anon.172 = type { i32 }
%union.anon.173 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.174 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.175 = type { ptr }
%union.anon.176 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.kcm_sock = type { %struct.sock, ptr, %struct.list_head, i32, i8, %struct.work_struct, %struct.kcm_stats, ptr, %struct.work_struct, %struct.list_head, ptr, i8, i8, i8, ptr, %struct.list_head, i8, i8 }
%struct.kcm_stats = type { i64, i64, i64, i64 }

@kcm_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @kcm_proc_init_net, ptr null, ptr @kcm_proc_exit_net, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kcm_stats\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kcm\00", [28 x i8] zeroinitializer }, align 32
@kcm_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @kcm_seq_start, ptr @kcm_seq_stop, ptr @kcm_seq_next, ptr @kcm_seq_show }, [16 x i8] zeroinitializer }, align 32
@kcm_net_id = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%-8s %-10s %-16s %-10s %-16s %-10s %-10s %-10s %-10s %-10s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MUX\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RX-Msgs\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RX-Bytes\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TX-Msgs\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TX-Bytes\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TX-Retries\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Attach\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Unattach\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UnattchRsvd\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX-RdyDrops\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%-8s %-10llu %-16llu %-10llu %-16llu %-10u %-10u %-10u %-10u %-10u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"%-8s %-10s %-16s %-10s %-16s %-10s %-10s %-10s %-10s %-10s %-10s %-10s %-10s %-10s %-10s %-10s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Psock\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Unreserved\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RX-Aborts\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RX-Intr\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RX-Unrecov\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RX-MemFail\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RX-NeedMor\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RX-BadLen\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RX-TooBig\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RX-Timeout\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TX-Aborts\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"%-8s %-10llu %-16llu %-10llu %-16llu %-10llu %-10llu %-10u %-10u %-10u %-10u %-10u %-10u %-10u %-10u %-10u\0A\00", [52 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kcm_get_idx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/kcm/kcmproc.c\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*** KCM statistics (%d MUX) ****\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%-14s %-10s %-16s %-10s %-16s %-8s %-8s %-8s %-8s %s\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Object\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Recv-Q\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Rmem\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Send-Q\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Smem\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Status\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%-6s%-8s %-10llu %-16llu %-10llu %-16llu %-8s %-8s %-8s %-8s \00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mux\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"KCMs: %d, Psocks %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"   kcm-%-7u %-10llu %-16llu %-10llu %-16llu %-8d %-8d %-8d %-8s \00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Psck-%u \00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxWait \00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WMore \00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RxWait \00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"   psock-%-5u %-10llu %-16llu %-10llu %-16llu %-8d %-8d %-8d %-8d \00", [61 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Done \00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxStop \00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RxStop \00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Rsvd-%d \00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RxWait=%u \00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RxPause \00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RdyRx \00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.62 = private unnamed_addr constant [12 x i8] c"kcm_net_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 372, i32 33 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 350, i32 30 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 354, i32 7 }
@___asan_gen_.71 = private unnamed_addr constant [12 x i8] c"kcm_seq_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 235, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 282, i32 6 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 283, i32 6 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 284, i32 6 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 285, i32 6 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 286, i32 6 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 287, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 288, i32 6 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 289, i32 6 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 290, i32 6 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 291, i32 6 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 292, i32 6 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 295, i32 6 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 296, i32 6 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 308, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 309, i32 6 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 314, i32 6 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 315, i32 6 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 316, i32 6 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 317, i32 6 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 318, i32 6 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 319, i32 6 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 320, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 321, i32 6 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 322, i32 6 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 323, i32 6 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 324, i32 6 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 327, i32 6 }
@___asan_gen_.159 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 45, i32 7 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 695, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 723, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 41, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 89, i32 6 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 93, i32 6 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 94, i32 6 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 99, i32 6 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 100, i32 6 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 101, i32 6 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 102, i32 6 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 103, i32 6 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 106, i32 16 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 194, i32 6 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 195, i32 6 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 200, i32 6 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 202, i32 18 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 113, i32 6 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 125, i32 19 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 128, i32 17 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 131, i32 17 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 134, i32 17 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 143, i32 6 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 155, i32 17 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 158, i32 17 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 161, i32 17 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 164, i32 19 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 169, i32 21 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 176, i32 18 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [21 x i8] c"../net/kcm/kcmproc.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 179, i32 18 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @kcm_proc_exit, ptr @kcm_net_ops, ptr @.str, ptr @.str.1, ptr @kcm_seq_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcm_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcm_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kcm_proc_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @kcm_net_ops) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @kcm_proc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @kcm_net_ops) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcm_proc_init_net(ptr nocapture noundef readonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @kcm_stats_seq_show, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net, align 4
  %call2 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @kcm_seq_ops, i32 noundef 12, ptr noundef null) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %out_kcm, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

out_kcm:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %5) #6
  br label %return

return:                                           ; preds = %out_kcm, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ -12, %entry.return_crit_edge ], [ -12, %out_kcm ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcm_proc_exit_net(ptr nocapture noundef readonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %1) #6
  %2 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_single(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcm_stats_seq_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kcm_net_id to i32))
  %2 = load i32, ptr @kcm_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  tail call void @mutex_lock_nested(ptr noundef %call, i32 noundef 0) #6
  %aggregate_mux_stats = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %aggregate_mux_stats to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %aggregate_mux_stats, align 8
  %rx_bytes.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rx_bytes.i, align 8
  %tx_msgs.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %tx_msgs.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tx_msgs.i, align 8
  %tx_bytes.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tx_bytes.i, align 8
  %rx_ready_drops.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %rx_ready_drops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_ready_drops.i, align 8
  %psock_attach.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 2, i32 6
  %13 = ptrtoint ptr %psock_attach.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %psock_attach.i, align 8
  %psock_unattach_rsvd.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 2, i32 7
  %15 = ptrtoint ptr %psock_unattach_rsvd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %psock_unattach_rsvd.i, align 4
  %psock_unattach.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 2, i32 8
  %17 = ptrtoint ptr %psock_unattach.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %psock_unattach.i, align 8
  %aggregate_psock_stats = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %aggregate_psock_stats to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %aggregate_psock_stats, align 8
  %tx_bytes.i52 = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %tx_bytes.i52 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tx_bytes.i52, align 8
  %reserved.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %reserved.i, align 8
  %unreserved.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %unreserved.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %unreserved.i, align 8
  %tx_aborts.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %tx_aborts.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_aborts.i, align 8
  %aggregate_strp_stats = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 3
  %29 = ptrtoint ptr %aggregate_strp_stats to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %aggregate_strp_stats, align 8
  %bytes.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %bytes.i, align 8
  %mem_fail.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %mem_fail.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mem_fail.i, align 8
  %need_more_hdr.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %need_more_hdr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %need_more_hdr.i, align 4
  %msg_too_big.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 3, i32 4
  %37 = ptrtoint ptr %msg_too_big.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_too_big.i, align 8
  %msg_timeouts.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 3, i32 5
  %39 = ptrtoint ptr %msg_timeouts.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_timeouts.i, align 4
  %bad_hdr_len.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 3, i32 6
  %41 = ptrtoint ptr %bad_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bad_hdr_len.i, align 8
  %aborts.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 3, i32 7
  %43 = ptrtoint ptr %aborts.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %aborts.i, align 4
  %interrupted.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 3, i32 8
  %45 = ptrtoint ptr %interrupted.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %interrupted.i, align 8
  %unrecov_intr.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 3, i32 9
  %47 = ptrtoint ptr %unrecov_intr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %unrecov_intr.i, align 4
  %mux_list = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 4
  %49 = ptrtoint ptr %mux_list to i32
  call void @__asan_load4_noabort(i32 %49)
  %mux.0331 = load ptr, ptr %mux_list, align 8
  %cmp.not332 = icmp eq ptr %mux.0331, %mux_list
  br i1 %cmp.not332, label %entry.for.end26_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end26

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %mux.0356 = phi ptr [ %mux.0, %for.end.for.body_crit_edge ], [ %mux.0331, %entry.for.body_crit_edge ]
  %strp_stats.sroa.67.0355 = phi i32 [ %strp_stats.sroa.67.1.lcssa, %for.end.for.body_crit_edge ], [ %48, %entry.for.body_crit_edge ]
  %strp_stats.sroa.60.0354 = phi i32 [ %strp_stats.sroa.60.1.lcssa, %for.end.for.body_crit_edge ], [ %46, %entry.for.body_crit_edge ]
  %strp_stats.sroa.53.0353 = phi i32 [ %strp_stats.sroa.53.1.lcssa, %for.end.for.body_crit_edge ], [ %44, %entry.for.body_crit_edge ]
  %strp_stats.sroa.46.0352 = phi i32 [ %strp_stats.sroa.46.1.lcssa, %for.end.for.body_crit_edge ], [ %42, %entry.for.body_crit_edge ]
  %strp_stats.sroa.39.0351 = phi i32 [ %strp_stats.sroa.39.1.lcssa, %for.end.for.body_crit_edge ], [ %40, %entry.for.body_crit_edge ]
  %strp_stats.sroa.32.0350 = phi i32 [ %strp_stats.sroa.32.1.lcssa, %for.end.for.body_crit_edge ], [ %38, %entry.for.body_crit_edge ]
  %strp_stats.sroa.25.0349 = phi i32 [ %strp_stats.sroa.25.1.lcssa, %for.end.for.body_crit_edge ], [ %36, %entry.for.body_crit_edge ]
  %strp_stats.sroa.18.0348 = phi i32 [ %strp_stats.sroa.18.1.lcssa, %for.end.for.body_crit_edge ], [ %34, %entry.for.body_crit_edge ]
  %strp_stats.sroa.11.0347 = phi i64 [ %strp_stats.sroa.11.1.lcssa, %for.end.for.body_crit_edge ], [ %32, %entry.for.body_crit_edge ]
  %strp_stats.sroa.0.0346 = phi i64 [ %strp_stats.sroa.0.1.lcssa, %for.end.for.body_crit_edge ], [ %30, %entry.for.body_crit_edge ]
  %mux_stats.sroa.40.0345 = phi i32 [ %add15.i86, %for.end.for.body_crit_edge ], [ %18, %entry.for.body_crit_edge ]
  %mux_stats.sroa.35.0344 = phi i32 [ %add13.i83, %for.end.for.body_crit_edge ], [ %16, %entry.for.body_crit_edge ]
  %mux_stats.sroa.30.0343 = phi i32 [ %add11.i80, %for.end.for.body_crit_edge ], [ %14, %entry.for.body_crit_edge ]
  %mux_stats.sroa.24.0342 = phi i32 [ %add9.i77, %for.end.for.body_crit_edge ], [ %12, %entry.for.body_crit_edge ]
  %mux_stats.sroa.19.0341 = phi i64 [ %add7.i74, %for.end.for.body_crit_edge ], [ %10, %entry.for.body_crit_edge ]
  %mux_stats.sroa.14.0340 = phi i64 [ %add5.i71, %for.end.for.body_crit_edge ], [ %8, %entry.for.body_crit_edge ]
  %mux_stats.sroa.9.0339 = phi i64 [ %add3.i68, %for.end.for.body_crit_edge ], [ %6, %entry.for.body_crit_edge ]
  %mux_stats.sroa.0.0338 = phi i64 [ %add.i65, %for.end.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %psock_stats.sroa.32.0337 = phi i32 [ %psock_stats.sroa.32.1.lcssa, %for.end.for.body_crit_edge ], [ %28, %entry.for.body_crit_edge ]
  %psock_stats.sroa.25.0336 = phi i64 [ %psock_stats.sroa.25.1.lcssa, %for.end.for.body_crit_edge ], [ %26, %entry.for.body_crit_edge ]
  %psock_stats.sroa.18.0335 = phi i64 [ %psock_stats.sroa.18.1.lcssa, %for.end.for.body_crit_edge ], [ %24, %entry.for.body_crit_edge ]
  %psock_stats.sroa.11.0334 = phi i64 [ %psock_stats.sroa.11.1.lcssa, %for.end.for.body_crit_edge ], [ %22, %entry.for.body_crit_edge ]
  %psock_stats.sroa.0.0333 = phi i64 [ %psock_stats.sroa.0.1.lcssa, %for.end.for.body_crit_edge ], [ %20, %entry.for.body_crit_edge ]
  %lock = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %stats = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 7
  %50 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %stats, align 8
  %add.i65 = add i64 %51, %mux_stats.sroa.0.0338
  %rx_bytes.i66 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 7, i32 1
  %52 = ptrtoint ptr %rx_bytes.i66 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %rx_bytes.i66, align 8
  %add3.i68 = add i64 %53, %mux_stats.sroa.9.0339
  %tx_msgs.i69 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 7, i32 2
  %54 = ptrtoint ptr %tx_msgs.i69 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %tx_msgs.i69, align 8
  %add5.i71 = add i64 %55, %mux_stats.sroa.14.0340
  %tx_bytes.i72 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 7, i32 3
  %56 = ptrtoint ptr %tx_bytes.i72 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %tx_bytes.i72, align 8
  %add7.i74 = add i64 %57, %mux_stats.sroa.19.0341
  %rx_ready_drops.i75 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 7, i32 4
  %58 = ptrtoint ptr %rx_ready_drops.i75 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_ready_drops.i75, align 8
  %add9.i77 = add i32 %59, %mux_stats.sroa.24.0342
  %psock_attach.i78 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 7, i32 6
  %60 = ptrtoint ptr %psock_attach.i78 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %psock_attach.i78, align 8
  %add11.i80 = add i32 %61, %mux_stats.sroa.30.0343
  %psock_unattach_rsvd.i81 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 7, i32 7
  %62 = ptrtoint ptr %psock_unattach_rsvd.i81 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %psock_unattach_rsvd.i81, align 4
  %add13.i83 = add i32 %63, %mux_stats.sroa.35.0344
  %psock_unattach.i84 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 7, i32 8
  %64 = ptrtoint ptr %psock_unattach.i84 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %psock_unattach.i84, align 8
  %add15.i86 = add i32 %65, %mux_stats.sroa.40.0345
  %aggregate_psock_stats2 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 8
  %66 = ptrtoint ptr %aggregate_psock_stats2 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %aggregate_psock_stats2, align 8
  %add.i87 = add i64 %67, %psock_stats.sroa.0.0333
  %tx_bytes.i88 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 8, i32 1
  %68 = ptrtoint ptr %tx_bytes.i88 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %tx_bytes.i88, align 8
  %add3.i90 = add i64 %69, %psock_stats.sroa.11.0334
  %reserved.i91 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 8, i32 2
  %70 = ptrtoint ptr %reserved.i91 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %reserved.i91, align 8
  %add5.i93 = add i64 %71, %psock_stats.sroa.18.0335
  %unreserved.i94 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 8, i32 3
  %72 = ptrtoint ptr %unreserved.i94 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %unreserved.i94, align 8
  %add7.i96 = add i64 %73, %psock_stats.sroa.25.0336
  %tx_aborts.i97 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 8, i32 4
  %74 = ptrtoint ptr %tx_aborts.i97 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx_aborts.i97, align 8
  %add9.i99 = add i32 %75, %psock_stats.sroa.32.0337
  %aggregate_strp_stats3 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 9
  %76 = ptrtoint ptr %aggregate_strp_stats3 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %aggregate_strp_stats3, align 8
  %add.i100 = add i64 %77, %strp_stats.sroa.0.0346
  %bytes.i101 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 9, i32 1
  %78 = ptrtoint ptr %bytes.i101 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %bytes.i101, align 8
  %add3.i103 = add i64 %79, %strp_stats.sroa.11.0347
  %mem_fail.i104 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 9, i32 2
  %80 = ptrtoint ptr %mem_fail.i104 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mem_fail.i104, align 8
  %add5.i106 = add i32 %81, %strp_stats.sroa.18.0348
  %need_more_hdr.i107 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 9, i32 3
  %82 = ptrtoint ptr %need_more_hdr.i107 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %need_more_hdr.i107, align 4
  %add7.i109 = add i32 %83, %strp_stats.sroa.25.0349
  %msg_too_big.i110 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 9, i32 4
  %84 = ptrtoint ptr %msg_too_big.i110 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %msg_too_big.i110, align 8
  %add9.i112 = add i32 %85, %strp_stats.sroa.32.0350
  %msg_timeouts.i113 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 9, i32 5
  %86 = ptrtoint ptr %msg_timeouts.i113 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %msg_timeouts.i113, align 4
  %add11.i115 = add i32 %87, %strp_stats.sroa.39.0351
  %bad_hdr_len.i116 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 9, i32 6
  %88 = ptrtoint ptr %bad_hdr_len.i116 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bad_hdr_len.i116, align 8
  %add13.i118 = add i32 %89, %strp_stats.sroa.46.0352
  %aborts.i119 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 9, i32 7
  %90 = ptrtoint ptr %aborts.i119 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %aborts.i119, align 4
  %add15.i121 = add i32 %91, %strp_stats.sroa.53.0353
  %interrupted.i122 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 9, i32 8
  %92 = ptrtoint ptr %interrupted.i122 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %interrupted.i122, align 8
  %add17.i124 = add i32 %93, %strp_stats.sroa.60.0354
  %unrecov_intr.i125 = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 9, i32 9
  %94 = ptrtoint ptr %unrecov_intr.i125 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %unrecov_intr.i125, align 4
  %add19.i127 = add i32 %95, %strp_stats.sroa.67.0355
  %psocks = getelementptr inbounds %struct.kcm_mux, ptr %mux.0356, i32 0, i32 5
  %96 = ptrtoint ptr %psocks to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pn299 = load ptr, ptr %psocks, align 8
  %cmp10.not300 = icmp eq ptr %.pn299, %psocks
  br i1 %cmp10.not300, label %for.body.for.end_crit_edge, label %for.body.for.body12_crit_edge

for.body.for.body12_crit_edge:                    ; preds = %for.body
  br label %for.body12

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body.for.body12_crit_edge
  %.pn316 = phi ptr [ %.pn, %for.body12.for.body12_crit_edge ], [ %.pn299, %for.body.for.body12_crit_edge ]
  %strp_stats.sroa.67.1315 = phi i32 [ %strp_stats.sroa.67.2, %for.body12.for.body12_crit_edge ], [ %add19.i127, %for.body.for.body12_crit_edge ]
  %strp_stats.sroa.60.1314 = phi i32 [ %strp_stats.sroa.60.2, %for.body12.for.body12_crit_edge ], [ %add17.i124, %for.body.for.body12_crit_edge ]
  %strp_stats.sroa.53.1313 = phi i32 [ %spec.select, %for.body12.for.body12_crit_edge ], [ %add15.i121, %for.body.for.body12_crit_edge ]
  %strp_stats.sroa.46.1312 = phi i32 [ %add19.i150, %for.body12.for.body12_crit_edge ], [ %add13.i118, %for.body.for.body12_crit_edge ]
  %strp_stats.sroa.39.1311 = phi i32 [ %add16.i, %for.body12.for.body12_crit_edge ], [ %add11.i115, %for.body.for.body12_crit_edge ]
  %strp_stats.sroa.32.1310 = phi i32 [ %add13.i147, %for.body12.for.body12_crit_edge ], [ %add9.i112, %for.body.for.body12_crit_edge ]
  %strp_stats.sroa.25.1309 = phi i32 [ %add10.i, %for.body12.for.body12_crit_edge ], [ %add7.i109, %for.body.for.body12_crit_edge ]
  %strp_stats.sroa.18.1308 = phi i32 [ %add7.i144, %for.body12.for.body12_crit_edge ], [ %add5.i106, %for.body.for.body12_crit_edge ]
  %strp_stats.sroa.11.1307 = phi i64 [ %add4.i, %for.body12.for.body12_crit_edge ], [ %add3.i103, %for.body.for.body12_crit_edge ]
  %strp_stats.sroa.0.1306 = phi i64 [ %add.i141, %for.body12.for.body12_crit_edge ], [ %add.i100, %for.body.for.body12_crit_edge ]
  %psock_stats.sroa.32.1305 = phi i32 [ %add9.i140, %for.body12.for.body12_crit_edge ], [ %add9.i99, %for.body.for.body12_crit_edge ]
  %psock_stats.sroa.25.1304 = phi i64 [ %add7.i137, %for.body12.for.body12_crit_edge ], [ %add7.i96, %for.body.for.body12_crit_edge ]
  %psock_stats.sroa.18.1303 = phi i64 [ %add5.i134, %for.body12.for.body12_crit_edge ], [ %add5.i93, %for.body.for.body12_crit_edge ]
  %psock_stats.sroa.11.1302 = phi i64 [ %add3.i131, %for.body12.for.body12_crit_edge ], [ %add3.i90, %for.body.for.body12_crit_edge ]
  %psock_stats.sroa.0.1301 = phi i64 [ %add.i128, %for.body12.for.body12_crit_edge ], [ %add.i87, %for.body.for.body12_crit_edge ]
  %stats13 = getelementptr i8, ptr %.pn316, i32 8
  %97 = ptrtoint ptr %stats13 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %stats13, align 8
  %add.i128 = add i64 %98, %psock_stats.sroa.0.1301
  %tx_bytes.i129 = getelementptr i8, ptr %.pn316, i32 16
  %99 = ptrtoint ptr %tx_bytes.i129 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %tx_bytes.i129, align 8
  %add3.i131 = add i64 %100, %psock_stats.sroa.11.1302
  %reserved.i132 = getelementptr i8, ptr %.pn316, i32 24
  %101 = ptrtoint ptr %reserved.i132 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %reserved.i132, align 8
  %add5.i134 = add i64 %102, %psock_stats.sroa.18.1303
  %unreserved.i135 = getelementptr i8, ptr %.pn316, i32 32
  %103 = ptrtoint ptr %unreserved.i135 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %unreserved.i135, align 8
  %add7.i137 = add i64 %104, %psock_stats.sroa.25.1304
  %tx_aborts.i138 = getelementptr i8, ptr %.pn316, i32 40
  %105 = ptrtoint ptr %tx_aborts.i138 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tx_aborts.i138, align 8
  %add9.i140 = add i32 %106, %psock_stats.sroa.32.1305
  %stats.i = getelementptr i8, ptr %.pn316, i32 -88
  %107 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %stats.i, align 8
  %add.i141 = add i64 %108, %strp_stats.sroa.0.1306
  %bytes.i142 = getelementptr i8, ptr %.pn316, i32 -80
  %109 = ptrtoint ptr %bytes.i142 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %bytes.i142, align 8
  %add4.i = add i64 %110, %strp_stats.sroa.11.1307
  %mem_fail.i143 = getelementptr i8, ptr %.pn316, i32 -72
  %111 = ptrtoint ptr %mem_fail.i143 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mem_fail.i143, align 8
  %add7.i144 = add i32 %112, %strp_stats.sroa.18.1308
  %need_more_hdr.i145 = getelementptr i8, ptr %.pn316, i32 -68
  %113 = ptrtoint ptr %need_more_hdr.i145 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %need_more_hdr.i145, align 4
  %add10.i = add i32 %114, %strp_stats.sroa.25.1309
  %msg_too_big.i146 = getelementptr i8, ptr %.pn316, i32 -64
  %115 = ptrtoint ptr %msg_too_big.i146 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %msg_too_big.i146, align 8
  %add13.i147 = add i32 %116, %strp_stats.sroa.32.1310
  %msg_timeouts.i148 = getelementptr i8, ptr %.pn316, i32 -60
  %117 = ptrtoint ptr %msg_timeouts.i148 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %msg_timeouts.i148, align 4
  %add16.i = add i32 %118, %strp_stats.sroa.39.1311
  %bad_hdr_len.i149 = getelementptr i8, ptr %.pn316, i32 -56
  %119 = ptrtoint ptr %bad_hdr_len.i149 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bad_hdr_len.i149, align 8
  %add19.i150 = add i32 %120, %strp_stats.sroa.46.1312
  %aborted.i = getelementptr i8, ptr %.pn316, i32 -252
  %121 = ptrtoint ptr %aborted.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %bf.load.i = load i8, ptr %aborted.i, align 4
  %122 = lshr i8 %bf.load.i, 5
  %.lobit = and i8 %122, 1
  %123 = zext i8 %.lobit to i32
  %spec.select = add i32 %strp_stats.sroa.53.1313, %123
  %124 = lshr i8 %bf.load.i, 4
  %.lobit297 = and i8 %124, 1
  %125 = zext i8 %.lobit297 to i32
  %strp_stats.sroa.60.2 = add i32 %strp_stats.sroa.60.1314, %125
  %126 = lshr i8 %bf.load.i, 3
  %.lobit298 = and i8 %126, 1
  %127 = zext i8 %.lobit298 to i32
  %strp_stats.sroa.67.2 = add i32 %strp_stats.sroa.67.1315, %127
  %128 = ptrtoint ptr %.pn316 to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pn = load ptr, ptr %.pn316, align 8
  %cmp10.not = icmp eq ptr %.pn, %psocks
  br i1 %cmp10.not, label %for.body12.for.end_crit_edge, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12

for.body12.for.end_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body12.for.end_crit_edge, %for.body.for.end_crit_edge
  %psock_stats.sroa.0.1.lcssa = phi i64 [ %add.i87, %for.body.for.end_crit_edge ], [ %add.i128, %for.body12.for.end_crit_edge ]
  %psock_stats.sroa.11.1.lcssa = phi i64 [ %add3.i90, %for.body.for.end_crit_edge ], [ %add3.i131, %for.body12.for.end_crit_edge ]
  %psock_stats.sroa.18.1.lcssa = phi i64 [ %add5.i93, %for.body.for.end_crit_edge ], [ %add5.i134, %for.body12.for.end_crit_edge ]
  %psock_stats.sroa.25.1.lcssa = phi i64 [ %add7.i96, %for.body.for.end_crit_edge ], [ %add7.i137, %for.body12.for.end_crit_edge ]
  %psock_stats.sroa.32.1.lcssa = phi i32 [ %add9.i99, %for.body.for.end_crit_edge ], [ %add9.i140, %for.body12.for.end_crit_edge ]
  %strp_stats.sroa.0.1.lcssa = phi i64 [ %add.i100, %for.body.for.end_crit_edge ], [ %add.i141, %for.body12.for.end_crit_edge ]
  %strp_stats.sroa.11.1.lcssa = phi i64 [ %add3.i103, %for.body.for.end_crit_edge ], [ %add4.i, %for.body12.for.end_crit_edge ]
  %strp_stats.sroa.18.1.lcssa = phi i32 [ %add5.i106, %for.body.for.end_crit_edge ], [ %add7.i144, %for.body12.for.end_crit_edge ]
  %strp_stats.sroa.25.1.lcssa = phi i32 [ %add7.i109, %for.body.for.end_crit_edge ], [ %add10.i, %for.body12.for.end_crit_edge ]
  %strp_stats.sroa.32.1.lcssa = phi i32 [ %add9.i112, %for.body.for.end_crit_edge ], [ %add13.i147, %for.body12.for.end_crit_edge ]
  %strp_stats.sroa.39.1.lcssa = phi i32 [ %add11.i115, %for.body.for.end_crit_edge ], [ %add16.i, %for.body12.for.end_crit_edge ]
  %strp_stats.sroa.46.1.lcssa = phi i32 [ %add13.i118, %for.body.for.end_crit_edge ], [ %add19.i150, %for.body12.for.end_crit_edge ]
  %strp_stats.sroa.53.1.lcssa = phi i32 [ %add15.i121, %for.body.for.end_crit_edge ], [ %spec.select, %for.body12.for.end_crit_edge ]
  %strp_stats.sroa.60.1.lcssa = phi i32 [ %add17.i124, %for.body.for.end_crit_edge ], [ %strp_stats.sroa.60.2, %for.body12.for.end_crit_edge ]
  %strp_stats.sroa.67.1.lcssa = phi i32 [ %add19.i127, %for.body.for.end_crit_edge ], [ %strp_stats.sroa.67.2, %for.body12.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  %129 = ptrtoint ptr %mux.0356 to i32
  call void @__asan_load4_noabort(i32 %129)
  %mux.0 = load ptr, ptr %mux.0356, align 8
  %cmp.not = icmp eq ptr %mux.0, %mux_list
  br i1 %cmp.not, label %for.end.for.end26_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.for.end26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end26

for.end26:                                        ; preds = %for.end.for.end26_crit_edge, %entry.for.end26_crit_edge
  %psock_stats.sroa.0.0.lcssa = phi i64 [ %20, %entry.for.end26_crit_edge ], [ %psock_stats.sroa.0.1.lcssa, %for.end.for.end26_crit_edge ]
  %psock_stats.sroa.11.0.lcssa = phi i64 [ %22, %entry.for.end26_crit_edge ], [ %psock_stats.sroa.11.1.lcssa, %for.end.for.end26_crit_edge ]
  %psock_stats.sroa.18.0.lcssa = phi i64 [ %24, %entry.for.end26_crit_edge ], [ %psock_stats.sroa.18.1.lcssa, %for.end.for.end26_crit_edge ]
  %psock_stats.sroa.25.0.lcssa = phi i64 [ %26, %entry.for.end26_crit_edge ], [ %psock_stats.sroa.25.1.lcssa, %for.end.for.end26_crit_edge ]
  %psock_stats.sroa.32.0.lcssa = phi i32 [ %28, %entry.for.end26_crit_edge ], [ %psock_stats.sroa.32.1.lcssa, %for.end.for.end26_crit_edge ]
  %mux_stats.sroa.0.0.lcssa = phi i64 [ %4, %entry.for.end26_crit_edge ], [ %add.i65, %for.end.for.end26_crit_edge ]
  %mux_stats.sroa.9.0.lcssa = phi i64 [ %6, %entry.for.end26_crit_edge ], [ %add3.i68, %for.end.for.end26_crit_edge ]
  %mux_stats.sroa.14.0.lcssa = phi i64 [ %8, %entry.for.end26_crit_edge ], [ %add5.i71, %for.end.for.end26_crit_edge ]
  %mux_stats.sroa.19.0.lcssa = phi i64 [ %10, %entry.for.end26_crit_edge ], [ %add7.i74, %for.end.for.end26_crit_edge ]
  %mux_stats.sroa.24.0.lcssa = phi i32 [ %12, %entry.for.end26_crit_edge ], [ %add9.i77, %for.end.for.end26_crit_edge ]
  %mux_stats.sroa.30.0.lcssa = phi i32 [ %14, %entry.for.end26_crit_edge ], [ %add11.i80, %for.end.for.end26_crit_edge ]
  %mux_stats.sroa.35.0.lcssa = phi i32 [ %16, %entry.for.end26_crit_edge ], [ %add13.i83, %for.end.for.end26_crit_edge ]
  %mux_stats.sroa.40.0.lcssa = phi i32 [ %18, %entry.for.end26_crit_edge ], [ %add15.i86, %for.end.for.end26_crit_edge ]
  %strp_stats.sroa.0.0.lcssa = phi i64 [ %30, %entry.for.end26_crit_edge ], [ %strp_stats.sroa.0.1.lcssa, %for.end.for.end26_crit_edge ]
  %strp_stats.sroa.11.0.lcssa = phi i64 [ %32, %entry.for.end26_crit_edge ], [ %strp_stats.sroa.11.1.lcssa, %for.end.for.end26_crit_edge ]
  %strp_stats.sroa.18.0.lcssa = phi i32 [ %34, %entry.for.end26_crit_edge ], [ %strp_stats.sroa.18.1.lcssa, %for.end.for.end26_crit_edge ]
  %strp_stats.sroa.25.0.lcssa = phi i32 [ %36, %entry.for.end26_crit_edge ], [ %strp_stats.sroa.25.1.lcssa, %for.end.for.end26_crit_edge ]
  %strp_stats.sroa.32.0.lcssa = phi i32 [ %38, %entry.for.end26_crit_edge ], [ %strp_stats.sroa.32.1.lcssa, %for.end.for.end26_crit_edge ]
  %strp_stats.sroa.39.0.lcssa = phi i32 [ %40, %entry.for.end26_crit_edge ], [ %strp_stats.sroa.39.1.lcssa, %for.end.for.end26_crit_edge ]
  %strp_stats.sroa.46.0.lcssa = phi i32 [ %42, %entry.for.end26_crit_edge ], [ %strp_stats.sroa.46.1.lcssa, %for.end.for.end26_crit_edge ]
  %strp_stats.sroa.53.0.lcssa = phi i32 [ %44, %entry.for.end26_crit_edge ], [ %strp_stats.sroa.53.1.lcssa, %for.end.for.end26_crit_edge ]
  %strp_stats.sroa.60.0.lcssa = phi i32 [ %46, %entry.for.end26_crit_edge ], [ %strp_stats.sroa.60.1.lcssa, %for.end.for.end26_crit_edge ]
  %strp_stats.sroa.67.0.lcssa = phi i32 [ %48, %entry.for.end26_crit_edge ], [ %strp_stats.sroa.67.1.lcssa, %for.end.for.end26_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %call) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i64 noundef %mux_stats.sroa.0.0.lcssa, i64 noundef %mux_stats.sroa.9.0.lcssa, i64 noundef %mux_stats.sroa.14.0.lcssa, i64 noundef %mux_stats.sroa.19.0.lcssa, i32 noundef 0, i32 noundef %mux_stats.sroa.30.0.lcssa, i32 noundef %mux_stats.sroa.35.0.lcssa, i32 noundef %mux_stats.sroa.40.0.lcssa, i32 noundef %mux_stats.sroa.24.0.lcssa) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.14, i64 noundef %strp_stats.sroa.0.0.lcssa, i64 noundef %strp_stats.sroa.11.0.lcssa, i64 noundef %psock_stats.sroa.0.0.lcssa, i64 noundef %psock_stats.sroa.11.0.lcssa, i64 noundef %psock_stats.sroa.18.0.lcssa, i64 noundef %psock_stats.sroa.25.0.lcssa, i32 noundef %strp_stats.sroa.53.0.lcssa, i32 noundef %strp_stats.sroa.60.0.lcssa, i32 noundef %strp_stats.sroa.67.0.lcssa, i32 noundef %strp_stats.sroa.18.0.lcssa, i32 noundef %strp_stats.sroa.25.0.lcssa, i32 noundef %strp_stats.sroa.46.0.lcssa, i32 noundef %strp_stats.sroa.32.0.lcssa, i32 noundef %strp_stats.sroa.39.0.lcssa, i32 noundef %psock_stats.sroa.32.0.lcssa) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !129) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !139
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 696, ptr noundef nonnull @.str.32) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 45, ptr noundef nonnull @.str.30) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.33) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !140
  %8 = tail call i32 @llvm.read_register.i32(metadata !129) #6
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kcm_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !129) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !139
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 696, ptr noundef nonnull @.str.32) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %rcu_read_lock.exit.return_crit_edge, label %if.else

rcu_read_lock.exit.return_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.else:                                          ; preds = %rcu_read_lock.exit
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %6 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kcm_net_id to i32))
  %10 = load i32, ptr @kcm_net_id, align 4
  %call1.i2 = tail call fastcc ptr @net_generic(ptr noundef %9, i32 noundef %10) #6
  %call2.i = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i3 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4, label %if.else.do.end.i_crit_edge

if.else.do.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i4:                                 ; preds = %if.else
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i4.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i4.do.end.i_crit_edge:              ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i4
  %.b30.i = load i1, ptr @kcm_get_idx.__warned, align 1
  br i1 %.b30.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i5

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i5:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @kcm_get_idx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 41, ptr noundef nonnull @.str.35) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i5, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true.i4.do.end.i_crit_edge, %if.else.do.end.i_crit_edge
  %mux_list.i = getelementptr inbounds %struct.kcm_net, ptr %call1.i2, i32 0, i32 4
  %11 = ptrtoint ptr %mux_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %m.031.i = load volatile ptr, ptr %mux_list.i, align 8
  %cmp.not32.i = icmp eq ptr %m.031.i, %mux_list.i
  br i1 %cmp.not32.i, label %do.end.i.return_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.return_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

for.cond.i:                                       ; preds = %for.body.i
  %12 = ptrtoint ptr %m.034.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %m.0.i = load volatile ptr, ptr %m.034.i, align 8
  %cmp.not.i = icmp eq ptr %m.0.i, %mux_list.i
  br i1 %cmp.not.i, label %for.cond.i.return_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.return_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %m.034.i = phi ptr [ %m.0.i, %for.cond.i.for.body.i_crit_edge ], [ %m.031.i, %do.end.i.for.body.i_crit_edge ]
  %pos.addr.033.i.in = phi i64 [ %pos.addr.033.i, %for.cond.i.for.body.i_crit_edge ], [ %5, %do.end.i.for.body.i_crit_edge ]
  %pos.addr.033.i = add i64 %pos.addr.033.i.in, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos.addr.033.i)
  %tobool12.not.i = icmp eq i64 %pos.addr.033.i, 0
  br i1 %tobool12.not.i, label %for.body.i.return_crit_edge, label %for.cond.i

for.body.i.return_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %for.body.i.return_crit_edge, %for.cond.i.return_crit_edge, %do.end.i.return_crit_edge, %rcu_read_lock.exit.return_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 1 to ptr), %rcu_read_lock.exit.return_crit_edge ], [ null, %do.end.i.return_crit_edge ], [ %m.034.i, %for.body.i.return_crit_edge ], [ null, %for.cond.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcm_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.33) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !140
  %0 = tail call i32 @llvm.read_register.i32(metadata !129) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kcm_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef %pos) #2 align 64 {
entry:
  %__next.i3 = alloca ptr, align 4
  %__next.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kcm_net_id to i32))
  %4 = load i32, ptr @kcm_net_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4) #6
  %mux_list.i = getelementptr inbounds %struct.kcm_net, ptr %call1.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next.i)
  %5 = ptrtoint ptr %mux_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %mux_list.i, align 4
  %7 = ptrtoint ptr %__next.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %__next.i, align 4
  %cmp.not.i = icmp eq ptr %mux_list.i, %6
  br i1 %cmp.not.i, label %if.then.kcm_get_first.exit_crit_edge, label %cond.true.i, !prof !141

if.then.kcm_get_first.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %kcm_get_first.exit

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %__next.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i = load volatile ptr, ptr %__next.i, align 4
  br label %kcm_get_first.exit

kcm_get_first.exit:                               ; preds = %cond.true.i, %if.then.kcm_get_first.exit_crit_edge
  %cond.i = phi ptr [ %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i, %cond.true.i ], [ null, %if.then.kcm_get_first.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i)
  br label %if.end

if.else:                                          ; preds = %entry
  %knet1.i = getelementptr inbounds %struct.kcm_mux, ptr %v, i32 0, i32 2
  %9 = ptrtoint ptr %knet1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %knet1.i, align 16
  %mux_list.i4 = getelementptr inbounds %struct.kcm_net, ptr %10, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next.i3)
  %11 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %v, align 4
  %13 = ptrtoint ptr %__next.i3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %__next.i3, align 4
  %cmp.not.i5 = icmp eq ptr %12, %mux_list.i4
  br i1 %cmp.not.i5, label %if.else.kcm_get_next.exit_crit_edge, label %cond.true.i7, !prof !141

if.else.kcm_get_next.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %kcm_get_next.exit

cond.true.i7:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %__next.i3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %__next.i3.0.__next.i3.0.__next.0.__next.0.__next.0.9.i6 = load volatile ptr, ptr %__next.i3, align 4
  br label %kcm_get_next.exit

kcm_get_next.exit:                                ; preds = %cond.true.i7, %if.else.kcm_get_next.exit_crit_edge
  %cond.i8 = phi ptr [ %__next.i3.0.__next.i3.0.__next.0.__next.0.__next.0.9.i6, %cond.true.i7 ], [ null, %if.else.kcm_get_next.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i3)
  br label %if.end

if.end:                                           ; preds = %kcm_get_next.exit, %kcm_get_first.exit
  %p.0 = phi ptr [ %cond.i, %kcm_get_first.exit ], [ %cond.i8, %kcm_get_next.exit ]
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %pos, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr %p.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcm_seq_show(ptr noundef %seq, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %idx = getelementptr inbounds %struct.kcm_proc_mux_state, ptr %1, i32 0, i32 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %idx, align 4
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kcm_net_id to i32))
  %7 = load i32, ptr @kcm_net_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %6, i32 noundef %7) #6
  %count.i = getelementptr inbounds %struct.kcm_net, ptr %call1.i, i32 0, i32 5
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.36, i32 noundef %9) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #6
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.44) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %stats.i = getelementptr inbounds %struct.kcm_mux, ptr %v, i32 0, i32 7
  %10 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %stats.i, align 16
  %rx_bytes.i = getelementptr inbounds %struct.kcm_mux, ptr %v, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_bytes.i, align 8
  %tx_msgs.i = getelementptr inbounds %struct.kcm_mux, ptr %v, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %tx_msgs.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_msgs.i, align 16
  %tx_bytes.i = getelementptr inbounds %struct.kcm_mux, ptr %v, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tx_bytes.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.14, i64 noundef %11, i64 noundef %13, i64 noundef %15, i64 noundef %17, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.47) #6
  %kcm_socks_cnt.i = getelementptr inbounds %struct.kcm_mux, ptr %v, i32 0, i32 4
  %18 = ptrtoint ptr %kcm_socks_cnt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %kcm_socks_cnt.i, align 4
  %psocks_cnt.i = getelementptr inbounds %struct.kcm_mux, ptr %v, i32 0, i32 6
  %20 = ptrtoint ptr %psocks_cnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %psocks_cnt.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.48, i32 noundef %19, i32 noundef %21) #6
  %lock.i = getelementptr inbounds %struct.kcm_mux, ptr %v, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #6
  %kcm_socks.i = getelementptr inbounds %struct.kcm_mux, ptr %v, i32 0, i32 3
  %22 = ptrtoint ptr %kcm_socks.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn10.i = load ptr, ptr %kcm_socks.i, align 4
  %cmp.not11.i = icmp eq ptr %.pn10.i, %kcm_socks.i
  br i1 %cmp.not11.i, label %if.else.for.end.i_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.for.end.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %kcm_format_sock.exit.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %.pn12.i = phi ptr [ %.pn.i, %kcm_format_sock.exit.i.for.body.i_crit_edge ], [ %.pn10.i, %if.else.for.body.i_crit_edge ]
  %index.i.i = getelementptr i8, ptr %.pn12.i, i32 8
  %23 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i.i, align 4
  %stats.i.i = getelementptr i8, ptr %.pn12.i, i32 60
  %25 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %stats.i.i, align 8
  %rx_bytes.i.i = getelementptr i8, ptr %.pn12.i, i32 68
  %27 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rx_bytes.i.i, align 8
  %tx_msgs.i.i = getelementptr i8, ptr %.pn12.i, i32 76
  %29 = ptrtoint ptr %tx_msgs.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %tx_msgs.i.i, align 8
  %tx_bytes.i.i = getelementptr i8, ptr %.pn12.i, i32 84
  %31 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tx_bytes.i.i, align 8
  %qlen.i.i = getelementptr i8, ptr %.pn12.i, i32 -640
  %33 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qlen.i.i, align 4
  %sk_backlog.i.i.i = getelementptr i8, ptr %.pn12.i, i32 -592
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i.i, i32 noundef 4) #6
  %35 = ptrtoint ptr %sk_backlog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %sk_backlog.i.i.i, align 4
  %qlen6.i.i = getelementptr i8, ptr %.pn12.i, i32 -500
  %37 = ptrtoint ptr %qlen6.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qlen6.i.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.49, i32 noundef %24, i64 noundef %26, i64 noundef %28, i64 noundef %30, i64 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, ptr noundef nonnull @.str.47) #6
  %tx_psock.i.i = getelementptr i8, ptr %.pn12.i, i32 92
  %39 = ptrtoint ptr %tx_psock.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_psock.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %for.body.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %index8.i.i = getelementptr inbounds %struct.kcm_psock, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %index8.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index8.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.50, i32 noundef %42) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.if.end.i.i_crit_edge
  %tx_wait.i.i = getelementptr i8, ptr %.pn12.i, i32 153
  %43 = ptrtoint ptr %tx_wait.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tx_wait.i.i, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool9.not.i.i = icmp eq i8 %44, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %if.then10.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.51) #6
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i.i, %if.end.i.i.if.end11.i.i_crit_edge
  %tx_wait_more.i.i = getelementptr i8, ptr %.pn12.i, i32 154
  %45 = ptrtoint ptr %tx_wait_more.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tx_wait_more.i.i, align 2, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool12.not.i.i = icmp eq i8 %46, 0
  br i1 %tobool12.not.i.i, label %if.end11.i.i.if.end14.i.i_crit_edge, label %if.then13.i.i

if.end11.i.i.if.end14.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i

if.then13.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.52) #6
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then13.i.i, %if.end11.i.i.if.end14.i.i_crit_edge
  %rx_wait.i.i = getelementptr i8, ptr %.pn12.i, i32 168
  %47 = ptrtoint ptr %rx_wait.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rx_wait.i.i, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool15.not.i.i = icmp eq i8 %48, 0
  br i1 %tobool15.not.i.i, label %if.end14.i.i.kcm_format_sock.exit.i_crit_edge, label %if.then16.i.i

if.end14.i.i.kcm_format_sock.exit.i_crit_edge:    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kcm_format_sock.exit.i

if.then16.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.53) #6
  br label %kcm_format_sock.exit.i

kcm_format_sock.exit.i:                           ; preds = %if.then16.i.i, %if.end14.i.i.kcm_format_sock.exit.i_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.44) #6
  %49 = ptrtoint ptr %.pn12.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn.i = load ptr, ptr %.pn12.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %kcm_socks.i
  br i1 %cmp.not.i, label %kcm_format_sock.exit.i.for.end.i_crit_edge, label %kcm_format_sock.exit.i.for.body.i_crit_edge

kcm_format_sock.exit.i.for.body.i_crit_edge:      ; preds = %kcm_format_sock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

kcm_format_sock.exit.i.for.end.i_crit_edge:       ; preds = %kcm_format_sock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %kcm_format_sock.exit.i.for.end.i_crit_edge, %if.else.for.end.i_crit_edge
  %psocks.i = getelementptr inbounds %struct.kcm_mux, ptr %v, i32 0, i32 5
  %50 = ptrtoint ptr %psocks.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn113.i = load ptr, ptr %psocks.i, align 8
  %cmp16.not14.i = icmp eq ptr %.pn113.i, %psocks.i
  br i1 %cmp16.not14.i, label %for.end.i.kcm_format_mux.exit_crit_edge, label %for.end.i.for.body18.i_crit_edge

for.end.i.for.body18.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body18.i

for.end.i.kcm_format_mux.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kcm_format_mux.exit

for.body18.i:                                     ; preds = %kcm_format_psock.exit.i.for.body18.i_crit_edge, %for.end.i.for.body18.i_crit_edge
  %.pn115.i = phi ptr [ %.pn1.i, %kcm_format_psock.exit.i.for.body18.i_crit_edge ], [ %.pn113.i, %for.end.i.for.body18.i_crit_edge ]
  %psock.0.i = getelementptr i8, ptr %.pn115.i, i32 -264
  %index.i2.i = getelementptr i8, ptr %.pn115.i, i32 -20
  %51 = ptrtoint ptr %index.i2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index.i2.i, align 4
  %stats.i3.i = getelementptr i8, ptr %.pn115.i, i32 -88
  %53 = ptrtoint ptr %stats.i3.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %stats.i3.i, align 8
  %bytes.i.i = getelementptr i8, ptr %.pn115.i, i32 -80
  %55 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %bytes.i.i, align 8
  %stats3.i.i = getelementptr i8, ptr %.pn115.i, i32 8
  %57 = ptrtoint ptr %stats3.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %stats3.i.i, align 8
  %tx_bytes.i4.i = getelementptr i8, ptr %.pn115.i, i32 16
  %59 = ptrtoint ptr %tx_bytes.i4.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %tx_bytes.i4.i, align 8
  %61 = ptrtoint ptr %psock.0.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %psock.0.i, align 8
  %qlen.i5.i = getelementptr inbounds %struct.sock, ptr %62, i32 0, i32 8, i32 1
  %63 = ptrtoint ptr %qlen.i5.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %qlen.i5.i, align 4
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %62, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #6
  %65 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %67 = ptrtoint ptr %psock.0.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %psock.0.i, align 8
  %qlen7.i.i = getelementptr inbounds %struct.sock, ptr %68, i32 0, i32 26, i32 1
  %69 = ptrtoint ptr %qlen7.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qlen7.i.i, align 8
  %sk_wmem_alloc.i.i = getelementptr inbounds %struct.sock, ptr %68, i32 0, i32 23
  %call.i.i.i.i6.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 4) #6
  %71 = ptrtoint ptr %sk_wmem_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %sk_wmem_alloc.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.54, i32 noundef %52, i64 noundef %54, i64 noundef %56, i64 noundef %58, i64 noundef %60, i32 noundef %64, i32 noundef %66, i32 noundef %70, i32 noundef %72) #6
  %done.i.i = getelementptr i8, ptr %.pn115.i, i32 -16
  %73 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.i.i = load i8, ptr %done.i.i, align 8
  %74 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i7.i = icmp eq i8 %74, 0
  br i1 %tobool.not.i7.i, label %for.body18.i.if.end.i9.i_crit_edge, label %if.then.i8.i

for.body18.i.if.end.i9.i_crit_edge:               ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i9.i

if.then.i8.i:                                     ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.55) #6
  %75 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load10.pr.i.i = load i8, ptr %done.i.i, align 8
  br label %if.end.i9.i

if.end.i9.i:                                      ; preds = %if.then.i8.i, %for.body18.i.if.end.i9.i_crit_edge
  %bf.load10.i.i = phi i8 [ %bf.load10.pr.i.i, %if.then.i8.i ], [ %bf.load.i.i, %for.body18.i.if.end.i9.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load10.i.i)
  %tobool13.not.i.i = icmp sgt i8 %bf.load10.i.i, -1
  br i1 %tobool13.not.i.i, label %if.end.i9.i.if.end15.i.i_crit_edge, label %if.then14.i.i

if.end.i9.i.if.end15.i.i_crit_edge:               ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i.i

if.then14.i.i:                                    ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.56) #6
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then14.i.i, %if.end.i9.i.if.end15.i.i_crit_edge
  %stopped.i.i = getelementptr i8, ptr %.pn115.i, i32 -252
  %76 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load17.i.i = load i8, ptr %stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load17.i.i)
  %tobool20.not.i.i = icmp sgt i8 %bf.load17.i.i, -1
  br i1 %tobool20.not.i.i, label %if.end15.i.i.if.end22.i.i_crit_edge, label %if.then21.i.i

if.end15.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i.i

if.then21.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.57) #6
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then21.i.i, %if.end15.i.i.if.end22.i.i_crit_edge
  %tx_kcm.i.i = getelementptr i8, ptr %.pn115.i, i32 84
  %77 = ptrtoint ptr %tx_kcm.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tx_kcm.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %78, null
  br i1 %tobool23.not.i.i, label %if.end22.i.i.if.end27.i.i_crit_edge, label %if.then24.i.i

if.end22.i.i.if.end27.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i.i

if.then24.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %index26.i.i = getelementptr inbounds %struct.kcm_sock, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %index26.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %index26.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.58, i32 noundef %80) #6
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then24.i.i, %if.end22.i.i.if.end27.i.i_crit_edge
  %81 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load29.i.i = load i8, ptr %stopped.i.i, align 4
  %82 = and i8 %bf.load29.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool33.not.i.i = icmp eq i8 %82, 0
  br i1 %tobool33.not.i.i, label %land.lhs.true.i.i, label %if.then56.i.i

land.lhs.true.i.i:                                ; preds = %if.end27.i.i
  %ready_rx_msg.i.i = getelementptr i8, ptr %.pn115.i, i32 80
  %83 = ptrtoint ptr %ready_rx_msg.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ready_rx_msg.i.i, align 8
  %tobool34.not.i.i = icmp eq ptr %84, null
  br i1 %tobool34.not.i.i, label %if.then35.i.i, label %land.lhs.true.i.i.if.end57.i.i_crit_edge

land.lhs.true.i.i.if.end57.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i.i

if.then35.i.i:                                    ; preds = %land.lhs.true.i.i
  %85 = ptrtoint ptr %psock.0.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %psock.0.i, align 8
  %qlen38.i.i = getelementptr inbounds %struct.sock, ptr %86, i32 0, i32 8, i32 1
  %87 = ptrtoint ptr %qlen38.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %qlen38.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool39.not.i.i = icmp eq i32 %88, 0
  br i1 %tobool39.not.i.i, label %if.then35.i.i.kcm_format_psock.exit.i_crit_edge, label %if.then40.i.i

if.then35.i.i.kcm_format_psock.exit.i_crit_edge:  ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kcm_format_psock.exit.i

if.then40.i.i:                                    ; preds = %if.then35.i.i
  %need_bytes.i.i = getelementptr i8, ptr %.pn115.i, i32 -240
  %89 = ptrtoint ptr %need_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %need_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool42.not.i.i = icmp eq i32 %90, 0
  br i1 %tobool42.not.i.i, label %if.else.i.i, label %if.then43.i.i

if.then43.i.i:                                    ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.59, i32 noundef %90) #6
  br label %kcm_format_psock.exit.i

if.else.i.i:                                      ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.53) #6
  br label %kcm_format_psock.exit.i

if.then56.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.60) #6
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then56.i.i, %land.lhs.true.i.i.if.end57.i.i_crit_edge
  %ready_rx_msg58.i.i = getelementptr i8, ptr %.pn115.i, i32 80
  %91 = ptrtoint ptr %ready_rx_msg58.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ready_rx_msg58.i.i, align 8
  %tobool59.not.i.i = icmp eq ptr %92, null
  br i1 %tobool59.not.i.i, label %if.end57.i.i.kcm_format_psock.exit.i_crit_edge, label %if.then60.i.i

if.end57.i.i.kcm_format_psock.exit.i_crit_edge:   ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kcm_format_psock.exit.i

if.then60.i.i:                                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.61) #6
  br label %kcm_format_psock.exit.i

kcm_format_psock.exit.i:                          ; preds = %if.then60.i.i, %if.end57.i.i.kcm_format_psock.exit.i_crit_edge, %if.else.i.i, %if.then43.i.i, %if.then35.i.i.kcm_format_psock.exit.i_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.44) #6
  %93 = ptrtoint ptr %.pn115.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn1.i = load ptr, ptr %.pn115.i, align 8
  %cmp16.not.i = icmp eq ptr %.pn1.i, %psocks.i
  br i1 %cmp16.not.i, label %kcm_format_psock.exit.i.kcm_format_mux.exit_crit_edge, label %kcm_format_psock.exit.i.for.body18.i_crit_edge

kcm_format_psock.exit.i.for.body18.i_crit_edge:   ; preds = %kcm_format_psock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.i

kcm_format_psock.exit.i.kcm_format_mux.exit_crit_edge: ; preds = %kcm_format_psock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kcm_format_mux.exit

kcm_format_mux.exit:                              ; preds = %kcm_format_psock.exit.i.kcm_format_mux.exit_crit_edge, %for.end.i.kcm_format_mux.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #6
  %94 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %idx, align 4
  %inc = add i32 %95, 1
  store i32 %inc, ptr %idx, align 4
  br label %if.end

if.end:                                           ; preds = %kcm_format_mux.exit, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127}
!llvm.named.register.sp = !{!129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @kcm_net_ops, !1, !"kcm_net_ops", i1 false, i1 false}
!1 = !{!"../net/kcm/kcmproc.c", i32 372, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/kcm/kcmproc.c", i32 350, i32 30}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/kcm/kcmproc.c", i32 354, i32 7}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/kcm/kcmproc.c", i32 282, i32 6}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/kcm/kcmproc.c", i32 283, i32 6}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/kcm/kcmproc.c", i32 284, i32 6}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/kcm/kcmproc.c", i32 285, i32 6}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/kcm/kcmproc.c", i32 286, i32 6}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/kcm/kcmproc.c", i32 287, i32 6}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/kcm/kcmproc.c", i32 288, i32 6}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/kcm/kcmproc.c", i32 289, i32 6}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/kcm/kcmproc.c", i32 290, i32 6}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/kcm/kcmproc.c", i32 291, i32 6}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/kcm/kcmproc.c", i32 292, i32 6}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/kcm/kcmproc.c", i32 295, i32 6}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/kcm/kcmproc.c", i32 296, i32 6}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/kcm/kcmproc.c", i32 308, i32 6}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/kcm/kcmproc.c", i32 309, i32 6}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/kcm/kcmproc.c", i32 314, i32 6}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/kcm/kcmproc.c", i32 315, i32 6}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/kcm/kcmproc.c", i32 316, i32 6}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/kcm/kcmproc.c", i32 317, i32 6}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/kcm/kcmproc.c", i32 318, i32 6}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/kcm/kcmproc.c", i32 319, i32 6}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/kcm/kcmproc.c", i32 320, i32 6}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/kcm/kcmproc.c", i32 321, i32 6}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/kcm/kcmproc.c", i32 322, i32 6}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/kcm/kcmproc.c", i32 323, i32 6}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/kcm/kcmproc.c", i32 324, i32 6}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/kcm/kcmproc.c", i32 327, i32 6}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!66 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @kcm_seq_ops, !72, !"kcm_seq_ops", i1 false, i1 false}
!72 = !{!"../net/kcm/kcmproc.c", i32 235, i32 36}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../net/kcm/kcmproc.c", i32 41, i32 2}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/kcm/kcmproc.c", i32 89, i32 6}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/kcm/kcmproc.c", i32 93, i32 6}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/kcm/kcmproc.c", i32 94, i32 6}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/kcm/kcmproc.c", i32 99, i32 6}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/kcm/kcmproc.c", i32 100, i32 6}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/kcm/kcmproc.c", i32 101, i32 6}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/kcm/kcmproc.c", i32 102, i32 6}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/kcm/kcmproc.c", i32 103, i32 6}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/kcm/kcmproc.c", i32 106, i32 16}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/kcm/kcmproc.c", i32 194, i32 6}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/kcm/kcmproc.c", i32 195, i32 6}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/kcm/kcmproc.c", i32 200, i32 6}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/kcm/kcmproc.c", i32 202, i32 18}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/kcm/kcmproc.c", i32 113, i32 6}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/kcm/kcmproc.c", i32 125, i32 19}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/kcm/kcmproc.c", i32 128, i32 17}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/kcm/kcmproc.c", i32 131, i32 17}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/kcm/kcmproc.c", i32 134, i32 17}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/kcm/kcmproc.c", i32 143, i32 6}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/kcm/kcmproc.c", i32 155, i32 17}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/kcm/kcmproc.c", i32 158, i32 17}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/kcm/kcmproc.c", i32 161, i32 17}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/kcm/kcmproc.c", i32 164, i32 19}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/kcm/kcmproc.c", i32 169, i32 21}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/kcm/kcmproc.c", i32 176, i32 18}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/kcm/kcmproc.c", i32 179, i32 18}
!129 = !{!"sp"}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{i64 2149351610}
!140 = !{i64 2149351876}
!141 = !{!"branch_weights", i32 1, i32 2000}
!142 = !{i8 0, i8 2}
