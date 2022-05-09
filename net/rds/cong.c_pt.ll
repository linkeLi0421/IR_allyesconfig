; ModuleID = '/llk/IR_all_yes/net/rds/cong.c_pt.bc'
source_filename = "../net/rds/cong.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rds_cong_map_updated\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_cong_map_updated\09\09\09\09"
module asm "\09.long\09__crc_rds_cong_map_updated\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_cong_map_updated:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_cong_map_updated\22\09\09\09\09\09"
module asm "__kstrtabns_rds_cong_map_updated:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rds_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rds_connection = type { %struct.hlist_node, %struct.in6_addr, %struct.in6_addr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.possible_net_t, i8, %struct.list_head, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.possible_net_t = type { ptr }
%struct.rds_cong_map = type { %struct.rb_node, %struct.in6_addr, %struct.wait_queue_head, %struct.list_head, [2 x i32] }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.91, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.91 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.rds_sock = type { %struct.sock, i64, i64, %struct.rhash_head, [22 x i8], %struct.sockaddr_in6, %struct.in6_addr, i16, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, %struct.list_head, i64, i64, %struct.list_head, i32, %struct.rwlock_t, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.rb_root, i8, i8, i32, i8, [3 x i8], %struct.rds_msg_zcopy_queue, i8 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.41, %union.anon.43, %union.anon.44, i16, i8, i8, i32, %union.anon.46, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.41 = type { i64 }
%union.anon.43 = type { i32 }
%union.anon.44 = type { i32 }
%union.anon.46 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.rhash_head = type { ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.rds_msg_zcopy_queue = type { %struct.list_head, %struct.spinlock }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rds_message = type { %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.rds_incoming, i64, %struct.in6_addr, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i64, i32, i32, ptr, %struct.anon.127, ptr }
%struct.rds_incoming = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.rds_header, i32, %struct.in6_addr, %struct.rds_inc_usercopy, [4 x i64] }
%struct.rds_header = type { i64, i64, i32, i16, i16, i8, i8, [4 x i8], i16, [16 x i8] }
%struct.rds_inc_usercopy = type { i64, i64 }
%struct.anon.127 = type { %struct.rm_atomic_op, %struct.rm_rdma_op, %struct.rm_data_op }
%struct.rm_atomic_op = type { i32, %union.anon.128, i32, i64, i8, ptr, ptr, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i64, i64, i64, i64 }
%struct.rm_rdma_op = type { i32, i64, i8, i32, i32, i32, ptr, ptr, ptr, i64, ptr }
%struct.rm_data_op = type { i8, i32, i32, i32, i32, ptr, ptr }

@rds_cong_add_conn.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rds\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rds_cong_add_conn\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/rds/cong.c\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): conn %p now on map %p\0A\00", [35 x i8] zeroinitializer }, align 32
@rds_cong_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@rds_cong_remove_conn.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rds_cong_remove_conn\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): removing conn %p from map %p\0A\00", [60 x i8] zeroinitializer }, align 32
@rds_stats = external dso_local global %struct.rds_statistics, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rds_wq = external dso_local local_unnamed_addr global ptr, align 4
@rds_cong_map_updated.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rds_cong_map_updated\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): waking map %p for %pI4\0A\00", [34 x i8] zeroinitializer }, align 32
@rds_cong_generation = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@rds_poll_waitq = external dso_local global %struct.wait_queue_head, align 4
@rds_cong_monitor = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @rds_cong_monitor, ptr @rds_cong_monitor }, [24 x i8] zeroinitializer }, align 32
@rds_cong_monitor_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_rds_cong_map_updated = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_cong_map_updated = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_cong_map_updated = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_cong_map_updated to i32), ptr @__kstrtab_rds_cong_map_updated, ptr @__kstrtabns_rds_cong_map_updated }, section "___ksymtab_gpl+rds_cong_map_updated", align 4
@rds_cong_set_bit.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rds_cong_set_bit\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s(): setting congestion for %pI4:%u in map %p\0A\00", [48 x i8] zeroinitializer }, align 32
@rds_cong_clear_bit.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rds_cong_clear_bit\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(): clearing congestion for %pI4:%u in map %p\0A\00", [47 x i8] zeroinitializer }, align 32
@rds_cong_wait.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rds_cong_wait\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): waiting on map %p for port %u\0A\00", [59 x i8] zeroinitializer }, align 32
@rds_cong_tree = internal global { %struct.rb_root, [28 x i8] } zeroinitializer, align 32
@rds_cong_exit.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rds_cong_exit\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(): freeing map %p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rds_cong_lock\00", [18 x i8] zeroinitializer }, align 32
@rds_cong_from_addr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&map->m_waitq\00", [18 x i8] zeroinitializer }, align 32
@rds_cong_from_addr.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rds_cong_from_addr\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): map %p for addr %pI6c\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rds_cong_monitor_lock\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 190, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"rds_cong_lock\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 200, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 255, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"rds_cong_generation\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 81, i32 18 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"rds_cong_monitor\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 86, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"rds_cong_monitor_lock\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 304, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 318, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 393, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"rds_cong_tree\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 102, i32 23 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 407, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 101, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 151, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 177, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 695, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 723, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [18 x i8] c"../net/rds/cong.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 87, i32 8 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__ksymtab_rds_cong_map_updated, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rds_cong_lock, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rds_cong_generation, ptr @rds_cong_monitor, ptr @rds_cong_monitor_lock, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @rds_cong_tree, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @rds_cong_from_addr.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_cong_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_cong_generation to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_cong_monitor to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_cong_monitor_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_cong_tree to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_cong_from_addr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_cong_add_conn(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_cong_add_conn.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_cong_add_conn, %if.then)) #7
          to label %do.body4 [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %c_lcong = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 9
  %0 = ptrtoint ptr %c_lcong to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_lcong, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_cong_add_conn.__UNIQUE_ID_ddebug545, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %conn, ptr noundef %1) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rds_cong_lock) #7
  %c_map_item = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 15
  %c_lcong12 = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 9
  %2 = ptrtoint ptr %c_lcong12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c_lcong12, align 4
  %m_conn_list = getelementptr inbounds %struct.rds_cong_map, ptr %3, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.rds_cong_map, ptr %3, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %c_map_item, ptr noundef %5, ptr noundef %m_conn_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.body4.list_add_tail.exit_crit_edge

