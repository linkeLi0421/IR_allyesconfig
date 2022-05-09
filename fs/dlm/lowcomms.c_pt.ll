; ModuleID = '/llk/IR_all_yes/fs/dlm/lowcomms.c_pt.bc'
source_filename = "../fs/dlm/lowcomms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dlm_config_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.listen_connection = type { ptr, %struct.work_struct }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.dlm_proto_ops = type { i8, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.srcu_data = type { [2 x i32], [2 x i32], [112 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [24 x i8] }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], %struct.atomic_t, [4 x i32], i8 }
%struct.callback_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.17, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.140, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.140 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.170 }
%union.anon.170 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.writequeue_entry = type { %struct.list_head, ptr, i32, i32, i32, i32, i8, ptr, %struct.list_head, %struct.kref }
%struct.kref = type { %struct.refcount_struct }
%struct.dlm_node_addr = type { %struct.list_head, i32, i32, i32, i32, [3 x ptr] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.connection = type { ptr, i32, %struct.mutex, i32, %struct.list_head, %struct.spinlock, %struct.atomic_t, i32, %struct.hlist_node, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, ptr, i32, i32, %struct.callback_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dlm_msg = type { ptr, ptr, i8, ptr, i32, i32, %struct.list_head, %struct.kref }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.81 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
%union.anon.122 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.126 }
%union.anon.126 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sctp_rtoinfo = type { i32, i32, i32, i32 }
%struct.sctp_paddrparams = type <{ i32, %struct.__kernel_sockaddr_storage, i32, i16, i32, i32, i32, i32, i8, i8 }>
%struct.sctp_assocparams = type { i32, i16, i16, i32, i32, i32 }
%struct.sctp_initmsg = type { i16, i16, i16, i16 }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dlm_writequeue\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dlm_msg\00", [24 x i8] zeroinitializer }, align 32
@dlm_node_addrs_spin = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dlm_config = external dso_local local_unnamed_addr global %struct.dlm_config_info, align 4
@dlm_node_addrs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dlm_node_addrs, ptr @dlm_node_addrs }, [24 x i8] zeroinitializer }, align 32
@connections_srcu = internal global { %struct.srcu_struct, [200 x i8] } { %struct.srcu_struct { [3 x %struct.srcu_node] zeroinitializer, [3 x ptr] zeroinitializer, %struct.mutex zeroinitializer, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.mutex zeroinitializer, i32 0, i32 0, i32 -1, i32 0, i32 0, ptr @connections_srcu_srcu_data, i32 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @connections_srcu, i64 700), ptr getelementptr (i8, ptr @connections_srcu, i64 700) }, ptr null, %struct.lockdep_map { ptr getelementptr (i8, ptr @connections_srcu, i64 696), [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.16, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [200 x i8] zeroinitializer }, align 32
@dlm_lowcomms_new_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013dlm: failed to allocate a buffer of size %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dlm_lowcomms_new_msg\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/dlm/lowcomms.c\00", [46 x i8] zeroinitializer }, align 32
@dlm_lowcomms_new_msg._entry_ptr = internal global ptr @dlm_lowcomms_new_msg._entry, section ".printk_index", align 4
@dlm_lowcomms_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 1496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013dlm: closing connection to node %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlm_lowcomms_close\00", [45 x i8] zeroinitializer }, align 32
@dlm_lowcomms_close._entry_ptr = internal global ptr @dlm_lowcomms_close._entry, section ".printk_index", align 4
@dlm_allow_conn = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@recv_workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@send_workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@listen_con = internal global { %struct.listen_connection, [48 x i8] } zeroinitializer, align 32
@dlm_proto_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@connection_hash = internal global { [32 x %struct.hlist_head], [32 x i8] } zeroinitializer, align 32
@dlm_local_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dlm_lowcomms_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 1975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013dlm: no local IP address has been set\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlm_lowcomms_start\00", [45 x i8] zeroinitializer }, align 32
@dlm_lowcomms_start._entry_ptr = internal global ptr @dlm_lowcomms_start._entry, section ".printk_index", align 4
@dlm_lowcomms_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&listen_con.rwork)\00", [59 x i8] zeroinitializer }, align 32
@dlm_tcp_ops = internal constant { %struct.dlm_proto_ops, [52 x i8] } { %struct.dlm_proto_ops { i8 0, ptr @.str.89, i32 6, ptr @dlm_tcp_connect, ptr @dlm_tcp_sockopts, ptr @dlm_tcp_bind, ptr @dlm_tcp_listen_validate, ptr @dlm_tcp_listen_sockopts, ptr @dlm_tcp_listen_bind, ptr @dlm_tcp_shutdown, ptr @tcp_eof_condition }, [52 x i8] zeroinitializer }, align 32
@dlm_sctp_ops = internal constant { %struct.dlm_proto_ops, [52 x i8] } { %struct.dlm_proto_ops { i8 1, ptr @.str.99, i32 132, ptr @dlm_sctp_connect, ptr @dlm_sctp_sockopts, ptr @dlm_sctp_bind, ptr @dlm_sctp_listen_validate, ptr @dlm_sctp_sockopts, ptr @dlm_sctp_bind_listen, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@dlm_lowcomms_start._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.4, i32 1997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013dlm: Invalid protocol identifier %d set\0A\00", [53 x i8] zeroinitializer }, align 32
@dlm_lowcomms_start._entry_ptr.12 = internal global ptr @dlm_lowcomms_start._entry.10, section ".printk_index", align 4
@__pcpu_unique_connections_srcu_srcu_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@connections_srcu_srcu_data = weak dso_local global %struct.srcu_data zeroinitializer, section ".data..percpu", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlm_node_addrs_spin\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"connections_srcu.lock\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(connections_srcu.work).work\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/dlm/lowcomms.c:187\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"connections_srcu\00", [47 x i8] zeroinitializer }, align 32
@connections_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.56, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__find_con.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@dlm_con_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&con->sock_mutex\00", [47 x i8] zeroinitializer }, align 32
@dlm_con_init.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&con->writequeue_lock\00", [42 x i8] zeroinitializer }, align 32
@dlm_con_init.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&con->swork)\00", [33 x i8] zeroinitializer }, align 32
@dlm_con_init.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&con->rwork)\00", [33 x i8] zeroinitializer }, align 32
@dlm_con_init.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&con->shutdown_wait\00", [44 x i8] zeroinitializer }, align 32
@dlm_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 1547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013dlm: node %d already connected.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dlm_connect\00", [20 x i8] zeroinitializer }, align 32
@dlm_connect._entry_ptr = internal global ptr @dlm_connect._entry, section ".printk_index", align 4
@dlm_connect._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 1555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013dlm: no address for nodeid %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dlm_connect._entry_ptr.32 = internal global ptr @dlm_connect._entry.30, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@dlm_local_addr = internal global { [3 x ptr], [20 x i8] } zeroinitializer, align 32
@dlm_connect._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@dlm_connect._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.29, ptr @.str.4, i32 1574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013dlm: connecting to %d\0A\00", [39 x i8] zeroinitializer }, align 32
@dlm_connect._entry_ptr.36 = internal global ptr @dlm_connect._entry.34, section ".printk_index", align 4
@dlm_connect._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.29, ptr @.str.4, i32 1597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013dlm: connect %d try %d error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dlm_connect._entry_ptr.39 = internal global ptr @dlm_connect._entry.37, section ".printk_index", align 4
@lowcomms_write_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013dlm: successful connected to node %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lowcomms_write_space\00", [43 x i8] zeroinitializer }, align 32
@lowcomms_write_space._entry_ptr = internal global ptr @lowcomms_write_space._entry, section ".printk_index", align 4
@listen_sock.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@listen_sock.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@listen_sock.2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@listen_sock.3 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lowcomms_error_report._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.lowcomms_error_report = private unnamed_addr constant [22 x i8] c"lowcomms_error_report\00", align 1
@lowcomms_error_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @__func__.lowcomms_error_report, ptr @.str.4, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013dlm: node %d: socket error sending to node %d at %pI4, dport %d, sk_err=%d/%d\0A\00", [47 x i8] zeroinitializer }, align 32
@lowcomms_error_report._entry_ptr = internal global ptr @lowcomms_error_report._entry, section ".printk_index", align 4
@lowcomms_error_report._rs.43 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@lowcomms_error_report._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @__func__.lowcomms_error_report, ptr @.str.4, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013dlm: node %d: socket error sending to node %d at %pI6c, dport %d, sk_err=%d/%d\0A\00", [46 x i8] zeroinitializer }, align 32
@lowcomms_error_report._entry_ptr.46 = internal global ptr @lowcomms_error_report._entry.44, section ".printk_index", align 4
@lowcomms_error_report._rs.47 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@lowcomms_error_report._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @__func__.lowcomms_error_report, ptr @.str.4, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013dlm: node %d: socket error invalid socket family %d set, sk_err=%d/%d\0A\00", [55 x i8] zeroinitializer }, align 32
@lowcomms_error_report._entry_ptr.50 = internal global ptr @lowcomms_error_report._entry.48, section ".printk_index", align 4
@__tracepoint_dlm_send = external dso_local global %struct.tracepoint, align 4
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/dlm.h\00", [37 x i8] zeroinitializer }, align 32
@trace_dlm_send.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@receive_from_sock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013dlm: connection %p got EOF from %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"receive_from_sock\00", [46 x i8] zeroinitializer }, align 32
@receive_from_sock._entry_ptr = internal global ptr @receive_from_sock._entry, section ".printk_index", align 4
@__tracepoint_dlm_recv = external dso_local global %struct.tracepoint, align 4
@trace_dlm_recv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"connections_lock\00", [47 x i8] zeroinitializer }, align 32
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@close_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013dlm: canceled swork for node %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"close_connection\00", [47 x i8] zeroinitializer }, align 32
@close_connection._entry_ptr = internal global ptr @close_connection._entry, section ".printk_index", align 4
@close_connection._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.4, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013dlm: canceled rwork for node %d\0A\00", [61 x i8] zeroinitializer }, align 32
@close_connection._entry_ptr.63 = internal global ptr @close_connection._entry.61, section ".printk_index", align 4
@foreach_conn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@work_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@accept_from_sock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.4, i32 1036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013dlm: connect from non cluster IPv4 node %pI4\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"accept_from_sock\00", [47 x i8] zeroinitializer }, align 32
@accept_from_sock._entry_ptr = internal global ptr @accept_from_sock._entry, section ".printk_index", align 4
@accept_from_sock._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.4, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013dlm: connect from non cluster IPv6 node %pI6c\0A\00", [47 x i8] zeroinitializer }, align 32
@accept_from_sock._entry_ptr.68 = internal global ptr @accept_from_sock._entry.66, section ".printk_index", align 4
@accept_from_sock._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.4, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013dlm: invalid family from non cluster node\0A\00", [51 x i8] zeroinitializer }, align 32
@accept_from_sock._entry_ptr.71 = internal global ptr @accept_from_sock._entry.69, section ".printk_index", align 4
@accept_from_sock._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.4, i32 1057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013dlm: got connection from %d\0A\00", [33 x i8] zeroinitializer }, align 32
@accept_from_sock._entry_ptr.74 = internal global ptr @accept_from_sock._entry.72, section ".printk_index", align 4
@accept_from_sock._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.65, ptr @.str.4, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013dlm: failed to allocate incoming socket\0A\00", [53 x i8] zeroinitializer }, align 32
@accept_from_sock._entry_ptr.77 = internal global ptr @accept_from_sock._entry.75, section ".printk_index", align 4
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&othercon->sock_mutex\00", [42 x i8] zeroinitializer }, align 32
@accept_from_sock._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.65, ptr @.str.4, i32 1138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013dlm: error accepting connection from node: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@accept_from_sock._entry_ptr.81 = internal global ptr @accept_from_sock._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dlm_recv\00", [23 x i8] zeroinitializer }, align 32
@work_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.4, i32 1647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013dlm: can't start dlm_recv\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"work_start\00", [21 x i8] zeroinitializer }, align 32
@work_start._entry_ptr = internal global ptr @work_start._entry, section ".printk_index", align 4
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dlm_send\00", [23 x i8] zeroinitializer }, align 32
@work_start._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.84, ptr @.str.4, i32 1653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013dlm: can't start dlm_send\0A\00", [35 x i8] zeroinitializer }, align 32
@work_start._entry_ptr.88 = internal global ptr @work_start._entry.86, section ".printk_index", align 4
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TCP\00", [28 x i8] zeroinitializer }, align 32
@dlm_tcp_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.4, i32 1834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013dlm: could not bind for connect: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dlm_tcp_bind\00", [19 x i8] zeroinitializer }, align 32
@dlm_tcp_bind._entry_ptr = internal global ptr @dlm_tcp_bind._entry, section ".printk_index", align 4
@dlm_tcp_listen_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.4, i32 1860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013dlm: TCP protocol can't handle multi-homed hosts, try SCTP\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dlm_tcp_listen_validate\00", [40 x i8] zeroinitializer }, align 32
@dlm_tcp_listen_validate._entry_ptr = internal global ptr @dlm_tcp_listen_validate._entry, section ".printk_index", align 4
@shutdown_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.4, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013dlm: Connection %p failed to shutdown: %d will force close\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"shutdown_connection\00", [44 x i8] zeroinitializer }, align 32
@shutdown_connection._entry_ptr = internal global ptr @shutdown_connection._entry, section ".printk_index", align 4
@shutdown_connection._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.4, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013dlm: Connection %p shutdown timed out, will force close\0A\00", [37 x i8] zeroinitializer }, align 32
@shutdown_connection._entry_ptr.98 = internal global ptr @shutdown_connection._entry.96, section ".printk_index", align 4
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SCTP\00", [27 x i8] zeroinitializer }, align 32
@dlm_sctp_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.100, ptr @.str.4, i32 1924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlm_sctp_connect\00", [47 x i8] zeroinitializer }, align 32
@dlm_sctp_connect._entry_ptr = internal global ptr @dlm_sctp_connect._entry, section ".printk_index", align 4
@sctp_bind_addrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.4, i32 1180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013dlm: Can't bind to %d addr number %d, %d.\0A\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sctp_bind_addrs\00", [16 x i8] zeroinitializer }, align 32
@sctp_bind_addrs._entry_ptr = internal global ptr @sctp_bind_addrs._entry, section ".printk_index", align 4
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sctp\00", [27 x i8] zeroinitializer }, align 32
@dlm_listen_for_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.4, i32 1782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013dlm: Using %s for communications\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlm_listen_for_all\00", [45 x i8] zeroinitializer }, align 32
@dlm_listen_for_all._entry_ptr = internal global ptr @dlm_listen_for_all._entry, section ".printk_index", align 4
@dlm_listen_for_all._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.4, i32 1791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013dlm: Can't create comms socket: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@dlm_listen_for_all._entry_ptr.108 = internal global ptr @dlm_listen_for_all._entry.106, section ".printk_index", align 4
@dlm_listen_for_all.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.112 = internal global [7 x i64] [i64 5, i64 32, i64 4294967183, i64 4294967195, i64 4294967196, i64 4294967203, i64 4294967274]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 203, i32 27 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 209, i32 27 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"dlm_node_addrs_spin\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [15 x i8] c"dlm_node_addrs\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 173, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"connections_srcu\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1317, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1496, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [15 x i8] c"dlm_allow_conn\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 179, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant [15 x i8] c"recv_workqueue\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 182, i32 33 }
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"send_workqueue\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 183, i32 33 }
@___asan_gen_.162 = private unnamed_addr constant [11 x i8] c"listen_con\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 176, i32 33 }
@___asan_gen_.165 = private unnamed_addr constant [14 x i8] c"dlm_proto_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 189, i32 36 }
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"connection_hash\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 185, i32 26 }
@___asan_gen_.171 = private unnamed_addr constant [16 x i8] c"dlm_local_count\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 178, i32 12 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1975, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1979, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"dlm_tcp_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1889, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant [13 x i8] c"dlm_sctp_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1952, i32 35 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1996, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 174, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 187, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"connections_lock\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 235, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 256, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 258, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 260, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 261, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 262, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1547, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1555, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [15 x i8] c"dlm_local_addr\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 177, i32 33 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1574, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1596, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 532, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [14 x i8] c"listen_sock.0\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [14 x i8] c"listen_sock.1\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [14 x i8] c"listen_sock.2\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [14 x i8] c"listen_sock.3\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 623, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 632, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 641, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant [30 x i8] c"../include/trace/events/dlm.h\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 217, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 108, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 977, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 186, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 189, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 797, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 801, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1035, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1043, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1049, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1057, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1081, i32 5 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1096, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1138, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1645, i32 19 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1647, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1651, i32 19 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1653, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1890, i32 10 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1834, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1860, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 861, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 869, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1953, i32 10 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1924, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1179, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1936, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1781, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.499 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1791, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.503 = private constant [21 x i8] c"../fs/dlm/lowcomms.c\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1805, i32 2 }
@llvm.compiler.used = appending global [163 x ptr] [ptr @accept_from_sock._entry, ptr @accept_from_sock._entry.66, ptr @accept_from_sock._entry.69, ptr @accept_from_sock._entry.72, ptr @accept_from_sock._entry.75, ptr @accept_from_sock._entry.79, ptr @accept_from_sock._entry_ptr, ptr @accept_from_sock._entry_ptr.68, ptr @accept_from_sock._entry_ptr.71, ptr @accept_from_sock._entry_ptr.74, ptr @accept_from_sock._entry_ptr.77, ptr @accept_from_sock._entry_ptr.81, ptr @close_connection._entry, ptr @close_connection._entry.61, ptr @close_connection._entry_ptr, ptr @close_connection._entry_ptr.63, ptr @dlm_connect._entry, ptr @dlm_connect._entry.30, ptr @dlm_connect._entry.34, ptr @dlm_connect._entry.37, ptr @dlm_connect._entry_ptr, ptr @dlm_connect._entry_ptr.32, ptr @dlm_connect._entry_ptr.36, ptr @dlm_connect._entry_ptr.39, ptr @dlm_listen_for_all._entry, ptr @dlm_listen_for_all._entry.106, ptr @dlm_listen_for_all._entry_ptr, ptr @dlm_listen_for_all._entry_ptr.108, ptr @dlm_lowcomms_close._entry, ptr @dlm_lowcomms_close._entry_ptr, ptr @dlm_lowcomms_new_msg._entry, ptr @dlm_lowcomms_new_msg._entry_ptr, ptr @dlm_lowcomms_start._entry, ptr @dlm_lowcomms_start._entry.10, ptr @dlm_lowcomms_start._entry_ptr, ptr @dlm_lowcomms_start._entry_ptr.12, ptr @dlm_sctp_connect._entry, ptr @dlm_sctp_connect._entry_ptr, ptr @dlm_tcp_bind._entry, ptr @dlm_tcp_bind._entry_ptr, ptr @dlm_tcp_listen_validate._entry, ptr @dlm_tcp_listen_validate._entry_ptr, ptr @lowcomms_error_report._entry, ptr @lowcomms_error_report._entry.44, ptr @lowcomms_error_report._entry.48, ptr @lowcomms_error_report._entry_ptr, ptr @lowcomms_error_report._entry_ptr.46, ptr @lowcomms_error_report._entry_ptr.50, ptr @lowcomms_write_space._entry, ptr @lowcomms_write_space._entry_ptr, ptr @receive_from_sock._entry, ptr @receive_from_sock._entry_ptr, ptr @sctp_bind_addrs._entry, ptr @sctp_bind_addrs._entry_ptr, ptr @shutdown_connection._entry, ptr @shutdown_connection._entry.96, ptr @shutdown_connection._entry_ptr, ptr @shutdown_connection._entry_ptr.98, ptr @work_start._entry, ptr @work_start._entry.86, ptr @work_start._entry_ptr, ptr @work_start._entry_ptr.88, ptr @.str, ptr @.str.1, ptr @dlm_node_addrs_spin, ptr @dlm_node_addrs, ptr @connections_srcu, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @dlm_allow_conn, ptr @recv_workqueue, ptr @send_workqueue, ptr @listen_con, ptr @dlm_proto_ops, ptr @connection_hash, ptr @dlm_local_count, ptr @.str.7, ptr @.str.8, ptr @dlm_lowcomms_start.__key, ptr @.str.9, ptr @dlm_tcp_ops, ptr @dlm_sctp_ops, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @connections_lock, ptr @.str.18, ptr @dlm_con_init.__key, ptr @.str.19, ptr @dlm_con_init.__key.20, ptr @.str.21, ptr @dlm_con_init.__key.22, ptr @.str.23, ptr @dlm_con_init.__key.24, ptr @.str.25, ptr @dlm_con_init.__key.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @dlm_local_addr, ptr @dlm_connect._rs, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @listen_sock.0, ptr @listen_sock.1, ptr @listen_sock.2, ptr @listen_sock.3, ptr @lowcomms_error_report._rs, ptr @.str.42, ptr @lowcomms_error_report._rs.43, ptr @.str.45, ptr @lowcomms_error_report._rs.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @dlm_listen_for_all.__key], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_node_addrs_spin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_node_addrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connections_srcu to i32), i32 824, i32 1024, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_lowcomms_new_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_lowcomms_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_allow_conn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @listen_con to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_proto_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connection_hash to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_local_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_lowcomms_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_lowcomms_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_tcp_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_sctp_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_lowcomms_start._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connections_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_con_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_con_init.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_con_init.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_con_init.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_con_init.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_connect._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_local_addr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_connect._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_connect._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_connect._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowcomms_write_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @listen_sock.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @listen_sock.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @listen_sock.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @listen_sock.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowcomms_error_report._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowcomms_error_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowcomms_error_report._rs.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowcomms_error_report._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowcomms_error_report._rs.47 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowcomms_error_report._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receive_from_sock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @close_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @close_connection._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @accept_from_sock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @accept_from_sock._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @accept_from_sock._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @accept_from_sock._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @accept_from_sock._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @accept_from_sock._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @work_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @work_start._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_tcp_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_tcp_listen_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown_connection._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_sctp_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_bind_addrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_listen_for_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_listen_for_all._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_listen_for_all.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dlm_lowcomms_writequeue_cache_create() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @writequeue_entry_ctor) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @writequeue_entry_ctor(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msgs = getelementptr inbounds %struct.writequeue_entry, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %msgs to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %msgs, ptr %msgs, align 4
  %prev.i = getelementptr inbounds %struct.writequeue_entry, ptr %data, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %msgs, ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dlm_lowcomms_msg_cache_create() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 36, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_lowcomms_addr(i32 noundef %nodeid, ptr nocapture noundef readonly %addr, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 36) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3392, i32 noundef 128) #13
  %tobool2.not = icmp eq ptr %call7.i.i44, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = call ptr @memcpy(ptr %call7.i.i44, ptr %addr, i32 %len)
  tail call void @_raw_spin_lock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end4
  %na.0.in.i = phi ptr [ @dlm_node_addrs, %if.end4 ], [ %na.0.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %na.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %na.0.i = load ptr, ptr %na.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %na.0.i, @dlm_node_addrs
  br i1 %cmp.not.i, label %for.cond.i.if.then7_crit_edge, label %for.body.i

for.cond.i.if.then7_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

for.body.i:                                       ; preds = %for.cond.i
  %nodeid1.i = getelementptr inbounds %struct.dlm_node_addr, ptr %na.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %nodeid1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nodeid1.i, align 4
  %cmp2.i = icmp eq i32 %5, %nodeid
  br i1 %cmp2.i, label %find_node_addr.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

find_node_addr.exit:                              ; preds = %for.body.i
  %tobool6.not = icmp eq ptr %na.0.i, null
  br i1 %tobool6.not, label %find_node_addr.exit.if.then7_crit_edge, label %if.end10

find_node_addr.exit.if.then7_crit_edge:           ; preds = %find_node_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7:                                         ; preds = %find_node_addr.exit.if.then7_crit_edge, %for.cond.i.if.then7_crit_edge
  %nodeid8 = getelementptr inbounds %struct.dlm_node_addr, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %nodeid8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %nodeid, ptr %nodeid8, align 8
  %addr9 = getelementptr inbounds %struct.dlm_node_addr, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %addr9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i44, ptr %addr9, align 8
  %addr_count = getelementptr inbounds %struct.dlm_node_addr, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %addr_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %addr_count, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 9) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 9), align 4
  %mark = getelementptr inbounds %struct.dlm_node_addr, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mark, align 4
  %11 = load ptr, ptr @dlm_node_addrs, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @dlm_node_addrs, ptr noundef %11) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then7.list_add.exit_crit_edge

if.then7.list_add.exit_crit_edge:                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dlm_node_addrs, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i, ptr @dlm_node_addrs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then7.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  br label %cleanup

if.end10:                                         ; preds = %find_node_addr.exit
  %addr_count.i = getelementptr inbounds %struct.dlm_node_addr, ptr %na.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %addr_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp7.i = icmp sgt i32 %16, 0
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.body.lr.ph.i:                                 ; preds = %if.end10
  %sin6_addr15.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %arrayidx6.i.i.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 1
  %arrayidx11.i.i.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 2
  %arrayidx17.i.i.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 3
  %sin6_port19.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  %sin_addr1.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  br label %for.body.i45

for.body.i45:                                     ; preds = %for.inc.i.for.body.i45_crit_edge, %for.body.lr.ph.i
  %cmp9.i = phi i1 [ true, %for.body.lr.ph.i ], [ %cmp.i, %for.inc.i.for.body.i45_crit_edge ]
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i45_crit_edge ]
  %arrayidx.i = getelementptr %struct.dlm_node_addr, ptr %na.0.i, i32 0, i32 5, i32 %i.08.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 4
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i16 %20, label %for.body.i45.for.inc.i_crit_edge [
    i16 2, label %sw.bb.i.i
    i16 10, label %sw.bb12.i.i
  ]

for.body.i45.for.inc.i_crit_edge:                 ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sw.bb.i.i:                                        ; preds = %for.body.i45
  %sin_addr.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %18, i32 0, i32 2
  %22 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sin_addr.i.i, align 4
  %24 = ptrtoint ptr %sin_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sin_addr1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.not.i.i = icmp eq i32 %23, %25
  br i1 %cmp.not.i.i, label %cleanup.i.i, label %sw.bb.i.i.for.inc.i_crit_edge

sw.bb.i.i.for.inc.i_crit_edge:                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cleanup.i.i:                                      ; preds = %sw.bb.i.i
  %sin_port.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %sin_port.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sin_port.i.i, align 2
  %28 = ptrtoint ptr %sin6_port19.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sin6_port19.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp7.not.i.i = icmp eq i16 %27, %29
  br i1 %cmp7.not.i.i, label %cleanup.i.i.dlm_lowcomms_na_has_addr.exit_crit_edge, label %cleanup.i.i.for.inc.i_crit_edge

cleanup.i.i.for.inc.i_crit_edge:                  ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cleanup.i.i.dlm_lowcomms_na_has_addr.exit_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_lowcomms_na_has_addr.exit

sw.bb12.i.i:                                      ; preds = %for.body.i45
  %sin6_addr.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %18, i32 0, i32 3
  %30 = ptrtoint ptr %sin6_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sin6_addr.i.i, align 4
  %32 = ptrtoint ptr %sin6_addr15.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sin6_addr15.i.i, align 4
  %xor.i.i.i = xor i32 %33, %31
  %arrayidx4.i.i.i = getelementptr %struct.sockaddr_in6, ptr %18, i32 0, i32 3, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx4.i.i.i, align 4
  %36 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i = xor i32 %37, %35
  %or.i.i.i = or i32 %xor7.i.i.i, %xor.i.i.i
  %arrayidx9.i.i.i = getelementptr %struct.sockaddr_in6, ptr %18, i32 0, i32 3, i32 0, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx9.i.i.i, align 4
  %40 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor12.i.i.i = xor i32 %41, %39
  %or13.i.i.i = or i32 %or.i.i.i, %xor12.i.i.i
  %arrayidx15.i.i.i = getelementptr %struct.sockaddr_in6, ptr %18, i32 0, i32 3, i32 0, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx15.i.i.i, align 4
  %44 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor18.i.i.i = xor i32 %45, %43
  %or19.i.i.i = or i32 %or13.i.i.i, %xor18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or19.i.i.i, 0
  br i1 %cmp.i.i.i, label %cleanup25.i.i, label %sw.bb12.i.i.for.inc.i_crit_edge

sw.bb12.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cleanup25.i.i:                                    ; preds = %sw.bb12.i.i
  %sin6_port.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %18, i32 0, i32 1
  %46 = ptrtoint ptr %sin6_port.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sin6_port.i.i, align 2
  %48 = ptrtoint ptr %sin6_port19.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sin6_port19.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %49)
  %cmp21.not.i.i = icmp eq i16 %47, %49
  br i1 %cmp21.not.i.i, label %cleanup25.i.i.dlm_lowcomms_na_has_addr.exit_crit_edge, label %cleanup25.i.i.for.inc.i_crit_edge

cleanup25.i.i.for.inc.i_crit_edge:                ; preds = %cleanup25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cleanup25.i.i.dlm_lowcomms_na_has_addr.exit_crit_edge: ; preds = %cleanup25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_lowcomms_na_has_addr.exit

for.inc.i:                                        ; preds = %cleanup25.i.i.for.inc.i_crit_edge, %sw.bb12.i.i.for.inc.i_crit_edge, %cleanup.i.i.for.inc.i_crit_edge, %sw.bb.i.i.for.inc.i_crit_edge, %for.body.i45.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.08.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %16)
  %cmp.i = icmp slt i32 %inc.i, %16
  %exitcond.not.i = icmp eq i32 %inc.i, %16
  br i1 %exitcond.not.i, label %for.inc.i.dlm_lowcomms_na_has_addr.exit_crit_edge, label %for.inc.i.for.body.i45_crit_edge

for.inc.i.for.body.i45_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i45

for.inc.i.dlm_lowcomms_na_has_addr.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_lowcomms_na_has_addr.exit

dlm_lowcomms_na_has_addr.exit:                    ; preds = %for.inc.i.dlm_lowcomms_na_has_addr.exit_crit_edge, %cleanup25.i.i.dlm_lowcomms_na_has_addr.exit_crit_edge, %cleanup.i.i.dlm_lowcomms_na_has_addr.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp9.i, %cleanup25.i.i.dlm_lowcomms_na_has_addr.exit_crit_edge ], [ %cmp9.i, %cleanup.i.i.dlm_lowcomms_na_has_addr.exit_crit_edge ], [ %cmp.i, %for.inc.i.dlm_lowcomms_na_has_addr.exit_crit_edge ]
  br i1 %cmp.lcssa.i, label %if.then13, label %if.end14

if.then13:                                        ; preds = %dlm_lowcomms_na_has_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i44) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end14:                                         ; preds = %dlm_lowcomms_na_has_addr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp sgt i32 %16, 2
  br i1 %cmp, label %if.then16, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i44) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end14.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %inc = add nsw i32 %16, 1
  %50 = ptrtoint ptr %addr_count.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %inc, ptr %addr_count.i, align 4
  %arrayidx20 = getelementptr %struct.dlm_node_addr, ptr %na.0.i, i32 0, i32 5, i32 %16
  %51 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i44, ptr %arrayidx20, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then13, %list_add.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %if.then13 ], [ -28, %if.then16 ], [ 0, %if.end17 ], [ 0, %list_add.exit ], [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_lowcomms_connect_node(i32 noundef %nodeid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dlm_our_nodeid() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %nodeid)
  %cmp = icmp eq i32 %call, %nodeid
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @connections_srcu) #10
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16)) #10
  %call2 = tail call fastcc ptr @nodeid2con(i32 noundef %nodeid, i32 noundef 3136)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %if.then3.cleanup.sink.split_crit_edge, label %land.rhs.i

if.then3.cleanup.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.rhs.i:                                       ; preds = %if.then3
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup.sink.split_crit_edge, label %land.rhs.i.cleanup.sink.split.sink.split_crit_edge, !prof !252

land.rhs.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

land.rhs.i.cleanup.sink.split_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.connection, ptr %call2, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i9 = icmp eq i32 %2, 0
  br i1 %tobool.not.i9, label %if.end.i, label %if.end4.lowcomms_connect_sock.exit_crit_edge

if.end4.lowcomms_connect_sock.exit_crit_edge:     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %lowcomms_connect_sock.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load ptr, ptr @send_workqueue, align 4
  %swork.i = getelementptr inbounds %struct.connection, ptr %call2, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %swork.i) #10
  tail call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 552, i32 noundef 0) #10
  %call.i4.i = tail call i32 @__cond_resched() #10
  br label %lowcomms_connect_sock.exit

lowcomms_connect_sock.exit:                       ; preds = %if.end.i, %if.end4.lowcomms_connect_sock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i10 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i10, label %lowcomms_connect_sock.exit.cleanup.sink.split_crit_edge, label %land.rhs.i12

lowcomms_connect_sock.exit.cleanup.sink.split_crit_edge: ; preds = %lowcomms_connect_sock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.rhs.i12:                                     ; preds = %lowcomms_connect_sock.exit
  %.b1.i11 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i11, label %land.rhs.i12.cleanup.sink.split_crit_edge, label %land.rhs.i12.cleanup.sink.split.sink.split_crit_edge, !prof !252

land.rhs.i12.cleanup.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

land.rhs.i12.cleanup.sink.split_crit_edge:        ; preds = %land.rhs.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split.sink.split:                    ; preds = %land.rhs.i12.cleanup.sink.split.sink.split_crit_edge, %land.rhs.i.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ -12, %land.rhs.i.cleanup.sink.split.sink.split_crit_edge ], [ 0, %land.rhs.i12.cleanup.sink.split.sink.split_crit_edge ]
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 189, i32 noundef 9, ptr noundef null) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %land.rhs.i12.cleanup.sink.split_crit_edge, %lowcomms_connect_sock.exit.cleanup.sink.split_crit_edge, %land.rhs.i.cleanup.sink.split_crit_edge, %if.then3.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.then3.cleanup.sink.split_crit_edge ], [ -12, %land.rhs.i.cleanup.sink.split_crit_edge ], [ 0, %lowcomms_connect_sock.exit.cleanup.sink.split_crit_edge ], [ 0, %land.rhs.i12.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16)) #10
  tail call void @__srcu_read_unlock(ptr noundef nonnull @connections_srcu, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_our_nodeid() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nodeid2con(i32 noundef %nodeid, i32 noundef %alloc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %nodeid, 31
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b37.i = load i1, ptr @__find_con.__warned, align 1
  br i1 %.b37.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__find_con.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 235, ptr noundef nonnull @.str.18) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %arrayidx.i = getelementptr [32 x %struct.hlist_head], ptr @connection_hash, i32 0, i32 %and.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -164
  %tobool12.not4144.i = icmp eq ptr %add.ptr.i, null
  %tobool12.not41.i = or i1 %tobool10.not.i, %tobool12.not4144.i
  br i1 %tobool12.not41.i, label %do.end.i.__find_con.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.__find_con.exit_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__find_con.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %con.042.i = phi ptr [ %add.ptr27.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %nodeid13.i = getelementptr inbounds %struct.connection, ptr %con.042.i, i32 0, i32 1
  %2 = ptrtoint ptr %nodeid13.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nodeid13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %nodeid)
  %cmp.i = icmp eq i32 %3, %nodeid
  br i1 %cmp.i, label %for.body.i.cleanup_crit_edge, label %for.inc.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %list.i = getelementptr inbounds %struct.connection, ptr %con.042.i, i32 0, i32 8
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %list.i, align 4
  %tobool23.not.i = icmp eq ptr %5, null
  %add.ptr27.i = getelementptr i8, ptr %5, i32 -164
  %tobool12.not45.i = icmp eq ptr %add.ptr27.i, null
  %tobool12.not.i = or i1 %tobool23.not.i, %tobool12.not45.i
  br i1 %tobool12.not.i, label %for.inc.i.__find_con.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.__find_con.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__find_con.exit

__find_con.exit:                                  ; preds = %for.inc.i.__find_con.exit_crit_edge, %do.end.i.__find_con.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alloc)
  %tobool2.not = icmp eq i32 %alloc, 0
  br i1 %tobool2.not, label %__find_con.exit.cleanup_crit_edge, label %if.end

__find_con.exit.cleanup_crit_edge:                ; preds = %__find_con.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %__find_con.exit
  %or.i = or i32 %alloc, 256
  %and.i.i.i = and i32 %alloc, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %if.end.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !252

if.end.kzalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %if.end
  %and2.i.i.i = and i32 %alloc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %alloc, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %if.end.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %if.end.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 9
  %6 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef %or.i, i32 noundef 340) #13
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end6

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %kzalloc.exit
  %call7 = tail call fastcc i32 @dlm_con_init(ptr noundef nonnull %call7.i.i, i32 noundef %nodeid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  tail call void @_raw_spin_lock(ptr noundef nonnull @connections_lock) #10
  %call.i33 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not.i34 = icmp eq i32 %call.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i37, label %if.end10.do.end.i46_crit_edge

if.end10.do.end.i46_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i46

land.lhs.true.i37:                                ; preds = %if.end10
  %call1.i35 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %tobool2.not.i36 = icmp eq i32 %call1.i35, 0
  br i1 %tobool2.not.i36, label %land.lhs.true.i37.do.end.i46_crit_edge, label %land.lhs.true3.i39

land.lhs.true.i37.do.end.i46_crit_edge:           ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i46

land.lhs.true3.i39:                               ; preds = %land.lhs.true.i37
  %.b37.i38 = load i1, ptr @__find_con.__warned, align 1
  br i1 %.b37.i38, label %land.lhs.true3.i39.do.end.i46_crit_edge, label %if.then.i40

land.lhs.true3.i39.do.end.i46_crit_edge:          ; preds = %land.lhs.true3.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i46

if.then.i40:                                      ; preds = %land.lhs.true3.i39
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__find_con.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 235, ptr noundef nonnull @.str.18) #10
  br label %do.end.i46

do.end.i46:                                       ; preds = %if.then.i40, %land.lhs.true3.i39.do.end.i46_crit_edge, %land.lhs.true.i37.do.end.i46_crit_edge, %if.end10.do.end.i46_crit_edge
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i42 = icmp eq ptr %9, null
  %add.ptr.i43 = getelementptr i8, ptr %9, i32 -164
  %tobool12.not4144.i44 = icmp eq ptr %add.ptr.i43, null
  %tobool12.not41.i45 = or i1 %tobool10.not.i42, %tobool12.not4144.i44
  br i1 %tobool12.not41.i45, label %do.end.i46.if.end14_crit_edge, label %do.end.i46.for.body.i50_crit_edge

do.end.i46.for.body.i50_crit_edge:                ; preds = %do.end.i46
  br label %for.body.i50

do.end.i46.if.end14_crit_edge:                    ; preds = %do.end.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.body.i50:                                     ; preds = %for.inc.i56.for.body.i50_crit_edge, %do.end.i46.for.body.i50_crit_edge
  %con.042.i47 = phi ptr [ %add.ptr27.i53, %for.inc.i56.for.body.i50_crit_edge ], [ %add.ptr.i43, %do.end.i46.for.body.i50_crit_edge ]
  %nodeid13.i48 = getelementptr inbounds %struct.connection, ptr %con.042.i47, i32 0, i32 1
  %10 = ptrtoint ptr %nodeid13.i48 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nodeid13.i48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %nodeid)
  %cmp.i49 = icmp eq i32 %11, %nodeid
  br i1 %cmp.i49, label %if.then13, label %for.inc.i56

for.inc.i56:                                      ; preds = %for.body.i50
  %list.i51 = getelementptr inbounds %struct.connection, ptr %con.042.i47, i32 0, i32 8
  %12 = ptrtoint ptr %list.i51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %list.i51, align 4
  %tobool23.not.i52 = icmp eq ptr %13, null
  %add.ptr27.i53 = getelementptr i8, ptr %13, i32 -164
  %tobool12.not45.i54 = icmp eq ptr %add.ptr27.i53, null
  %tobool12.not.i55 = or i1 %tobool23.not.i52, %tobool12.not45.i54
  br i1 %tobool12.not.i55, label %for.inc.i56.if.end14_crit_edge, label %for.inc.i56.for.body.i50_crit_edge

for.inc.i56.for.body.i50_crit_edge:               ; preds = %for.inc.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i50

for.inc.i56.if.end14_crit_edge:                   ; preds = %for.inc.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull @connections_lock) #10
  %rx_buf = getelementptr inbounds %struct.connection, ptr %call7.i.i, i32 0, i32 14
  %14 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_buf, align 8
  tail call void @kfree(ptr noundef %15) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end14:                                         ; preds = %for.inc.i56.if.end14_crit_edge, %do.end.i46.if.end14_crit_edge
  %list = getelementptr inbounds %struct.connection, ptr %call7.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %9, ptr %list, align 4
  %pprev.i = getelementptr inbounds %struct.connection, ptr %call7.i.i, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %arrayidx.i, ptr %pprev.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !253
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list, ptr %arrayidx.i, align 4
  br i1 %tobool10.not.i42, label %if.end14.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.end14.hlist_add_head_rcu.exit_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %19 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.end14.hlist_add_head_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @connections_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head_rcu.exit, %if.then13, %if.then9, %kzalloc.exit.cleanup_crit_edge, %__find_con.exit.cleanup_crit_edge, %for.body.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then9 ], [ %con.042.i47, %if.then13 ], [ %call7.i.i, %hlist_add_head_rcu.exit ], [ null, %__find_con.exit.cleanup_crit_edge ], [ null, %kzalloc.exit.cleanup_crit_edge ], [ %con.042.i, %for.body.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lowcomms_connect_sock(ptr noundef %con) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load ptr, ptr @send_workqueue, align 4
  %swork = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 12
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %swork) #10
  tail call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 552, i32 noundef 0) #10
  %call.i4 = tail call i32 @__cond_resched() #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_lowcomms_nodes_set_mark(i32 noundef %nodeid, i32 noundef %mark) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %na.0.in.i = phi ptr [ @dlm_node_addrs, %entry ], [ %na.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %na.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %na.0.i = load ptr, ptr %na.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %na.0.i, @dlm_node_addrs
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %nodeid1.i = getelementptr inbounds %struct.dlm_node_addr, ptr %na.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %nodeid1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nodeid1.i, align 4
  %cmp2.i = icmp eq i32 %2, %nodeid
  br i1 %cmp2.i, label %find_node_addr.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

find_node_addr.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %na.0.i, null
  br i1 %tobool.not, label %find_node_addr.exit.cleanup_crit_edge, label %if.end

find_node_addr.exit.cleanup_crit_edge:            ; preds = %find_node_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %find_node_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %mark1 = getelementptr inbounds %struct.dlm_node_addr, ptr %na.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %mark1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mark, ptr %mark1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %find_node_addr.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %find_node_addr.exit.cleanup_crit_edge ], [ -2, %for.cond.i.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dlm_lowcomms_new_msg(i32 noundef %nodeid, i32 noundef %len, i32 noundef %allocation, ptr nocapture noundef %ppc, ptr noundef %cb, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp = icmp sgt i32 %len, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp1 = icmp ult i32 %len, 16
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %do.end4, label %if.end24

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %len) #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1318, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24:                                         ; preds = %entry
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @connections_srcu) #10
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16)) #10
  %call26 = tail call fastcc ptr @nodeid2con(i32 noundef %nodeid, i32 noundef %allocation)
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %if.then28.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

if.then28.srcu_read_unlock.exit_crit_edge:        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %if.then28
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !252

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 189, i32 noundef 9, ptr noundef null) #10
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %if.then28.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16)) #10
  tail call void @__srcu_read_unlock(ptr noundef nonnull @connections_srcu, i32 noundef %call.i) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %call30 = tail call fastcc ptr @dlm_lowcomms_new_msg_con(ptr noundef nonnull %call26, i32 noundef %len, i32 noundef %allocation, ptr noundef %ppc, ptr noundef %cb, ptr noundef %data)
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i47 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i47, label %if.then32.srcu_read_unlock.exit51_crit_edge, label %land.rhs.i49

if.then32.srcu_read_unlock.exit51_crit_edge:      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit51

land.rhs.i49:                                     ; preds = %if.then32
  %.b1.i48 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i48, label %land.rhs.i49.srcu_read_unlock.exit51_crit_edge, label %if.then.i50, !prof !252

land.rhs.i49.srcu_read_unlock.exit51_crit_edge:   ; preds = %land.rhs.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit51

if.then.i50:                                      ; preds = %land.rhs.i49
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 189, i32 noundef 9, ptr noundef null) #10
  br label %srcu_read_unlock.exit51

srcu_read_unlock.exit51:                          ; preds = %if.then.i50, %land.rhs.i49.srcu_read_unlock.exit51_crit_edge, %if.then32.srcu_read_unlock.exit51_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16)) #10
  tail call void @__srcu_read_unlock(ptr noundef nonnull @connections_srcu, i32 noundef %call.i) #10
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %idx34 = getelementptr inbounds %struct.dlm_msg, ptr %call30, i32 0, i32 5
  %0 = ptrtoint ptr %idx34 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call.i, ptr %idx34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %srcu_read_unlock.exit51, %srcu_read_unlock.exit, %do.end4
  %retval.0 = phi ptr [ null, %do.end4 ], [ %call30, %if.end33 ], [ null, %srcu_read_unlock.exit51 ], [ null, %srcu_read_unlock.exit ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dlm_lowcomms_new_msg_con(ptr noundef %con, i32 noundef %len, i32 noundef %allocation, ptr nocapture noundef %ppc, ptr noundef readonly %cb, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dlm_allocate_msg(i32 noundef %allocation) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref = getelementptr inbounds %struct.dlm_msg, ptr %call, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %ref, align 4
  %writequeue_lock.i = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %writequeue_lock.i) #10
  %writequeue.i = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 4
  %1 = ptrtoint ptr %writequeue.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %writequeue.i, align 4
  %cmp.i.not.i = icmp eq ptr %2, %writequeue.i
  br i1 %cmp.i.not.i, label %if.end.if.end10.i_crit_edge, label %if.then.i

if.end.if.end10.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then.i:                                        ; preds = %if.end
  %prev.i = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %end.i = getelementptr inbounds %struct.writequeue_entry, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 4096, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %len)
  %cmp.not.i = icmp ult i32 %sub.i, %len
  br i1 %cmp.not.i, label %if.then.i.if.end10.i_crit_edge, label %if.then2.i

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then2.i:                                       ; preds = %if.then.i
  %ref.i = getelementptr inbounds %struct.writequeue_entry, ptr %4, i32 0, i32 9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #10, !srcloc !254
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then2.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !255

if.then2.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then2.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !252

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then2.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then2.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %page.i = getelementptr inbounds %struct.writequeue_entry, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %page.i, align 4
  %call3.i = tail call ptr @page_address(ptr noundef %10) #10
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %call3.i, i32 %12
  %13 = ptrtoint ptr %ppc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr5.i, ptr %ppc, align 4
  %tobool6.not.i = icmp eq ptr %cb, null
  br i1 %tobool6.not.i, label %kref_get.exit.i.new_wq_entry.exit_crit_edge, label %if.then7.i

kref_get.exit.i.new_wq_entry.exit_crit_edge:      ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_wq_entry.exit

if.then7.i:                                       ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %cb(ptr noundef %data) #10
  br label %new_wq_entry.exit

if.end10.i:                                       ; preds = %if.then.i.if.end10.i_crit_edge, %if.end.if.end10.i_crit_edge
  %call.i.i = tail call ptr @dlm_allocate_writequeue() #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end10.i.new_wq_entry.exit.thread_crit_edge, label %if.end.i.i

if.end10.i.new_wq_entry.exit.thread_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_wq_entry.exit.thread

if.end.i.i:                                       ; preds = %if.end10.i
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 2848, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %page.i.i = getelementptr inbounds %struct.writequeue_entry, ptr %call.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call38.i.i.i.i.i, ptr %page.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.end14.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dlm_free_writequeue(ptr noundef nonnull %call.i.i) #10
  br label %new_wq_entry.exit.thread

if.end14.i:                                       ; preds = %if.end.i.i
  %offset.i.i = getelementptr inbounds %struct.writequeue_entry, ptr %call.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %offset.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.writequeue_entry, ptr %call.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %len.i.i, align 4
  %end.i.i = getelementptr inbounds %struct.writequeue_entry, ptr %call.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %end.i.i, align 4
  %dirty.i.i = getelementptr inbounds %struct.writequeue_entry, ptr %call.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %dirty.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %dirty.i.i, align 4
  %con7.i.i = getelementptr inbounds %struct.writequeue_entry, ptr %call.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %con7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %con, ptr %con7.i.i, align 4
  %users.i.i = getelementptr inbounds %struct.writequeue_entry, ptr %call.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %users.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %users.i.i, align 4
  %ref.i.i = getelementptr inbounds %struct.writequeue_entry, ptr %call.i.i, i32 0, i32 9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #10
  %21 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %ref.i.i, align 4
  %call.i.i.i.i.i.i49.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #10, !srcloc !254
  %asmresult.i.i.i.i.i.i50.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i50.i)
  %tobool1.not.i.i.i.i51.i = icmp eq i32 %asmresult.i.i.i.i.i.i50.i, 0
  br i1 %tobool1.not.i.i.i.i51.i, label %if.end14.i.if.end15.sink.split.i.i.i.i56.i_crit_edge, label %if.else.i.i.i.i54.i, !prof !255

if.end14.i.if.end15.sink.split.i.i.i.i56.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i56.i

if.else.i.i.i.i54.i:                              ; preds = %if.end14.i
  %add.i.i.i.i52.i = add i32 %asmresult.i.i.i.i.i.i50.i, 1
  %23 = or i32 %add.i.i.i.i52.i, %asmresult.i.i.i.i.i.i50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i53.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i53.i, label %if.else.i.i.i.i54.i.kref_get.exit57.i_crit_edge, label %if.else.i.i.i.i54.i.if.end15.sink.split.i.i.i.i56.i_crit_edge, !prof !252

if.else.i.i.i.i54.i.if.end15.sink.split.i.i.i.i56.i_crit_edge: ; preds = %if.else.i.i.i.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i56.i

if.else.i.i.i.i54.i.kref_get.exit57.i_crit_edge:  ; preds = %if.else.i.i.i.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit57.i

if.end15.sink.split.i.i.i.i56.i:                  ; preds = %if.else.i.i.i.i54.i.if.end15.sink.split.i.i.i.i56.i_crit_edge, %if.end14.i.if.end15.sink.split.i.i.i.i56.i_crit_edge
  %.sink.i.i.i.i55.i = phi i32 [ 2, %if.end14.i.if.end15.sink.split.i.i.i.i56.i_crit_edge ], [ 1, %if.else.i.i.i.i54.i.if.end15.sink.split.i.i.i.i56.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef %.sink.i.i.i.i55.i) #10
  br label %kref_get.exit57.i

kref_get.exit57.i:                                ; preds = %if.end15.sink.split.i.i.i.i56.i, %if.else.i.i.i.i54.i.kref_get.exit57.i_crit_edge
  %24 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %page.i.i, align 4
  %call17.i = tail call ptr @page_address(ptr noundef %25) #10
  %26 = ptrtoint ptr %ppc to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call17.i, ptr %ppc, align 4
  %27 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end.i.i, align 4
  %add19.i = add i32 %28, %len
  store i32 %add19.i, ptr %end.i.i, align 4
  %writequeue_cnt.i = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %writequeue_cnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %writequeue_cnt.i, i32 1, i32 3, i32 1) #10
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %writequeue_cnt.i, ptr %writequeue_cnt.i, i32 1, ptr elementtype(i32) %writequeue_cnt.i) #10, !srcloc !256
  %tobool20.not.i = icmp eq ptr %cb, null
  br i1 %tobool20.not.i, label %kref_get.exit57.i.if.end22.i_crit_edge, label %if.then21.i

kref_get.exit57.i.if.end22.i_crit_edge:           ; preds = %kref_get.exit57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then21.i:                                      ; preds = %kref_get.exit57.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %cb(ptr noundef %data) #10
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %kref_get.exit57.i.if.end22.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %call.i.i58.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %31, ptr noundef %writequeue.i) #10
  br i1 %call.i.i58.i, label %if.end.i.i.i, label %if.end22.i.new_wq_entry.exit.thread23_crit_edge

if.end22.i.new_wq_entry.exit.thread23_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_wq_entry.exit.thread23

if.end.i.i.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %writequeue.i, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call.i.i, ptr %31, align 4
  br label %new_wq_entry.exit.thread23

new_wq_entry.exit.thread:                         ; preds = %if.then5.i.i, %if.end10.i.new_wq_entry.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %writequeue_lock.i) #10
  br label %if.then3

new_wq_entry.exit.thread23:                       ; preds = %if.end.i.i.i, %if.end22.i.new_wq_entry.exit.thread23_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %writequeue_lock.i) #10
  br label %if.end4

new_wq_entry.exit:                                ; preds = %if.then7.i, %kref_get.exit.i.new_wq_entry.exit_crit_edge
  %36 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end.i, align 4
  %add.i = add i32 %37, %len
  store i32 %add.i, ptr %end.i, align 4
  %users.i = getelementptr inbounds %struct.writequeue_entry, ptr %4, i32 0, i32 5
  %38 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %users.i, align 4
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %users.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %writequeue_lock.i) #10
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %new_wq_entry.exit.if.then3_crit_edge, label %new_wq_entry.exit.if.end4_crit_edge

new_wq_entry.exit.if.end4_crit_edge:              ; preds = %new_wq_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

new_wq_entry.exit.if.then3_crit_edge:             ; preds = %new_wq_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %new_wq_entry.exit.if.then3_crit_edge, %new_wq_entry.exit.thread
  tail call void @dlm_free_msg(ptr noundef nonnull %call) #10
  br label %cleanup

if.end4:                                          ; preds = %new_wq_entry.exit.if.end4_crit_edge, %new_wq_entry.exit.thread23
  %e.0.i26 = phi ptr [ %call.i.i, %new_wq_entry.exit.thread23 ], [ %4, %new_wq_entry.exit.if.end4_crit_edge ]
  %retransmit = getelementptr inbounds %struct.dlm_msg, ptr %call, i32 0, i32 2
  %40 = ptrtoint ptr %retransmit to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %retransmit, align 4
  %orig_msg = getelementptr inbounds %struct.dlm_msg, ptr %call, i32 0, i32 1
  %41 = ptrtoint ptr %orig_msg to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %orig_msg, align 4
  %42 = ptrtoint ptr %ppc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ppc, align 4
  %ppc5 = getelementptr inbounds %struct.dlm_msg, ptr %call, i32 0, i32 3
  %44 = ptrtoint ptr %ppc5 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %ppc5, align 4
  %len6 = getelementptr inbounds %struct.dlm_msg, ptr %call, i32 0, i32 4
  %45 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %len, ptr %len6, align 4
  %46 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %e.0.i26, ptr %call, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end4 ], [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lowcomms_commit_msg(ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_dlm_lowcomms_commit_msg(ptr noundef %msg)
  %idx = getelementptr inbounds %struct.dlm_msg, ptr %msg, i32 0, i32 5
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %tobool.not.i = icmp ult i32 %1, 2
  br i1 %tobool.not.i, label %entry.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

entry.srcu_read_unlock.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !252

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 189, i32 noundef 9, ptr noundef null) #10
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %entry.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16)) #10
  tail call void @__srcu_read_unlock(ptr noundef nonnull @connections_srcu, i32 noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dlm_lowcomms_commit_msg(ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %con2 = getelementptr inbounds %struct.writequeue_entry, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %con2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con2, align 4
  %writequeue_lock = getelementptr inbounds %struct.connection, ptr %3, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %writequeue_lock) #10
  %ref = getelementptr inbounds %struct.dlm_msg, ptr %msg, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #10, !srcloc !254
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !255

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !252

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %list = getelementptr inbounds %struct.dlm_msg, ptr %msg, i32 0, i32 6
  %msgs = getelementptr inbounds %struct.writequeue_entry, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %msgs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msgs, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %msgs, ptr noundef %7) #10
  br i1 %call.i.i, label %if.end.i.i, label %kref_get.exit.list_add.exit_crit_edge