do.body4.list_add_tail.exit_crit_edge:            ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %c_map_item, ptr %prev.i, align 4
  %7 = ptrtoint ptr %c_map_item to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %m_conn_list, ptr %c_map_item, align 4
  %prev3.i.i = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 15, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %c_map_item, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body4.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rds_cong_lock, i32 noundef %call7) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_cong_remove_conn(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_cong_remove_conn.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_cong_remove_conn, %if.then)) #7
          to label %do.body4 [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %c_lcong = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 9
  %0 = ptrtoint ptr %c_lcong to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_lcong, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_cong_remove_conn.__UNIQUE_ID_ddebug546, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %conn, ptr noundef %1) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rds_cong_lock) #7
  %c_map_item = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %c_map_item) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.body4.list_del_init.exit_crit_edge

do.body4.list_del_init.exit_crit_edge:            ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %c_map_item to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c_map_item, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body4.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %c_map_item to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %c_map_item, ptr %c_map_item, align 4
  %prev.i3.i = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 15, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %c_map_item, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rds_cong_lock, i32 noundef %call7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_cong_get_maps(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 1
  %call = tail call fastcc ptr @rds_cong_from_addr(ptr noundef %c_laddr)
  %c_lcong = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 9
  %0 = ptrtoint ptr %c_lcong to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %c_lcong, align 4
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 2
  %call1 = tail call fastcc ptr @rds_cong_from_addr(ptr noundef %c_faddr)
  %c_fcong = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 10
  %1 = ptrtoint ptr %c_fcong to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %c_fcong, align 4
  %2 = ptrtoint ptr %c_lcong to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c_lcong, align 4
  %tobool.not = icmp eq ptr %3, null
  %tobool4.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  %retval.0 = select i1 %or.cond, i32 -12, i32 0
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rds_cong_from_addr(ptr noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 96) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_addr = getelementptr inbounds %struct.rds_cong_map, ptr %call7.i.i, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %m_addr, ptr %addr, i32 16)
  %m_waitq = getelementptr inbounds %struct.rds_cong_map, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %m_waitq, ptr noundef nonnull @.str.17, ptr noundef nonnull @rds_cong_from_addr.__key) #7
  %m_conn_list = getelementptr inbounds %struct.rds_cong_map, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %m_conn_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %m_conn_list, ptr %m_conn_list, align 8
  %prev.i = getelementptr inbounds %struct.rds_cong_map, ptr %call7.i.i, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %m_conn_list, ptr %prev.i, align 4
  %call1 = tail call i32 @get_zeroed_page(i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.rds_cong_map, ptr %call7.i.i, i32 0, i32 4, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %arrayidx, align 8
  %call1.1 = tail call i32 @get_zeroed_page(i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp eq i32 %call1.1, 0
  br i1 %cmp2.1, label %if.end4.out_crit_edge, label %if.end4.1

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4.1:                                        ; preds = %if.end4
  %arrayidx.1 = getelementptr %struct.rds_cong_map, ptr %call7.i.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1.1, ptr %arrayidx.1, align 4
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rds_cong_lock) #7
  %6 = load ptr, ptr @rds_cong_tree, align 4
  %tobool.not27.i = icmp eq ptr %6, null
  br i1 %tobool.not27.i, label %if.end4.1.out.thread_crit_edge, label %if.end4.1.while.body.i_crit_edge

if.end4.1.while.body.i_crit_edge:                 ; preds = %if.end4.1
  br label %while.body.i

if.end4.1.out.thread_crit_edge:                   ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end4.1.while.body.i_crit_edge
  %7 = phi ptr [ %13, %cleanup.i.while.body.i_crit_edge ], [ %6, %if.end4.1.while.body.i_crit_edge ]
  %p.028.i = phi ptr [ %p.2.i, %cleanup.i.while.body.i_crit_edge ], [ @rds_cong_tree, %if.end4.1.while.body.i_crit_edge ]
  %m_addr.i = getelementptr inbounds %struct.rds_cong_map, ptr %7, i32 0, i32 1
  %call.i = tail call i32 @rds_addr_cmp(ptr noundef %addr, ptr noundef %m_addr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %p.028.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p.028.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.not.i, label %rds_cong_tree_walk.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %p.028.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p.028.i, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then2.i, %if.then.i
  %p.2.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then2.i ]
  %12 = ptrtoint ptr %p.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p.2.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.le.i = ptrtoint ptr %7 to i32
  br label %out.thread

rds_cong_tree_walk.exit:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rds_cong_lock, i32 noundef %call9) #7
  br label %out

out.thread:                                       ; preds = %while.cond.while.end_crit_edge.i, %if.end4.1.out.thread_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end4.1.out.thread_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.2.i, %while.cond.while.end_crit_edge.i ], [ @rds_cong_tree, %if.end4.1.out.thread_crit_edge ]
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_left.i.i, align 8
  %17 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @rds_cong_tree) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rds_cong_lock, i32 noundef %call9) #7
  br label %do.body33

out:                                              ; preds = %rds_cong_tree_walk.exit, %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi ptr [ %7, %rds_cong_tree_walk.exit ], [ null, %if.end4.out_crit_edge ], [ null, %if.end.out_crit_edge ]
  %arrayidx24 = getelementptr %struct.rds_cong_map, ptr %call7.i.i, i32 0, i32 4, i32 0
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool25.not = icmp eq i32 %19, 0
  br i1 %tobool25.not, label %out.for.end31_crit_edge, label %for.body26

out.for.end31_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end31

for.body26:                                       ; preds = %out
  tail call void @free_pages(i32 noundef %19, i32 noundef 0) #7
  %arrayidx24.1 = getelementptr %struct.rds_cong_map, ptr %call7.i.i, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx24.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool25.not.1 = icmp eq i32 %21, 0
  br i1 %tobool25.not.1, label %for.body26.for.end31_crit_edge, label %for.body26.1

for.body26.for.end31_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end31

for.body26.1:                                     ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @free_pages(i32 noundef %21, i32 noundef 0) #7
  br label %for.end31

for.end31:                                        ; preds = %for.body26.1, %for.body26.for.end31_crit_edge, %out.for.end31_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %do.body33

do.body33:                                        ; preds = %for.end31, %out.thread
  %ret.072 = phi ptr [ %call7.i.i, %out.thread ], [ %ret.0, %for.end31 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_cong_from_addr.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_cong_from_addr, %if.then39)) #7
          to label %cleanup [label %if.then39], !srcloc !68

if.then39:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_cong_from_addr.__UNIQUE_ID_ddebug544, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef %ret.072, ptr noundef %addr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body33, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %ret.072, %if.then39 ], [ %ret.072, %do.body33 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_cong_queue_updates(ptr noundef readonly %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rds_cong_lock) #7
  %m_conn_list = getelementptr inbounds %struct.rds_cong_map, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %m_conn_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn52 = load ptr, ptr %m_conn_list, align 4
  %cmp7.not53 = icmp eq ptr %.pn52, %m_conn_list
  br i1 %cmp7.not53, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %rcu_read_unlock.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn54 = phi ptr [ %.pn, %rcu_read_unlock.exit.for.body_crit_edge ], [ %.pn52, %entry.for.body_crit_edge ]
  %c_path = getelementptr i8, ptr %.pn54, i32 12
  %1 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c_path, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !69
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %c_map_queued = getelementptr i8, ptr %.pn54, i32 8
  %call9 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %c_map_queued) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.if.end_crit_edge

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 8
  %c_net.i.i = getelementptr inbounds %struct.rds_connection, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %c_net.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c_net.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 14, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i.i, i32 noundef 4) #7
  %11 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.not.i = icmp eq i32 %12, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.if.end_crit_edge, label %lor.rhs.i

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.rhs.i:                                        ; preds = %land.lhs.true
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %8, i32 0, i32 8
  %13 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %c_trans.i, align 4
  %t_unloading.i = getelementptr inbounds %struct.rds_transport, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %t_unloading.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %t_unloading.i, align 4
  %tobool2.not.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i, label %lor.rhs.i.do.body12_crit_edge, label %rds_destroy_pending.exit

lor.rhs.i.do.body12_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

rds_destroy_pending.exit:                         ; preds = %lor.rhs.i
  %call5.i = tail call zeroext i1 %16(ptr noundef %8) #7
  br i1 %call5.i, label %rds_destroy_pending.exit.if.end_crit_edge, label %rds_destroy_pending.exit.do.body12_crit_edge

rds_destroy_pending.exit.do.body12_crit_edge:     ; preds = %rds_destroy_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