kref_get.exit.list_add.exit_crit_edge:            ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dlm_msg, ptr %msg, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msgs, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %msgs to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %msgs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %kref_get.exit.list_add.exit_crit_edge
  %users3 = getelementptr inbounds %struct.writequeue_entry, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %users3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %users3, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %users3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %end = getelementptr inbounds %struct.writequeue_entry, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end, align 4
  %offset = getelementptr inbounds %struct.writequeue_entry, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %sub = sub i32 %15, %17
  %len = getelementptr inbounds %struct.writequeue_entry, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %len, align 4
  tail call void @_raw_spin_unlock(ptr noundef %writequeue_lock) #10
  %19 = load ptr, ptr @send_workqueue, align 4
  %swork = getelementptr inbounds %struct.connection, ptr %3, i32 0, i32 12
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %swork) #10
  br label %cleanup

out:                                              ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %writequeue_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lowcomms_put_msg(ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.dlm_msg, ptr %msg, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #10, !srcloc !258
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !252

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !259
  tail call fastcc void @dlm_msg_release(ptr noundef %ref) #10, !callees !260
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlm_msg_release(ptr noundef %kref) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %ref = getelementptr inbounds %struct.writequeue_entry, ptr %1, i32 0, i32 9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #10, !srcloc !258
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !252

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !259
  %page.i = getelementptr %struct.writequeue_entry, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %page.i, align 4
  tail call void @__free_pages(ptr noundef %4, i32 noundef 0) #10
  tail call void @dlm_free_writequeue(ptr noundef %1) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @dlm_free_msg(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_lowcomms_resend_msg(ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  %ppc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppc) #10
  %0 = ptrtoint ptr %ppc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ppc, align 4, !annotation !261
  %retransmit = getelementptr inbounds %struct.dlm_msg, ptr %msg, i32 0, i32 2
  %1 = ptrtoint ptr %retransmit to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %retransmit, align 4, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %msg, align 4
  %con = getelementptr inbounds %struct.writequeue_entry, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %con, align 4
  %len = getelementptr inbounds %struct.dlm_msg, ptr %msg, i32 0, i32 4
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %call = call fastcc ptr @dlm_lowcomms_new_msg_con(ptr noundef %6, i32 noundef %8, i32 noundef 2592, ptr noundef nonnull %ppc, ptr noundef null, ptr noundef null)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %retransmit to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %retransmit, align 4
  %ref = getelementptr inbounds %struct.dlm_msg, ptr %msg, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #10, !srcloc !254
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end4.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !255

if.end4.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end4
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !252

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end4.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end4.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %orig_msg = getelementptr inbounds %struct.dlm_msg, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %orig_msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg, ptr %orig_msg, align 4
  %13 = ptrtoint ptr %ppc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ppc, align 4
  %ppc6 = getelementptr inbounds %struct.dlm_msg, ptr %msg, i32 0, i32 3
  %15 = ptrtoint ptr %ppc6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ppc6, align 4
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %19 = call ptr @memcpy(ptr %14, ptr %16, i32 %18)
  tail call fastcc void @_dlm_lowcomms_commit_msg(ptr noundef nonnull %call)
  %ref.i = getelementptr inbounds %struct.dlm_msg, ptr %call, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #10, !srcloc !258
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !252

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !259
  tail call fastcc void @dlm_msg_release(ptr noundef %ref.i) #10, !callees !260
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_lowcomms_close(i32 noundef %nodeid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %nodeid) #14
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @connections_srcu) #10
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16)) #10
  %and.i.i = and i32 %nodeid, 31
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.do.end.i.i_crit_edge

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b37.i.i = load i1, ptr @__find_con.__warned, align 1
  br i1 %.b37.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__find_con.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 235, ptr noundef nonnull @.str.18) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  %arrayidx.i.i = getelementptr [32 x %struct.hlist_head], ptr @connection_hash, i32 0, i32 %and.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %1, null
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -164
  %tobool12.not4144.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool12.not41.i.i = or i1 %tobool10.not.i.i, %tobool12.not4144.i.i
  br i1 %tobool12.not41.i.i, label %do.end.i.i.if.end6_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.if.end6_crit_edge:                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %con.042.i.i = phi ptr [ %add.ptr27.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %nodeid13.i.i = getelementptr inbounds %struct.connection, ptr %con.042.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %nodeid13.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nodeid13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %nodeid)
  %cmp.i.i = icmp eq i32 %3, %nodeid
  br i1 %cmp.i.i, label %if.then, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %list.i.i = getelementptr inbounds %struct.connection, ptr %con.042.i.i, i32 0, i32 8
  %4 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %list.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %5, null
  %add.ptr27.i.i = getelementptr i8, ptr %5, i32 -164
  %tobool12.not45.i.i = icmp eq ptr %add.ptr27.i.i, null
  %tobool12.not.i.i = or i1 %tobool23.not.i.i, %tobool12.not45.i.i
  br i1 %tobool12.not.i.i, label %for.inc.i.i.if.end6_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.end6_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %for.body.i.i
  %flags = getelementptr inbounds %struct.connection, ptr %con.042.i.i, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags) #10
  tail call fastcc void @close_connection(ptr noundef nonnull %con.042.i.i, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
  %writequeue_lock.i = getelementptr inbounds %struct.connection, ptr %con.042.i.i, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %writequeue_lock.i) #10
  %writequeue.i = getelementptr inbounds %struct.connection, ptr %con.042.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %writequeue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %writequeue.i, align 4
  %cmp.not19.i = icmp eq ptr %7, %writequeue.i
  br i1 %cmp.not19.i, label %if.then.clean_one_writequeue.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.clean_one_writequeue.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_one_writequeue.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %e.020.i = phi ptr [ %safe.0.i, %for.body.i.for.body.i_crit_edge ], [ %7, %if.then.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %e.020.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %safe.0.i = load ptr, ptr %e.020.i, align 4
  tail call fastcc void @free_entry(ptr noundef %e.020.i) #10
  %cmp.not.i = icmp eq ptr %safe.0.i, %writequeue.i
  br i1 %cmp.not.i, label %for.body.i.clean_one_writequeue.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.clean_one_writequeue.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_one_writequeue.exit

clean_one_writequeue.exit:                        ; preds = %for.body.i.clean_one_writequeue.exit_crit_edge, %if.then.clean_one_writequeue.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %writequeue_lock.i) #10
  %othercon = getelementptr inbounds %struct.connection, ptr %con.042.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %othercon to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %othercon, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %clean_one_writequeue.exit.if.end6_crit_edge, label %if.then4

clean_one_writequeue.exit.if.end6_crit_edge:      ; preds = %clean_one_writequeue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %clean_one_writequeue.exit
  %writequeue_lock.i25 = getelementptr inbounds %struct.connection, ptr %10, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %writequeue_lock.i25) #10
  %writequeue.i26 = getelementptr inbounds %struct.connection, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %writequeue.i26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %writequeue.i26, align 4
  %cmp.not19.i27 = icmp eq ptr %12, %writequeue.i26
  br i1 %cmp.not19.i27, label %if.then4.clean_one_writequeue.exit32_crit_edge, label %if.then4.for.body.i31_crit_edge

if.then4.for.body.i31_crit_edge:                  ; preds = %if.then4
  br label %for.body.i31

if.then4.clean_one_writequeue.exit32_crit_edge:   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_one_writequeue.exit32

for.body.i31:                                     ; preds = %for.body.i31.for.body.i31_crit_edge, %if.then4.for.body.i31_crit_edge
  %e.020.i28 = phi ptr [ %safe.0.i29, %for.body.i31.for.body.i31_crit_edge ], [ %12, %if.then4.for.body.i31_crit_edge ]
  %13 = ptrtoint ptr %e.020.i28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %safe.0.i29 = load ptr, ptr %e.020.i28, align 4
  tail call fastcc void @free_entry(ptr noundef %e.020.i28) #10
  %cmp.not.i30 = icmp eq ptr %safe.0.i29, %writequeue.i26
  br i1 %cmp.not.i30, label %for.body.i31.clean_one_writequeue.exit32_crit_edge, label %for.body.i31.for.body.i31_crit_edge

for.body.i31.for.body.i31_crit_edge:              ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i31

for.body.i31.clean_one_writequeue.exit32_crit_edge: ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_one_writequeue.exit32

clean_one_writequeue.exit32:                      ; preds = %for.body.i31.clean_one_writequeue.exit32_crit_edge, %if.then4.clean_one_writequeue.exit32_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %writequeue_lock.i25) #10
  br label %if.end6

if.end6:                                          ; preds = %clean_one_writequeue.exit32, %clean_one_writequeue.exit.if.end6_crit_edge, %for.inc.i.i.if.end6_crit_edge, %do.end.i.i.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %if.end6.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

if.end6.srcu_read_unlock.exit_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %if.end6
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !252

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 189, i32 noundef 9, ptr noundef null) #10
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %if.end6.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16)) #10
  tail call void @__srcu_read_unlock(ptr noundef nonnull @connections_srcu, i32 noundef %call.i) #10
  tail call void @_raw_spin_lock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i34.for.cond.i_crit_edge, %srcu_read_unlock.exit
  %na.0.in.i = phi ptr [ @dlm_node_addrs, %srcu_read_unlock.exit ], [ %na.0.i, %for.body.i34.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %na.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %na.0.i = load ptr, ptr %na.0.in.i, align 4
  %cmp.not.i33 = icmp eq ptr %na.0.i, @dlm_node_addrs
  br i1 %cmp.not.i33, label %for.cond.i.if.end12_crit_edge, label %for.body.i34

for.cond.i.if.end12_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

for.body.i34:                                     ; preds = %for.cond.i
  %nodeid1.i = getelementptr inbounds %struct.dlm_node_addr, ptr %na.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %nodeid1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nodeid1.i, align 4
  %cmp2.i = icmp eq i32 %16, %nodeid
  br i1 %cmp2.i, label %find_node_addr.exit, label %for.body.i34.for.cond.i_crit_edge

for.body.i34.for.cond.i_crit_edge:                ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

find_node_addr.exit:                              ; preds = %for.body.i34
  %tobool8.not = icmp eq ptr %na.0.i, null
  br i1 %tobool8.not, label %find_node_addr.exit.if.end12_crit_edge, label %if.then9

find_node_addr.exit.if.end12_crit_edge:           ; preds = %find_node_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %find_node_addr.exit
  %call.i.i36 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %na.0.i) #10
  br i1 %call.i.i36, label %if.end.i.i, label %if.then9.list_del.exit_crit_edge

if.then9.list_del.exit_crit_edge:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %na.0.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %na.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %na.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then9.list_del.exit_crit_edge
  %23 = ptrtoint ptr %na.0.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %na.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %na.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %addr_count = getelementptr inbounds %struct.dlm_node_addr, ptr %na.0.i, i32 0, i32 3
  %25 = ptrtoint ptr %addr_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr_count, align 4
  %dec43 = add i32 %26, -1
  store i32 %dec43, ptr %addr_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool10.not44 = icmp eq i32 %26, 0
  br i1 %tobool10.not44, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %list_del.exit.while.body_crit_edge
  %dec45 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec43, %list_del.exit.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.dlm_node_addr, ptr %na.0.i, i32 0, i32 5, i32 %dec45
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %28) #10
  %29 = ptrtoint ptr %addr_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr_count, align 4
  %dec = add i32 %30, -1
  store i32 %dec, ptr %addr_count, align 4
  %tobool10.not = icmp eq i32 %30, 0
  br i1 %tobool10.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %list_del.exit.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %na.0.i) #10
  br label %if.end12

if.end12:                                         ; preds = %while.end, %find_node_addr.exit.if.end12_crit_edge, %for.cond.i.if.end12_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @close_connection(ptr noundef %con, i1 noundef zeroext %and_other, i1 noundef zeroext %tx, i1 noundef zeroext %rx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 3
  %call = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %tx.not = xor i1 %tx, true
  %brmerge = select i1 %tx.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %entry.if.end_crit_edge, label %land.lhs.true6

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true6:                                   ; preds = %entry
  %swork = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 12
  %call7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %swork) #10
  br i1 %call7, label %do.end, label %land.lhs.true6.if.end_crit_edge

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  %nodeid = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 1
  %0 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nodeid, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %1) #14
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true6.if.end_crit_edge, %entry.if.end_crit_edge
  %rx.not = xor i1 %rx, true
  %brmerge77 = select i1 %rx.not, i1 true, i1 %tobool.not
  br i1 %brmerge77, label %if.end.if.end23_crit_edge, label %land.lhs.true13

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true13:                                  ; preds = %if.end
  %rwork = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 11
  %call14 = tail call zeroext i1 @cancel_work_sync(ptr noundef %rwork) #10
  br i1 %call14, label %do.end18, label %land.lhs.true13.if.end23_crit_edge

land.lhs.true13.if.end23_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end18:                                         ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  %nodeid20 = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 1
  %2 = ptrtoint ptr %nodeid20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nodeid20, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %3) #14
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end18, %land.lhs.true13.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %sock_mutex = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %sock_mutex, i32 noundef 0) #10
  %4 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %con, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end23.dlm_close_sock.exit_crit_edge, label %if.then.i

if.end23.dlm_close_sock.exit_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_close_sock.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %sk1.i.i = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sk1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk1.i.i, align 16
  tail call void @lock_sock_nested(ptr noundef %7, i32 noundef 0) #10
  %sk_user_data.i.i = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 72
  %8 = ptrtoint ptr %sk_user_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sk_user_data.i.i, align 4
  %9 = load ptr, ptr @listen_sock.1, align 4
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 77
  %10 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %sk_data_ready.i.i, align 8
  %11 = load ptr, ptr @listen_sock.2, align 4
  %sk_state_change.i.i = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 76
  %12 = ptrtoint ptr %sk_state_change.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %sk_state_change.i.i, align 4
  %13 = load ptr, ptr @listen_sock.3, align 4
  %sk_write_space.i.i = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 78
  %14 = ptrtoint ptr %sk_write_space.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %sk_write_space.i.i, align 4
  %15 = load ptr, ptr @listen_sock.0, align 4
  %sk_error_report.i.i = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 79
  %16 = ptrtoint ptr %sk_error_report.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %sk_error_report.i.i, align 8
  tail call void @release_sock(ptr noundef %7) #10
  %17 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %con, align 4
  tail call void @sock_release(ptr noundef %18) #10
  %19 = ptrtoint ptr %con to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %con, align 4
  br label %dlm_close_sock.exit

dlm_close_sock.exit:                              ; preds = %if.then.i, %if.end23.dlm_close_sock.exit_crit_edge
  %othercon = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 9
  %20 = ptrtoint ptr %othercon to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %othercon, align 4
  %tobool24.not = icmp ne ptr %21, null
  %22 = and i1 %tobool24.not, %and_other
  br i1 %22, label %if.then27, label %dlm_close_sock.exit.if.end31_crit_edge

dlm_close_sock.exit.if.end31_crit_edge:           ; preds = %dlm_close_sock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then27:                                        ; preds = %dlm_close_sock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @close_connection(ptr noundef nonnull %21, i1 noundef zeroext false, i1 noundef zeroext %tx, i1 noundef zeroext %rx)
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %dlm_close_sock.exit.if.end31_crit_edge
  %writequeue_lock = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %writequeue_lock) #10
  %writequeue = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 4
  %23 = ptrtoint ptr %writequeue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %writequeue, align 4
  %cmp.i.not = icmp eq ptr %24, %writequeue
  br i1 %cmp.i.not, label %if.end31.if.end40_crit_edge, label %if.then34

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then34:                                        ; preds = %if.end31
  %dirty = getelementptr inbounds %struct.writequeue_entry, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dirty, align 4, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool37.not = icmp eq i8 %26, 0
  br i1 %tobool37.not, label %if.then34.if.end40_crit_edge, label %if.then38

if.then34.if.end40_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then38:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @free_entry(ptr noundef %24)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then34.if.end40_crit_edge, %if.end31.if.end40_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %writequeue_lock) #10
  %rx_leftover = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 16
  %27 = ptrtoint ptr %rx_leftover to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %rx_leftover, align 4
  %retries = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 7
  %28 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %retries, align 4
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags) #10
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #10
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %flags) #10
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %flags) #10
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %flags) #10
  tail call void @mutex_unlock(ptr noundef %sock_mutex) #10
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lowcomms_shutdown() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @dlm_allow_conn, align 4
  %0 = load ptr, ptr @recv_workqueue, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @flush_workqueue(ptr noundef nonnull %0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load ptr, ptr @send_workqueue, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @flush_workqueue(ptr noundef nonnull %1) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %2 = load ptr, ptr @listen_con, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end3.dlm_close_sock.exit_crit_edge, label %if.then.i

if.end3.dlm_close_sock.exit_crit_edge:            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_close_sock.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %sk1.i.i = getelementptr inbounds %struct.socket, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %sk1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk1.i.i, align 16
  tail call void @lock_sock_nested(ptr noundef %4, i32 noundef 0) #10
  %sk_user_data.i.i = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 72
  %5 = ptrtoint ptr %sk_user_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sk_user_data.i.i, align 4
  %6 = load ptr, ptr @listen_sock.1, align 4
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 77
  %7 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %sk_data_ready.i.i, align 8
  %8 = load ptr, ptr @listen_sock.2, align 4
  %sk_state_change.i.i = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 76
  %9 = ptrtoint ptr %sk_state_change.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %sk_state_change.i.i, align 4
  %10 = load ptr, ptr @listen_sock.3, align 4
  %sk_write_space.i.i = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 78
  %11 = ptrtoint ptr %sk_write_space.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %sk_write_space.i.i, align 4
  %12 = load ptr, ptr @listen_sock.0, align 4
  %sk_error_report.i.i = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 79
  %13 = ptrtoint ptr %sk_error_report.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %sk_error_report.i.i, align 8
  tail call void @release_sock(ptr noundef %4) #10
  %14 = load ptr, ptr @listen_con, align 4
  tail call void @sock_release(ptr noundef %14) #10
  store ptr null, ptr @listen_con, align 4
  br label %dlm_close_sock.exit

dlm_close_sock.exit:                              ; preds = %if.then.i, %if.end3.dlm_close_sock.exit_crit_edge
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @connections_srcu) #10
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16)) #10
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc30.i.do.body.i_crit_edge, %dlm_close_sock.exit
  %i.045.i = phi i32 [ 0, %dlm_close_sock.exit ], [ %inc.i, %for.inc30.i.do.body.i_crit_edge ]
  %call.i5 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not.i6 = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b39.i = load i1, ptr @foreach_conn.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i7

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i7:                                       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @foreach_conn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 319, ptr noundef nonnull @.str.18) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i7, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %arrayidx.i = getelementptr [32 x %struct.hlist_head], ptr @connection_hash, i32 0, i32 %i.045.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i = icmp eq ptr %16, null
  %add.ptr.i = getelementptr i8, ptr %16, i32 -164
  %tobool13.not4346.i = icmp eq ptr %add.ptr.i, null
  %tobool13.not43.i = or i1 %tobool10.not.i, %tobool13.not4346.i
  br i1 %tobool13.not43.i, label %do.end.i.for.inc30.i_crit_edge, label %do.end.i.for.body14.i_crit_edge

do.end.i.for.body14.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body14.i

do.end.i.for.inc30.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.body14.i:                                     ; preds = %shutdown_conn.exit.for.body14.i_crit_edge, %do.end.i.for.body14.i_crit_edge
  %con.044.i = phi ptr [ %add.ptr26.i, %shutdown_conn.exit.for.body14.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body14.i_crit_edge ]
  %17 = load ptr, ptr @dlm_proto_ops, align 4
  %shutdown_action.i = getelementptr inbounds %struct.dlm_proto_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %shutdown_action.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shutdown_action.i, align 4
  %tobool.not.i10 = icmp eq ptr %19, null
  br i1 %tobool.not.i10, label %for.body14.i.shutdown_conn.exit_crit_edge, label %if.then.i11

for.body14.i.shutdown_conn.exit_crit_edge:        ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %shutdown_conn.exit

if.then.i11:                                      ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %19(ptr noundef nonnull %con.044.i) #10
  br label %shutdown_conn.exit

shutdown_conn.exit:                               ; preds = %if.then.i11, %for.body14.i.shutdown_conn.exit_crit_edge
  %list.i = getelementptr inbounds %struct.connection, ptr %con.044.i, i32 0, i32 8
  %20 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %list.i, align 4
  %tobool22.not.i = icmp eq ptr %21, null
  %add.ptr26.i = getelementptr i8, ptr %21, i32 -164
  %tobool13.not47.i = icmp eq ptr %add.ptr26.i, null
  %tobool13.not.i = or i1 %tobool22.not.i, %tobool13.not47.i
  br i1 %tobool13.not.i, label %shutdown_conn.exit.for.inc30.i_crit_edge, label %shutdown_conn.exit.for.body14.i_crit_edge

shutdown_conn.exit.for.body14.i_crit_edge:        ; preds = %shutdown_conn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i

shutdown_conn.exit.for.inc30.i_crit_edge:         ; preds = %shutdown_conn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %shutdown_conn.exit.for.inc30.i_crit_edge, %do.end.i.for.inc30.i_crit_edge
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %foreach_conn.exit, label %for.inc30.i.do.body.i_crit_edge

for.inc30.i.do.body.i_crit_edge:                  ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

foreach_conn.exit:                                ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i8 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i8, label %foreach_conn.exit.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

foreach_conn.exit.srcu_read_unlock.exit_crit_edge: ; preds = %foreach_conn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %foreach_conn.exit
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i9, !prof !252

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

if.then.i9:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 189, i32 noundef 9, ptr noundef null) #10
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i9, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %foreach_conn.exit.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16)) #10
  tail call void @__srcu_read_unlock(ptr noundef nonnull @connections_srcu, i32 noundef %call.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lowcomms_stop() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @connections_srcu) #10
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16)) #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.backedge, %entry
  %i.045.i.i = phi i32 [ 0, %entry ], [ %i.045.i.i.be, %do.body.i.i.backedge ]
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %do.body.i.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b39.i.i = load i1, ptr @foreach_conn.__warned, align 1
  br i1 %.b39.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @foreach_conn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 319, ptr noundef nonnull @.str.18) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %arrayidx.i.i = getelementptr [32 x %struct.hlist_head], ptr @connection_hash, i32 0, i32 %i.045.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %1, null
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -164
  %tobool13.not4346.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool13.not43.i.i = or i1 %tobool10.not.i.i, %tobool13.not4346.i.i
  br i1 %tobool13.not43.i.i, label %do.end.i.i.for.inc30.i.i_crit_edge, label %do.end.i.i.for.body14.i.i_crit_edge

do.end.i.i.for.body14.i.i_crit_edge:              ; preds = %do.end.i.i
  br label %for.body14.i.i

do.end.i.i.for.inc30.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i.i

for.body14.i.i:                                   ; preds = %for.body14.i.i.for.body14.i.i_crit_edge, %do.end.i.i.for.body14.i.i_crit_edge
  %con.044.i.i = phi ptr [ %add.ptr26.i.i, %for.body14.i.i.for.body14.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body14.i.i_crit_edge ]
  tail call fastcc void @_stop_conn(ptr noundef nonnull %con.044.i.i, i1 noundef zeroext true) #10
  %list.i.i = getelementptr inbounds %struct.connection, ptr %con.044.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %list.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %3, null
  %add.ptr26.i.i = getelementptr i8, ptr %3, i32 -164
  %tobool13.not47.i.i = icmp eq ptr %add.ptr26.i.i, null
  %tobool13.not.i.i = or i1 %tobool22.not.i.i, %tobool13.not47.i.i
  br i1 %tobool13.not.i.i, label %for.body14.i.i.for.inc30.i.i_crit_edge, label %for.body14.i.i.for.body14.i.i_crit_edge

for.body14.i.i.for.body14.i.i_crit_edge:          ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i.i

for.body14.i.i.for.inc30.i.i_crit_edge:           ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i.i

for.inc30.i.i:                                    ; preds = %for.body14.i.i.for.inc30.i.i_crit_edge, %do.end.i.i.for.inc30.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.045.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %foreach_conn.exit.i, label %for.inc30.i.i.do.body.i.i.backedge_crit_edge

for.inc30.i.i.do.body.i.i.backedge_crit_edge:     ; preds = %for.inc30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.backedge

do.body.i.i.backedge:                             ; preds = %do.cond55.i.do.body.i.i.backedge_crit_edge, %for.inc30.i.i.do.body.i.i.backedge_crit_edge
  %i.045.i.i.be = phi i32 [ %inc.i.i, %for.inc30.i.i.do.body.i.i.backedge_crit_edge ], [ 0, %do.cond55.i.do.body.i.i.backedge_crit_edge ]
  br label %do.body.i.i

foreach_conn.exit.i:                              ; preds = %for.inc30.i.i
  %4 = load ptr, ptr @recv_workqueue, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %foreach_conn.exit.i.if.end.i_crit_edge, label %if.then.i

foreach_conn.exit.i.if.end.i_crit_edge:           ; preds = %foreach_conn.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %foreach_conn.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @flush_workqueue(ptr noundef nonnull %4) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %foreach_conn.exit.i.if.end.i_crit_edge
  %5 = load ptr, ptr @send_workqueue, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.do.body5.i.preheader_crit_edge, label %if.then2.i

if.end.i.do.body5.i.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.preheader

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @flush_workqueue(ptr noundef nonnull %5) #10
  br label %do.body5.i.preheader

do.body5.i.preheader:                             ; preds = %if.then2.i, %if.end.i.do.body5.i.preheader_crit_edge
  br label %do.body5.i

do.body5.i:                                       ; preds = %for.inc53.i.do.body5.i_crit_edge, %do.body5.i.preheader
  %i.090.i = phi i32 [ %inc.i, %for.inc53.i.do.body5.i_crit_edge ], [ 0, %do.body5.i.preheader ]
  %call.i1 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool6.not.i = icmp eq i32 %call.i1, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %do.body5.i.do.end.i_crit_edge

do.body5.i.do.end.i_crit_edge:                    ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body5.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b77.i = load i1, ptr @work_flush.__warned, align 1
  br i1 %.b77.i, label %land.lhs.true9.i.do.end.i_crit_edge, label %if.then11.i

land.lhs.true9.i.do.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then11.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @work_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1748, ptr noundef nonnull @.str.18) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then11.i, %land.lhs.true9.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body5.i.do.end.i_crit_edge
  %arrayidx.i = getelementptr [32 x %struct.hlist_head], ptr @connection_hash, i32 0, i32 %i.090.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool18.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -164
  %tobool21.not8791.i = icmp eq ptr %add.ptr.i, null
  %tobool21.not87.i = or i1 %tobool18.not.i, %tobool21.not8791.i
  br i1 %tobool21.not87.i, label %do.end.i.for.inc53.i_crit_edge, label %do.end.i.for.body22.i_crit_edge