rds_destroy_pending.exit.if.end_crit_edge:        ; preds = %rds_destroy_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body12:                                        ; preds = %rds_destroy_pending.exit.do.body12_crit_edge, %lor.rhs.i.do.body12_crit_edge
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %20, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !70
  %21 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu, align 4
  %arrayidx22 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx22, align 4
  %add = add i32 %26, ptrtoint (ptr @rds_stats to i32)
  %27 = inttoptr i32 %add to ptr
  %s_cong_update_queued = getelementptr inbounds %struct.rds_statistics, ptr %27, i32 0, i32 29
  %28 = ptrtoint ptr %s_cong_update_queued to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %s_cong_update_queued, align 8
  %inc = add i64 %29, 1
  store i64 %inc, ptr %s_cong_update_queued, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !71
  %30 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i39 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i39 to ptr
  %preempt_count.i.i40 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i40, align 4
  %sub.i = add i32 %33, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i40, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_wq to i32))
  %34 = load ptr, ptr @rds_wq, align 4
  %cp_send_w = getelementptr inbounds %struct.rds_conn_path, ptr %2, i32 0, i32 18
  %call.i41 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %cp_send_w, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %do.body12, %rds_destroy_pending.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %rcu_read_lock.exit.if.end_crit_edge
  %call.i42 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i42, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i45

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i45:                                ; preds = %if.end
  %call1.i43 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool.not.i44, label %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i47

land.lhs.true.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i47:                               ; preds = %land.lhs.true.i45
  %.b4.i46 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i46, label %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, label %if.then.i48

land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i48:                                      ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i48, %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !72
  %35 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i.i.i49 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i49 to ptr
  %preempt_count.i.i.i.i50 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i50, align 4
  %sub.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i50, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %39 = ptrtoint ptr %.pn54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn = load ptr, ptr %.pn54, align 4
  %cmp7.not = icmp eq ptr %.pn, %m_conn_list
  br i1 %cmp7.not, label %rcu_read_unlock.exit.for.end_crit_edge, label %rcu_read_unlock.exit.for.body_crit_edge

rcu_read_unlock.exit.for.body_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

rcu_read_unlock.exit.for.end_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %rcu_read_unlock.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rds_cong_lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_cong_map_updated(ptr noundef %map, i64 noundef %portmask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_cong_map_updated.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_cong_map_updated, %if.then)) #7
          to label %do.body4 [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %m_addr = getelementptr inbounds %struct.rds_cong_map, ptr %map, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_cong_map_updated.__UNIQUE_ID_ddebug547, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef %map, ptr noundef %m_addr) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !73
  %4 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @rds_stats to i32)
  %10 = inttoptr i32 %add to ptr
  %s_cong_update_received = getelementptr inbounds %struct.rds_statistics, ptr %10, i32 0, i32 30
  %11 = ptrtoint ptr %s_cong_update_received to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %s_cong_update_received, align 8
  %inc = add i64 %12, 1
  store i64 %inc, ptr %s_cong_update_received, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !74
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rds_cong_generation, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @rds_cong_generation, i32 1, i32 3, i32 1) #7
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rds_cong_generation, ptr nonnull @rds_cong_generation, i32 1, ptr nonnull elementtype(i32) @rds_cong_generation) #7, !srcloc !75
  %head.i = getelementptr inbounds %struct.rds_cong_map, ptr %map, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %19, %head.i
  br i1 %cmp.i.i.not, label %do.body4.if.end21_crit_edge, label %if.then19

do.body4.if.end21_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %m_waitq = getelementptr inbounds %struct.rds_cong_map, ptr %map, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %m_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %do.body4.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_poll_waitq, i32 0, i32 1) to i32))
  %20 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_poll_waitq, i32 0, i32 1), align 4
  %cmp.i.i75.not = icmp eq ptr %20, getelementptr inbounds (%struct.wait_queue_head, ptr @rds_poll_waitq, i32 0, i32 1)
  br i1 %cmp.i.i75.not, label %if.end21.if.end25_crit_edge, label %if.then24

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__wake_up(ptr noundef nonnull @rds_poll_waitq, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %portmask)
  %tobool26.not = icmp eq i64 %portmask, 0
  br i1 %tobool26.not, label %if.end25.if.end59_crit_edge, label %land.lhs.true

if.end25.if.end59_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end25
  %21 = load volatile ptr, ptr @rds_cong_monitor, align 4
  %cmp.i.not = icmp eq ptr %21, @rds_cong_monitor
  br i1 %cmp.i.not, label %land.lhs.true.if.end59_crit_edge, label %if.then29

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then29:                                        ; preds = %land.lhs.true
  %call32 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @rds_cong_monitor_lock) #7
  %.pn78 = load ptr, ptr @rds_cong_monitor, align 4
  %cmp36.not80 = icmp eq ptr %.pn78, @rds_cong_monitor
  br i1 %cmp36.not80, label %if.then29.do.body51_crit_edge, label %for.body.lr.ph

if.then29.do.body51_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