do.end.i.for.body22.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body22.i

do.end.i.for.inc53.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc53.i

for.body22.i:                                     ; preds = %for.inc.i.for.body22.i_crit_edge, %do.end.i.for.body22.i_crit_edge
  %ok.189.i = phi i32 [ %ok.2.i, %for.inc.i.for.body22.i_crit_edge ], [ 1, %do.end.i.for.body22.i_crit_edge ]
  %con.088.i = phi ptr [ %add.ptr49.i, %for.inc.i.for.body22.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body22.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.connection, ptr %con.088.i, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %shr.i.i = lshr i32 %9, 1
  %10 = load volatile i32, ptr %flags.i, align 4
  %shr.i79.i = lshr i32 %10, 2
  %and.i = and i32 %shr.i.i, %ok.189.i
  %and26.i = and i32 %and.i, %shr.i79.i
  %othercon.i = getelementptr inbounds %struct.connection, ptr %con.088.i, i32 0, i32 9
  %11 = ptrtoint ptr %othercon.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %othercon.i, align 4
  %tobool27.not.i = icmp eq ptr %12, null
  br i1 %tobool27.not.i, label %for.body22.i.for.inc.i_crit_edge, label %if.then28.i

for.body22.i.for.inc.i_crit_edge:                 ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then28.i:                                      ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags30.i = getelementptr inbounds %struct.connection, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags30.i, align 4
  %shr.i81.i = lshr i32 %14, 1
  %15 = load volatile i32, ptr %flags30.i, align 4
  %shr.i83.i = lshr i32 %15, 2
  %and32.i = and i32 %shr.i81.i, %and26.i
  %and36.i = and i32 %and32.i, %shr.i83.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then28.i, %for.body22.i.for.inc.i_crit_edge
  %ok.2.i = phi i32 [ %and36.i, %if.then28.i ], [ %and26.i, %for.body22.i.for.inc.i_crit_edge ]
  %list.i = getelementptr inbounds %struct.connection, ptr %con.088.i, i32 0, i32 8
  %16 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %list.i, align 4
  %tobool45.not.i = icmp eq ptr %17, null
  %add.ptr49.i = getelementptr i8, ptr %17, i32 -164
  %tobool21.not92.i = icmp eq ptr %add.ptr49.i, null
  %tobool21.not.i = or i1 %tobool45.not.i, %tobool21.not92.i
  br i1 %tobool21.not.i, label %for.inc.i.for.inc53.i_crit_edge, label %for.inc.i.for.body22.i_crit_edge

for.inc.i.for.body22.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body22.i

for.inc.i.for.inc53.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc53.i

for.inc53.i:                                      ; preds = %for.inc.i.for.inc53.i_crit_edge, %do.end.i.for.inc53.i_crit_edge
  %ok.1.lcssa.i = phi i32 [ 1, %do.end.i.for.inc53.i_crit_edge ], [ %ok.2.i, %for.inc.i.for.inc53.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.090.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %i.090.i)
  %cmp.i = icmp ugt i32 %i.090.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ok.1.lcssa.i)
  %tobool4.not.i = icmp eq i32 %ok.1.lcssa.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool4.not.i
  br i1 %or.cond.i, label %do.cond55.i, label %for.inc53.i.do.body5.i_crit_edge

for.inc53.i.do.body5.i_crit_edge:                 ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.cond55.i:                                      ; preds = %for.inc53.i
  br i1 %tobool4.not.i, label %do.cond55.i.do.body.i.i.backedge_crit_edge, label %do.cond55.i.do.body.i4_crit_edge

do.cond55.i.do.body.i4_crit_edge:                 ; preds = %do.cond55.i
  br label %do.body.i4

do.cond55.i.do.body.i.i.backedge_crit_edge:       ; preds = %do.cond55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.backedge

do.body.i4:                                       ; preds = %for.inc30.i.do.body.i4_crit_edge, %do.cond55.i.do.body.i4_crit_edge
  %i.045.i = phi i32 [ %inc.i11, %for.inc30.i.do.body.i4_crit_edge ], [ 0, %do.cond55.i.do.body.i4_crit_edge ]
  %call.i2 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i3 = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i5, label %do.body.i4.do.end.i9_crit_edge

do.body.i4.do.end.i9_crit_edge:                   ; preds = %do.body.i4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i9

land.lhs.true.i5:                                 ; preds = %do.body.i4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i5.do.end.i9_crit_edge, label %land.lhs.true3.i

land.lhs.true.i5.do.end.i9_crit_edge:             ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i9

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i5
  %.b39.i = load i1, ptr @foreach_conn.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true3.i.do.end.i9_crit_edge, label %if.then.i6

land.lhs.true3.i.do.end.i9_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i9

if.then.i6:                                       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @foreach_conn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 319, ptr noundef nonnull @.str.18) #10
  br label %do.end.i9

do.end.i9:                                        ; preds = %if.then.i6, %land.lhs.true3.i.do.end.i9_crit_edge, %land.lhs.true.i5.do.end.i9_crit_edge, %do.body.i4.do.end.i9_crit_edge
  %arrayidx.i7 = getelementptr [32 x %struct.hlist_head], ptr @connection_hash, i32 0, i32 %i.045.i
  %18 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx.i7, align 4
  %tobool10.not.i = icmp eq ptr %19, null
  %add.ptr.i8 = getelementptr i8, ptr %19, i32 -164
  %tobool13.not4346.i = icmp eq ptr %add.ptr.i8, null
  %tobool13.not43.i = or i1 %tobool10.not.i, %tobool13.not4346.i
  br i1 %tobool13.not43.i, label %do.end.i9.for.inc30.i_crit_edge, label %do.end.i9.for.body14.i_crit_edge

do.end.i9.for.body14.i_crit_edge:                 ; preds = %do.end.i9
  br label %for.body14.i

do.end.i9.for.inc30.i_crit_edge:                  ; preds = %do.end.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.body14.i:                                     ; preds = %free_conn.exit.for.body14.i_crit_edge, %do.end.i9.for.body14.i_crit_edge
  %con.044.i = phi ptr [ %add.ptr26.i, %free_conn.exit.for.body14.i_crit_edge ], [ %add.ptr.i8, %do.end.i9.for.body14.i_crit_edge ]
  tail call fastcc void @close_connection(ptr noundef nonnull %con.044.i, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) #10
  tail call void @_raw_spin_lock(ptr noundef nonnull @connections_lock) #10
  %list.i23 = getelementptr inbounds %struct.connection, ptr %con.044.i, i32 0, i32 8
  %20 = ptrtoint ptr %list.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %list.i23, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.connection, ptr %con.044.i, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pprev2.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %21, ptr %23, align 4
  %tobool.not.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i, label %for.body14.i.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

for.body14.i.hlist_del_rcu.exit.i_crit_edge:      ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %for.body14.i.hlist_del_rcu.exit.i_crit_edge
  %26 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @connections_lock) #10
  %othercon.i24 = getelementptr inbounds %struct.connection, ptr %con.044.i, i32 0, i32 9
  %27 = ptrtoint ptr %othercon.i24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %othercon.i24, align 4
  %tobool.not.i25 = icmp eq ptr %28, null
  br i1 %tobool.not.i25, label %hlist_del_rcu.exit.i.if.end.i27_crit_edge, label %if.then.i26

hlist_del_rcu.exit.i.if.end.i27_crit_edge:        ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i27

if.then.i26:                                      ; preds = %hlist_del_rcu.exit.i
  %writequeue_lock.i.i = getelementptr inbounds %struct.connection, ptr %28, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %writequeue_lock.i.i) #10
  %writequeue.i.i = getelementptr inbounds %struct.connection, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %writequeue.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %writequeue.i.i, align 4
  %cmp.not19.i.i = icmp eq ptr %30, %writequeue.i.i
  br i1 %cmp.not19.i.i, label %if.then.i26.clean_one_writequeue.exit.i_crit_edge, label %if.then.i26.for.body.i.i_crit_edge

if.then.i26.for.body.i.i_crit_edge:               ; preds = %if.then.i26
  br label %for.body.i.i

if.then.i26.clean_one_writequeue.exit.i_crit_edge: ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_one_writequeue.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i26.for.body.i.i_crit_edge
  %e.020.i.i = phi ptr [ %safe.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %30, %if.then.i26.for.body.i.i_crit_edge ]
  %31 = ptrtoint ptr %e.020.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %safe.0.i.i = load ptr, ptr %e.020.i.i, align 4
  tail call fastcc void @free_entry(ptr noundef %e.020.i.i) #10
  %cmp.not.i.i = icmp eq ptr %safe.0.i.i, %writequeue.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.clean_one_writequeue.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.clean_one_writequeue.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_one_writequeue.exit.i

clean_one_writequeue.exit.i:                      ; preds = %for.body.i.i.clean_one_writequeue.exit.i_crit_edge, %if.then.i26.clean_one_writequeue.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %writequeue_lock.i.i) #10
  %32 = ptrtoint ptr %othercon.i24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %othercon.i24, align 4
  %rcu.i = getelementptr inbounds %struct.connection, ptr %33, i32 0, i32 17
  tail call void @call_srcu(ptr noundef nonnull @connections_srcu, ptr noundef %rcu.i, ptr noundef nonnull @connection_release) #10
  br label %if.end.i27

if.end.i27:                                       ; preds = %clean_one_writequeue.exit.i, %hlist_del_rcu.exit.i.if.end.i27_crit_edge
  %writequeue_lock.i10.i = getelementptr inbounds %struct.connection, ptr %con.044.i, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %writequeue_lock.i10.i) #10
  %writequeue.i11.i = getelementptr inbounds %struct.connection, ptr %con.044.i, i32 0, i32 4
  %34 = ptrtoint ptr %writequeue.i11.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %writequeue.i11.i, align 4
  %cmp.not19.i12.i = icmp eq ptr %35, %writequeue.i11.i
  br i1 %cmp.not19.i12.i, label %if.end.i27.free_conn.exit_crit_edge, label %if.end.i27.for.body.i16.i_crit_edge

if.end.i27.for.body.i16.i_crit_edge:              ; preds = %if.end.i27
  br label %for.body.i16.i

if.end.i27.free_conn.exit_crit_edge:              ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_conn.exit

for.body.i16.i:                                   ; preds = %for.body.i16.i.for.body.i16.i_crit_edge, %if.end.i27.for.body.i16.i_crit_edge
  %e.020.i13.i = phi ptr [ %safe.0.i14.i, %for.body.i16.i.for.body.i16.i_crit_edge ], [ %35, %if.end.i27.for.body.i16.i_crit_edge ]
  %36 = ptrtoint ptr %e.020.i13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %safe.0.i14.i = load ptr, ptr %e.020.i13.i, align 4
  tail call fastcc void @free_entry(ptr noundef %e.020.i13.i) #10
  %cmp.not.i15.i = icmp eq ptr %safe.0.i14.i, %writequeue.i11.i
  br i1 %cmp.not.i15.i, label %for.body.i16.i.free_conn.exit_crit_edge, label %for.body.i16.i.for.body.i16.i_crit_edge

for.body.i16.i.for.body.i16.i_crit_edge:          ; preds = %for.body.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i16.i

for.body.i16.i.free_conn.exit_crit_edge:          ; preds = %for.body.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_conn.exit

free_conn.exit:                                   ; preds = %for.body.i16.i.free_conn.exit_crit_edge, %if.end.i27.free_conn.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %writequeue_lock.i10.i) #10
  %rcu3.i = getelementptr inbounds %struct.connection, ptr %con.044.i, i32 0, i32 17
  tail call void @call_srcu(ptr noundef nonnull @connections_srcu, ptr noundef %rcu3.i, ptr noundef nonnull @connection_release) #10
  %37 = ptrtoint ptr %list.i23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %list.i23, align 4
  %tobool22.not.i = icmp eq ptr %38, null
  %add.ptr26.i = getelementptr i8, ptr %38, i32 -164
  %tobool13.not47.i = icmp eq ptr %add.ptr26.i, null
  %tobool13.not.i = or i1 %tobool22.not.i, %tobool13.not47.i
  br i1 %tobool13.not.i, label %free_conn.exit.for.inc30.i_crit_edge, label %free_conn.exit.for.body14.i_crit_edge

free_conn.exit.for.body14.i_crit_edge:            ; preds = %free_conn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i

free_conn.exit.for.inc30.i_crit_edge:             ; preds = %free_conn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %free_conn.exit.for.inc30.i_crit_edge, %do.end.i9.for.inc30.i_crit_edge
  %inc.i11 = add nuw nsw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i11, 32
  br i1 %exitcond.not.i, label %foreach_conn.exit, label %for.inc30.i.do.body.i4_crit_edge

for.inc30.i.do.body.i4_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i4

foreach_conn.exit:                                ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i12 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i12, label %foreach_conn.exit.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

foreach_conn.exit.srcu_read_unlock.exit_crit_edge: ; preds = %foreach_conn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %foreach_conn.exit
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i13, !prof !252

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 189, i32 noundef 9, ptr noundef null) #10
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i13, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %foreach_conn.exit.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16)) #10
  tail call void @__srcu_read_unlock(ptr noundef nonnull @connections_srcu, i32 noundef %call.i) #10
  %39 = load ptr, ptr @recv_workqueue, align 4
  %tobool.not.i14 = icmp eq ptr %39, null
  br i1 %tobool.not.i14, label %srcu_read_unlock.exit.if.end.i17_crit_edge, label %if.then.i15

srcu_read_unlock.exit.if.end.i17_crit_edge:       ; preds = %srcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i17

if.then.i15:                                      ; preds = %srcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @destroy_workqueue(ptr noundef nonnull %39) #10
  store ptr null, ptr @recv_workqueue, align 4
  br label %if.end.i17

if.end.i17:                                       ; preds = %if.then.i15, %srcu_read_unlock.exit.if.end.i17_crit_edge
  %40 = load ptr, ptr @send_workqueue, align 4
  %tobool1.not.i16 = icmp eq ptr %40, null
  br i1 %tobool1.not.i16, label %if.end.i17.work_stop.exit_crit_edge, label %if.then2.i18

if.end.i17.work_stop.exit_crit_edge:              ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %work_stop.exit

if.then2.i18:                                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @destroy_workqueue(ptr noundef nonnull %40) #10
  store ptr null, ptr @send_workqueue, align 4
  br label %work_stop.exit

work_stop.exit:                                   ; preds = %if.then2.i18, %if.end.i17.work_stop.exit_crit_edge
  %41 = load i32, ptr @dlm_local_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp3.i = icmp sgt i32 %41, 0
  br i1 %cmp3.i, label %work_stop.exit.for.body.i_crit_edge, label %work_stop.exit.deinit_local.exit_crit_edge

work_stop.exit.deinit_local.exit_crit_edge:       ; preds = %work_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %deinit_local.exit

work_stop.exit.for.body.i_crit_edge:              ; preds = %work_stop.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %work_stop.exit.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i21, %for.body.i.for.body.i_crit_edge ], [ 0, %work_stop.exit.for.body.i_crit_edge ]
  %arrayidx.i20 = getelementptr [3 x ptr], ptr @dlm_local_addr, i32 0, i32 %i.04.i
  %42 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i20, align 4
  tail call void @kfree(ptr noundef %43) #10
  %inc.i21 = add nuw nsw i32 %i.04.i, 1
  %44 = load i32, ptr @dlm_local_count, align 4
  %cmp.i22 = icmp slt i32 %inc.i21, %44
  br i1 %cmp.i22, label %for.body.i.for.body.i_crit_edge, label %for.body.i.deinit_local.exit_crit_edge

for.body.i.deinit_local.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %deinit_local.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

deinit_local.exit:                                ; preds = %for.body.i.deinit_local.exit_crit_edge, %work_stop.exit.deinit_local.exit_crit_edge
  store ptr null, ptr @dlm_proto_ops, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_lowcomms_start() local_unnamed_addr #0 align 64 {
entry:
  %sock.i = alloca ptr, align 4
  %sas.i = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @connection_hash, i32 0, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %sas.i) #10
  %1 = call ptr @memset(ptr %sas.i, i32 255, i32 128)
  store i32 0, ptr @dlm_local_count, align 4
  %call.i = call i32 @dlm_our_addr(ptr noundef nonnull %sas.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.init_local.exitthread-pre-split_crit_edge

entry.init_local.exitthread-pre-split_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_local.exitthread-pre-split

if.end.i:                                         ; preds = %entry
  %call1.i = call ptr @kmemdup(ptr noundef nonnull %sas.i, i32 noundef 128, i32 noundef 3136) #10
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.init_local.exitthread-pre-split_crit_edge, label %if.end4.i

if.end.i.init_local.exitthread-pre-split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_local.exitthread-pre-split

if.end4.i:                                        ; preds = %if.end.i
  %2 = load i32, ptr @dlm_local_count, align 4
  %inc.i = add i32 %2, 1
  store i32 %inc.i, ptr @dlm_local_count, align 4
  %arrayidx.i = getelementptr [3 x ptr], ptr @dlm_local_addr, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1.i, ptr %arrayidx.i, align 4
  %call.1.i = call i32 @dlm_our_addr(ptr noundef nonnull %sas.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %if.end4.i.init_local.exitthread-pre-split_crit_edge

if.end4.i.init_local.exitthread-pre-split_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_local.exitthread-pre-split

if.end.1.i:                                       ; preds = %if.end4.i
  %call1.1.i = call ptr @kmemdup(ptr noundef nonnull %sas.i, i32 noundef 128, i32 noundef 3136) #10
  %tobool2.not.1.i = icmp eq ptr %call1.1.i, null
  br i1 %tobool2.not.1.i, label %if.end.1.i.init_local.exitthread-pre-split_crit_edge, label %if.end4.1.i

if.end.1.i.init_local.exitthread-pre-split_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_local.exitthread-pre-split

if.end4.1.i:                                      ; preds = %if.end.1.i
  %4 = load i32, ptr @dlm_local_count, align 4
  %inc.1.i = add i32 %4, 1
  store i32 %inc.1.i, ptr @dlm_local_count, align 4
  %arrayidx.1.i = getelementptr [3 x ptr], ptr @dlm_local_addr, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.1.i, ptr %arrayidx.1.i, align 4
  %call.2.i = call i32 @dlm_our_addr(ptr noundef nonnull %sas.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.2.i, label %if.end4.1.i.init_local.exitthread-pre-split_crit_edge

if.end4.1.i.init_local.exitthread-pre-split_crit_edge: ; preds = %if.end4.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_local.exitthread-pre-split

if.end.2.i:                                       ; preds = %if.end4.1.i
  %call1.2.i = call ptr @kmemdup(ptr noundef nonnull %sas.i, i32 noundef 128, i32 noundef 3136) #10
  %tobool2.not.2.i = icmp eq ptr %call1.2.i, null
  br i1 %tobool2.not.2.i, label %if.end.2.i.init_local.exitthread-pre-split_crit_edge, label %if.end4.2.i

if.end.2.i.init_local.exitthread-pre-split_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_local.exitthread-pre-split

if.end4.2.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = load i32, ptr @dlm_local_count, align 4
  %inc.2.i = add i32 %6, 1
  store i32 %inc.2.i, ptr @dlm_local_count, align 4
  %arrayidx.2.i = getelementptr [3 x ptr], ptr @dlm_local_addr, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1.2.i, ptr %arrayidx.2.i, align 4
  br label %init_local.exit

init_local.exitthread-pre-split:                  ; preds = %if.end.2.i.init_local.exitthread-pre-split_crit_edge, %if.end4.1.i.init_local.exitthread-pre-split_crit_edge, %if.end.1.i.init_local.exitthread-pre-split_crit_edge, %if.end4.i.init_local.exitthread-pre-split_crit_edge, %if.end.i.init_local.exitthread-pre-split_crit_edge, %entry.init_local.exitthread-pre-split_crit_edge
  %.pr = load i32, ptr @dlm_local_count, align 4
  br label %init_local.exit

init_local.exit:                                  ; preds = %init_local.exitthread-pre-split, %if.end4.2.i
  %8 = phi i32 [ %.pr, %init_local.exitthread-pre-split ], [ %inc.2.i, %if.end4.2.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sas.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %do.body1

if.then:                                          ; preds = %init_local.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  br label %cleanup

do.body1:                                         ; preds = %init_local.exit
  call void @__init_work(ptr noundef getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1), i32 noundef 0) #10
  store i32 -64, ptr getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1), align 4
  call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1, i32 3), ptr noundef nonnull @.str.9, ptr noundef nonnull @dlm_lowcomms_start.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  store volatile ptr getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1, i32 1), ptr getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1, i32 1), align 4
  store ptr getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1, i32 1), ptr getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1, i32 1, i32 1), align 4
  store ptr @process_listen_recv_socket, ptr getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1, i32 2), align 4
  %call.i23 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.82, i32 noundef 655370, i32 noundef 1) #10
  store ptr %call.i23, ptr @recv_workqueue, align 4
  %tobool.not.i24 = icmp eq ptr %call.i23, null
  br i1 %tobool.not.i24, label %do.end.i, label %if.end.i26

do.end.i:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #14
  br label %fail_local

if.end.i26:                                       ; preds = %do.body1
  %call2.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.85, i32 noundef 655370, i32 noundef 1) #10
  store ptr %call2.i, ptr @send_workqueue, align 4
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.end6.i, label %if.end7

do.end6.i:                                        ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #14
  %9 = load ptr, ptr @recv_workqueue, align 4
  call void @destroy_workqueue(ptr noundef %9) #10
  store ptr null, ptr @recv_workqueue, align 4
  br label %fail_local

if.end7:                                          ; preds = %if.end.i26
  store i32 1, ptr @dlm_allow_conn, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 8) to i32))
  %10 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 8), align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %10, label %do.end11 [
    i32 0, label %if.end7.sw.epilog_crit_edge
    i32 1, label %sw.bb8
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %10) #14
  br label %fail_proto_ops

sw.epilog:                                        ; preds = %sw.bb8, %if.end7.sw.epilog_crit_edge
  %storemerge = phi ptr [ @dlm_sctp_ops, %sw.bb8 ], [ @dlm_tcp_ops, %if.end7.sw.epilog_crit_edge ]
  store ptr %storemerge, ptr @dlm_proto_ops, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock.i) #10
  %12 = ptrtoint ptr %sock.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock.i, align 4, !annotation !261
  %name.i = getelementptr inbounds %struct.dlm_proto_ops, ptr %storemerge, i32 0, i32 1
  %13 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name.i, align 4
  %call.i27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %14) #14
  %15 = load ptr, ptr @dlm_proto_ops, align 4
  %listen_validate.i = getelementptr inbounds %struct.dlm_proto_ops, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %listen_validate.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %listen_validate.i, align 4
  %call1.i28 = call i32 %17() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %cmp.i = icmp slt i32 %call1.i28, 0
  br i1 %cmp.i, label %sw.epilog.fail_listen_crit_edge, label %if.end.i30

sw.epilog.fail_listen_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_listen

if.end.i30:                                       ; preds = %sw.epilog
  %18 = load ptr, ptr @dlm_local_addr, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 4
  %conv.i = zext i16 %20 to i32
  %21 = load ptr, ptr @dlm_proto_ops, align 4
  %proto.i = getelementptr inbounds %struct.dlm_proto_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %proto.i, align 4
  %call2.i29 = call i32 @sock_create_kern(ptr noundef nonnull @init_net, i32 noundef %conv.i, i32 noundef 1, i32 noundef %23, ptr noundef nonnull %sock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29)
  %cmp3.i = icmp slt i32 %call2.i29, 0
  br i1 %cmp3.i, label %do.end8.i, label %if.end11.i

do.end8.i:                                        ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %call2.i29) #14
  br label %out.i

if.end11.i:                                       ; preds = %if.end.i30
  %24 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sock.i, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sk.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 9) to i32))
  %28 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 9), align 4
  call void @sock_set_mark(ptr noundef %27, i32 noundef %28) #10
  %29 = load ptr, ptr @dlm_proto_ops, align 4
  %listen_sockopts.i = getelementptr inbounds %struct.dlm_proto_ops, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %listen_sockopts.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %listen_sockopts.i, align 4
  %32 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sock.i, align 4
  call void %31(ptr noundef %33) #10
  %34 = load ptr, ptr @dlm_proto_ops, align 4
  %listen_bind.i = getelementptr inbounds %struct.dlm_proto_ops, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %listen_bind.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %listen_bind.i, align 4
  %37 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sock.i, align 4
  %call12.i = call i32 %36(ptr noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end11.i.out.i_crit_edge, label %if.end16.i

if.end11.i.out.i_crit_edge:                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end16.i:                                       ; preds = %if.end11.i
  %39 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sock.i, align 4
  %sk1.i.i = getelementptr inbounds %struct.socket, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %sk1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sk1.i.i, align 16
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 77
  %43 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sk_data_ready.i.i, align 8
  store ptr %44, ptr @listen_sock.1, align 4
  %sk_state_change.i.i = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 76
  %45 = ptrtoint ptr %sk_state_change.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sk_state_change.i.i, align 4
  store ptr %46, ptr @listen_sock.2, align 4
  %sk_write_space.i.i = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 78
  %47 = ptrtoint ptr %sk_write_space.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sk_write_space.i.i, align 4
  store ptr %48, ptr @listen_sock.3, align 4
  %sk_error_report.i.i = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 79
  %49 = ptrtoint ptr %sk_error_report.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sk_error_report.i.i, align 8
  store ptr %50, ptr @listen_sock.0, align 4
  call void @lock_sock_nested(ptr noundef %42, i32 noundef 0) #10
  %51 = ptrtoint ptr %sk1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sk1.i.i, align 16
  %sk_data_ready.i.i.i = getelementptr inbounds %struct.sock, ptr %52, i32 0, i32 77
  %53 = ptrtoint ptr %sk_data_ready.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sk_data_ready.i.i.i, align 8
  store ptr %54, ptr @listen_sock.1, align 4
  %sk_state_change.i.i.i = getelementptr inbounds %struct.sock, ptr %52, i32 0, i32 76
  %55 = ptrtoint ptr %sk_state_change.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sk_state_change.i.i.i, align 4
  store ptr %56, ptr @listen_sock.2, align 4
  %sk_write_space.i.i.i = getelementptr inbounds %struct.sock, ptr %52, i32 0, i32 78
  %57 = ptrtoint ptr %sk_write_space.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sk_write_space.i.i.i, align 4
  store ptr %58, ptr @listen_sock.3, align 4
  %sk_error_report.i.i.i = getelementptr inbounds %struct.sock, ptr %52, i32 0, i32 79
  %59 = ptrtoint ptr %sk_error_report.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sk_error_report.i.i.i, align 8
  store ptr %60, ptr @listen_sock.0, align 4
  store ptr %40, ptr @listen_con, align 4
  %sk_user_data.i.i = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 72
  %61 = ptrtoint ptr %sk_user_data.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @listen_con, ptr %sk_user_data.i.i, align 4
  %sk_allocation.i.i = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 41
  %62 = ptrtoint ptr %sk_allocation.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3136, ptr %sk_allocation.i.i, align 8
  %63 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @lowcomms_listen_data_ready, ptr %sk_data_ready.i.i, align 8
  call void @release_sock(ptr noundef %42) #10
  call void @__init_work(ptr noundef getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1), i32 noundef 0) #10
  store i32 -64, ptr getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1), align 4
  call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1, i32 3), ptr noundef nonnull @.str.9, ptr noundef nonnull @dlm_listen_for_all.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  store volatile ptr getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1, i32 1), ptr getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1, i32 1), align 4
  store ptr getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1, i32 1), ptr getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1, i32 1, i32 1), align 4
  store ptr @process_listen_recv_socket, ptr getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1, i32 2), align 4
  %64 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sock.i, align 4
  %ops.i = getelementptr inbounds %struct.socket, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i, align 4
  %listen.i = getelementptr inbounds %struct.proto_ops, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %listen.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %listen.i, align 4
  %call20.i = call i32 %69(ptr noundef %65, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %if.then23.i, label %dlm_listen_for_all.exit

if.then23.i:                                      ; preds = %if.end16.i
  %70 = load ptr, ptr @listen_con, align 4
  %tobool.not.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i, label %if.then23.i.out.i_crit_edge, label %if.then.i.i

if.then23.i.out.i_crit_edge:                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then.i.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  %sk1.i.i.i = getelementptr inbounds %struct.socket, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %sk1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sk1.i.i.i, align 16
  call void @lock_sock_nested(ptr noundef %72, i32 noundef 0) #10
  %sk_user_data.i.i.i = getelementptr inbounds %struct.sock, ptr %72, i32 0, i32 72
  %73 = ptrtoint ptr %sk_user_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %sk_user_data.i.i.i, align 4
  %74 = load ptr, ptr @listen_sock.1, align 4
  %sk_data_ready.i.i34.i = getelementptr inbounds %struct.sock, ptr %72, i32 0, i32 77
  %75 = ptrtoint ptr %sk_data_ready.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %sk_data_ready.i.i34.i, align 8
  %76 = load ptr, ptr @listen_sock.2, align 4
  %sk_state_change.i.i35.i = getelementptr inbounds %struct.sock, ptr %72, i32 0, i32 76
  %77 = ptrtoint ptr %sk_state_change.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %sk_state_change.i.i35.i, align 4
  %78 = load ptr, ptr @listen_sock.3, align 4
  %sk_write_space.i.i36.i = getelementptr inbounds %struct.sock, ptr %72, i32 0, i32 78
  %79 = ptrtoint ptr %sk_write_space.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %sk_write_space.i.i36.i, align 4
  %80 = load ptr, ptr @listen_sock.0, align 4
  %sk_error_report.i.i37.i = getelementptr inbounds %struct.sock, ptr %72, i32 0, i32 79
  %81 = ptrtoint ptr %sk_error_report.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %sk_error_report.i.i37.i, align 8
  call void @release_sock(ptr noundef %72) #10
  %82 = load ptr, ptr @listen_con, align 4
  call void @sock_release(ptr noundef %82) #10
  store ptr null, ptr @listen_con, align 4
  br label %out.i

out.i:                                            ; preds = %if.then.i.i, %if.then23.i.out.i_crit_edge, %if.end11.i.out.i_crit_edge, %do.end8.i
  %result.0.i = phi i32 [ %call2.i29, %do.end8.i ], [ %call12.i, %if.end11.i.out.i_crit_edge ], [ %call20.i, %if.then23.i.out.i_crit_edge ], [ %call20.i, %if.then.i.i ]
  %83 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sock.i, align 4
  call void @sock_release(ptr noundef %84) #10
  br label %fail_listen

dlm_listen_for_all.exit:                          ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock.i) #10
  br label %cleanup

fail_listen:                                      ; preds = %out.i, %sw.epilog.fail_listen_crit_edge
  %retval.0.i31.ph = phi i32 [ %call1.i28, %sw.epilog.fail_listen_crit_edge ], [ %result.0.i, %out.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock.i) #10
  store ptr null, ptr @dlm_proto_ops, align 4
  br label %fail_proto_ops

fail_proto_ops:                                   ; preds = %fail_listen, %do.end11
  %error.0 = phi i32 [ -22, %do.end11 ], [ %retval.0.i31.ph, %fail_listen ]
  store i32 0, ptr @dlm_allow_conn, align 4
  %85 = load ptr, ptr @listen_con, align 4
  %tobool.not.i32 = icmp eq ptr %85, null
  br i1 %tobool.not.i32, label %fail_proto_ops.dlm_close_sock.exit_crit_edge, label %if.then.i

fail_proto_ops.dlm_close_sock.exit_crit_edge:     ; preds = %fail_proto_ops
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_close_sock.exit

if.then.i:                                        ; preds = %fail_proto_ops
  call void @__sanitizer_cov_trace_pc() #12
  %sk1.i.i33 = getelementptr inbounds %struct.socket, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %sk1.i.i33 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sk1.i.i33, align 16
  call void @lock_sock_nested(ptr noundef %87, i32 noundef 0) #10
  %sk_user_data.i.i34 = getelementptr inbounds %struct.sock, ptr %87, i32 0, i32 72
  %88 = ptrtoint ptr %sk_user_data.i.i34 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %sk_user_data.i.i34, align 4
  %89 = load ptr, ptr @listen_sock.1, align 4
  %sk_data_ready.i.i35 = getelementptr inbounds %struct.sock, ptr %87, i32 0, i32 77
  %90 = ptrtoint ptr %sk_data_ready.i.i35 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %sk_data_ready.i.i35, align 8
  %91 = load ptr, ptr @listen_sock.2, align 4
  %sk_state_change.i.i36 = getelementptr inbounds %struct.sock, ptr %87, i32 0, i32 76
  %92 = ptrtoint ptr %sk_state_change.i.i36 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %sk_state_change.i.i36, align 4
  %93 = load ptr, ptr @listen_sock.3, align 4
  %sk_write_space.i.i37 = getelementptr inbounds %struct.sock, ptr %87, i32 0, i32 78
  %94 = ptrtoint ptr %sk_write_space.i.i37 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %sk_write_space.i.i37, align 4
  %95 = load ptr, ptr @listen_sock.0, align 4
  %sk_error_report.i.i38 = getelementptr inbounds %struct.sock, ptr %87, i32 0, i32 79
  %96 = ptrtoint ptr %sk_error_report.i.i38 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %sk_error_report.i.i38, align 8
  call void @release_sock(ptr noundef %87) #10
  %97 = load ptr, ptr @listen_con, align 4
  call void @sock_release(ptr noundef %97) #10
  store ptr null, ptr @listen_con, align 4
  br label %dlm_close_sock.exit

dlm_close_sock.exit:                              ; preds = %if.then.i, %fail_proto_ops.dlm_close_sock.exit_crit_edge
  %98 = load ptr, ptr @recv_workqueue, align 4
  %tobool.not.i40 = icmp eq ptr %98, null
  br i1 %tobool.not.i40, label %dlm_close_sock.exit.if.end.i42_crit_edge, label %if.then.i41

dlm_close_sock.exit.if.end.i42_crit_edge:         ; preds = %dlm_close_sock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i42

if.then.i41:                                      ; preds = %dlm_close_sock.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @destroy_workqueue(ptr noundef nonnull %98) #10
  store ptr null, ptr @recv_workqueue, align 4
  br label %if.end.i42

if.end.i42:                                       ; preds = %if.then.i41, %dlm_close_sock.exit.if.end.i42_crit_edge
  %99 = load ptr, ptr @send_workqueue, align 4
  %tobool1.not.i = icmp eq ptr %99, null
  br i1 %tobool1.not.i, label %if.end.i42.fail_local_crit_edge, label %if.then2.i

if.end.i42.fail_local_crit_edge:                  ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_local

if.then2.i:                                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  call void @destroy_workqueue(ptr noundef nonnull %99) #10
  store ptr null, ptr @send_workqueue, align 4
  br label %fail_local

fail_local:                                       ; preds = %if.then2.i, %if.end.i42.fail_local_crit_edge, %do.end6.i, %do.end.i
  %error.1 = phi i32 [ %error.0, %if.end.i42.fail_local_crit_edge ], [ %error.0, %if.then2.i ], [ -12, %do.end6.i ], [ -12, %do.end.i ]
  %100 = load i32, ptr @dlm_local_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp3.i43 = icmp sgt i32 %100, 0
  br i1 %cmp3.i43, label %fail_local.for.body.i_crit_edge, label %fail_local.cleanup_crit_edge

fail_local.cleanup_crit_edge:                     ; preds = %fail_local
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fail_local.for.body.i_crit_edge:                  ; preds = %fail_local
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %fail_local.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i45, %for.body.i.for.body.i_crit_edge ], [ 0, %fail_local.for.body.i_crit_edge ]
  %arrayidx.i44 = getelementptr [3 x ptr], ptr @dlm_local_addr, i32 0, i32 %i.04.i
  %101 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i44, align 4
  call void @kfree(ptr noundef %102) #10
  %inc.i45 = add nuw nsw i32 %i.04.i, 1
  %103 = load i32, ptr @dlm_local_count, align 4
  %cmp.i46 = icmp slt i32 %inc.i45, %103
  br i1 %cmp.i46, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %fail_local.cleanup_crit_edge, %dlm_listen_for_all.exit, %if.then
  %retval.0 = phi i32 [ 0, %dlm_listen_for_all.exit ], [ -107, %if.then ], [ %error.1, %fail_local.cleanup_crit_edge ], [ %error.1, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @process_listen_recv_socket(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  %peeraddr.i = alloca %struct.__kernel_sockaddr_storage, align 4
  %newsock.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %peeraddr.i) #10
  %0 = call ptr @memset(ptr %peeraddr.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newsock.i) #10
  %1 = ptrtoint ptr %newsock.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %newsock.i, align 4, !annotation !261
  %2 = load ptr, ptr @listen_con, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.accept_from_sock.exit_crit_edge, label %if.end.i

entry.accept_from_sock.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %accept_from_sock.exit

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @kernel_accept(ptr noundef nonnull %2, ptr noundef nonnull %newsock.i, i32 noundef 2048) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.accept_err.i_crit_edge, label %if.end3.i

if.end.i.accept_err.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %accept_err.i

if.end3.i:                                        ; preds = %if.end.i
  %3 = call ptr @memset(ptr %peeraddr.i, i32 0, i32 128)
  %4 = ptrtoint ptr %newsock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %newsock.i, align 4
  %ops.i = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %getname.i = getelementptr inbounds %struct.proto_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %getname.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %getname.i, align 4
  %call4.i = call i32 %9(ptr noundef %5, ptr noundef nonnull %peeraddr.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end3.i.accept_err.i_crit_edge, label %if.end7.i

if.end3.i.accept_err.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %accept_err.i

if.end7.i:                                        ; preds = %if.end3.i
  %10 = load ptr, ptr @dlm_local_addr, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 4
  %13 = ptrtoint ptr %peeraddr.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %peeraddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %cmp.i.i = icmp eq i16 %12, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin_port.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %peeraddr.i, i32 0, i32 1
  %14 = ptrtoint ptr %sin_port.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %sin_port.i.i, align 2
  %__pad.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %peeraddr.i, i32 0, i32 3
  %15 = ptrtoint ptr %__pad.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 0, ptr %__pad.i.i, align 4
  br label %make_sockaddr.exit.i

if.else.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_port.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %peeraddr.i, i32 0, i32 1
  %16 = ptrtoint ptr %sin6_port.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %sin6_port.i.i, align 2
  br label %make_sockaddr.exit.i

make_sockaddr.exit.i:                             ; preds = %if.else.i.i, %if.then.i.i
  %len.0.i = phi i32 [ 16, %if.then.i.i ], [ 28, %if.else.i.i ]
  %add.ptr.i.i = getelementptr i8, ptr %peeraddr.i, i32 %len.0.i
  %sub.i.i = sub nuw nsw i32 128, %len.0.i
  %17 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  %na.030.i.i = load ptr, ptr @dlm_node_addrs, align 4
  %cmp.not31.i.i = icmp eq ptr %na.030.i.i, @dlm_node_addrs
  br i1 %cmp.not31.i.i, label %make_sockaddr.exit.i.if.then10.i_crit_edge, label %for.body.lr.ph.i.i

make_sockaddr.exit.i.if.then10.i_crit_edge:       ; preds = %make_sockaddr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.i

for.body.lr.ph.i.i:                               ; preds = %make_sockaddr.exit.i
  %sin6_addr15.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %peeraddr.i, i32 0, i32 3
  %arrayidx6.i.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %peeraddr.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %arrayidx11.i.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %peeraddr.i, i32 0, i32 3, i32 0, i32 0, i32 2
  %arrayidx17.i.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %peeraddr.i, i32 0, i32 3, i32 0, i32 0, i32 3
  %sin6_port19.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %peeraddr.i, i32 0, i32 1
  %sin_addr1.i.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %peeraddr.i, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc11.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %na.032.i.i = phi ptr [ %na.030.i.i, %for.body.lr.ph.i.i ], [ %na.0.i.i, %for.inc11.i.i.for.body.i.i_crit_edge ]
  %addr_count.i.i = getelementptr inbounds %struct.dlm_node_addr, ptr %na.032.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %addr_count.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp328.i.i = icmp sgt i32 %19, 0
  br i1 %cmp328.i.i, label %for.body.i.i.for.body4.i.i_crit_edge, label %for.body.i.i.for.inc11.i.i_crit_edge

for.body.i.i.for.inc11.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc11.i.i

for.body.i.i.for.body4.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %for.body4.i.i

for.body4.i.i:                                    ; preds = %for.inc.i.i.for.body4.i.i_crit_edge, %for.body.i.i.for.body4.i.i_crit_edge
  %addr_i.029.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body4.i.i_crit_edge ], [ 0, %for.body.i.i.for.body4.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.dlm_node_addr, ptr %na.032.i.i, i32 0, i32 5, i32 %addr_i.029.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 4
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.110)
  switch i16 %23, label %for.body4.i.i.for.inc.i.i_crit_edge [
    i16 2, label %sw.bb.i.i.i
    i16 10, label %sw.bb12.i.i.i
  ]

for.body4.i.i.for.inc.i.i_crit_edge:              ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

sw.bb.i.i.i:                                      ; preds = %for.body4.i.i
  %sin_addr.i.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %21, i32 0, i32 2
  %25 = ptrtoint ptr %sin_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sin_addr.i.i.i, align 4
  %27 = ptrtoint ptr %sin_addr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sin_addr1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.not.i.i.i = icmp eq i32 %26, %28
  br i1 %cmp.not.i.i.i, label %cleanup.i.i.i, label %sw.bb.i.i.i.for.inc.i.i_crit_edge

sw.bb.i.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

cleanup.i.i.i:                                    ; preds = %sw.bb.i.i.i
  %sin_port.i.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %sin_port.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sin_port.i.i.i, align 2
  %31 = ptrtoint ptr %sin6_port19.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sin6_port19.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %32)
  %cmp7.not.i.i.i = icmp eq i16 %30, %32
  br i1 %cmp7.not.i.i.i, label %cleanup.i.i.i.do.end26.i_crit_edge, label %cleanup.i.i.i.for.inc.i.i_crit_edge

cleanup.i.i.i.for.inc.i.i_crit_edge:              ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

cleanup.i.i.i.do.end26.i_crit_edge:               ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26.i

sw.bb12.i.i.i:                                    ; preds = %for.body4.i.i
  %sin6_addr.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %21, i32 0, i32 3
  %33 = ptrtoint ptr %sin6_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sin6_addr.i.i.i, align 4
  %35 = ptrtoint ptr %sin6_addr15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sin6_addr15.i.i.i, align 4
  %xor.i.i.i.i = xor i32 %36, %34
  %arrayidx4.i.i.i.i = getelementptr %struct.sockaddr_in6, ptr %21, i32 0, i32 3, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx4.i.i.i.i, align 4
  %39 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx6.i.i.i.i, align 4
  %xor7.i.i.i.i = xor i32 %40, %38
  %or.i.i.i.i = or i32 %xor7.i.i.i.i, %xor.i.i.i.i
  %arrayidx9.i.i.i.i = getelementptr %struct.sockaddr_in6, ptr %21, i32 0, i32 3, i32 0, i32 0, i32 2
  %41 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx9.i.i.i.i, align 4
  %43 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx11.i.i.i.i, align 4
  %xor12.i.i.i.i = xor i32 %44, %42
  %or13.i.i.i.i = or i32 %or.i.i.i.i, %xor12.i.i.i.i
  %arrayidx15.i.i.i.i = getelementptr %struct.sockaddr_in6, ptr %21, i32 0, i32 3, i32 0, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx15.i.i.i.i, align 4
  %47 = ptrtoint ptr %arrayidx17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx17.i.i.i.i, align 4
  %xor18.i.i.i.i = xor i32 %48, %46
  %or19.i.i.i.i = or i32 %or13.i.i.i.i, %xor18.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or19.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %cleanup25.i.i.i, label %sw.bb12.i.i.i.for.inc.i.i_crit_edge

sw.bb12.i.i.i.for.inc.i.i_crit_edge:              ; preds = %sw.bb12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

cleanup25.i.i.i:                                  ; preds = %sw.bb12.i.i.i
  %sin6_port.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %21, i32 0, i32 1
  %49 = ptrtoint ptr %sin6_port.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sin6_port.i.i.i, align 2
  %51 = ptrtoint ptr %sin6_port19.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sin6_port19.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %52)
  %cmp21.not.i.i.i = icmp eq i16 %50, %52
  br i1 %cmp21.not.i.i.i, label %cleanup25.i.i.i.do.end26.i_crit_edge, label %cleanup25.i.i.i.for.inc.i.i_crit_edge

cleanup25.i.i.i.for.inc.i.i_crit_edge:            ; preds = %cleanup25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

cleanup25.i.i.i.do.end26.i_crit_edge:             ; preds = %cleanup25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26.i

for.inc.i.i:                                      ; preds = %cleanup25.i.i.i.for.inc.i.i_crit_edge, %sw.bb12.i.i.i.for.inc.i.i_crit_edge, %cleanup.i.i.i.for.inc.i.i_crit_edge, %sw.bb.i.i.i.for.inc.i.i_crit_edge, %for.body4.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %addr_i.029.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %19
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.inc11.i.i_crit_edge, label %for.inc.i.i.for.body4.i.i_crit_edge

for.inc.i.i.for.body4.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i.i

for.inc.i.i.for.inc11.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc11.i.i

for.inc11.i.i:                                    ; preds = %for.inc.i.i.for.inc11.i.i_crit_edge, %for.body.i.i.for.inc11.i.i_crit_edge
  %53 = ptrtoint ptr %na.032.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %na.0.i.i = load ptr, ptr %na.032.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %na.0.i.i, @dlm_node_addrs
  br i1 %cmp.not.i.i, label %for.inc11.i.i.if.then10.i_crit_edge, label %for.inc11.i.i.for.body.i.i_crit_edge

for.inc11.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc11.i.i.if.then10.i_crit_edge:              ; preds = %for.inc11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.i

if.then10.i:                                      ; preds = %for.inc11.i.i.if.then10.i_crit_edge, %make_sockaddr.exit.i.if.then10.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  %54 = ptrtoint ptr %peeraddr.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %peeraddr.i, align 4
  %56 = zext i16 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.111)
  switch i16 %55, label %do.end20.i [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb12.i
  ]

sw.bb.i:                                          ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %peeraddr.i, i32 0, i32 2
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %sin_addr.i) #14
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %peeraddr.i, i32 0, i32 3
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %sin6_addr.i) #14
  br label %sw.epilog.i

do.end20.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #14
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end20.i, %sw.bb12.i, %sw.bb.i
  %57 = ptrtoint ptr %newsock.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %newsock.i, align 4
  call void @sock_release(ptr noundef %58) #10
  br label %accept_from_sock.exit

do.end26.i:                                       ; preds = %cleanup25.i.i.i.do.end26.i_crit_edge, %cleanup.i.i.i.do.end26.i_crit_edge
  %nodeid8.i.i = getelementptr inbounds %struct.dlm_node_addr, ptr %na.032.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %nodeid8.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nodeid8.i.i, align 4
  %mark9.i.i = getelementptr inbounds %struct.dlm_node_addr, ptr %na.032.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %mark9.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mark9.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %60) #14
  %call.i.i = call i32 @__srcu_read_lock(ptr noundef nonnull @connections_srcu) #10
  call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16)) #10
  %call30.i = call fastcc ptr @nodeid2con(i32 noundef %60, i32 noundef 3136) #10
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %do.end26.i.accept_err.sink.split.i_crit_edge, label %if.end33.i

do.end26.i.accept_err.sink.split.i_crit_edge:     ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %accept_err.sink.split.i

if.end33.i:                                       ; preds = %do.end26.i
  %63 = ptrtoint ptr %newsock.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %newsock.i, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sk.i, align 16
  call void @sock_set_mark(ptr noundef %66, i32 noundef %62) #10
  %sock_mutex.i = getelementptr inbounds %struct.connection, ptr %call30.i, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %sock_mutex.i, i32 noundef 0) #10
  %67 = ptrtoint ptr %call30.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call30.i, align 4
  %tobool35.not.i = icmp eq ptr %68, null
  br i1 %tobool35.not.i, label %if.else67.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.end33.i
  %othercon37.i = getelementptr inbounds %struct.connection, ptr %call30.i, i32 0, i32 9
  %69 = ptrtoint ptr %othercon37.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %othercon37.i, align 4
  %tobool38.not.i = icmp eq ptr %70, null
  br i1 %tobool38.not.i, label %if.then39.i, label %if.else.i

if.then39.i:                                      ; preds = %if.then36.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %71 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3392, i32 noundef 340) #13
  %tobool41.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool41.not.i, label %do.end45.i, label %if.end49.i

do.end45.i:                                       ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #14
  br label %accept_err.sink.split.sink.split.i

if.end49.i:                                       ; preds = %if.then39.i
  %call50.i = call fastcc i32 @dlm_con_init(ptr noundef nonnull %call7.i.i.i, i32 noundef %60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp51.i = icmp slt i32 %call50.i, 0
  br i1 %cmp51.i, label %if.then53.i, label %if.end55.i

if.then53.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %accept_err.sink.split.sink.split.i

if.end55.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  %dep_map.i = getelementptr inbounds %struct.connection, ptr %call7.i.i.i, i32 0, i32 2, i32 5
  %72 = ptrtoint ptr %dep_map.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dep_map.i, align 8
  %wait_type_inner.i = getelementptr inbounds %struct.connection, ptr %call7.i.i.i, i32 0, i32 2, i32 5, i32 4
  %74 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %wait_type_inner.i, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.78, ptr noundef %73, i32 noundef 1, i8 noundef zeroext %75, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %flags.i = getelementptr inbounds %struct.connection, ptr %call7.i.i.i, i32 0, i32 3
  call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #10
  %76 = ptrtoint ptr %othercon37.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i.i, ptr %othercon37.i, align 4
  %sendcon.i = getelementptr inbounds %struct.connection, ptr %call7.i.i.i, i32 0, i32 10
  %77 = ptrtoint ptr %sendcon.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call30.i, ptr %sendcon.i, align 8
  br label %cleanup.i

if.else.i:                                        ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @close_connection(ptr noundef nonnull %70, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.end55.i
  %othercon.0.i = phi ptr [ %70, %if.else.i ], [ %call7.i.i.i, %if.end55.i ]
  %sock_mutex65.i = getelementptr inbounds %struct.connection, ptr %othercon.0.i, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %sock_mutex65.i, i32 noundef 0) #10
  %78 = ptrtoint ptr %newsock.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %newsock.i, align 4
  %sk1.i7 = getelementptr inbounds %struct.socket, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %sk1.i7 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sk1.i7, align 16
  call void @lock_sock_nested(ptr noundef %81, i32 noundef 0) #10
  %82 = ptrtoint ptr %othercon.0.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %othercon.0.i, align 4
  %sk_user_data.i8 = getelementptr inbounds %struct.sock, ptr %81, i32 0, i32 72
  %83 = ptrtoint ptr %sk_user_data.i8 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %othercon.0.i, ptr %sk_user_data.i8, align 4
  %sk_data_ready.i9 = getelementptr inbounds %struct.sock, ptr %81, i32 0, i32 77
  %84 = ptrtoint ptr %sk_data_ready.i9 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @lowcomms_data_ready, ptr %sk_data_ready.i9, align 8
  %sk_write_space.i10 = getelementptr inbounds %struct.sock, ptr %81, i32 0, i32 78
  %85 = ptrtoint ptr %sk_write_space.i10 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @lowcomms_write_space, ptr %sk_write_space.i10, align 4
  %sk_state_change.i11 = getelementptr inbounds %struct.sock, ptr %81, i32 0, i32 76
  %86 = ptrtoint ptr %sk_state_change.i11 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @lowcomms_state_change, ptr %sk_state_change.i11, align 4
  %sk_allocation.i12 = getelementptr inbounds %struct.sock, ptr %81, i32 0, i32 41
  %87 = ptrtoint ptr %sk_allocation.i12 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 3136, ptr %sk_allocation.i12, align 8
  %sk_error_report.i13 = getelementptr inbounds %struct.sock, ptr %81, i32 0, i32 79
  %88 = ptrtoint ptr %sk_error_report.i13 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @lowcomms_error_report, ptr %sk_error_report.i13, align 8
  call void @release_sock(ptr noundef %81) #10
  call void @mutex_unlock(ptr noundef %sock_mutex65.i) #10
  br label %if.end68.i

if.else67.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %newsock.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %newsock.i, align 4
  %sk1.i = getelementptr inbounds %struct.socket, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sk1.i, align 16
  call void @lock_sock_nested(ptr noundef %92, i32 noundef 0) #10
  %93 = ptrtoint ptr %call30.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %call30.i, align 4
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %92, i32 0, i32 72
  %94 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call30.i, ptr %sk_user_data.i, align 4
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %92, i32 0, i32 77
  %95 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @lowcomms_data_ready, ptr %sk_data_ready.i, align 8
  %sk_write_space.i = getelementptr inbounds %struct.sock, ptr %92, i32 0, i32 78
  %96 = ptrtoint ptr %sk_write_space.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @lowcomms_write_space, ptr %sk_write_space.i, align 4
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %92, i32 0, i32 76
  %97 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @lowcomms_state_change, ptr %sk_state_change.i, align 4
  %sk_allocation.i = getelementptr inbounds %struct.sock, ptr %92, i32 0, i32 41
  %98 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 3136, ptr %sk_allocation.i, align 8
  %sk_error_report.i = getelementptr inbounds %struct.sock, ptr %92, i32 0, i32 79
  %99 = ptrtoint ptr %sk_error_report.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @lowcomms_error_report, ptr %sk_error_report.i, align 8
  call void @release_sock(ptr noundef %92) #10
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.else67.i, %cleanup.i
  %addcon.1.i = phi ptr [ %othercon.0.i, %cleanup.i ], [ %call30.i, %if.else67.i ]
  %flags69.i = getelementptr inbounds %struct.connection, ptr %addcon.1.i, i32 0, i32 3
  call void @_set_bit(i32 noundef 10, ptr noundef %flags69.i) #10
  call void @mutex_unlock(ptr noundef %sock_mutex.i) #10
  %call72.i = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags69.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %if.then74.i, label %if.end68.i.if.end76.i_crit_edge

if.end68.i.if.end76.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.i

if.then74.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = load ptr, ptr @recv_workqueue, align 4
  %rwork.i = getelementptr inbounds %struct.connection, ptr %addcon.1.i, i32 0, i32 11
  %call.i2.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %100, ptr noundef %rwork.i) #10
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then74.i, %if.end68.i.if.end76.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i2 = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i2, label %if.end76.i.srcu_read_unlock.exit6_crit_edge, label %land.rhs.i4

if.end76.i.srcu_read_unlock.exit6_crit_edge:      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit6

land.rhs.i4:                                      ; preds = %if.end76.i
  %.b1.i3 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i3, label %land.rhs.i4.srcu_read_unlock.exit6_crit_edge, label %if.then.i5, !prof !252