for.body.lr.ph:                                   ; preds = %if.then29
  %neg = xor i64 %portmask, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn81 = phi ptr [ %.pn78, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %rs_lock = getelementptr i8, ptr %.pn81, i32 -84
  tail call void @_raw_spin_lock(ptr noundef %rs_lock) #7
  %rs_cong_mask = getelementptr i8, ptr %.pn81, i32 -16
  %22 = ptrtoint ptr %rs_cong_mask to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rs_cong_mask, align 8
  %and = and i64 %23, %portmask
  %rs_cong_notify = getelementptr i8, ptr %.pn81, i32 -8
  %24 = ptrtoint ptr %rs_cong_notify to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rs_cong_notify, align 8
  %or = or i64 %25, %and
  store i64 %or, ptr %rs_cong_notify, align 8
  %and41 = and i64 %23, %neg
  store i64 %and41, ptr %rs_cong_mask, align 8
  tail call void @_raw_spin_unlock(ptr noundef %rs_lock) #7
  %26 = ptrtoint ptr %rs_cong_notify to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rs_cong_notify, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool44.not = icmp eq i64 %27, 0
  br i1 %tobool44.not, label %for.body.for.inc_crit_edge, label %if.then45

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then45:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %rs.082 = getelementptr i8, ptr %.pn81, i32 -1152
  tail call void @rds_wake_sk_sleep(ptr noundef %rs.082) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then45, %for.body.for.inc_crit_edge
  %28 = ptrtoint ptr %.pn81 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn81, align 4
  %cmp36.not = icmp eq ptr %.pn, @rds_cong_monitor
  br i1 %cmp36.not, label %for.inc.do.body51_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.body51_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

do.body51:                                        ; preds = %for.inc.do.body51_crit_edge, %if.then29.do.body51_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @rds_cong_monitor_lock, i32 noundef %call32) #7
  br label %if.end59

if.end59:                                         ; preds = %do.body51, %land.lhs.true.if.end59_crit_edge, %if.end25.if.end59_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_wake_sk_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_cong_updated_since(ptr nocapture noundef %recent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @rds_cong_generation, i32 noundef 4) #7
  %0 = load volatile i32, ptr @rds_cong_generation, align 4
  %1 = ptrtoint ptr %recent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %recent, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %0)
  %cmp = icmp eq i32 %2, %0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !76

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %recent to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %recent, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_cong_set_bit(ptr noundef %map, i16 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_cong_set_bit.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_cong_set_bit, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %m_addr = getelementptr inbounds %struct.rds_cong_map, ptr %map, i32 0, i32 1
  %conv = zext i16 %port to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_cong_set_bit.__UNIQUE_ID_ddebug548, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef %m_addr, i32 noundef %conv, ptr noundef %map) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv3 = zext i16 %port to i32
  %div9 = lshr i32 %conv3, 15
  %rem = and i32 %conv3, 32767
  %arrayidx = getelementptr %struct.rds_cong_map, ptr %map, i32 0, i32 4, i32 %div9
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = inttoptr i32 %1 to ptr
  %xor.i = xor i32 %rem, 24
  tail call void @_set_bit(i32 noundef %xor.i, ptr noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_cong_clear_bit(ptr noundef %map, i16 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_cong_clear_bit.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_cong_clear_bit, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %m_addr = getelementptr inbounds %struct.rds_cong_map, ptr %map, i32 0, i32 1
  %conv = zext i16 %port to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_cong_clear_bit.__UNIQUE_ID_ddebug549, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, ptr noundef %m_addr, i32 noundef %conv, ptr noundef %map) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv3 = zext i16 %port to i32
  %div9 = lshr i32 %conv3, 15
  %rem = and i32 %conv3, 32767
  %arrayidx = getelementptr %struct.rds_cong_map, ptr %map, i32 0, i32 4, i32 %div9
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = inttoptr i32 %1 to ptr
  %xor.i = xor i32 %rem, 24
  tail call void @_clear_bit(i32 noundef %xor.i, ptr noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_cong_add_socket(ptr noundef %rs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @rds_cong_monitor_lock) #7
  %rs_cong_list = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 19
  %0 = ptrtoint ptr %rs_cong_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rs_cong_list, align 4
  %cmp.i.not = icmp eq ptr %1, %rs_cong_list
  br i1 %cmp.i.not, label %if.then, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @rds_cong_monitor, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rs_cong_list, ptr noundef nonnull @rds_cong_monitor, ptr noundef %2) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.do.body3_crit_edge

if.then.do.body3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rs_cong_list, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %rs_cong_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %rs_cong_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 19, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rds_cong_monitor, ptr %prev3.i.i, align 4
  store volatile ptr %rs_cong_list, ptr @rds_cong_monitor, align 4
  br label %do.body3

do.body3:                                         ; preds = %if.end.i.i, %if.then.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @rds_cong_monitor_lock, i32 noundef %call) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_cong_remove_socket(ptr noundef %rs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @rds_cong_monitor_lock) #7
  %rs_cong_list = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rs_cong_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %rs_cong_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rs_cong_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %rs_cong_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %rs_cong_list, ptr %rs_cong_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 19, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rs_cong_list, ptr %prev.i3.i, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @rds_cong_monitor_lock, i32 noundef %call) #7
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rds_cong_lock) #7
  %sin6_addr = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 3
  %8 = load ptr, ptr @rds_cong_tree, align 4
  %tobool.not27.i = icmp eq ptr %8, null
  br i1 %tobool.not27.i, label %list_del_init.exit.rds_cong_tree_walk.exit.thread_crit_edge, label %list_del_init.exit.while.body.i_crit_edge

list_del_init.exit.while.body.i_crit_edge:        ; preds = %list_del_init.exit
  br label %while.body.i