land.rhs.i4.srcu_read_unlock.exit6_crit_edge:     ; preds = %land.rhs.i4
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit6

if.then.i5:                                       ; preds = %land.rhs.i4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 189, i32 noundef 9, ptr noundef null) #10
  br label %srcu_read_unlock.exit6

srcu_read_unlock.exit6:                           ; preds = %if.then.i5, %land.rhs.i4.srcu_read_unlock.exit6_crit_edge, %if.end76.i.srcu_read_unlock.exit6_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16)) #10
  call void @__srcu_read_unlock(ptr noundef nonnull @connections_srcu, i32 noundef %call.i.i) #10
  br label %accept_from_sock.exit

accept_err.sink.split.sink.split.i:               ; preds = %if.then53.i, %do.end45.i
  %result.2.ph.ph.i = phi i32 [ -12, %do.end45.i ], [ %call50.i, %if.then53.i ]
  call void @mutex_unlock(ptr noundef %sock_mutex.i) #10
  br label %accept_err.sink.split.i

accept_err.sink.split.i:                          ; preds = %accept_err.sink.split.sink.split.i, %do.end26.i.accept_err.sink.split.i_crit_edge
  %result.2.ph.i = phi i32 [ -12, %do.end26.i.accept_err.sink.split.i_crit_edge ], [ %result.2.ph.ph.i, %accept_err.sink.split.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i1 = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i1, label %accept_err.sink.split.i.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

accept_err.sink.split.i.srcu_read_unlock.exit_crit_edge: ; preds = %accept_err.sink.split.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %accept_err.sink.split.i
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !252

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 189, i32 noundef 9, ptr noundef null) #10
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %accept_err.sink.split.i.srcu_read_unlock.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16)) #10
  call void @__srcu_read_unlock(ptr noundef nonnull @connections_srcu, i32 noundef %call.i.i) #10
  br label %accept_err.i

accept_err.i:                                     ; preds = %srcu_read_unlock.exit, %if.end3.i.accept_err.i_crit_edge, %if.end.i.accept_err.i_crit_edge
  %result.2.i = phi i32 [ %call.i, %if.end.i.accept_err.i_crit_edge ], [ -103, %if.end3.i.accept_err.i_crit_edge ], [ %result.2.ph.i, %srcu_read_unlock.exit ]
  %101 = ptrtoint ptr %newsock.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %newsock.i, align 4
  %tobool77.not.i = icmp eq ptr %102, null
  br i1 %tobool77.not.i, label %accept_err.i.if.end79.i_crit_edge, label %if.then78.i

accept_err.i.if.end79.i_crit_edge:                ; preds = %accept_err.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79.i

if.then78.i:                                      ; preds = %accept_err.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @sock_release(ptr noundef nonnull %102) #10
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then78.i, %accept_err.i.if.end79.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %result.2.i)
  %cmp80.not.i = icmp eq i32 %result.2.i, -11
  br i1 %cmp80.not.i, label %if.end79.i.accept_from_sock.exit_crit_edge, label %do.end85.i

if.end79.i.accept_from_sock.exit_crit_edge:       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %accept_from_sock.exit

do.end85.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  %call87.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %result.2.i) #14
  br label %accept_from_sock.exit

accept_from_sock.exit:                            ; preds = %do.end85.i, %if.end79.i.accept_from_sock.exit_crit_edge, %srcu_read_unlock.exit6, %sw.epilog.i, %entry.accept_from_sock.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newsock.i) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %peeraddr.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lowcomms_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  %0 = load ptr, ptr @dlm_node_addrs, align 4
  %cmp.not23 = icmp eq ptr %0, @dlm_node_addrs
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %while.end.for.body_crit_edge, %entry.for.body_crit_edge
  %na.024 = phi ptr [ %safe.027, %while.end.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %na.024 to i32
  call void @__asan_load4_noabort(i32 %1)
  %safe.027 = load ptr, ptr %na.024, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %na.024) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %na.024, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %na.024 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %na.024, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %na.024 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %na.024, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %na.024, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %addr_count = getelementptr inbounds %struct.dlm_node_addr, ptr %na.024, i32 0, i32 3
  %10 = ptrtoint ptr %addr_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr_count, align 4
  %dec19 = add i32 %11, -1
  store i32 %dec19, ptr %addr_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not20 = icmp eq i32 %11, 0
  br i1 %tobool.not20, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %list_del.exit.while.body_crit_edge
  %dec21 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec19, %list_del.exit.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.dlm_node_addr, ptr %na.024, i32 0, i32 5, i32 %dec21
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %13) #10
  %14 = ptrtoint ptr %addr_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr_count, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %addr_count, align 4
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %list_del.exit.while.end_crit_edge
  tail call void @kfree(ptr noundef %na.024) #10
  %cmp.not = icmp eq ptr %safe.027, @dlm_node_addrs
  br i1 %cmp.not, label %while.end.for.end_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %while.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlm_con_init(ptr noundef %con, i32 noundef %nodeid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 1), align 4
  %rx_buflen = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 15
  %1 = ptrtoint ptr %rx_buflen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %rx_buflen, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3136) #15
  %rx_buf = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 14
  %2 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %nodeid3 = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 1
  %3 = ptrtoint ptr %nodeid3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %nodeid, ptr %nodeid3, align 4
  %sock_mutex = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %sock_mutex, ptr noundef nonnull @.str.19, ptr noundef nonnull @dlm_con_init.__key) #10
  %writequeue = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 4
  %4 = ptrtoint ptr %writequeue to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %writequeue, ptr %writequeue, align 4
  %prev.i = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %writequeue, ptr %prev.i, align 4
  %writequeue_lock = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %writequeue_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @dlm_con_init.__key.20, i16 noundef signext 3) #10
  %writequeue_cnt = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %writequeue_cnt, i32 noundef 4) #10
  %6 = ptrtoint ptr %writequeue_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %writequeue_cnt, align 4
  %swork = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 12
  tail call void @__init_work(ptr noundef %swork, i32 noundef 0) #10
  %7 = ptrtoint ptr %swork to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %swork, align 4
  %lockdep_map = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.23, ptr noundef nonnull @dlm_con_init.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry11 = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i47 = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 12, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry11, ptr %prev.i47, align 4
  %func = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 12, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @process_send_sockets, ptr %func, align 4
  %rwork = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 11
  tail call void @__init_work(ptr noundef %rwork, i32 noundef 0) #10
  %11 = ptrtoint ptr %rwork to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %rwork, align 4
  %lockdep_map20 = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map20, ptr noundef nonnull @.str.25, ptr noundef nonnull @dlm_con_init.__key.24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry22 = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i48 = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 11, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry22, ptr %prev.i48, align 4
  %func24 = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %func24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @process_recv_sockets, ptr %func24, align 4
  %shutdown_wait = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %shutdown_wait, ptr noundef nonnull @.str.27, ptr noundef nonnull @dlm_con_init.__key.26) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @process_send_sockets(ptr noundef %work) #0 align 64 {
entry:
  %sas.sroa.6.i.i = alloca [16 x i8], align 4
  %sas.sroa.7.i.i = alloca [104 x i8], align 4
  %addr.i = alloca %struct.__kernel_sockaddr_storage, align 4
  %sock.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -224
  %flags = getelementptr i8, ptr %work, i32 -124
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !252

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1608, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  %call23 = tail call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end.if.end26_crit_edge, label %if.then25

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @close_connection(ptr noundef %add.ptr, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true)
  %nodeid = getelementptr i8, ptr %work, i32 -220
  %3 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nodeid, align 4
  tail call void @dlm_midcomms_unack_msg_resend(i32 noundef %4) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end.if.end26_crit_edge
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then27, label %if.end26.if.end34_crit_edge

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then27:                                        ; preds = %if.end26
  %call29 = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then27.if.end32_crit_edge, label %if.then31

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1000) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then27.if.end32_crit_edge
  %sock_mutex = getelementptr i8, ptr %work, i32 -216
  tail call void @mutex_lock_nested(ptr noundef %sock_mutex, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %addr.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock.i) #10
  %7 = ptrtoint ptr %sock.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock.i, align 4, !annotation !261
  %retries.i = getelementptr i8, ptr %work, i32 -64
  %8 = ptrtoint ptr %retries.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retries.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %retries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i = icmp sgt i32 %9, 3
  br i1 %cmp.i, label %if.end32.dlm_connect.exit_crit_edge, label %if.end.i

if.end32.dlm_connect.exit_crit_edge:              ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_connect.exit

if.end.i:                                         ; preds = %if.end32
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %11, null
  %nodeid4.i = getelementptr i8, ptr %work, i32 -220
  %12 = ptrtoint ptr %nodeid4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nodeid4.i, align 4
  br i1 %tobool.not.i, label %if.end3.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %13) #14
  br label %dlm_connect.exit

if.end3.i:                                        ; preds = %if.end.i
  %14 = load ptr, ptr @dlm_proto_ops, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool5.not.i = icmp eq i8 %16, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sas.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %sas.sroa.7.i.i)
  %17 = call ptr @memset(ptr %sas.sroa.6.i.i, i32 255, i32 16)
  %18 = call ptr @memset(ptr %sas.sroa.7.i.i, i32 255, i32 104)
  %19 = load i32, ptr @dlm_local_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.end3.i.do.end11.i_crit_edge, label %if.end.i.i

if.end3.i.do.end11.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11.i

if.end.i.i:                                       ; preds = %if.end3.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i.i
  %na.0.in.i.i.i = phi ptr [ @dlm_node_addrs, %if.end.i.i ], [ %na.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %20 = ptrtoint ptr %na.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %na.0.i.i.i = load ptr, ptr %na.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %na.0.i.i.i, @dlm_node_addrs
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.if.end13.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.end13.i.i_crit_edge:            ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %nodeid1.i.i.i = getelementptr inbounds %struct.dlm_node_addr, ptr %na.0.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %nodeid1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nodeid1.i.i.i, align 4
  %cmp2.i.i.i = icmp eq i32 %22, %13
  br i1 %cmp2.i.i.i, label %find_node_addr.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.i

find_node_addr.exit.i.i:                          ; preds = %for.body.i.i.i
  %tobool1.not.i.i = icmp eq ptr %na.0.i.i.i, null
  br i1 %tobool1.not.i.i, label %find_node_addr.exit.i.i.if.end13.i.i_crit_edge, label %land.lhs.true.i.i

find_node_addr.exit.i.i.if.end13.i.i_crit_edge:   ; preds = %find_node_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i.i

land.lhs.true.i.i:                                ; preds = %find_node_addr.exit.i.i
  %addr_count.i.i = getelementptr inbounds %struct.dlm_node_addr, ptr %na.0.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %addr_count.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool2.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end16.i.i_crit_edge, label %if.then3.i.i

land.lhs.true.i.i.if.end16.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i
  %curr_addr_index.i.i = getelementptr inbounds %struct.dlm_node_addr, ptr %na.0.i.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %curr_addr_index.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %curr_addr_index.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.dlm_node_addr, ptr %na.0.i.i.i, i32 0, i32 5, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %sas.sroa.0.0.copyload.i.i = load ptr, ptr %28, align 4
  %sas.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %28, i32 4
  %30 = ptrtoint ptr %sas.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %sas.sroa.5.0.copyload.i.i = load i32, ptr %sas.sroa.5.0..sroa_idx.i.i, align 4
  %sas.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %28, i32 8
  %31 = call ptr @memcpy(ptr %sas.sroa.6.i.i, ptr %sas.sroa.6.0..sroa_idx.i.i, i32 16)
  %sas.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %28, i32 24
  %32 = call ptr @memcpy(ptr %sas.sroa.7.i.i, ptr %sas.sroa.7.0..sroa_idx.i.i, i32 104)
  br i1 %tobool5.not.i, label %if.then3.i.i.if.end16.i.i_crit_edge, label %if.then5.i.i

if.then3.i.i.if.end16.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i

if.then5.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i.i = add i32 %26, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %24)
  %cmp.i.i = icmp eq i32 %inc.i.i, %24
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 0, i32 %inc.i.i
  %33 = ptrtoint ptr %curr_addr_index.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.store.select.i.i, ptr %curr_addr_index.i.i, align 4
  br label %if.end16.i.i

if.end13.i.i:                                     ; preds = %find_node_addr.exit.i.i.if.end13.i.i_crit_edge, %for.cond.i.i.i.if.end13.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  br label %do.end11.i

if.end16.i.i:                                     ; preds = %if.then5.i.i, %if.then3.i.i.if.end16.i.i_crit_edge, %land.lhs.true.i.i.if.end16.i.i_crit_edge
  %sas.sroa.0.0.ph.i.i = phi ptr [ %sas.sroa.0.0.copyload.i.i, %if.then5.i.i ], [ inttoptr (i32 -1 to ptr), %land.lhs.true.i.i.if.end16.i.i_crit_edge ], [ %sas.sroa.0.0.copyload.i.i, %if.then3.i.i.if.end16.i.i_crit_edge ]
  %sas.sroa.5.0.ph.i.i = phi i32 [ %sas.sroa.5.0.copyload.i.i, %if.then5.i.i ], [ -1, %land.lhs.true.i.i.if.end16.i.i_crit_edge ], [ %sas.sroa.5.0.copyload.i.i, %if.then3.i.i.if.end16.i.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_node_addrs_spin) #10
  %34 = ptrtoint ptr %addr_count.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool18.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool18.not.i.i, label %if.end16.i.i.do.end11.i_crit_edge, label %if.end15.i

if.end16.i.i.do.end11.i_crit_edge:                ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.end16.i.i.do.end11.i_crit_edge, %if.end13.i.i, %if.end3.i.do.end11.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sas.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %sas.sroa.7.i.i)
  %36 = ptrtoint ptr %nodeid4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nodeid4.i, align 4
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %37) #14
  br label %dlm_connect.exit

if.end15.i:                                       ; preds = %if.end16.i.i
  %mark21.i.i = getelementptr inbounds %struct.dlm_node_addr, ptr %na.0.i.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %mark21.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mark21.i.i, align 4
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %sas.sroa.0.0.ph.i.i, ptr %addr.i, align 4
  %sas.sroa.5.0.sas_out.sroa_idx.i.i = getelementptr inbounds i8, ptr %addr.i, i32 4
  %41 = ptrtoint ptr %sas.sroa.5.0.sas_out.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sas.sroa.5.0.ph.i.i, ptr %sas.sroa.5.0.sas_out.sroa_idx.i.i, align 4
  %sas.sroa.6.0.sas_out.sroa_idx.i.i = getelementptr inbounds i8, ptr %addr.i, i32 8
  %42 = call ptr @memcpy(ptr %sas.sroa.6.0.sas_out.sroa_idx.i.i, ptr %sas.sroa.6.i.i, i32 16)
  %sas.sroa.7.0.sas_out.sroa_idx.i.i = getelementptr inbounds i8, ptr %addr.i, i32 24
  %43 = call ptr @memcpy(ptr %sas.sroa.7.0.sas_out.sroa_idx.i.i, ptr %sas.sroa.7.i.i, i32 104)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sas.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %sas.sroa.7.i.i)
  %44 = load ptr, ptr @dlm_local_addr, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %44, align 4
  %conv.i = zext i16 %46 to i32
  %47 = load ptr, ptr @dlm_proto_ops, align 4
  %proto.i = getelementptr inbounds %struct.dlm_proto_ops, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %proto.i, align 4
  %call16.i = call i32 @sock_create_kern(ptr noundef nonnull @init_net, i32 noundef %conv.i, i32 noundef 1, i32 noundef %49, ptr noundef nonnull %sock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end15.i.socket_err.i_crit_edge, label %if.end20.i

if.end15.i.socket_err.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %socket_err.i

if.end20.i:                                       ; preds = %if.end15.i
  %50 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sock.i, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sk.i, align 16
  call void @sock_set_mark(ptr noundef %53, i32 noundef %39) #10
  %54 = load ptr, ptr @dlm_proto_ops, align 4
  %sockopts.i = getelementptr inbounds %struct.dlm_proto_ops, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %sockopts.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sockopts.i, align 4
  %57 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sock.i, align 4
  call void %56(ptr noundef %58) #10
  %59 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sock.i, align 4
  %sk1.i.i = getelementptr inbounds %struct.socket, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %sk1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sk1.i.i, align 16
  call void @lock_sock_nested(ptr noundef %62, i32 noundef 0) #10
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %add.ptr, align 4
  %sk_user_data.i.i = getelementptr inbounds %struct.sock, ptr %62, i32 0, i32 72
  %64 = ptrtoint ptr %sk_user_data.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr, ptr %sk_user_data.i.i, align 4
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %62, i32 0, i32 77
  %65 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @lowcomms_data_ready, ptr %sk_data_ready.i.i, align 8
  %sk_write_space.i.i = getelementptr inbounds %struct.sock, ptr %62, i32 0, i32 78
  %66 = ptrtoint ptr %sk_write_space.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @lowcomms_write_space, ptr %sk_write_space.i.i, align 4
  %sk_state_change.i.i = getelementptr inbounds %struct.sock, ptr %62, i32 0, i32 76
  %67 = ptrtoint ptr %sk_state_change.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @lowcomms_state_change, ptr %sk_state_change.i.i, align 4
  %sk_allocation.i.i = getelementptr inbounds %struct.sock, ptr %62, i32 0, i32 41
  %68 = ptrtoint ptr %sk_allocation.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 3136, ptr %sk_allocation.i.i, align 8
  %sk_error_report.i.i = getelementptr inbounds %struct.sock, ptr %62, i32 0, i32 79
  %69 = ptrtoint ptr %sk_error_report.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @lowcomms_error_report, ptr %sk_error_report.i.i, align 8
  call void @release_sock(ptr noundef %62) #10
  %70 = load ptr, ptr @dlm_proto_ops, align 4
  %bind.i = getelementptr inbounds %struct.dlm_proto_ops, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %bind.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bind.i, align 4
  %73 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sock.i, align 4
  %call21.i = call i32 %72(ptr noundef %74) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.end20.i.add_sock_err.i_crit_edge, label %if.end25.i

if.end20.i.add_sock_err.i_crit_edge:              ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_sock_err.i

if.end25.i:                                       ; preds = %if.end20.i
  %call26.i = call i32 @___ratelimit(ptr noundef nonnull @dlm_connect._rs, ptr noundef nonnull @.str.29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.end35.i_crit_edge, label %do.end31.i

if.end25.i.if.end35.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

do.end31.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %nodeid4.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nodeid4.i, align 4
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %76) #14
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end31.i, %if.end25.i.if.end35.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dlm_config to i32))
  %77 = load i32, ptr @dlm_config, align 4
  %conv36.i = trunc i32 %77 to i16
  %78 = load ptr, ptr @dlm_local_addr, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %78, align 4
  %81 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %80)
  %cmp.i89.i = icmp eq i16 %80, 2
  br i1 %cmp.i89.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin_port.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr.i, i32 0, i32 1
  %82 = ptrtoint ptr %sin_port.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv36.i, ptr %sin_port.i.i, align 2
  %83 = ptrtoint ptr %sas.sroa.6.0.sas_out.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 8)
  store i64 0, ptr %sas.sroa.6.0.sas_out.sroa_idx.i.i, align 4
  br label %make_sockaddr.exit.i

if.else.i.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_port.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr.i, i32 0, i32 1
  %84 = ptrtoint ptr %sin6_port.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv36.i, ptr %sin6_port.i.i, align 2
  br label %make_sockaddr.exit.i

make_sockaddr.exit.i:                             ; preds = %if.else.i.i, %if.then.i.i
  %addr_len.0.i = phi i32 [ 16, %if.then.i.i ], [ 28, %if.else.i.i ]
  %add.ptr.i.i = getelementptr i8, ptr %addr.i, i32 %addr_len.0.i
  %sub.i.i = sub nuw nsw i32 128, %addr_len.0.i
  %85 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  %86 = load ptr, ptr @dlm_proto_ops, align 4
  %connect.i = getelementptr inbounds %struct.dlm_proto_ops, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %connect.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %connect.i, align 4
  %89 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sock.i, align 4
  %call37.i = call i32 %88(ptr noundef %add.ptr, ptr noundef %90, ptr noundef nonnull %addr.i, i32 noundef %addr_len.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %make_sockaddr.exit.i.add_sock_err.i_crit_edge, label %make_sockaddr.exit.i.dlm_connect.exit_crit_edge

make_sockaddr.exit.i.dlm_connect.exit_crit_edge:  ; preds = %make_sockaddr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_connect.exit

make_sockaddr.exit.i.add_sock_err.i_crit_edge:    ; preds = %make_sockaddr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_sock_err.i

add_sock_err.i:                                   ; preds = %make_sockaddr.exit.i.add_sock_err.i_crit_edge, %if.end20.i.add_sock_err.i_crit_edge
  %result.0.i = phi i32 [ %call21.i, %if.end20.i.add_sock_err.i_crit_edge ], [ %call37.i, %make_sockaddr.exit.i.add_sock_err.i_crit_edge ]
  %91 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i91.i = icmp eq ptr %92, null
  br i1 %tobool.not.i91.i, label %add_sock_err.i.socket_err.i_crit_edge, label %if.then.i92.i

add_sock_err.i.socket_err.i_crit_edge:            ; preds = %add_sock_err.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %socket_err.i

if.then.i92.i:                                    ; preds = %add_sock_err.i
  call void @__sanitizer_cov_trace_pc() #12
  %sk1.i.i.i = getelementptr inbounds %struct.socket, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %sk1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sk1.i.i.i, align 16
  call void @lock_sock_nested(ptr noundef %94, i32 noundef 0) #10
  %sk_user_data.i.i.i = getelementptr inbounds %struct.sock, ptr %94, i32 0, i32 72
  %95 = ptrtoint ptr %sk_user_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %sk_user_data.i.i.i, align 4
  %96 = load ptr, ptr @listen_sock.1, align 4
  %sk_data_ready.i.i.i = getelementptr inbounds %struct.sock, ptr %94, i32 0, i32 77
  %97 = ptrtoint ptr %sk_data_ready.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %sk_data_ready.i.i.i, align 8
  %98 = load ptr, ptr @listen_sock.2, align 4
  %sk_state_change.i.i.i = getelementptr inbounds %struct.sock, ptr %94, i32 0, i32 76
  %99 = ptrtoint ptr %sk_state_change.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %sk_state_change.i.i.i, align 4
  %100 = load ptr, ptr @listen_sock.3, align 4
  %sk_write_space.i.i.i = getelementptr inbounds %struct.sock, ptr %94, i32 0, i32 78
  %101 = ptrtoint ptr %sk_write_space.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %sk_write_space.i.i.i, align 4
  %102 = load ptr, ptr @listen_sock.0, align 4
  %sk_error_report.i.i.i = getelementptr inbounds %struct.sock, ptr %94, i32 0, i32 79
  %103 = ptrtoint ptr %sk_error_report.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %sk_error_report.i.i.i, align 8
  call void @release_sock(ptr noundef %94) #10
  %104 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr, align 4
  call void @sock_release(ptr noundef %105) #10
  %106 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %add.ptr, align 4
  br label %socket_err.i

socket_err.i:                                     ; preds = %if.then.i92.i, %add_sock_err.i.socket_err.i_crit_edge, %if.end15.i.socket_err.i_crit_edge
  %result.1.i = phi i32 [ %call16.i, %if.end15.i.socket_err.i_crit_edge ], [ %result.0.i, %add_sock_err.i.socket_err.i_crit_edge ], [ %result.0.i, %if.then.i92.i ]
  %107 = zext i32 %result.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %result.1.i, label %do.end59.i [
    i32 -113, label %socket_err.i.dlm_connect.exit_crit_edge
    i32 -101, label %socket_err.i.dlm_connect.exit_crit_edge71
    i32 -100, label %socket_err.i.dlm_connect.exit_crit_edge72
    i32 -22, label %socket_err.i.dlm_connect.exit_crit_edge73
    i32 -93, label %socket_err.i.dlm_connect.exit_crit_edge74
  ]

socket_err.i.dlm_connect.exit_crit_edge74:        ; preds = %socket_err.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_connect.exit

socket_err.i.dlm_connect.exit_crit_edge73:        ; preds = %socket_err.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_connect.exit

socket_err.i.dlm_connect.exit_crit_edge72:        ; preds = %socket_err.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_connect.exit

socket_err.i.dlm_connect.exit_crit_edge71:        ; preds = %socket_err.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_connect.exit

socket_err.i.dlm_connect.exit_crit_edge:          ; preds = %socket_err.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_connect.exit

do.end59.i:                                       ; preds = %socket_err.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %nodeid4.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %nodeid4.i, align 4
  %110 = ptrtoint ptr %retries.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %retries.i, align 4
  %call63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %109, i32 noundef %111, i32 noundef %result.1.i) #14
  call void @msleep(i32 noundef 1000) #10
  call fastcc void @lowcomms_connect_sock(ptr noundef %add.ptr) #10
  br label %dlm_connect.exit

dlm_connect.exit:                                 ; preds = %do.end59.i, %socket_err.i.dlm_connect.exit_crit_edge, %socket_err.i.dlm_connect.exit_crit_edge71, %socket_err.i.dlm_connect.exit_crit_edge72, %socket_err.i.dlm_connect.exit_crit_edge73, %socket_err.i.dlm_connect.exit_crit_edge74, %make_sockaddr.exit.i.dlm_connect.exit_crit_edge, %do.end11.i, %do.end.i, %if.end32.dlm_connect.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock.i) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %addr.i) #10
  call void @mutex_unlock(ptr noundef %sock_mutex) #10
  br label %if.end34

if.end34:                                         ; preds = %dlm_connect.exit, %if.end26.if.end34_crit_edge
  %writequeue = getelementptr i8, ptr %work, i32 -120
  %112 = ptrtoint ptr %writequeue to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile ptr, ptr %writequeue, align 4
  %cmp.i51.not = icmp eq ptr %113, %writequeue
  br i1 %cmp.i51.not, label %if.end34.if.end38_crit_edge, label %if.then37

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then37:                                        ; preds = %if.end34
  %sock_mutex.i = getelementptr i8, ptr %work, i32 -216
  call void @mutex_lock_nested(ptr noundef %sock_mutex.i, i32 noundef 0) #10
  %114 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %add.ptr, align 4
  %cmp.i53 = icmp eq ptr %115, null
  br i1 %cmp.i53, label %out_connect.i, label %if.end.i54

if.end.i54:                                       ; preds = %if.then37
  %writequeue_lock.i = getelementptr i8, ptr %work, i32 -112
  call void @_raw_spin_lock(ptr noundef %writequeue_lock.i) #10
  %116 = ptrtoint ptr %writequeue to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile ptr, ptr %writequeue, align 4
  %cmp.i.not.i110.i = icmp eq ptr %117, %writequeue
  br i1 %cmp.i.not.i110.i, label %if.end.i54.for.end.i_crit_edge, label %if.end.i.lr.ph.i

if.end.i54.for.end.i_crit_edge:                   ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end.i.lr.ph.i:                                 ; preds = %if.end.i54
  %nodeid.i = getelementptr i8, ptr %work, i32 -220
  br label %if.end.i.i56

if.end.i.i56:                                     ; preds = %writequeue_entry_complete.exit.i.if.end.i.i56_crit_edge, %if.end.i.lr.ph.i
  %118 = phi ptr [ %117, %if.end.i.lr.ph.i ], [ %152, %writequeue_entry_complete.exit.i.if.end.i.i56_crit_edge ]
  %count.0111.i = phi i32 [ 0, %if.end.i.lr.ph.i ], [ %count.1.i, %writequeue_entry_complete.exit.i.if.end.i.i56_crit_edge ]
  %users.i.i = getelementptr inbounds %struct.writequeue_entry, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool2.not.i.i55 = icmp eq i32 %120, 0
  br i1 %tobool2.not.i.i55, label %lor.lhs.false.i.i, label %if.end.i.i56.for.end.i_crit_edge