list_del_init.exit.rds_cong_tree_walk.exit.thread_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rds_cong_tree_walk.exit.thread

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %list_del_init.exit.while.body.i_crit_edge
  %9 = phi ptr [ %15, %cleanup.i.while.body.i_crit_edge ], [ %8, %list_del_init.exit.while.body.i_crit_edge ]
  %p.028.i = phi ptr [ %p.2.i, %cleanup.i.while.body.i_crit_edge ], [ @rds_cong_tree, %list_del_init.exit.while.body.i_crit_edge ]
  %m_addr.i = getelementptr inbounds %struct.rds_cong_map, ptr %9, i32 0, i32 1
  %call.i = tail call i32 @rds_addr_cmp(ptr noundef %sin6_addr, ptr noundef %m_addr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %p.028.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p.028.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.not.i, label %land.lhs.true, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %p.028.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p.028.i, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then2.i, %if.then.i
  %p.2.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then2.i ]
  %14 = ptrtoint ptr %p.2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p.2.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %cleanup.i.rds_cong_tree_walk.exit.thread_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

cleanup.i.rds_cong_tree_walk.exit.thread_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rds_cong_tree_walk.exit.thread

rds_cong_tree_walk.exit.thread:                   ; preds = %cleanup.i.rds_cong_tree_walk.exit.thread_crit_edge, %list_del_init.exit.rds_cong_tree_walk.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rds_cong_lock, i32 noundef %call18) #7
  br label %if.end

land.lhs.true:                                    ; preds = %if.else.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rds_cong_lock, i32 noundef %call18) #7
  %sin6_port = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sin6_port, align 2
  %conv.i = zext i16 %17 to i32
  %div3.i = lshr i32 %conv.i, 15
  %arrayidx.i = getelementptr %struct.rds_cong_map, ptr %9, i32 0, i32 4, i32 %div3.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %20 = inttoptr i32 %19 to ptr
  %rem.i = lshr i32 %conv.i, 5
  %div3.i.i.i = and i32 %rem.i, 1023
  %arrayidx.i.i.i = getelementptr i32, ptr %20, i32 %div3.i.i.i
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %xor.i.i = and i32 %conv.i, 31
  %and.i.i.i = xor i32 %xor.i.i, 24
  %23 = shl nuw i32 1, %and.i.i.i
  %24 = and i32 %23, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool26.not = icmp eq i32 %24, 0
  br i1 %tobool26.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_cong_clear_bit.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_cong_remove_socket, %if.then.i38)) #7
          to label %rds_cong_clear_bit.exit [label %if.then.i38], !srcloc !68

if.then.i38:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_cong_clear_bit.__UNIQUE_ID_ddebug549, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, ptr noundef %m_addr.i, i32 noundef %conv.i, ptr noundef nonnull %9) #7
  br label %rds_cong_clear_bit.exit

rds_cong_clear_bit.exit:                          ; preds = %if.then.i38, %if.then
  %rem.i39 = and i32 %conv.i, 32767
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %27 = inttoptr i32 %26 to ptr
  %xor.i.i41 = xor i32 %rem.i39, 24
  tail call void @_clear_bit(i32 noundef %xor.i.i41, ptr noundef %27) #7
  tail call void @rds_cong_queue_updates(ptr noundef nonnull %9)
  br label %if.end

if.end:                                           ; preds = %rds_cong_clear_bit.exit, %land.lhs.true.if.end_crit_edge, %rds_cong_tree_walk.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_cong_wait(ptr noundef %map, i16 noundef zeroext %port, i32 noundef %nonblock, ptr noundef %rs) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %port to i32
  %div3.i = lshr i32 %conv.i, 15
  %arrayidx.i = getelementptr %struct.rds_cong_map, ptr %map, i32 0, i32 4, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %rem.i = lshr i32 %conv.i, 5
  %div3.i.i.i = and i32 %rem.i, 1023
  %arrayidx.i.i.i = getelementptr i32, ptr %2, i32 %div3.i.i.i
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %xor.i.i = and i32 %conv.i, 31
  %and.i.i.i119 = xor i32 %xor.i.i, 24
  %5 = shl nuw i32 1, %and.i.i.i119
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool1.not = icmp eq i32 %nonblock, 0
  br i1 %tobool1.not, label %do.body37, label %if.then2

if.then2:                                         ; preds = %if.end
  %tobool3.not = icmp eq ptr %rs, null
  br i1 %tobool3.not, label %if.then2.do.body20_crit_edge, label %land.lhs.true

if.then2.do.body20_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

land.lhs.true:                                    ; preds = %if.then2
  %rs_cong_monitor = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 27
  %7 = ptrtoint ptr %rs_cong_monitor to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rs_cong_monitor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %land.lhs.true.do.body20_crit_edge, label %if.then5

land.lhs.true.do.body20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

if.then5:                                         ; preds = %land.lhs.true
  %rs_lock = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 12
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rs_lock) #7
  %9 = and i16 %port, 63
  %sh_prom = zext i16 %9 to i64
  %shl = shl nuw i64 1, %sh_prom
  %rs_cong_mask = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 17
  %10 = ptrtoint ptr %rs_cong_mask to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rs_cong_mask, align 8
  %or = or i64 %11, %shl
  store i64 %or, ptr %rs_cong_mask, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_lock, i32 noundef %call9) #7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %14 = inttoptr i32 %13 to ptr
  %arrayidx.i.i.i125 = getelementptr i32, ptr %14, i32 %div3.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i.i125, align 4
  %17 = and i32 %16, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not.not = icmp eq i32 %17, 0
  br i1 %tobool15.not.not, label %if.then5.return_crit_edge, label %if.then5.do.body20_crit_edge