if.end.i.i56.for.end.i_crit_edge:                 ; preds = %if.end.i.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i56
  %len.i.i = getelementptr inbounds %struct.writequeue_entry, ptr %118, i32 0, i32 3
  %121 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp.i.i57 = icmp eq i32 %122, 0
  %tobool.not.i58 = icmp eq ptr %118, null
  %or.cond.i = select i1 %cmp.i.i57, i1 true, i1 %tobool.not.i58
  br i1 %or.cond.i, label %lor.lhs.false.i.i.for.end.i_crit_edge, label %do.end16.i

lor.lhs.false.i.i.for.end.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

do.end16.i:                                       ; preds = %lor.lhs.false.i.i
  %offset4.i = getelementptr inbounds %struct.writequeue_entry, ptr %118, i32 0, i32 2
  %123 = ptrtoint ptr %offset4.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %offset4.i, align 4
  call void @_raw_spin_unlock(ptr noundef %writequeue_lock.i) #10
  %125 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %add.ptr, align 4
  %page.i = getelementptr inbounds %struct.writequeue_entry, ptr %118, i32 0, i32 1
  %127 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %page.i, align 4
  %call19.i = call i32 @kernel_sendpage(ptr noundef %126, ptr noundef %128, i32 noundef %124, i32 noundef %122, i32 noundef 16448) #10
  %129 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %nodeid.i, align 4
  call fastcc void @trace_dlm_send(i32 noundef %130, i32 noundef %call19.i) #10
  %131 = zext i32 %call19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %call19.i, label %if.else.i [
    i32 -11, label %land.lhs.true.i
    i32 0, label %do.end16.i.if.end35.i61_crit_edge
  ]

do.end16.i.if.end35.i61_crit_edge:                ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i61

land.lhs.true.i:                                  ; preds = %do.end16.i
  %132 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %add.ptr, align 4
  %flags.i = getelementptr inbounds %struct.socket, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool26.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool26.not.i, label %land.lhs.true.i.if.end35.i61_crit_edge, label %land.lhs.true27.i

land.lhs.true.i.if.end35.i61_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i61

land.lhs.true27.i:                                ; preds = %land.lhs.true.i
  %call29.i = call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %land.lhs.true27.i.if.end35.i61_crit_edge

land.lhs.true27.i.if.end35.i61_crit_edge:         ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i61

if.then31.i:                                      ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %add.ptr, align 4
  %flags33.i = getelementptr inbounds %struct.socket, ptr %137, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %flags33.i) #10
  %138 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %add.ptr, align 4
  %sk.i59 = getelementptr inbounds %struct.socket, ptr %139, i32 0, i32 4
  %140 = ptrtoint ptr %sk.i59 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sk.i59, align 16
  %sk_write_pending.i = getelementptr inbounds %struct.sock, ptr %141, i32 0, i32 28
  %142 = ptrtoint ptr %sk_write_pending.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %sk_write_pending.i, align 4
  %inc.i60 = add i32 %143, 1
  store i32 %inc.i60, ptr %sk_write_pending.i, align 4
  br label %if.end35.i61

if.end35.i61:                                     ; preds = %if.then31.i, %land.lhs.true27.i.if.end35.i61_crit_edge, %land.lhs.true.i.if.end35.i61_crit_edge, %do.end16.i.if.end35.i61_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 1437, i32 noundef 0) #10
  %call.i.i = call i32 @__cond_resched() #10
  br label %out.i

if.else.i:                                        ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp37.i = icmp slt i32 %call19.i, 0
  br i1 %cmp37.i, label %if.else.i.out.i_crit_edge, label %if.end40.i

if.else.i.out.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end40.i:                                       ; preds = %if.else.i
  %inc41.i = add i32 %count.0111.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %inc41.i)
  %cmp42.i = icmp sgt i32 %inc41.i, 24
  br i1 %cmp42.i, label %if.then43.i, label %if.end40.i.if.end46.i_crit_edge

if.end40.i.if.end46.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 1444, i32 noundef 0) #10
  %call.i100.i = call i32 @__cond_resched() #10
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then43.i, %if.end40.i.if.end46.i_crit_edge
  %count.1.i = phi i32 [ 0, %if.then43.i ], [ %inc41.i, %if.end40.i.if.end46.i_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %writequeue_lock.i) #10
  %144 = ptrtoint ptr %offset4.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %offset4.i, align 4
  %add.i.i = add i32 %145, %call19.i
  store i32 %add.i.i, ptr %offset4.i, align 4
  %146 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %len.i.i, align 4
  %sub.i.i62 = sub i32 %147, %call19.i
  store i32 %sub.i.i62, ptr %len.i.i, align 4
  %dirty.i.i = getelementptr inbounds %struct.writequeue_entry, ptr %118, i32 0, i32 6
  %148 = ptrtoint ptr %dirty.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 1, ptr %dirty.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %call19.i)
  %cmp.i102.i = icmp eq i32 %147, %call19.i
  br i1 %cmp.i102.i, label %land.lhs.true.i.i63, label %if.end46.i.writequeue_entry_complete.exit.i_crit_edge

if.end46.i.writequeue_entry_complete.exit.i_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %writequeue_entry_complete.exit.i

land.lhs.true.i.i63:                              ; preds = %if.end46.i
  %149 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp2.i.i = icmp eq i32 %150, 0
  br i1 %cmp2.i.i, label %if.then.i.i64, label %land.lhs.true.i.i63.writequeue_entry_complete.exit.i_crit_edge

land.lhs.true.i.i63.writequeue_entry_complete.exit.i_crit_edge: ; preds = %land.lhs.true.i.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %writequeue_entry_complete.exit.i

if.then.i.i64:                                    ; preds = %land.lhs.true.i.i63
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @free_entry(ptr noundef nonnull %118) #10
  br label %writequeue_entry_complete.exit.i

writequeue_entry_complete.exit.i:                 ; preds = %if.then.i.i64, %land.lhs.true.i.i63.writequeue_entry_complete.exit.i_crit_edge, %if.end46.i.writequeue_entry_complete.exit.i_crit_edge
  %151 = ptrtoint ptr %writequeue to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile ptr, ptr %writequeue, align 4
  %cmp.i.not.i.i = icmp eq ptr %152, %writequeue
  br i1 %cmp.i.not.i.i, label %writequeue_entry_complete.exit.i.for.end.i_crit_edge, label %writequeue_entry_complete.exit.i.if.end.i.i56_crit_edge

writequeue_entry_complete.exit.i.if.end.i.i56_crit_edge: ; preds = %writequeue_entry_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i56

writequeue_entry_complete.exit.i.for.end.i_crit_edge: ; preds = %writequeue_entry_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %writequeue_entry_complete.exit.i.for.end.i_crit_edge, %lor.lhs.false.i.i.for.end.i_crit_edge, %if.end.i.i56.for.end.i_crit_edge, %if.end.i54.for.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %writequeue_lock.i) #10
  %call50.i = call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  call void @mutex_unlock(ptr noundef %sock_mutex.i) #10
  br i1 %tobool51.not.i, label %for.end.i.if.end38_crit_edge, label %if.then52.i

for.end.i.if.end38_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then52.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @close_connection(ptr noundef %add.ptr, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  call void @_clear_bit(i32 noundef 9, ptr noundef %flags) #10
  %shutdown_wait.i = getelementptr i8, ptr %work, i32 44
  call void @__wake_up(ptr noundef %shutdown_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end38

out.i:                                            ; preds = %if.else.i.out.i_crit_edge, %if.end35.i61
  call void @mutex_unlock(ptr noundef %sock_mutex.i) #10
  br label %if.end38

out_connect.i:                                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %sock_mutex.i) #10
  %153 = load ptr, ptr @send_workqueue, align 4
  %call.i105.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %153, ptr noundef %work) #10
  call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 1474, i32 noundef 0) #10
  %call.i106.i = call i32 @__cond_resched() #10
  br label %if.end38

if.end38:                                         ; preds = %out_connect.i, %out.i, %if.then52.i, %for.end.i.if.end38_crit_edge, %if.end34.if.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @process_recv_sockets(ptr noundef %work) #0 align 64 {
entry:
  %msg.i = alloca %struct.msghdr, align 8
  %iov.i = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -180
  %flags = getelementptr i8, ptr %work, i32 -80
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  %0 = call ptr @memset(ptr %msg.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i) #10
  %1 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov.i, align 4, !annotation !261
  %2 = getelementptr inbounds %struct.kvec, ptr %iov.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !261
  %sock_mutex.i = getelementptr i8, ptr %work, i32 -172
  tail call void @mutex_lock_nested(ptr noundef %sock_mutex.i, i32 noundef 0) #10
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %entry.if.else60.i_crit_edge, label %if.end.i

entry.if.else60.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else60.i

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 1) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 1), align 4
  %rx_buflen.i = getelementptr i8, ptr %work, i32 144
  %7 = ptrtoint ptr %rx_buflen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_buflen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp1.not.i = icmp eq i32 %8, %6
  br i1 %cmp1.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %rx_leftover.i = getelementptr i8, ptr %work, i32 148
  %9 = ptrtoint ptr %rx_leftover.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_leftover.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %6)
  %cmp2.not.i = icmp sgt i32 %10, %6
  br i1 %cmp2.not.i, label %land.lhs.true.i.if.end7.i_crit_edge, label %if.end8.i.i.i

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.end8.i.i.i:                                    ; preds = %land.lhs.true.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3136) #15
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %out_resched.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end8.i.i.i
  %11 = ptrtoint ptr %rx_leftover.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_leftover.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.con_realloc_receive_buf.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.con_realloc_receive_buf.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %con_realloc_receive_buf.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_buf.i.i = getelementptr i8, ptr %work, i32 140
  %13 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_buf.i.i, align 4
  %15 = call ptr @memmove(ptr %call9.i.i.i, ptr %14, i32 %12)
  br label %con_realloc_receive_buf.exit.i

con_realloc_receive_buf.exit.i:                   ; preds = %if.then2.i.i, %if.end.i.i.con_realloc_receive_buf.exit.i_crit_edge
  %rx_buf5.i.i = getelementptr i8, ptr %work, i32 140
  %16 = ptrtoint ptr %rx_buf5.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_buf5.i.i, align 4
  tail call void @kfree(ptr noundef %17) #10
  %18 = ptrtoint ptr %rx_buflen.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %6, ptr %rx_buflen.i, align 4
  %19 = ptrtoint ptr %rx_buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i.i.i, ptr %rx_buf5.i.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %con_realloc_receive_buf.exit.i, %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %rx_buf.i = getelementptr i8, ptr %work, i32 140
  %rx_leftover8.i = getelementptr i8, ptr %work, i32 148
  %msg_flags.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 6
  %nodeid.i = getelementptr i8, ptr %work, i32 -176
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %if.end7.i
  %20 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_buf.i, align 4
  %22 = ptrtoint ptr %rx_leftover8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_leftover8.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %23
  %24 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %iov.i, align 4
  %25 = ptrtoint ptr %rx_buflen.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_buflen.i, align 4
  %sub.i = sub i32 %26, %23
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.i, ptr %2, align 4
  %28 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %29 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16448, ptr %msg_flags.i, align 4
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %call14.i = call i32 @kernel_recvmsg(ptr noundef %31, ptr noundef nonnull %msg.i, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef %sub.i, i32 noundef 16448) #10
  %32 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nodeid.i, align 4
  call fastcc void @trace_dlm_recv(i32 noundef %33, i32 noundef %call14.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call14.i)
  %cmp15.i = icmp eq i32 %call14.i, -11
  br i1 %cmp15.i, label %for.end.i, label %if.else.i

if.else.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14.i)
  %cmp17.i = icmp slt i32 %call14.i, 1
  br i1 %cmp17.i, label %out_close.i, label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i
  %34 = ptrtoint ptr %rx_leftover8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_leftover8.i, align 4
  %add.i = add i32 %35, %call14.i
  %36 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nodeid.i, align 4
  %38 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_buf.i, align 4
  %call24.i = call i32 @dlm_process_incoming_buffer(i32 noundef %37, ptr noundef %39, i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.end20.i.if.else60.i_crit_edge, label %if.end27.i

if.end20.i.if.else60.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else60.i

if.end27.i:                                       ; preds = %if.end20.i
  %sub28.i = sub i32 %add.i, %call24.i
  %40 = ptrtoint ptr %rx_leftover8.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub28.i, ptr %rx_leftover8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %call24.i)
  %tobool.not.i = icmp eq i32 %add.i, %call24.i
  br i1 %tobool.not.i, label %if.end27.i.for.cond.i.backedge_crit_edge, label %if.then31.i

if.end27.i.for.cond.i.backedge_crit_edge:         ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.backedge

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_buf.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %42, i32 %call24.i
  %43 = call ptr @memmove(ptr %42, ptr %add.ptr34.i, i32 %sub28.i)
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %if.then31.i, %if.end27.i.for.cond.i.backedge_crit_edge
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nodeid.i, align 4
  call void @dlm_midcomms_receive_done(i32 noundef %45) #10
  call void @mutex_unlock(ptr noundef %sock_mutex.i) #10
  br label %receive_from_sock.exit

out_resched.i:                                    ; preds = %if.end8.i.i.i
  %call39.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %out_resched.i.if.end43.i_crit_edge

out_resched.i.if.end43.i_crit_edge:               ; preds = %out_resched.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.then41.i:                                      ; preds = %out_resched.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = load ptr, ptr @recv_workqueue, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %work) #10
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then41.i, %out_resched.i.if.end43.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %sock_mutex.i) #10
  br label %receive_from_sock.exit

out_close.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp45.i = icmp eq i32 %call14.i, 0
  br i1 %cmp45.i, label %do.end.i, label %out_close.i.if.else60.i_crit_edge

out_close.i.if.else60.i_crit_edge:                ; preds = %out_close.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else60.i

do.end.i:                                         ; preds = %out_close.i
  %47 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nodeid.i, align 4
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %add.ptr, i32 noundef %48) #14
  %49 = load ptr, ptr @dlm_proto_ops, align 4
  %eof_condition.i = getelementptr inbounds %struct.dlm_proto_ops, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %eof_condition.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %eof_condition.i, align 4
  %tobool49.not.i = icmp eq ptr %51, null
  br i1 %tobool49.not.i, label %do.end.i.if.else56.i_crit_edge, label %land.lhs.true50.i

do.end.i.if.else56.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else56.i

land.lhs.true50.i:                                ; preds = %do.end.i
  %call52.i = call zeroext i1 %51(ptr noundef %add.ptr) #10
  br i1 %call52.i, label %if.then53.i, label %land.lhs.true50.i.if.else56.i_crit_edge

land.lhs.true50.i.if.else56.i_crit_edge:          ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else56.i

if.then53.i:                                      ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 13, ptr noundef %flags) #10
  call void @mutex_unlock(ptr noundef %sock_mutex.i) #10
  br label %receive_from_sock.exit

if.else56.i:                                      ; preds = %land.lhs.true50.i.if.else56.i_crit_edge, %do.end.i.if.else56.i_crit_edge
  call void @mutex_unlock(ptr noundef %sock_mutex.i) #10
  call fastcc void @close_connection(ptr noundef %add.ptr, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #10
  call void @_clear_bit(i32 noundef 9, ptr noundef %flags) #10
  %shutdown_wait.i = getelementptr i8, ptr %work, i32 88
  call void @__wake_up(ptr noundef %shutdown_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %receive_from_sock.exit

if.else60.i:                                      ; preds = %out_close.i.if.else60.i_crit_edge, %if.end20.i.if.else60.i_crit_edge, %entry.if.else60.i_crit_edge
  call void @mutex_unlock(ptr noundef %sock_mutex.i) #10
  br label %receive_from_sock.exit

receive_from_sock.exit:                           ; preds = %if.else60.i, %if.else56.i, %if.then53.i, %if.end43.i, %for.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_midcomms_unack_msg_resend(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_kern(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_set_mark(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lowcomms_data_ready(ptr nocapture noundef readonly %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.connection, ptr %1, i32 0, i32 3
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %2 = load ptr, ptr @recv_workqueue, align 4
  %rwork = getelementptr inbounds %struct.connection, ptr %1, i32 0, i32 11
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %rwork) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lowcomms_write_space(ptr nocapture noundef readonly %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.connection, ptr %1, i32 0, i32 3
  %call = tail call i32 @_test_and_set_bit(i32 noundef 10, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %nodeid = getelementptr inbounds %struct.connection, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nodeid, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %3) #14
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %flags6 = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags6) #10
  %call8 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end5.cleanup.sink.split_crit_edge, label %if.then10

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %sk12 = getelementptr inbounds %struct.socket, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %sk12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk12, align 16
  %sk_write_pending = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 28
  %10 = ptrtoint ptr %sk_write_pending to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sk_write_pending, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %sk_write_pending, align 4
  %12 = load ptr, ptr %1, align 4
  %flags14 = getelementptr inbounds %struct.socket, ptr %12, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags14) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then10, %if.end5.cleanup.sink.split_crit_edge, %do.end
  %13 = load ptr, ptr @send_workqueue, align 4
  %swork16 = getelementptr inbounds %struct.connection, ptr %1, i32 0, i32 12
  %call.i26 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %swork16) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lowcomms_state_change(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %0 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sk_shutdown, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %1, label %entry.if.end9_crit_edge [
    i8 0, label %if.else
    i8 1, label %if.then3
  ]

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then3:                                         ; preds = %entry
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %3 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_user_data.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then3.if.end9_crit_edge, label %land.lhs.true.i

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true.i:                                  ; preds = %if.then3
  %flags.i = getelementptr inbounds %struct.connection, ptr %4, i32 0, i32 3
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.if.end9_crit_edge

land.lhs.true.i.if.end9_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %5 = load ptr, ptr @recv_workqueue, align 4
  %rwork.i = getelementptr inbounds %struct.connection, ptr %4, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %rwork.i) #10
  br label %if.end9

if.else:                                          ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp5 = icmp eq i8 %7, 1
  br i1 %cmp5, label %if.then7, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lowcomms_write_space(ptr noundef %sk)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.else.if.end9_crit_edge, %if.then.i, %land.lhs.true.i.if.end9_crit_edge, %if.then3.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lowcomms_error_report(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.if.end62_crit_edge, label %if.end

entry.if.end62_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @listen_sock.0, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %3 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %skc_family, align 8
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.115)
  switch i16 %4, label %sw.default [
    i16 2, label %sw.bb
    i16 10, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @lowcomms_error_report._rs, ptr noundef nonnull @__func__.lowcomms_error_report) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %do.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @dlm_our_nodeid() #10
  %nodeid = getelementptr inbounds %struct.connection, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nodeid, align 4
  %8 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 4
  %conv8 = zext i16 %10 to i32
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %11 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sk_err, align 4
  %sk_err_soft = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 52
  %13 = ptrtoint ptr %sk_err_soft to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_err_soft, align 8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %call3, i32 noundef %7, ptr noundef %sk, i32 noundef %conv8, i32 noundef %12, i32 noundef %14) #14
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @lowcomms_error_report._rs.43, ptr noundef nonnull @__func__.lowcomms_error_report) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %sw.bb11.sw.epilog_crit_edge, label %do.end17

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end17:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 @dlm_our_nodeid() #10
  %nodeid20 = getelementptr inbounds %struct.connection, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %nodeid20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nodeid20, align 4
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %17 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 4
  %conv25 = zext i16 %19 to i32
  %sk_err26 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %20 = ptrtoint ptr %sk_err26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sk_err26, align 4
  %sk_err_soft27 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 52
  %22 = ptrtoint ptr %sk_err_soft27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sk_err_soft27, align 8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %call19, i32 noundef %16, ptr noundef %skc_v6_daddr, i32 noundef %conv25, i32 noundef %21, i32 noundef %23) #14
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %call30 = tail call i32 @___ratelimit(ptr noundef nonnull @lowcomms_error_report._rs.47, ptr noundef nonnull @__func__.lowcomms_error_report) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %sw.default.out_crit_edge, label %do.end35

sw.default.out_crit_edge:                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end35:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = tail call i32 @dlm_our_nodeid() #10
  %24 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %skc_family, align 8
  %conv40 = zext i16 %25 to i32
  %sk_err41 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %26 = ptrtoint ptr %sk_err41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sk_err41, align 4
  %sk_err_soft42 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 52
  %28 = ptrtoint ptr %sk_err_soft42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sk_err_soft42, align 8
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %call37, i32 noundef %conv40, i32 noundef %27, i32 noundef %29) #14
  br label %out

sw.epilog:                                        ; preds = %do.end17, %sw.bb11.sw.epilog_crit_edge, %do.end, %sw.bb.sw.epilog_crit_edge
  %flags = getelementptr inbounds %struct.connection, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags, align 4
  %32 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool46.not = icmp eq i32 %32, 0
  br i1 %tobool46.not, label %sw.epilog.if.end48_crit_edge, label %if.then47

sw.epilog.if.end48_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then47:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %sendcon = getelementptr inbounds %struct.connection, ptr %1, i32 0, i32 10
  %33 = ptrtoint ptr %sendcon to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sendcon, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %sw.epilog.if.end48_crit_edge
  %con.0 = phi ptr [ %34, %if.then47 ], [ %1, %sw.epilog.if.end48_crit_edge ]
  %sk_err49 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %35 = ptrtoint ptr %sk_err49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sk_err49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %36)
  %cond = icmp eq i32 %36, 111
  br i1 %cond, label %sw.bb50, label %if.end48.sw.epilog53_crit_edge

if.end48.sw.epilog53_crit_edge:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog53

sw.bb50:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %flags51 = getelementptr inbounds %struct.connection, ptr %con.0, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 12, ptr noundef %flags51) #10
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %sw.bb50, %if.end48.sw.epilog53_crit_edge
  %flags54 = getelementptr inbounds %struct.connection, ptr %con.0, i32 0, i32 3
  %call55 = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %flags54) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %sw.epilog53.out_crit_edge

sw.epilog53.out_crit_edge:                        ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then57:                                        ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #12
  %37 = load ptr, ptr @send_workqueue, align 4
  %swork = getelementptr inbounds %struct.connection, ptr %con.0, i32 0, i32 12
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %swork) #10
  br label %out

out:                                              ; preds = %if.then57, %sw.epilog53.out_crit_edge, %do.end35, %sw.default.out_crit_edge
  %tobool60.not = icmp eq ptr %2, null
  br i1 %tobool60.not, label %out.if.end62_crit_edge, label %if.then61

out.if.end62_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then61:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %2(ptr noundef %sk) #10
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %out.if.end62_crit_edge, %entry.if.end62_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dlm_send(i32 noundef %nodeid, i32 noundef %ret) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dlm_send, i32 0, i32 1), ptr blockaddress(@trace_dlm_send, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !263

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !252

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !264
  %call42 = tail call i32 @__traceiter_dlm_send(ptr noundef null, i32 noundef %nodeid, i32 noundef %ret) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !265
  %13 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !252

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !266
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dlm_send, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dlm_send, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dlm_send.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_dlm_send.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 235, ptr noundef nonnull @.str.52) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !267
  %31 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dlm_send(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_entry(ptr noundef %e) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msgs = getelementptr inbounds %struct.writequeue_entry, ptr %e, i32 0, i32 8
  %0 = ptrtoint ptr %msgs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msgs, align 4
  %cmp.not57 = icmp eq ptr %1, %msgs
  br i1 %cmp.not57, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %kref_put.exit41.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in58 = phi ptr [ %.pn60, %kref_put.exit41.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in58 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn60 = load ptr, ptr %.pn.in58, align 4
  %orig_msg = getelementptr i8, ptr %.pn.in58, i32 -20
  %3 = ptrtoint ptr %orig_msg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %orig_msg, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  %retransmit = getelementptr inbounds %struct.dlm_msg, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %retransmit to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %retransmit, align 4
  %6 = ptrtoint ptr %orig_msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %orig_msg, align 4
  %ref = getelementptr inbounds %struct.dlm_msg, ptr %7, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #10, !srcloc !258
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !252

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !259
  tail call fastcc void @dlm_msg_release(ptr noundef %ref) #10, !callees !260
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %for.body.if.end_crit_edge
  %call.i.i33 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in58) #10
  br i1 %call.i.i33, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in58, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in58 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in58, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %15 = ptrtoint ptr %.pn.in58 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in58, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in58, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %ref11 = getelementptr i8, ptr %.pn.in58, i32 8
  %call.i.i.i.i.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref11, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void @llvm.prefetch.p0(ptr %ref11, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref11, ptr %ref11, i32 1, ptr elementtype(i32) %ref11) #10, !srcloc !258
  %asmresult.i.i.i.i.i.i.i35 = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i35)
  %cmp.i.i.i.i36 = icmp eq i32 %asmresult.i.i.i.i.i.i.i35, 1
  br i1 %cmp.i.i.i.i36, label %if.then.i40, label %if.end5.i.i.i.i38

if.end5.i.i.i.i38:                                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i35)
  %.not.i.i.i.i37 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i35, 0
  br i1 %.not.i.i.i.i37, label %if.end5.i.i.i.i38.kref_put.exit41_crit_edge, label %if.then10.i.i.i.i39, !prof !252

if.end5.i.i.i.i38.kref_put.exit41_crit_edge:      ; preds = %if.end5.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit41

if.then10.i.i.i.i39:                              ; preds = %if.end5.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref11, i32 noundef 3) #10
  br label %kref_put.exit41

if.then.i40:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !259
  tail call fastcc void @dlm_msg_release(ptr noundef %ref11) #10, !callees !260
  br label %kref_put.exit41

kref_put.exit41:                                  ; preds = %if.then.i40, %if.then10.i.i.i.i39, %if.end5.i.i.i.i38.kref_put.exit41_crit_edge
  %cmp.not = icmp eq ptr %.pn60, %msgs
  br i1 %cmp.not, label %kref_put.exit41.for.end_crit_edge, label %kref_put.exit41.for.body_crit_edge

kref_put.exit41.for.body_crit_edge:               ; preds = %kref_put.exit41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

kref_put.exit41.for.end_crit_edge:                ; preds = %kref_put.exit41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %kref_put.exit41.for.end_crit_edge, %entry.for.end_crit_edge
  %call.i.i42 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %e) #10
  br i1 %call.i.i42, label %if.end.i.i45, label %for.end.list_del.exit47_crit_edge

for.end.list_del.exit47_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit47

if.end.i.i45:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i43 = getelementptr inbounds %struct.list_head, ptr %e, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i43, align 4
  %20 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %e, align 4
  %prev1.i.i.i44 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i44, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit47

list_del.exit47:                                  ; preds = %if.end.i.i45, %for.end.list_del.exit47_crit_edge
  %24 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %e, align 4
  %prev.i46 = getelementptr inbounds %struct.list_head, ptr %e, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i46 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i46, align 4
  %con = getelementptr inbounds %struct.writequeue_entry, ptr %e, i32 0, i32 7
  %26 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %con, align 4
  %writequeue_cnt = getelementptr inbounds %struct.connection, ptr %27, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %writequeue_cnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %writequeue_cnt, i32 1, i32 3, i32 1) #10
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %writequeue_cnt, ptr %writequeue_cnt, i32 1, ptr elementtype(i32) %writequeue_cnt) #10, !srcloc !268
  %ref19 = getelementptr inbounds %struct.writequeue_entry, ptr %e, i32 0, i32 9
  %call.i.i.i.i.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref19, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void @llvm.prefetch.p0(ptr %ref19, i32 1, i32 3, i32 1) #10
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref19, ptr %ref19, i32 1, ptr elementtype(i32) %ref19) #10, !srcloc !258
  %asmresult.i.i.i.i.i.i.i49 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i49)
  %cmp.i.i.i.i50 = icmp eq i32 %asmresult.i.i.i.i.i.i.i49, 1
  br i1 %cmp.i.i.i.i50, label %if.then.i54, label %if.end5.i.i.i.i52