if.then5.do.body20_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

if.then5.return_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body20:                                        ; preds = %if.then5.do.body20_crit_edge, %land.lhs.true.do.body20_crit_edge, %if.then2.do.body20_crit_edge
  %18 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %21, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !77
  %22 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %add = add i32 %27, ptrtoint (ptr @rds_stats to i32)
  %28 = inttoptr i32 %add to ptr
  %s_cong_send_error = getelementptr inbounds %struct.rds_statistics, ptr %28, i32 0, i32 31
  %29 = ptrtoint ptr %s_cong_send_error to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %s_cong_send_error, align 8
  %inc = add i64 %30, 1
  store i64 %inc, ptr %s_cong_send_error, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !78
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i111 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i111 to ptr
  %preempt_count.i.i112 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i112 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i112, align 4
  %sub.i = add i32 %34, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i112, align 4
  br label %return

do.body37:                                        ; preds = %if.end
  %35 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i113 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i113 to ptr
  %preempt_count.i.i114 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i114 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i114, align 4
  %add.i115 = add i32 %38, 1
  store volatile i32 %add.i115, ptr %preempt_count.i.i114, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !79
  %39 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i130 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i130 to ptr
  %cpu49 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu49, align 4
  %arrayidx50 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx50, align 4
  %add51 = add i32 %44, ptrtoint (ptr @rds_stats to i32)
  %45 = inttoptr i32 %add51 to ptr
  %s_cong_send_blocked = getelementptr inbounds %struct.rds_statistics, ptr %45, i32 0, i32 32
  %46 = ptrtoint ptr %s_cong_send_blocked to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %s_cong_send_blocked, align 8
  %inc52 = add i64 %47, 1
  store i64 %inc52, ptr %s_cong_send_blocked, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !80
  %48 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i116 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i116 to ptr
  %preempt_count.i.i117 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i117 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i117, align 4
  %sub.i118 = add i32 %51, -1
  store volatile i32 %sub.i118, ptr %preempt_count.i.i117, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_cong_wait.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_cong_wait, %if.then64)) #7
          to label %do.end68 [label %if.then64], !srcloc !68

if.then64:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_cong_wait.__UNIQUE_ID_ddebug550, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef %map, i32 noundef %conv.i) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %do.body37
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 396) #7
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  %54 = inttoptr i32 %53 to ptr
  %arrayidx.i.i.i136 = getelementptr i32, ptr %54, i32 %div3.i.i.i
  %55 = ptrtoint ptr %arrayidx.i.i.i136 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %arrayidx.i.i.i136, align 4
  %57 = and i32 %56, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool76.not = icmp eq i32 %57, 0
  br i1 %tobool76.not, label %do.end68.return_crit_edge, label %if.then77