if.end5.i.i.i.i52:                                ; preds = %list_del.exit47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i49)
  %.not.i.i.i.i51 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i49, 0
  br i1 %.not.i.i.i.i51, label %if.end5.i.i.i.i52.kref_put.exit55_crit_edge, label %if.then10.i.i.i.i53, !prof !252

if.end5.i.i.i.i52.kref_put.exit55_crit_edge:      ; preds = %if.end5.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit55

if.then10.i.i.i.i53:                              ; preds = %if.end5.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref19, i32 noundef 3) #10
  br label %kref_put.exit55

if.then.i54:                                      ; preds = %list_del.exit47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !259
  %page.i = getelementptr %struct.writequeue_entry, ptr %e, i32 0, i32 1
  %30 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %page.i, align 4
  tail call void @__free_pages(ptr noundef %31, i32 noundef 0) #10
  tail call void @dlm_free_writequeue(ptr noundef %e) #10
  br label %kref_put.exit55

kref_put.exit55:                                  ; preds = %if.then.i54, %if.then10.i.i.i.i53, %if.end5.i.i.i.i52.kref_put.exit55_crit_edge
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_free_writequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_recvmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dlm_recv(i32 noundef %nodeid, i32 noundef %ret) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dlm_recv, i32 0, i32 1), ptr blockaddress(@trace_dlm_recv, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !263

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !252

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !269
  %call42 = tail call i32 @__traceiter_dlm_recv(ptr noundef null, i32 noundef %nodeid, i32 noundef %ret) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !270
  %13 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !252

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !266
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dlm_recv, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dlm_recv, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dlm_recv.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_dlm_recv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 255, ptr noundef nonnull @.str.52) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !267
  %31 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
declare dso_local i32 @dlm_process_incoming_buffer(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_midcomms_receive_done(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dlm_recv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @connections_srcu, i32 0, i32 16), i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_allocate_msg(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_free_msg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_allocate_writequeue() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_stop_conn(ptr noundef %con, i1 noundef zeroext %and_other) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sock_mutex = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %sock_mutex, i32 noundef 0) #10
  %flags = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags) #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #10
  %0 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sk = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_sock_nested(ptr noundef nonnull %3, i32 noundef 0) #10
  %4 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %con, align 4
  %sk8 = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sk8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk8, align 16
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 72
  %8 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sk_user_data, align 4
  %9 = load ptr, ptr %con, align 4
  %sk10 = getelementptr inbounds %struct.socket, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %sk10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk10, align 16
  tail call void @release_sock(ptr noundef %11) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %othercon = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 9
  %12 = ptrtoint ptr %othercon to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %othercon, align 4
  %tobool11.not = icmp ne ptr %13, null
  %14 = and i1 %tobool11.not, %and_other
  br i1 %14, label %if.then14, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @_stop_conn(ptr noundef nonnull %13, i1 noundef zeroext false)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef %sock_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_srcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @connection_release(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -332
  %rx_buf = getelementptr i8, ptr %rcu, i32 -12
  %0 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_buf, align 4
  tail call void @kfree(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_our_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_accept(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_tcp_connect(ptr nocapture noundef readnone %con, ptr noundef %sock, ptr noundef %addr, i32 noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %connect = getelementptr inbounds %struct.proto_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connect, align 4
  %call = tail call i32 %3(ptr noundef %sock, ptr noundef %addr, i32 noundef %addr_len, i32 noundef 2048) #10
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %call, label %sw.epilog [
    i32 -115, label %entry.cleanup_crit_edge
    i32 0, label %entry.cleanup_crit_edge4
  ]

entry.cleanup_crit_edge4:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge4
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlm_tcp_sockopts(ptr nocapture noundef readonly %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  tail call void @tcp_sock_set_nodelay(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_tcp_bind(ptr noundef %sock) #0 align 64 {
entry:
  %src_addr = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %src_addr) #10
  %0 = load ptr, ptr @dlm_local_addr, align 4
  %1 = call ptr @memcpy(ptr %src_addr, ptr %0, i32 128)
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %0, align 4
  %4 = ptrtoint ptr %src_addr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %src_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp.i = icmp eq i16 %3, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %src_addr, i32 0, i32 1
  %5 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %sin_port.i, align 2
  %__pad.i = getelementptr inbounds %struct.sockaddr_in, ptr %src_addr, i32 0, i32 3
  %6 = ptrtoint ptr %__pad.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %__pad.i, align 4
  br label %make_sockaddr.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %src_addr, i32 0, i32 1
  %7 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %sin6_port.i, align 2
  br label %make_sockaddr.exit

make_sockaddr.exit:                               ; preds = %if.else.i, %if.then.i
  %addr_len.0 = phi i32 [ 16, %if.then.i ], [ 28, %if.else.i ]
  %add.ptr.i = getelementptr i8, ptr %src_addr, i32 %addr_len.0
  %sub.i = sub nuw nsw i32 128, %addr_len.0
  %8 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %bind = getelementptr inbounds %struct.proto_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %bind to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bind, align 4
  %call = call i32 %12(ptr noundef %sock, ptr noundef nonnull %src_addr, i32 noundef %addr_len.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %make_sockaddr.exit.if.end_crit_edge

make_sockaddr.exit.if.end_crit_edge:              ; preds = %make_sockaddr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %make_sockaddr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %make_sockaddr.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %src_addr) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_tcp_listen_validate() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dlm_local_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #14
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlm_tcp_listen_sockopts(ptr nocapture noundef readonly %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk.i, align 16
  tail call void @tcp_sock_set_nodelay(ptr noundef %1) #10
  %2 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk.i, align 16
  tail call void @sock_set_reuseaddr(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_tcp_listen_bind(ptr noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dlm_local_addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dlm_config to i32))
  %1 = load i32, ptr @dlm_config, align 4
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp.i = icmp eq i16 %3, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %0, i32 0, i32 1
  %4 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %sin_port.i, align 2
  %__pad.i = getelementptr inbounds %struct.sockaddr_in, ptr %0, i32 0, i32 3
  %5 = ptrtoint ptr %__pad.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %__pad.i, align 4
  br label %make_sockaddr.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 1
  %6 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %sin6_port.i, align 2
  br label %make_sockaddr.exit

make_sockaddr.exit:                               ; preds = %if.else.i, %if.then.i
  %addr_len.0 = phi i32 [ 16, %if.then.i ], [ 28, %if.else.i ]
  %add.ptr.i = getelementptr i8, ptr %0, i32 %addr_len.0
  %sub.i = sub nuw nsw i32 128, %addr_len.0
  %7 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %bind = getelementptr inbounds %struct.proto_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bind to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bind, align 4
  %call = tail call i32 %11(ptr noundef %sock, ptr noundef %0, i32 noundef %addr_len.0) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlm_tcp_shutdown(ptr noundef %con) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %othercon = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 9
  %0 = ptrtoint ptr %othercon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %othercon, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @shutdown_connection(ptr noundef nonnull %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @shutdown_connection(ptr noundef %con)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tcp_eof_condition(ptr noundef %con) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %writequeue_cnt = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %writequeue_cnt, i32 noundef 4) #10
  %0 = ptrtoint ptr %writequeue_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %writequeue_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp ne i32 %1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_nodelay(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_set_reuseaddr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @shutdown_connection(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %swork = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 12
  %call = tail call zeroext i1 @flush_work(ptr noundef %swork) #10
  %sock_mutex = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %sock_mutex, i32 noundef 0) #10
  %0 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %sock_mutex) #10
  br label %cleanup66

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags) #10
  %2 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con, align 4
  %call3 = tail call i32 @kernel_sock_shutdown(ptr noundef %3, i32 noundef 1) #10
  tail call void @mutex_unlock(ptr noundef %sock_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool5.not = icmp eq i32 %call3, 0
  br i1 %tobool5.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %con, i32 noundef %call3) #14
  br label %force_close

if.else:                                          ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 867) #10
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool17.not = icmp eq i32 %6, 0
  br i1 %tobool17.not, label %if.else.cleanup66_crit_edge, label %if.then27

if.else.cleanup66_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup66

if.then27:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %shutdown_wait = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 13
  %call30101 = call i32 @prepare_to_wait_event(ptr noundef %shutdown_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool34.not102 = icmp eq i32 %10, 0
  br i1 %tobool34.not102, label %if.end55.thread, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  br label %cleanup

if.end55.thread:                                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %shutdown_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup66

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then27.cleanup_crit_edge
  %__ret28.1103 = phi i32 [ %__ret28.1, %cleanup.cleanup_crit_edge ], [ 1000, %if.then27.cleanup_crit_edge ]
  %call52 = call i32 @schedule_timeout(i32 noundef %__ret28.1103) #10
  %call30 = call i32 @prepare_to_wait_event(ptr noundef %shutdown_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool34.not = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool39.not = icmp eq i32 %call52, 0
  %14 = select i1 %tobool34.not, i1 %tobool39.not, i1 false
  %__ret28.1 = select i1 %14, i32 1, i32 %call52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret28.1)
  %tobool45.not = icmp eq i32 %__ret28.1, 0
  %15 = select i1 %tobool34.not, i1 true, i1 %tobool45.not
  br i1 %15, label %if.end55, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end55:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret28.1)
  %phi.cmp = icmp eq i32 %__ret28.1, 0
  call void @finish_wait(ptr noundef %shutdown_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br i1 %phi.cmp, label %do.end60, label %if.end55.cleanup66_crit_edge

if.end55.cleanup66_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup66

do.end60:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %con) #14
  br label %force_close

force_close:                                      ; preds = %do.end60, %do.end
  call void @_clear_bit(i32 noundef 9, ptr noundef %flags) #10
  call fastcc void @close_connection(ptr noundef %con, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %cleanup66

cleanup66:                                        ; preds = %force_close, %if.end55.cleanup66_crit_edge, %if.end55.thread, %if.else.cleanup66_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_sctp_connect(ptr noundef %con, ptr noundef %sock, ptr noundef %addr, i32 noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  tail call void @sock_set_sndtimeo(ptr noundef %1, i64 noundef 5) #10
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %connect = getelementptr inbounds %struct.proto_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connect, align 4
  %call = tail call i32 %5(ptr noundef %sock, ptr noundef %addr, i32 noundef %addr_len, i32 noundef 0) #10
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 16
  tail call void @sock_set_sndtimeo(ptr noundef %7, i64 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 3
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 10, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %nodeid = getelementptr inbounds %struct.connection, ptr %con, i32 0, i32 1
  %8 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nodeid, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %9) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlm_sctp_sockopts(ptr nocapture noundef readonly %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %nodelay.i = getelementptr inbounds %struct.sctp_sock, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %nodelay.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %nodelay.i, align 8
  %bf.set.i = or i16 %bf.load.i, -32768
  store i16 %bf.set.i, ptr %nodelay.i, align 8
  tail call void @release_sock(ptr noundef %1) #10
  %3 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk, align 16
  tail call void @sock_set_rcvbuf(ptr noundef %4, i32 noundef 4194304) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_sctp_bind(ptr noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sctp_bind_addrs(ptr noundef %sock, i16 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_sctp_listen_validate() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.103) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_sctp_bind_listen(ptr noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dlm_config to i32))
  %0 = load i32, ptr @dlm_config, align 4
  %conv = trunc i32 %0 to i16
  %call = tail call fastcc i32 @sctp_bind_addrs(ptr noundef %sock, i16 noundef zeroext %conv)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_set_sndtimeo(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_set_rcvbuf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_bind_addrs(ptr noundef %sock, i16 noundef zeroext %port) unnamed_addr #0 align 64 {
entry:
  %localaddr = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %localaddr) #10
  %0 = call ptr @memset(ptr %localaddr, i32 255, i32 128)
  %1 = load i32, ptr @dlm_local_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19 = icmp sgt i32 %1, 0
  br i1 %cmp19, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %localaddr, i32 0, i32 1
  %__pad.i = getelementptr inbounds %struct.sockaddr_in, ptr %localaddr, i32 0, i32 3
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x ptr], ptr @dlm_local_addr, i32 0, i32 %i.020
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = call ptr @memcpy(ptr %localaddr, ptr %3, i32 128)
  %5 = load ptr, ptr @dlm_local_addr, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 4
  %8 = ptrtoint ptr %localaddr to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %localaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %7)
  %cmp.i = icmp eq i16 %7, 2
  %9 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %port, ptr %sin6_port.i, align 2
  br i1 %cmp.i, label %if.then.i, label %for.body.make_sockaddr.exit_crit_edge

for.body.make_sockaddr.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %make_sockaddr.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %__pad.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %__pad.i, align 4
  br label %make_sockaddr.exit

make_sockaddr.exit:                               ; preds = %if.then.i, %for.body.make_sockaddr.exit_crit_edge
  %addr_len.0 = phi i32 [ 16, %if.then.i ], [ 28, %for.body.make_sockaddr.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %localaddr, i32 %addr_len.0
  %sub.i = sub nuw nsw i32 128, %addr_len.0
  %11 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.020)
  %tobool.not = icmp eq i32 %i.020, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %make_sockaddr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call = call i32 @kernel_bind(ptr noundef %sock, ptr noundef nonnull %localaddr, i32 noundef %addr_len.0) #10
  br label %if.end

if.else:                                          ; preds = %make_sockaddr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk, align 16
  %call1 = call i32 @sock_bind_add(ptr noundef %13, ptr noundef nonnull %localaddr, i32 noundef %addr_len.0) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %result.1 = phi i32 [ %call1, %if.else ], [ %call, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.1)
  %cmp2 = icmp slt i32 %result.1, 0
  br i1 %cmp2, label %do.end, label %for.inc

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %port to i32
  %add = add nuw i32 %i.020, 1
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %conv, i32 noundef %add, i32 noundef %result.1) #14
  br label %for.end

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %i.020, 1
  %14 = load i32, ptr @dlm_local_count, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end, %entry.for.end_crit_edge
  %result.2 = phi i32 [ %result.1, %do.end ], [ 0, %entry.for.end_crit_edge ], [ %result.1, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %localaddr) #10
  ret i32 %result.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_bind_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lowcomms_listen_data_ready(ptr nocapture noundef readnone %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dlm_allow_conn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load ptr, ptr @recv_workqueue, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef getelementptr inbounds (%struct.listen_connection, ptr @listen_con, i32 0, i32 1)) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !42, !44, !46, !47, !49, !50, !51, !52, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !98, !100, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !118, !119, !120, !121, !123, !124, !126, !127, !128, !129, !131, !132, !134, !135, !137, !138, !140, !142, !143, !144, !145, !147, !148, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !178, !179, !180, !182, !184, !185, !186, !187, !189, !191, !192, !193, !195, !197, !199, !200, !201, !202, !204, !205, !206, !207, !209, !210, !211, !212, !214, !215, !216, !218, !220, !222, !223, !224, !226, !227, !228, !229, !231, !233, !234, !235, !236, !238, !239, !240}
!llvm.named.register.sp = !{!242}
!llvm.module.flags = !{!243, !244, !245, !246, !247, !248, !249, !250}
!llvm.ident = !{!251}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/dlm/lowcomms.c", i32 203, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/dlm/lowcomms.c", i32 209, i32 27}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/dlm/lowcomms.c", i32 1317, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dlm_lowcomms_new_msg._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @dlm_lowcomms_new_msg._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/dlm/lowcomms.c", i32 1496, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @dlm_lowcomms_close._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @dlm_lowcomms_close._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/dlm/lowcomms.c", i32 1975, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dlm_lowcomms_start._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @dlm_lowcomms_start._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @dlm_lowcomms_start.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../fs/dlm/lowcomms.c", i32 1979, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/dlm/lowcomms.c", i32 1996, i32 3}
!25 = !{ptr @dlm_lowcomms_start._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @dlm_lowcomms_start._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @listen_con, !28, !"listen_con", i1 false, i1 false}
!28 = !{!"../fs/dlm/lowcomms.c", i32 176, i32 33}
!29 = !{ptr @dlm_local_count, !30, !"dlm_local_count", i1 false, i1 false}
!30 = !{!"../fs/dlm/lowcomms.c", i32 178, i32 12}
!31 = !{ptr @dlm_allow_conn, !32, !"dlm_allow_conn", i1 false, i1 false}
!32 = !{!"../fs/dlm/lowcomms.c", i32 179, i32 5}
!33 = !{ptr @recv_workqueue, !34, !"recv_workqueue", i1 false, i1 false}
!34 = !{!"../fs/dlm/lowcomms.c", i32 182, i32 33}
!35 = !{ptr @send_workqueue, !36, !"send_workqueue", i1 false, i1 false}
!36 = !{!"../fs/dlm/lowcomms.c", i32 183, i32 33}
!37 = !{ptr @connection_hash, !38, !"connection_hash", i1 false, i1 false}
!38 = !{!"../fs/dlm/lowcomms.c", i32 185, i32 26}
!39 = !{ptr @__pcpu_unique_connections_srcu_srcu_data, !40, !"__pcpu_unique_connections_srcu_srcu_data", i1 false, i1 false}
!40 = !{!"../fs/dlm/lowcomms.c", i32 187, i32 1}
!41 = !{ptr @connections_srcu_srcu_data, !40, !"connections_srcu_srcu_data", i1 false, i1 false}
!42 = !{ptr @dlm_proto_ops, !43, !"dlm_proto_ops", i1 false, i1 false}
!43 = !{!"../fs/dlm/lowcomms.c", i32 189, i32 36}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/dlm/lowcomms.c", i32 174, i32 8}
!46 = !{ptr @dlm_node_addrs_spin, !45, !"dlm_node_addrs_spin", i1 false, i1 false}
!47 = !{ptr @dlm_node_addrs, !48, !"dlm_node_addrs", i1 false, i1 false}
!48 = !{!"../fs/dlm/lowcomms.c", i32 173, i32 8}
!49 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @connections_srcu, !40, !"connections_srcu", i1 false, i1 false}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../fs/dlm/lowcomms.c", i32 235, i32 2}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @dlm_con_init.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../fs/dlm/lowcomms.c", i32 256, i32 2}
!59 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @dlm_con_init.__key.20, !61, !"__key", i1 false, i1 false}
!61 = !{!"../fs/dlm/lowcomms.c", i32 258, i32 2}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @dlm_con_init.__key.22, !64, !"__key", i1 false, i1 false}
!64 = !{!"../fs/dlm/lowcomms.c", i32 260, i32 2}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dlm_con_init.__key.24, !67, !"__key", i1 false, i1 false}
!67 = !{!"../fs/dlm/lowcomms.c", i32 261, i32 2}
!68 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @dlm_con_init.__key.26, !70, !"__key", i1 false, i1 false}
!70 = !{!"../fs/dlm/lowcomms.c", i32 262, i32 2}
!71 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/dlm/lowcomms.c", i32 1547, i32 3}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dlm_connect._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @dlm_connect._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/dlm/lowcomms.c", i32 1555, i32 3}
!79 = !{ptr @dlm_connect._entry.30, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @dlm_connect._entry_ptr.32, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/dlm/lowcomms.c", i32 1574, i32 2}
!83 = !{ptr @dlm_connect._rs, !82, !"_rs", i1 false, i1 false}
!84 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @dlm_connect._entry.34, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @dlm_connect._entry_ptr.36, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/dlm/lowcomms.c", i32 1596, i32 3}
!89 = !{ptr @dlm_connect._entry.37, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @dlm_connect._entry_ptr.39, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @dlm_local_addr, !92, !"dlm_local_addr", i1 false, i1 false}
!92 = !{!"../fs/dlm/lowcomms.c", i32 177, i32 33}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/dlm/lowcomms.c", i32 532, i32 3}
!95 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @lowcomms_write_space._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @lowcomms_write_space._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @lowcomms_error_report._rs, !99, !"_rs", i1 false, i1 false}
!99 = !{!"../fs/dlm/lowcomms.c", i32 623, i32 3}
!100 = !{ptr @__func__.lowcomms_error_report, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @lowcomms_error_report._entry, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @lowcomms_error_report._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @lowcomms_error_report._rs.43, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../fs/dlm/lowcomms.c", i32 632, i32 3}
!106 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @lowcomms_error_report._entry.44, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @lowcomms_error_report._entry_ptr.46, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @lowcomms_error_report._rs.47, !110, !"_rs", i1 false, i1 false}
!110 = !{!"../fs/dlm/lowcomms.c", i32 641, i32 3}
!111 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @lowcomms_error_report._entry.48, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @lowcomms_error_report._entry_ptr.50, !110, !"_entry_ptr", i1 false, i1 false}
!114 = distinct !{null, !115, !"listen_sock", i1 false, i1 false}
!115 = !{!"../fs/dlm/lowcomms.c", i32 171, i32 3}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../include/trace/events/dlm.h", i32 217, i32 1}
!118 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!120 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!123 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/dlm/lowcomms.c", i32 977, i32 3}
!126 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @receive_from_sock._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @receive_from_sock._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = distinct !{null, !130, !"__already_done", i1 false, i1 false}
!130 = !{!"../include/trace/events/dlm.h", i32 237, i32 1}
!131 = distinct !{null, !130, !"__warned", i1 false, i1 false}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/dlm/lowcomms.c", i32 186, i32 8}
!134 = !{ptr @connections_lock, !133, !"connections_lock", i1 false, i1 false}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!137 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!138 = distinct !{null, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/dlm/lowcomms.c", i32 797, i32 3}
!142 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @close_connection._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @close_connection._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/dlm/lowcomms.c", i32 801, i32 3}
!147 = !{ptr @close_connection._entry.61, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @close_connection._entry_ptr.63, !146, !"_entry_ptr", i1 false, i1 false}
!149 = distinct !{null, !150, !"__warned", i1 false, i1 false}
!150 = !{!"../fs/dlm/lowcomms.c", i32 319, i32 3}
!151 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!152 = !{!"../fs/dlm/lowcomms.c", i32 1747, i32 4}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/dlm/lowcomms.c", i32 1035, i32 4}
!155 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @accept_from_sock._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @accept_from_sock._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/dlm/lowcomms.c", i32 1043, i32 4}
!160 = !{ptr @accept_from_sock._entry.66, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @accept_from_sock._entry_ptr.68, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/dlm/lowcomms.c", i32 1049, i32 4}
!164 = !{ptr @accept_from_sock._entry.69, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @accept_from_sock._entry_ptr.71, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/dlm/lowcomms.c", i32 1057, i32 2}
!168 = !{ptr @accept_from_sock._entry.72, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @accept_from_sock._entry_ptr.74, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/dlm/lowcomms.c", i32 1081, i32 5}
!172 = !{ptr @accept_from_sock._entry.75, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @accept_from_sock._entry_ptr.77, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/dlm/lowcomms.c", i32 1096, i32 4}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/dlm/lowcomms.c", i32 1138, i32 3}
!178 = !{ptr @accept_from_sock._entry.79, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @accept_from_sock._entry_ptr.81, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/dlm/lowcomms.c", i32 1645, i32 19}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/dlm/lowcomms.c", i32 1647, i32 3}
!184 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @work_start._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @work_start._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.85, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/dlm/lowcomms.c", i32 1651, i32 19}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/dlm/lowcomms.c", i32 1653, i32 3}
!191 = !{ptr @work_start._entry.86, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @work_start._entry_ptr.88, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/dlm/lowcomms.c", i32 1890, i32 10}
!195 = !{ptr @dlm_tcp_ops, !196, !"dlm_tcp_ops", i1 false, i1 false}
!196 = !{!"../fs/dlm/lowcomms.c", i32 1889, i32 35}
!197 = !{ptr @.str.90, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/dlm/lowcomms.c", i32 1834, i32 3}
!199 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @dlm_tcp_bind._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @dlm_tcp_bind._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.92, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/dlm/lowcomms.c", i32 1860, i32 3}
!204 = !{ptr @.str.93, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @dlm_tcp_listen_validate._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @dlm_tcp_listen_validate._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.94, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/dlm/lowcomms.c", i32 861, i32 3}
!209 = !{ptr @.str.95, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @shutdown_connection._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @shutdown_connection._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.97, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../fs/dlm/lowcomms.c", i32 869, i32 4}
!214 = !{ptr @shutdown_connection._entry.96, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @shutdown_connection._entry_ptr.98, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.99, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/dlm/lowcomms.c", i32 1953, i32 10}
!218 = !{ptr @dlm_sctp_ops, !219, !"dlm_sctp_ops", i1 false, i1 false}
!219 = !{!"../fs/dlm/lowcomms.c", i32 1952, i32 35}
!220 = !{ptr @.str.100, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/dlm/lowcomms.c", i32 1924, i32 3}
!222 = !{ptr @dlm_sctp_connect._entry, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @dlm_sctp_connect._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.101, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/dlm/lowcomms.c", i32 1179, i32 4}
!226 = !{ptr @.str.102, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @sctp_bind_addrs._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @sctp_bind_addrs._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.103, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/dlm/lowcomms.c", i32 1936, i32 2}
!231 = !{ptr @.str.104, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/dlm/lowcomms.c", i32 1781, i32 2}
!233 = !{ptr @.str.105, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @dlm_listen_for_all._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @dlm_listen_for_all._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.107, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../fs/dlm/lowcomms.c", i32 1791, i32 3}
!238 = !{ptr @dlm_listen_for_all._entry.106, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @dlm_listen_for_all._entry_ptr.108, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @dlm_listen_for_all.__key, !241, !"__key", i1 false, i1 false}
!241 = !{!"../fs/dlm/lowcomms.c", i32 1805, i32 2}
!242 = !{!"sp"}
!243 = !{i32 1, !"wchar_size", i32 2}
!244 = !{i32 1, !"min_enum_size", i32 4}
!245 = !{i32 8, !"branch-target-enforcement", i32 0}
!246 = !{i32 8, !"sign-return-address", i32 0}
!247 = !{i32 8, !"sign-return-address-all", i32 0}
!248 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!249 = !{i32 7, !"uwtable", i32 1}
!250 = !{i32 7, !"frame-pointer", i32 2}
!251 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!252 = !{!"branch_weights", i32 2000, i32 1}
!253 = !{i64 2149502049}
!254 = !{i64 2148615453, i64 2148615485, i64 2148615514, i64 2148615548, i64 2148615579, i64 2148615602}
!255 = !{!"branch_weights", i32 1, i32 2000}
!256 = !{i64 2148613923, i64 2148613949, i64 2148613978, i64 2148614012, i64 2148614043, i64 2148614066}
!257 = !{i64 2148703478}
!258 = !{i64 2148617918, i64 2148617950, i64 2148617979, i64 2148618013, i64 2148618044, i64 2148618067}
!259 = !{i64 2149708425}
!260 = distinct !{ptr @dlm_msg_release, null}
!261 = !{!"auto-init"}
!262 = !{i8 0, i8 2}
!263 = !{i64 2148297496, i64 2148297501, i64 2148297514, i64 2148297558, i64 2148297592, i64 2148297613}
!264 = !{i64 2159568214}
!265 = !{i64 2159568415}
!266 = !{i64 2149408997}
!267 = !{i64 2149410033}
!268 = !{i64 2148616388, i64 2148616414, i64 2148616443, i64 2148616477, i64 2148616508, i64 2148616531}
!269 = !{i64 2159587748}
!270 = !{i64 2159587949}