do.end68.return_crit_edge:                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then77:                                        ; preds = %do.end68
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %58 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %m_waitq = getelementptr inbounds %struct.rds_cong_map, ptr %map, i32 0, i32 2
  %call79161 = call i32 @prepare_to_wait_event(ptr noundef %m_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i, align 4
  %61 = inttoptr i32 %60 to ptr
  %arrayidx.i.i.i146162 = getelementptr i32, ptr %61, i32 %div3.i.i.i
  %62 = ptrtoint ptr %arrayidx.i.i.i146162 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %arrayidx.i.i.i146162, align 4
  %64 = and i32 %63, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool81.not163 = icmp eq i32 %64, 0
  br i1 %tobool81.not163, label %if.then77.for.end_crit_edge, label %if.then77.if.end83_crit_edge

if.then77.if.end83_crit_edge:                     ; preds = %if.then77
  br label %if.end83

if.then77.for.end_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end83:                                         ; preds = %cleanup87.if.end83_crit_edge, %if.then77.if.end83_crit_edge
  %call79164 = phi i32 [ %call79, %cleanup87.if.end83_crit_edge ], [ %call79161, %if.then77.if.end83_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79164)
  %tobool84.not = icmp eq i32 %call79164, 0
  br i1 %tobool84.not, label %cleanup87, label %if.end83.__out_crit_edge

if.end83.__out_crit_edge:                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup87:                                        ; preds = %if.end83
  call void @schedule() #7
  %call79 = call i32 @prepare_to_wait_event(ptr noundef %m_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i, align 4
  %67 = inttoptr i32 %66 to ptr
  %arrayidx.i.i.i146 = getelementptr i32, ptr %67, i32 %div3.i.i.i
  %68 = ptrtoint ptr %arrayidx.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %arrayidx.i.i.i146, align 4
  %70 = and i32 %69, %5
  %tobool81.not = icmp eq i32 %70, 0
  br i1 %tobool81.not, label %cleanup87.for.end_crit_edge, label %cleanup87.if.end83_crit_edge

cleanup87.if.end83_crit_edge:                     ; preds = %cleanup87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

cleanup87.for.end_crit_edge:                      ; preds = %cleanup87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup87.for.end_crit_edge, %if.then77.for.end_crit_edge
  call void @finish_wait(ptr noundef %m_waitq, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end83.__out_crit_edge
  %__ret78.1154 = phi i32 [ 0, %for.end ], [ %call79164, %if.end83.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %return

return:                                           ; preds = %__out, %do.end68.return_crit_edge, %do.body20, %if.then5.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ 0, %if.then5.return_crit_edge ], [ -105, %do.body20 ], [ 0, %entry.return_crit_edge ], [ %__ret78.1154, %__out ], [ 0, %do.end68.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_cong_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call18 = tail call ptr @rb_first(ptr noundef nonnull @rds_cong_tree) #7
  %tobool.not19 = icmp eq ptr %call18, null
  br i1 %tobool.not19, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %for.end.while.body_crit_edge, %entry.while.body_crit_edge
  %call20 = phi ptr [ %call, %for.end.while.body_crit_edge ], [ %call18, %entry.while.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_cong_exit.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_cong_exit, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_cong_exit.__UNIQUE_ID_ddebug551, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef nonnull %call20) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %while.body
  tail call void @rb_erase(ptr noundef nonnull %call20, ptr noundef nonnull @rds_cong_tree) #7
  %arrayidx = getelementptr %struct.rds_cong_map, ptr %call20, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool6.not = icmp eq i32 %1, 0
  br i1 %tobool6.not, label %do.end.for.end_crit_edge, label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %do.end
  tail call void @free_pages(i32 noundef %1, i32 noundef 0) #7
  %arrayidx.1 = getelementptr %struct.rds_cong_map, ptr %call20, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not.1 = icmp eq i32 %3, 0
  br i1 %tobool6.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @free_pages(i32 noundef %3, i32 noundef 0) #7
  br label %for.end

for.end:                                          ; preds = %for.body.1, %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call20) #7
  %call = tail call ptr @rb_first(ptr noundef nonnull @rds_cong_tree) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rds_cong_update_alloc(ptr nocapture noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %c_lcong = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 9
  %0 = ptrtoint ptr %c_lcong to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_lcong, align 4
  %m_page_addrs = getelementptr inbounds %struct.rds_cong_map, ptr %1, i32 0, i32 4
  %call = tail call ptr @rds_message_map_pages(ptr noundef %m_page_addrs, i32 noundef 8192) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %h_flags = getelementptr inbounds %struct.rds_message, ptr %call, i32 0, i32 3, i32 4, i32 5
  %2 = ptrtoint ptr %h_flags to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %h_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_message_map_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_addr_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !53, !55, !56}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/cong.c", i32 190, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rds_cong_add_conn.__UNIQUE_ID_ddebug545, !1, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rds/cong.c", i32 200, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rds_cong_remove_conn.__UNIQUE_ID_ddebug546, !7, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/rds/cong.c", i32 255, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rds_cong_map_updated.__UNIQUE_ID_ddebug547, !11, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!14 = !{ptr @__ksymtab_rds_cong_map_updated, !15, !"__ksymtab_rds_cong_map_updated", i1 false, i1 false}
!15 = !{!"../net/rds/cong.c", i32 280, i32 1}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/rds/cong.c", i32 304, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rds_cong_set_bit.__UNIQUE_ID_ddebug548, !17, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/rds/cong.c", i32 318, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rds_cong_clear_bit.__UNIQUE_ID_ddebug549, !21, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/rds/cong.c", i32 393, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rds_cong_wait.__UNIQUE_ID_ddebug550, !25, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/rds/cong.c", i32 407, i32 3}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @rds_cong_exit.__UNIQUE_ID_ddebug551, !29, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/rds/cong.c", i32 101, i32 8}
!34 = !{ptr @rds_cong_lock, !33, !"rds_cong_lock", i1 false, i1 false}
!35 = !{ptr @rds_cong_from_addr.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../net/rds/cong.c", i32 151, i32 2}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/rds/cong.c", i32 177, i32 2}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rds_cong_from_addr.__UNIQUE_ID_ddebug544, !39, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rds_cong_generation, !50, !"rds_cong_generation", i1 false, i1 false}
!50 = !{!"../net/rds/cong.c", i32 81, i32 18}
!51 = !{ptr @rds_cong_monitor, !52, !"rds_cong_monitor", i1 false, i1 false}
!52 = !{!"../net/rds/cong.c", i32 86, i32 8}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/rds/cong.c", i32 87, i32 8}
!55 = !{ptr @rds_cong_monitor_lock, !54, !"rds_cong_monitor_lock", i1 false, i1 false}
!56 = !{ptr @rds_cong_tree, !57, !"rds_cong_tree", i1 false, i1 false}
!57 = !{!"../net/rds/cong.c", i32 102, i32 23}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2148212443, i64 2148212448, i64 2148212461, i64 2148212505, i64 2148212539, i64 2148212560}
!69 = !{i64 2149928588}
!70 = !{i64 2158210721}
!71 = !{i64 2158210894}
!72 = !{i64 2149928854}
!73 = !{i64 2158215187}
!74 = !{i64 2158215360}
!75 = !{i64 2148591717, i64 2148591743, i64 2148591772, i64 2148591806, i64 2148591837, i64 2148591860}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2158231420}
!78 = !{i64 2158231593}
!79 = !{i64 2158233396}
!80 = !{i64 2158233569}
